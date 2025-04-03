<div>


    <head>
        <title>Chi tiết dịch vụ</title>
        @livewire('inc.css.blogs')
    </head>

    <body
        class="archive category category-blog category-1 wp-custom-logo theme-astra woocommerce-no-js woo-variation-swatches wvs-behavior-blur wvs-theme-astra-child wvs-show-label wvs-tooltip ast-desktop ast-page-builder-template ast-no-sidebar astra-4.1.5 group-blog ast-inherit-site-logo-transparent ast-hfb-header ast-blog-grid-1 ast-blog-layout-1 ast-pagination-default ast-full-width-layout ast-inherit-site-logo-sticky ast-primary-sticky-enabled elementor-page-221 elementor-default elementor-template-full-width elementor-kit-7 astra-addon-4.1.5">

        <div class="hfeed site" id="page">
            @livewire('inc.header')

            <div id="content" class="site-content">
                <div class="ast-container">
                    <div data-elementor-type="archive" data-elementor-id="221"
                        class="elementor elementor-221 elementor-location-archive"
                        data-elementor-post-type="elementor_library">
                        <section
                            class="elementor-section elementor-top-section elementor-element elementor-element-2d2e147 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                            data-id="2d2e147" data-element_type="section"
                            data-settings="{&quot;jet_parallax_layout_list&quot;:[]}">
                            <div class="elementor-container elementor-column-gap-default">
                                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-27fcffa"
                                    data-id="27fcffa" data-element_type="column">
                                    <div class="elementor-widget-wrap elementor-element-populated">
                                        <div class="elementor-element elementor-element-d7c7d6d elementor-grid-1 elementor-grid-tablet-1 elementor-posts--thumbnail-left css_post_cm elementor-grid-mobile-1 elementor-widget elementor-widget-archive-posts"
                                            data-id="d7c7d6d" data-element_type="widget"
                                            data-settings="{&quot;archive_classic_columns&quot;:&quot;1&quot;,&quot;archive_classic_columns_tablet&quot;:&quot;1&quot;,&quot;archive_classic_row_gap&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:30,&quot;sizes&quot;:[]},&quot;archive_classic_columns_mobile&quot;:&quot;1&quot;,&quot;archive_classic_row_gap_tablet&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;archive_classic_row_gap_mobile&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;pagination_type&quot;:&quot;numbers&quot;}"
                                            data-widget_type="archive-posts.archive_classic">
                                            <div class="elementor-widget-container">
                                                <link rel="stylesheet"
                                                    href="/assets/wp-content/plugins/elementor-pro/assets/css/widget-posts.min.css">
                                                <div
                                                    class="elementor-posts-container elementor-posts elementor-posts--skin-classic elementor-grid">
                                                    @foreach($services as $service)
                                                        <article
                                                            class="elementor-post elementor-grid-item post-3498 post type-post status-publish format-standard has-post-thumbnail hentry category-chu-de-ca-koi ast-grid-common-col ast-full-width ast-width-md-12 ast-archive-post">
                                                            <a class="elementor-post__thumbnail__link"
                                                               href="/service/{{$service->slug}}" tabindex="-1">
                                                                <div class="elementor-post__thumbnail"><img width="768"
                                                                                                            height="432"
                                                                                                            src="{{\Illuminate\Support\Facades\Storage::url($service->banner)}}"
                                                                                                            class="attachment-medium_large size-medium_large wp-image-3684"
                                                                                                            alt="Cá Chép Phi Tần Cách Nuôi, Setup Bể Nuôi Chi Tiết Nhất" />
                                                                </div>
                                                            </a>
                                                            <div class="elementor-post__text">
                                                                <h3 class="elementor-post__title">
                                                                    <a href="/service/{{$service->slug}}">
                                                                        {{$service->title}} </a>
                                                                </h3>
                                                                <div class="elementor-post__meta-data">
                                                                <span class="elementor-post-date">
                                                                    {{$service->created_at}} </span>
                                                                </div>
                                                                <div class="elementor-post__excerpt">
                                                                    <p>{!! $service->short_desc !!}</p>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    @endforeach



                                                </div>

                                                <div class="e-load-more-anchor" data-page="1" data-max-page="10"
                                                    data-next-page="/blog/page/2/"></div>
                                                <nav class="elementor-pagination" aria-label="Pagination">
                                                    @foreach ($services->getUrlRange(1, $services->lastPage()) as $page => $url)
                                                        <a class="page-numbers{{ $page == $services->currentPage() ? ' current' : '' }}" href="{{ $url }}">
                                                            <span class="elementor-screen-only">Page</span>{{ $page }}
                                                        </a>
                                                    @endforeach
                                                </nav>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-a30caba"
                                    data-id="a30caba" data-element_type="column">
                                    <div class="elementor-widget-wrap elementor-element-populated">
                                        <div class="elementor-element elementor-element-0276601 elementor-widget elementor-widget-template"
                                            data-id="0276601" data-element_type="widget"
                                            data-widget_type="template.default">
                                            @livewire('inc.sidebar')
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div> <!-- ast-container -->
            </div><!-- #content -->
            @livewire('inc.footer')
            @livewire('inc.menu-mobile')

        </div><!-- #page -->
        @livewire('inc.contact')
        @livewire('inc.js.blogs')
    </body>

</div>
