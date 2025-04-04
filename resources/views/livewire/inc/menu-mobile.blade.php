<div id="ast-mobile-popup-wrapper">
    <div id="ast-mobile-popup" class="ast-mobile-popup-drawer content-align-flex-start ast-mobile-popup-left">
        <div class="ast-mobile-popup-overlay"></div>
        <div class="ast-mobile-popup-inner">
            <div class="ast-mobile-popup-header">
                <button type="button" id="menu-toggle-close" class="menu-toggle-close" aria-label="Close menu"
                    tabindex="0">
                    <span class="ast-svg-iconset">
                        <span class="ahfb-svg-iconset ast-inline-flex svg-baseline"><svg
                                class='ast-mobile-svg ast-close-svg' fill='currentColor' version='1.1'
                                xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'>
                                <path
                                    d='M5.293 6.707l5.293 5.293-5.293 5.293c-0.391 0.391-0.391 1.024 0 1.414s1.024 0.391 1.414 0l5.293-5.293 5.293 5.293c0.391 0.391 1.024 0.391 1.414 0s0.391-1.024 0-1.414l-5.293-5.293 5.293-5.293c0.391-0.391 0.391-1.024 0-1.414s-1.024-0.391-1.414 0l-5.293 5.293-5.293-5.293c-0.391-0.391-1.024-0.391-1.414 0s-0.391 1.024 0 1.414z'>
                                </path>
                            </svg></span> </span>
                </button>
            </div>
            <div class="ast-mobile-popup-content">
                <aside class="header-widget-area widget-area site-header-focus-item header-widget-area-inner"
                    data-section="sidebar-widgets-header-widget-1" aria-label="Header Widget 1">
                    <section id="elementor-library-3" class="widget widget_elementor-library">
                        <div data-elementor-type="section" data-elementor-id="670" class="elementor elementor-670"
                            data-elementor-post-type="elementor_library">
                            <script>
                                window.addEventListener('load', function () {
                                    // Get the URL parameters
                                    const urlParams = new URLSearchParams(window.location.search);

                                    // Check if 'search' parameter exists in the URL
                                    const searchQuery = urlParams.get('search');  // or urlParams.get('query') if you prefer

                                    if (searchQuery) {
                                        // Set the value of the input field to the value of 'search' in the URL
                                        document.getElementById('search-input-377de8a').value = searchQuery;
                                    }
                                });

                                // Lắng nghe sự kiện input từ ô tìm kiếm
                                document.getElementById('search-input-377de8a').addEventListener('input', function (e) {
                                    // alert('ccc')
                                    var searchValue = e.target.value; // Lấy giá trị người dùng nhập

                                    // Update the "Tất cả kết quả" link with the search term
                                    var allResultsLink = document.getElementById('allResultsLink');
                                    var link = document.getElementById('btn-searchs');
                                    allResultsLink.href = '/products?search=' + encodeURIComponent(searchValue);  // Ensure the search term is URL-safe
                                    link.href = '/products?search=' + encodeURIComponent(searchValue);
                                    if (searchValue.trim().length > 0) {
                                        // Gửi yêu cầu AJAX nếu có dữ liệu tìm kiếm
                                        fetch("{{ route('search.products') }}?search=" + searchValue)
                                            .then(response => response.json())
                                            .then(data => {
                                                // Xử lý kết quả tìm kiếm
                                                let resultsArea = document.getElementById('resultsArea');
                                                let resultsCount = document.getElementById('resultsCount');
                                                let resultsList = document.getElementById('resultsList').querySelector('.jet-ajax-search__results-list-inner');
                                                let resultsHolder = document.querySelector('.jet-ajax-search__results-holder');
                                                let spin=document.querySelector('.jet-ajax-search__spinner');
                                                // Xóa kết quả cũ
                                                resultsList.innerHTML = '';

                                                // Hiển thị số lượng kết quả
                                                resultsCount.textContent = data.length;

                                                if (data.length > 0) {
                                                    resultsHolder.setAttribute('style', 'display: block !important;');
                                                    spin.setAttribute('style', 'display: none !important;');
                                                    data.slice(0, 5).forEach(product => {
                                                        // Create a new container element for each product
                                                        let productElement = document.createElement('div');
                                                        productElement.classList.add('jet-ajax-search__result-item');

                                                        // Create the inner HTML content for each product
                                                        productElement.innerHTML = `
        <a href="/product/${product.slug}" class="product-link" style="display: flex; align-items: center; text-decoration: none;">
            <img src="/storage/${product.image}" alt="${product.name}" style="width: 50px; height: 50px; margin-right: 10px;object-fit:cover ">
            <h4 style="margin: 0;">${product.name}</h4>
        </a>
    `;

                                                        // Append the created productElement to the results container
                                                        resultsList.appendChild(productElement);
                                                    });




                                                } else {
                                                    resultsList.innerHTML = '<p>Không có sản phẩm nào.</p>';
                                                }
                                            })
                                            .catch(error => console.log(error));
                                    } else {
                                        // Nếu ô tìm kiếm trống, xóa kết quả tìm kiếm
                                        let resultsList = document.getElementById('resultsList').querySelector('.jet-ajax-search__results-list-inner');
                                        resultsList.innerHTML = ''; // Xóa kết quả tìm kiếm
                                    }
                                });
                            </script>
                            <section
                                class="elementor-section elementor-top-section elementor-element elementor-element-f044237 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                                data-id="f044237" data-element_type="section"
                                data-settings="{&quot;jet_parallax_layout_list&quot;:[]}">
                                <div class="elementor-container elementor-column-gap-default">
                                    <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-1e4ccd4"
                                         data-id="1e4ccd4" data-element_type="column">
                                        <div class="elementor-widget-wrap elementor-element-populated">
                                            <div class="elementor-element elementor-element-377de8a elementor-widget elementor-widget-jet-ajax-search"
                                                 data-id="377de8a" data-element_type="widget"
                                                 data-widget_type="jet-ajax-search.default">
                                                <div class="elementor-widget-container">
                                                    <div class="elementor-jet-ajax-search jet-search">
                                                        <div class="jet-ajax-search"
                                                             data-settings>
                                                            <form class="jet-ajax-search__form">
                                                                <div class="jet-ajax-search__fields-holder">
                                                                    <div class="jet-ajax-search__field-wrapper">
                                                                        <label for="search-input-377de8a" class="screen-reader-text">Search</label>
                                                                        <input id="search-input-377de8a" class="jet-ajax-search__field" type="search" placeholder="Nhập sản phẩm cần tìm ..."
                                                                               autocomplete="off" />
                                                                        <input type="hidden" value="{&quot;search_source&quot;:&quot;product&quot;}" name="jet_ajax_search_settings" />
                                                                        <input type="hidden" value="product" name="post_type" />
                                                                    </div>
                                                                </div>

                                                                <a href="/product?search=" id="btn-searchs" class="" style="background-color: #0066B3;
    padding: 5px 15px 12px 15px; color: #fff !important;" type="submit" aria-label="Search submit">
                                                                                <span class="jet-ajax-search__submit-icon jet-ajax-search-icon">
                                                                                    <i aria-hidden="true" class="fas fa-search"></i>
                                                                                </span>
                                                                </a>
                                                            </form>

                                                            <div class="jet-ajax-search__results-area">
                                                                <div class="jet-ajax-search__results-holder">
                                                                    <div class="jet-ajax-search__results-header">
                                                                        <button class="jet-ajax-search__results-count"><span id="resultsCount"></span> Kết quả</button>
                                                                        <div class="jet-ajax-search__navigation-holder"></div>
                                                                    </div>

                                                                    <div class="jet-ajax-search__results-lists" id="resultsList">
                                                                        <div class="jet-ajax-search__results-list-inner" style="padding: 10px">
                                                                            <!-- Hiển thị kết quả tìm kiếm -->

                                                                        </div>
                                                                    </div>

                                                                    <div class="jet-ajax-search__results-footer">
                                                                        <a href="/products?search" class=""  id="allResultsLink" style="    font-size: 16px;font-weight: 700;color: #0066B3;}">Tất cả kết quả</a>
                                                                        <div class="jet-ajax-search__navigation-holder"></div>
                                                                    </div>
                                                                </div>

                                                                <div class="jet-ajax-search__message"></div>
                                                                <style>
                                                                    .jet-ajax-search__results-list-inner {
                                                                        display: flex;
                                                                        flex-direction: column; /* Hiển thị các phần tử theo hàng ngang */
                                                                        flex-wrap: wrap; /* Các phần tử sẽ xuống dòng nếu không đủ chỗ */
                                                                        gap: 10px; /* Khoảng cách giữa các phần tử */
                                                                    }

                                                                    .jet-ajax-search__result-item {
                                                                        flex: 1 1 auto; /* Tự động co giãn trong không gian có sẵn */
                                                                        display: flex;
                                                                        align-items: center;
                                                                        justify-content: flex-start; /* Căn trái phần tử */
                                                                        text-align: left;
                                                                        white-space: nowrap; /* Không ngắt dòng */
                                                                        min-width: 0; /* Đảm bảo không bị ngắt dòng */
                                                                    }

                                                                    .jet-ajax-search__result-item img {
                                                                        width: 50px; /* Kích thước ảnh */
                                                                        height: 50px;
                                                                        margin-right: 10px; /* Khoảng cách giữa ảnh và tên */
                                                                    }

                                                                    .jet-ajax-search__result-item h4 {
                                                                        margin: 0;
                                                                        white-space: nowrap; /* Đảm bảo tên sản phẩm không bị ngắt dòng */
                                                                        font-size: 15px;
                                                                    }


                                                                </style>
                                                                <script>
                                                                    window.addEventListener('load', function () {
                                                                        // Get the URL parameters
                                                                        const urlParams = new URLSearchParams(window.location.search);

                                                                        // Check if 'search' parameter exists in the URL
                                                                        const searchQuery = urlParams.get('search');  // or urlParams.get('query') if you prefer

                                                                        if (searchQuery) {
                                                                            // Set the value of the input field to the value of 'search' in the URL
                                                                            document.getElementById('search-input-377de8a').value = searchQuery;
                                                                        }
                                                                    });

                                                                    // Lắng nghe sự kiện input từ ô tìm kiếm
                                                                    document.getElementById('search-input-377de8a').addEventListener('input', function (e) {
                                                                        var searchValue = e.target.value; // Lấy giá trị người dùng nhập

                                                                        // Update the "Tất cả kết quả" link with the search term
                                                                        var allResultsLink = document.getElementById('allResultsLink');
                                                                        var link = document.getElementById('btn-searchs');
                                                                        allResultsLink.href = '/products?search=' + encodeURIComponent(searchValue);  // Ensure the search term is URL-safe
                                                                        link.href = '/products?search=' + encodeURIComponent(searchValue);
                                                                        if (searchValue.trim().length > 0) {
                                                                            // Gửi yêu cầu AJAX nếu có dữ liệu tìm kiếm
                                                                            fetch("{{ route('search.products') }}?search=" + searchValue)
                                                                                .then(response => response.json())
                                                                                .then(data => {
                                                                                    // Xử lý kết quả tìm kiếm
                                                                                    let resultsArea = document.getElementById('resultsArea');
                                                                                    let resultsCount = document.getElementById('resultsCount');
                                                                                    let resultsList = document.getElementById('resultsList').querySelector('.jet-ajax-search__results-list-inner');
                                                                                    let resultsHolder = document.querySelector('.jet-ajax-search__results-holder');
                                                                                    let spin=document.querySelector('.jet-ajax-search__spinner');
                                                                                    // Xóa kết quả cũ
                                                                                    resultsList.innerHTML = '';

                                                                                    // Hiển thị số lượng kết quả
                                                                                    resultsCount.textContent = data.length;

                                                                                    if (data.length > 0) {
                                                                                        resultsHolder.setAttribute('style', 'display: block !important;');
                                                                                        spin.setAttribute('style', 'display: none !important;');
                                                                                        data.slice(0, 5).forEach(product => {
                                                                                            // Create a new container element for each product
                                                                                            let productElement = document.createElement('div');
                                                                                            productElement.classList.add('jet-ajax-search__result-item');

                                                                                            // Create the inner HTML content for each product
                                                                                            productElement.innerHTML = `
        <a href="/product/${product.slug}" class="product-link" style="display: flex; align-items: center; text-decoration: none;">
            <img src="/storage/${product.image}" alt="${product.name}" style="width: 50px; height: 50px; margin-right: 10px;object-fit:cover ">
            <h4 style="margin: 0;">${product.name}</h4>
        </a>
    `;

                                                                                            // Append the created productElement to the results container
                                                                                            resultsList.appendChild(productElement);
                                                                                        });




                                                                                    } else {
                                                                                        resultsList.innerHTML = '<p>Không có sản phẩm nào.</p>';
                                                                                    }
                                                                                })
                                                                                .catch(error => console.log(error));
                                                                        } else {
                                                                            // Nếu ô tìm kiếm trống, xóa kết quả tìm kiếm
                                                                            let resultsList = document.getElementById('resultsList').querySelector('.jet-ajax-search__results-list-inner');
                                                                            resultsList.innerHTML = ''; // Xóa kết quả tìm kiếm
                                                                        }
                                                                    });
                                                                </script>

                                                                <div class="jet-ajax-search__spinner-holder">
                                                                    <div class="jet-ajax-search__spinner">
                                                                        <div class="rect rect-1"></div>
                                                                        <div class="rect rect-2"></div>
                                                                        <div class="rect rect-3"></div>
                                                                        <div class="rect rect-4"></div>
                                                                        <div class="rect rect-5"></div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </section>
                </aside>
                <div class="ast-builder-menu-mobile ast-builder-menu ast-builder-menu-mobile-focus-item ast-builder-layout-element site-header-focus-item"
                    data-section="section-header-mobile-menu">
                    <div class="ast-main-header-bar-alignment">
                        <div class="main-header-bar-navigation">
                            <nav class="site-navigation ast-flex-grow-1 navigation-accessibility site-header-focus-item"
                                id="ast-mobile-site-navigation" aria-label="Site Navigation"
                                itemtype="https://schema.org/SiteNavigationElement" itemscope="itemscope">
                                <div class="main-navigation">
                                    <ul id="ast-hf-mobile-menu"
                                        class="main-header-menu ast-nav-menu ast-flex  submenu-with-border astra-menu-animation-fade  stack-on-mobile ast-mega-menu-enabled">
                                        <li
                                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-793">
                                            <a href="/" class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                        class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
                                                        y="0px" width="26px" height="16.043px"
                                                        viewBox="57 35.171 26 16.043"
                                                        enable-background="new 57 35.171 26 16.043"
                                                        xml:space="preserve">
                                                        <path
                                                            d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                    </svg></span><span class="menu-text">Trang chủ</span></a>
                                        </li>

                                        <li
                                            class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1656">
                                            <a href="/products" class="menu-link"><span
                                                    class="ast-icon icon-arrow"><svg class="ast-arrow-svg"
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
                                                        y="0px" width="26px" height="16.043px"
                                                        viewBox="57 35.171 26 16.043"
                                                        enable-background="new 57 35.171 26 16.043"
                                                        xml:space="preserve">
                                                        <path
                                                            d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                    </svg></span><span class="menu-text">Sản phẩm</span></a>
                                        </li>


                                        <li id="menu-item-794"
                                        class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-794">
                                        <a href="/services"
                                            class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                    class="ast-arrow-svg"
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                                    version="1.1" x="0px" y="0px" width="26px"
                                                    height="16.043px" viewBox="57 35.171 26 16.043"
                                                    enable-background="new 57 35.171 26 16.043"
                                                    xml:space="preserve">
                                                    <path
                                                        d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                </svg></span><span class="menu-text">Dịch vụ<span
                                                    role="application"
                                                    class="dropdown-menu-toggle ast-header-navigation-arrow"
                                                    tabindex="0" aria-expanded="false"
                                                    aria-label="Menu Toggle"></span></span><span
                                                role="application"
                                                class="dropdown-menu-toggle ast-header-navigation-arrow"
                                                tabindex="0" aria-expanded="false"
                                                aria-label="Menu Toggle"></span></a>

                                    </li>
                                    <li id="menu-item-794"
                                        class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-794">
                                        <a href="/blogs"
                                            class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                    class="ast-arrow-svg"
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                                    version="1.1" x="0px" y="0px" width="26px"
                                                    height="16.043px" viewBox="57 35.171 26 16.043"
                                                    enable-background="new 57 35.171 26 16.043"
                                                    xml:space="preserve">
                                                    <path
                                                        d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                </svg></span><span class="menu-text">Tin tức<span
                                                    role="application"
                                                    class="dropdown-menu-toggle ast-header-navigation-arrow"
                                                    tabindex="0" aria-expanded="false"
                                                    aria-label="Menu Toggle"></span></span><span
                                                role="application"
                                                class="dropdown-menu-toggle ast-header-navigation-arrow"
                                                tabindex="0" aria-expanded="false"
                                                aria-label="Menu Toggle"></span></a>

                                    </li>
                                    <li id="menu-item-809"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-809">
                                        <a href="/contact"
                                            class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                    class="ast-arrow-svg"
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                                    version="1.1" x="0px" y="0px" width="26px"
                                                    height="16.043px" viewBox="57 35.171 26 16.043"
                                                    enable-background="new 57 35.171 26 16.043"
                                                    xml:space="preserve">
                                                    <path
                                                        d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                </svg></span><span class="menu-text">Liên
                                                hệ</span></a>
                                    </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ast-desktop-popup-content">
                <div class="ast-builder-menu-mobile ast-builder-menu ast-builder-menu-mobile-focus-item ast-builder-layout-element site-header-focus-item"
                    data-section="section-header-mobile-menu">
                    <div class="ast-main-header-bar-alignment">
                        <div class="main-header-bar-navigation">
                            <nav class="site-navigation ast-flex-grow-1 navigation-accessibility site-header-focus-item"
                                id="ast-desktop-site-navigation" aria-label="Site Navigation"
                                itemtype="https://schema.org/SiteNavigationElement" itemscope="itemscope">
                                <div class="main-navigation">
                                    <ul id="ast-desktop-toggle-menu"
                                        class="main-header-menu ast-nav-menu ast-flex  submenu-with-border astra-menu-animation-fade  stack-on-mobile ast-mega-menu-enabled">
                                        <li
                                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-793">
                                            <a href="/" class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                        class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
                                                        y="0px" width="26px" height="16.043px"
                                                        viewBox="57 35.171 26 16.043"
                                                        enable-background="new 57 35.171 26 16.043"
                                                        xml:space="preserve">
                                                        <path
                                                            d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                    </svg></span><span class="menu-text">Trang chủ</span></a>
                                        </li>
                                        <li
                                            class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1656">
                                            <a href="/products?category=1" class="menu-link"><span
                                                    class="ast-icon icon-arrow"><svg class="ast-arrow-svg"
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
                                                        y="0px" width="26px" height="16.043px"
                                                        viewBox="57 35.171 26 16.043"
                                                        enable-background="new 57 35.171 26 16.043"
                                                        xml:space="preserve">
                                                        <path
                                                            d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                    </svg></span><span class="menu-text">Cá Koi</span></a>
                                        </li>
                                        <li
                                            class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-794">
                                            <a href="/blog/" class="menu-link"><span
                                                    class="ast-icon icon-arrow"><svg class="ast-arrow-svg"
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
                                                        y="0px" width="26px" height="16.043px"
                                                        viewBox="57 35.171 26 16.043"
                                                        enable-background="new 57 35.171 26 16.043"
                                                        xml:space="preserve">
                                                        <path
                                                            d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                    </svg></span><span class="menu-text">Blog<span role="application"
                                                        class="dropdown-menu-toggle ast-header-navigation-arrow"
                                                        tabindex="0" aria-expanded="false"
                                                        aria-label="Menu Toggle"></span></span><span role="application"
                                                    class="dropdown-menu-toggle ast-header-navigation-arrow"
                                                    tabindex="0" aria-expanded="false" aria-label="Menu Toggle"><span
                                                        class="ast-icon icon-arrow"><svg class="ast-arrow-svg"
                                                            xmlns="http://www.w3.org/2000/svg"
                                                            xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                                            x="0px" y="0px" width="26px" height="16.043px"
                                                            viewBox="57 35.171 26 16.043"
                                                            enable-background="new 57 35.171 26 16.043"
                                                            xml:space="preserve">
                                                            <path
                                                                d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                        </svg></span></span></a><button class="ast-menu-toggle"
                                                aria-expanded="false"><span class="screen-reader-text">Menu
                                                    Toggle</span><span class="ast-icon icon-arrow"><svg
                                                        class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
                                                        y="0px" width="26px" height="16.043px"
                                                        viewBox="57 35.171 26 16.043"
                                                        enable-background="new 57 35.171 26 16.043"
                                                        xml:space="preserve">
                                                        <path
                                                            d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                    </svg></span></button>
                                            <ul class="sub-menu">
                                                <li
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-795">
                                                    <a href="/blog/chu-de-ca-koi/"
                                                        class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                                class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                                                x="0px" y="0px" width="26px" height="16.043px"
                                                                viewBox="57 35.171 26 16.043"
                                                                enable-background="new 57 35.171 26 16.043"
                                                                xml:space="preserve">
                                                                <path
                                                                    d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                            </svg></span><span class="menu-text">Chủ đề cá
                                                            Koi</span></a>
                                                </li>
                                                <li
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-797">
                                                    <a href="/blog/chu-de-ca-vang/"
                                                        class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                                class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                                                x="0px" y="0px" width="26px" height="16.043px"
                                                                viewBox="57 35.171 26 16.043"
                                                                enable-background="new 57 35.171 26 16.043"
                                                                xml:space="preserve">
                                                                <path
                                                                    d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                            </svg></span><span class="menu-text">Chủ đề cá
                                                            Vàng</span></a>
                                                </li>
                                                <li
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-796">
                                                    <a href="/blog/chu-de-ca-nhiet-doi/"
                                                        class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                                class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                                                x="0px" y="0px" width="26px" height="16.043px"
                                                                viewBox="57 35.171 26 16.043"
                                                                enable-background="new 57 35.171 26 16.043"
                                                                xml:space="preserve">
                                                                <path
                                                                    d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                            </svg></span><span class="menu-text">Chủ đề cá
                                                            nhiệt đới</span></a>
                                                </li>
                                                <li
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-799">
                                                    <a href="/blog/chu-de-ve-bo-sat/"
                                                        class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                                class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                                                x="0px" y="0px" width="26px" height="16.043px"
                                                                viewBox="57 35.171 26 16.043"
                                                                enable-background="new 57 35.171 26 16.043"
                                                                xml:space="preserve">
                                                                <path
                                                                    d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                            </svg></span><span class="menu-text">Chủ đề về
                                                            bò sát</span></a>
                                                </li>
                                                <li
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-800">
                                                    <a href="/blog/chu-de-ve-chim/"
                                                        class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                                class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                                                x="0px" y="0px" width="26px" height="16.043px"
                                                                viewBox="57 35.171 26 16.043"
                                                                enable-background="new 57 35.171 26 16.043"
                                                                xml:space="preserve">
                                                                <path
                                                                    d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                            </svg></span><span class="menu-text">Chủ đề về
                                                            chim</span></a>
                                                </li>
                                                <li
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-798">
                                                    <a href="/blog/chu-de-dong-vat-nho/"
                                                        class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                                class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                                                x="0px" y="0px" width="26px" height="16.043px"
                                                                viewBox="57 35.171 26 16.043"
                                                                enable-background="new 57 35.171 26 16.043"
                                                                xml:space="preserve">
                                                                <path
                                                                    d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                            </svg></span><span class="menu-text">Chủ đề động
                                                            vật nhỏ</span></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li
                                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-809">
                                            <a href="/contact" class="menu-link"><span class="ast-icon icon-arrow"><svg
                                                        class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
                                                        y="0px" width="26px" height="16.043px"
                                                        viewBox="57 35.171 26 16.043"
                                                        enable-background="new 57 35.171 26 16.043"
                                                        xml:space="preserve">
                                                        <path
                                                            d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z" />
                                                    </svg></span><span class="menu-text">Liên hệ</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
