@php
    $iconsReplace = [
        'whatsapp' => Theme::asset()->url('images/whatsapp.svg'),
        'telegram' => Theme::asset()->url('images/telegram.svg')
    ]
@endphp
<div class="top-bar pt-10 pb-10 text-white d-none d-md-block">
    <div class="container">
        <div class="row">
            <div class="col-6 text-left">
                @if (is_plugin_active('language'))
                    <div class="language d-inline-block font-small text-white">
                        {!! Theme::partial('language-switcher', ['color' => $color ?? '']) !!}
                    </div>
                @endif
                <div class="d-inline-block">
                    <ul>
                        <li>
                            <span class="font-small">
                            <img src="/themes/ultra/images/logos/luele.png" width="100" height="40"
                            alt="icon">
                            </span>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-6 text-right">
            

                @if (theme_option('allow_account_login', '') == 'yes')
                    <div class="vline-space d-inline-block"></div>
                    <div class="user-account d-inline-block font-small">
                        @if (!auth('member')->check())
                            <a href="{{ route('public.member.login') }}" role="button"
                               class="text-white">
                                <i class="ti-user"></i>
                                <span>{{ __('Login') }}</span>
                            </a>
                        @else
                            <a class="dropdown-toggle" href="#" role="button"
                               class="text-white"
                               id="userMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="ti-user"></i>
                                <span>{{ __('Account') }}</span>
                            </a>
                            <div id="userMenuDropdow" class="dropdown-menu dropdown-menu-right"
                                 aria-labelledby="userMenu">
                                <a class="dropdown-item" href="{{ route('public.member.dashboard') }}">
                                    <i class="ti-pencil-alt"></i>{{ __('Your Dashboard') }}
                                </a>
                                <a class="dropdown-item" href="{{ route('public.member.settings') }}">
                                    <i class="ti-stats-up"></i>{{ __('Edit profile') }}
                                </a>

                                @if(is_plugin_active('pro-posts'))
                                    <a class="dropdown-item" href="{{ route('public.favorite-post-listing') }}">
                                        <i class="ti-heart"></i>{{ __('My Favorite Posts') }}
                                    </a>
                                    <a class="dropdown-item" href="{{ route('public.bookmark-post-listing') }}">
                                        <i class="ti-bookmark"></i>{{ __('My Bookmark Posts') }}
                                    </a>
                                    <a class="dropdown-item" href="{{ route('public.recently-viewed-posts') }}">
                                        <i class="ti-bookmark"></i>{{ __('My Viewed Posts') }}
                                    </a>
                                @endif
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"
                                   onclick="event.preventDefault(); document.getElementById('logout-form').submit();" t>
                                    <i class="ti-share"></i>{{ __('Logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('public.member.logout') }}" method="POST"
                                      style="display: none;">
                                    @csrf
                                </form>
                            </div>
                        @endif
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
<!--End top bar-->
