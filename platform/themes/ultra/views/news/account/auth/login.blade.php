@php Theme::layout('no-breadcrumbs') @endphp

<!--main content-->
<div class="main_content shop" style="background-color: #005236;">
    <div class="container pb-100">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-md-10">
                <div class="login_wrap widget-taber-content p-30 border-radius-5 mt-100 ">
                <div class="d-flex justify-content-center mb-1">
        <img src="/themes/ultra/images/logos/luele.png" alt="logo" height="110px" width="50%"/>
    </div>
                    <div class="">
                  
                        <form method="POST" class="simple-form" action="{{ route('public.member.login') }}"  style="background-color: #005236;color:white">
                            @csrf

                            @include(Theme::getThemeNamespace() . '::views.news.account.auth.includes.messages')
                            <div class=""  style="background-color: #005236;">
                            <h3 class=""  style="color:white">{{ __('Login') }}</h3>
                        </div>
                            <div class="form-group">
                                <input type="text" required=""
                                       class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}"
                                       name="email"
                                       placeholder="{{ __('Your email') }}">
                                @if ($errors->has('email') || $errors->has('username'))
                                    <span class="invalid-feedback d-block">
                                            <strong>{{ !empty($errors->first('email')) ? $errors->first('email') : $errors->first('username') }}</strong>
                                        </span>
                                @endif
                            </div>

                            <div class="form-group" >
                                <input class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}"
                                       required
                                       type="password"
                                       name="password"
                                       placeholder="{{ __('Password') }}">
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback d-block">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                @endif
                            </div>

                            <div class="login_footer form-group" style="background-color: #005236;color:white" >
                                <div class="chek-form">
                                    <div class="custome-checkbox">
                                        <input type="checkbox" class="form-check-input"
                                               id="exampleCheckbox1"
                                               name="remember" {{ old('remember') ? 'checked' : '' }}>
                                        <label class="form-check-label" for="exampleCheckbox1">
                                            {{ __('Remember me') }}
                                        </label>
                                    </div>
                                </div>
                                <a class="text-muted"
                                   href="{{ route('public.member.password.request') }}">{{ __('Forgot password?') }}</a>
                            </div>
                            <div class="form- mt-3">
                                <button type="submit" class="btn btn-fill-out btn-block " style="background-color: #fff;color:black;"
                                        name="login">{{ __('Login in') }}</button>
                            </div>
                        </form>

                        <div class="text-center" >
                            {!! apply_filters(BASE_FILTER_AFTER_LOGIN_OR_REGISTER_FORM, null, \Botble\Member\Models\Member::class) !!}
                        </div>

                        <div class="text-muted text-center "  style="background-color: #005236;color:white">{{ __("Don't have an account?") }}
                        <br>
                        <a href="{{ route('public.member.register') }}">{{ __('Sign up now') }}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-border ">
                <div class="row d-flex align-items-center justify-content-between">
                    <div class="col-lg-12">
                        <div class="footer-copy-right">
                            <p class="font-medium text-center text-white">
                            </p><div class="d-flex align-items-center justify-content-center gap-2 text-secondary-color fs-5 flex-lg-row footer-change flex-sm-column">
                                <div class="row align-items-center ">
                                    <h6 class="text-white">Desenvolvido com <span style="font-size: 20px;">❤️</span> pela </h6>
                                </div><span><a class="mx-3" href="https://jftech.ao" target="_blank"><img src="https://posdpq.pna.ao/assets/img/footer_jftech.png" alt="JFTech-Logotipo" style="width: 55px; height: 55px;"></a></span><!----><!----><!---->
                            </div>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>

@php
    Theme::asset()->usePath(true)->add('shop-css', 'css/shop.css');
@endphp
