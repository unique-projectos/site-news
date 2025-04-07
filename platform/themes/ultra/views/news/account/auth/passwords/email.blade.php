@php Theme::layout('no-breadcrumbs') @endphp

<div class="main_content shop" style="background-color: #005236;color:white">
    <div class="container pb-100">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-md-10">
                <div class="login_wrap widget-taber-content p-30 background-white border-radius-5 mt-100 " style="background-color: #005236;color:white">
                <div class="d-flex justify-content-center mb-1">
        <img src="/themes/ultra/images/logos/luele.png" alt="logo" height="110px" width="50%"/>
    </div>  
                <div class="padding_eight_all bg-white" style="background-color: #005236;color:white">
                   
                        <form method="POST" action="{{ route('public.member.password.email') }}" style="background-color: #005236;color:white">
                            @csrf  
                               <div class="heading_s1">
                            <h3 class="mb-30 text-white">{{ trans('plugins/member::member.forgot_password') }}</h3>
                        </div>
                            @include(Theme::getThemeNamespace() . '::views.news.account.auth.includes.messages')
                            <div class="form-group">
                                <input id="email" type="email"
                                       class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                                       name="email" value="{{ old('email') }}" required
                                       placeholder="{{ trans('plugins/member::dashboard.email') }}">
                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                    <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group mb-0">
                                <button type="submit" class="btn btn-fill-out btn-block" style="background-color: #fff;color:black;"
                                >
                                    {{ trans('plugins/member::dashboard.reset-password-cta') }}
                                </button>
                                <br><br>
                                <div class="text-center">
                                    <a href="{{ route('public.member.login') }}"
                                       class="btn-link">{{ trans('plugins/member::dashboard.back-to-login') }}</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-border">
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
