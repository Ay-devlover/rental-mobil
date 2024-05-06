<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Rental Mobil</title>
    <link rel="icon" href="{{ asset('assets-admin/img/car-rent-logo-web.png') }}" type="image/png">

    <!-- CSS -->
    <link rel="stylesheet" href="{{ asset('assets-user/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-user/css/splide.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-user/css/slimselect.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-user/css/main.css') }}">

    <!-- Favicons -->
    <link rel="icon" type="image/png" href="{{ asset('storage/mobil/logo.png') }}" sizes="32x32">

    <meta name="description" content="Car rental HTML Template">
    <meta name="keywords" content="">
    <meta name="author" content="Dmitry Volkov">


</head>

<body>
    <!-- main content -->
    <main class="main main--sign" data-bg="../assets-user/img/bg/background.jpg">
        <!-- sign in -->
        <div class="sign">
            <div class="sign__content">
                <!-- authorization form -->
                <form action="login" class="sign__form" method="POST">
                    @csrf
                    <a href="/" class="sign__logo">
                        <img src="storage/mobil/logo.png" alt="">
                    </a>

                    <div class="sign__group">
                        <input type="nosim" class="sign__input" placeholder="Masukkan Nomor SIM"
                            class="form-control @error('nosim') is-invalid @enderror" value="{{ old('nosim') }}"
                            id="nosim" aria-describedby="emailHelp" name="nosim">
                        @error('nosim')
                            <div class="error">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="sign__group">
                        <input type="password" class="sign__input" placeholder="Masukkan Password"
                            class="form-control @error('password') is-invalid @enderror" id="password" name="password">
                        @error('password')
                            <div class="error">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="sign__group sign__group--checkbox">
                        <input id="remember" name="remember" type="checkbox">
                        <label for="remember">Remember Me</label>
                    </div>

                    <button class="sign__btn" type="submit" name="submit"><span>Sign in</span></button>

                    <span class="sign__delimiter">or</span>

                    <span class="sign__text">Don't have an account? <a href="{{ route('register') }}">Sign
                            up!</a></span>

                    <span class="sign__text"><a
                            href="https://wa.me/6281218173646?text=Halo,%20Tolong%20bantu%20saya%20lupa%20password%20akun%20rental%20mobil%20saya">Forgot
                            password?</a></span>
                </form>
                <!-- end authorization form -->
            </div>
        </div>
        <!-- end sign in -->
    </main>
    <!-- end main content -->

    <!-- JS -->
    <script src="{{ asset('assets-user/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets-user/js/splide.min.js') }}"></script>
    <script src="{{ asset('assets-user/js/slimselect.min.js') }}"></script>
    <script src="{{ asset('assets-user/js/smooth-scrollbar.js') }}"></script>
    <script src="{{ asset('assets-user/js/main.js') }}"></script>
</body>

</html>
