<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Filament\Resources\ProductResource\RelationManagers;
use App\Models\Product;
use App\Models\ProductCategory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Sản phẩm';
    protected static ?string $navigationGroup = 'Quản lý sản phẩm';
    public static function getPluralModelLabel(): string
    {
        return 'Danh sách sản phẩm';
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('tabs')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Thông tin sản phẩm')
                            ->schema([
                                Forms\Components\Select::make('category_id')
                                    ->label('Danh mục')
                                    ->required()
                                    ->options(ProductCategory::all()->pluck('name', 'id'))
                                    ->searchable(),
                                Forms\Components\TextInput::make('name')
                                    ->label('Tên sản phẩm')
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
                                    ->unique(Product::class, ignoreRecord: true)
                                    ->required()
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('min_price')
                                    ->label('Giá tối thiểu')
                                    ->required()
                                    ->numeric(),
                                Forms\Components\TextInput::make('max_price')
                                    ->label('Giá tối đa')
                                    ->required()
                                    ->numeric(),
                            ]),
                        Forms\Components\Tabs\Tab::make('Chi tiết')
                            ->schema([
                                Forms\Components\RichEditor::make('short_desc')
                                    ->label('Mô tả ngắn')
                                    ->required()
                                    ->columnSpanFull(),
                                Forms\Components\RichEditor::make('description')
                                    ->label('Mô tả chi tiết')
                                    ->required()
                                    ->columnSpanFull(),
                            ]),
                        Forms\Components\Tabs\Tab::make('Hình ảnh & Tùy chọn')
                            ->schema([
                                Forms\Components\FileUpload::make('image')
                                    ->label('Hình ảnh')
                                    ->image()
                                    ->required(),
                                Forms\Components\Toggle::make('is_featured')
                                    ->label('Nổi bật')
                                    ->required(),
                                Forms\Components\Toggle::make('is_latest')
                                    ->label('Mới nhất')
                                    ->required(),
                                Forms\Components\Toggle::make('is_discounted')
                                    ->label('Giảm giá')
                                    ->required(),
                                Forms\Components\Toggle::make('buy_many')
                                    ->label('Mua nhiều')
                                    ->required(),
                            ]),
                    ])->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                Tables\Columns\ImageColumn::make('image')
                    ->label('Hình ảnh')
                    ->searchable(),
                Tables\Columns\TextColumn::make('name')
                    ->label('Tên sản phẩm')
                    ->searchable(),
                    Tables\Columns\TextColumn::make('category.name')
                    ->label('Danh mục')
                    ->searchable(),
                Tables\Columns\TextColumn::make('min_price')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('max_price')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\IconColumn::make('is_featured')
                    ->label('Nổi bật')
                    ->boolean(),
                Tables\Columns\IconColumn::make('is_latest')
                    ->label('Mới nhất')
                    ->boolean(),
                Tables\Columns\IconColumn::make('is_discounted')
                    ->label('Giảm giá')
                    ->boolean(),
                Tables\Columns\IconColumn::make('buy_many')
                    ->label('Mua nhiều')
                    ->boolean(),
                Tables\Columns\TextColumn::make('created_at')
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
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'view' => Pages\ViewProduct::route('/{record}'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}
