<?php

namespace App\Filament\Resources;

use App\Filament\Resources\NewsResource\Pages;
use App\Filament\Resources\NewsResource\RelationManagers;
use App\Models\News;
use App\Models\PostCategory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class NewsResource extends Resource
{
    protected static ?string $model = News::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Tin tức';
    protected static ?string $navigationGroup = 'Quản lý nội dung';
    public static function getPluralModelLabel(): string
    {
        return 'Danh sách tin tức';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('tabs')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Thông tin chung')
                            ->schema([
                                Forms\Components\Select::make('category_id')
                                    ->label('Danh mục')
                                    ->required()
                                    ->options(PostCategory::all()->pluck('name', 'id'))
                                    ->searchable(),
                                Forms\Components\TextInput::make('title')
                                    ->label('Tên tin tức')
                                    ->required()
                                    ->live(onBlur: true)
                                    ->afterStateUpdated(
                                        fn(string $operation, $state, Forms\Set $set) =>
                                        $operation === 'create' ? $set('slug', Str::slug($state)) : null
                                    )
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('slug')
                                    ->label('Slug')
                                    ->dehydrated()
                                    ->unique(News::class, ignoreRecord: true)
                                    ->required()
                                    ->maxLength(255),
                            ]),
                        Forms\Components\Tabs\Tab::make('Chi tiết')
                            ->schema([
                                Forms\Components\TextInput::make('view')
                                    ->label('Số lượt xem')
                                    ->required()
                                    ->numeric()
                                    ->default(0),
                                Forms\Components\RichEditor::make('short_desc')

                                    ->label('Mô tả ngắn')
                                    ->required()
                                    ->columnSpanFull(),
                                Forms\Components\RichEditor::make('description')
                                    ->label('Mô tả chi tiết')
                                    ->required()
                                    ->columnSpanFull(),
                                Forms\Components\FileUpload::make('banner')
                                    ->label('banner')
                                    ->required()
                                    ->image(),
                            ]),
                    ])->columnSpanFull(),
            ]);
    }
    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                    Tables\Columns\ImageColumn::make('banner')
                    ->label('Ảnh')
                    ->searchable(),
                Tables\Columns\TextColumn::make('title')
                    ->label('Tên tin tức')
                    ->searchable(),
                Tables\Columns\TextColumn::make('view')
                    ->label('Số lượt xem')
                    ->numeric()
                    ->sortable(),
                    Tables\Columns\TextColumn::make('category.name')
                    ->label('Danh mục')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày tạo')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->label('Xem'), // Đổi nhãn sang tiếng Việt
                    Tables\Actions\EditAction::make()
                        ->label('Chỉnh Sửa'), // Đổi nhãn sang tiếng Việt
                    Tables\Actions\DeleteAction::make()
                        ->label('Xóa'), // Đổi nhãn sang tiếng Việt
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->label('Xóa'), // Đổi nhãn sang tiếng Việt
                ]),
            ]);
    }
     public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListNews::route('/'),
            'create' => Pages\CreateNews::route('/create'),
            'view' => Pages\ViewNews::route('/{record}'),
            'edit' => Pages\EditNews::route('/{record}/edit'),
        ];
    }
}
