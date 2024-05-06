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
        <!-- registration form -->
        <div class="sign">
            <div class="sign__content">
                <form action="register" class="sign__form" method="POST">
                    @csrf
                    <a href="/" class="sign__logo">
                        <img src="storage/mobil/logo.png" alt="">
                    </a>
                    <div class="sign__group">
                        <input type="text" class="sign__input" placeholder="Masukkan Nama Lengkap"
                            class="form-control @error('nama') is-invalid @enderror" value="{{ old('nama') }}"
                            id="nama" aria-describedby="emailHelp" name="nama">
                        @error('nama')
                            <div class="error">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="sign__group">
                        <input type="text" class="sign__input" placeholder="Masukkan Alamat"
                            class="form-control @error('alamat') is-invalid @enderror" value="{{ old('alamat') }}"
                            id="alamat" aria-describedby="emailHelp" name="alamat">
                        @error('alamat')
                            <div class="error">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
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
                        <input type="text" class="sign__input" placeholder="Masukkan Nomor HP"
                            class="form-control @error('nohp') is-invalid @enderror" value="{{ old('nohp') }}"
                            id="nohp" aria-describedby="emailHelp" name="nohp">
                        @error('nohp')
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
                        <input id="privacy" name="privacy" type="checkbox">
                        <label for="privacy">I agree to the <a href="privacy.html">Privacy Policy</a></label>
                    </div>

                    <button class="sign__btn" type="submit" name="submit"><span>Sign up</span></button>

                    <span class="sign__delimiter">or</span>

                    <span class="sign__text">Already have an account? <a href="{{ route('login') }}">Sign
                            in!</a></span>
                </form>
            </div>
        </div>
        <!-- end registration form -->
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
