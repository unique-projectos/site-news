<header class=" header-style-1 text-white" style="height: 35vh;background:#005236;">
    {!! Theme::partial('header.top-bar', ['background' => 'background-white']) !!}

    <div class="header-bottom header-sticky  text-center text-white" style="background:#005236;">
        <div class="mobile_menu d-lg-none d-block"></div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    {!! Theme::partial('header.offcanvas-sidebar') !!}
                    {!! Theme::partial('header.logo-tablet') !!}
                    {!! Theme::partial('header.logo-mobile') !!}

                    <div class="main-nav text-center d-none d-lg-block text-white" style="display: none;background:transparent;">
                        <nav class="text-white">
                            {!! Menu::renderMenuLocation('main-menu', [
                                'view'    => 'menu',
                                'options' => ['id' => 'navigation', 'class' => 'main-menu', 'is-main-menu' => true],
                            ]) !!}
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>

    @if (Theme::has('afterHeader'))
        {!! Theme::get('afterHeader') !!}
    @endif
</header>
