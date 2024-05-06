@extends('user.layout.main')

@section('content')
    <main class="main">
        <!-- home -->
        <div class="home">
            <!-- home bg -->
            <div class="home__bg"></div>
            <!-- end home bg -->

            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="home__content">
                            <h1 class="home__title">Welcome to<br>Car Rent</h1>
                            <p class="home__text">Aplikasi rental mobil bisa dilakukan dimana saja dan kapan saja <br>
                                Dengan proses yang cepat, aman &amp; nyaman</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end home -->

        <div class="container">
            <!-- cars -->
            <section class="row">
                <!-- title -->
                <div class="col-12">
                    <div class="main__title main__title--first">
                        <h2>Our Cars!</h2>

                        <a href="/mobiluser" class="main__link">View more <svg xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 24 24">
                                <path
                                    d="M17.92,11.62a1,1,0,0,0-.21-.33l-5-5a1,1,0,0,0-1.42,1.42L14.59,11H7a1,1,0,0,0,0,2h7.59l-3.3,3.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l5-5a1,1,0,0,0,.21-.33A1,1,0,0,0,17.92,11.62Z" />
                            </svg></a>
                    </div>
                </div>
                <!-- end title -->

                <!-- car -->
                @foreach ($mobils as $mobil)
                    <div class="col-12 col-md-6 col-xl-4">
                        <div class="car">
                            <div class="splide splide--card car__slider">
                                <div class="splide__arrows">
                                    <button class="splide__arrow splide__arrow--prev" type="button"><svg
                                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path
                                                d="M17,11H9.41l3.3-3.29a1,1,0,1,0-1.42-1.42l-5,5a1,1,0,0,0-.21.33,1,1,0,0,0,0,.76,1,1,0,0,0,.21.33l5,5a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L9.41,13H17a1,1,0,0,0,0-2Z">
                                            </path>
                                        </svg></button>
                                    <button class="splide__arrow splide__arrow--next" type="button"><svg
                                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path
                                                d="M17.92,11.62a1,1,0,0,0-.21-.33l-5-5a1,1,0,0,0-1.42,1.42L14.59,11H7a1,1,0,0,0,0,2h7.59l-3.3,3.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l5-5a1,1,0,0,0,.21-.33A1,1,0,0,0,17.92,11.62Z">
                                            </path>
                                        </svg></button>
                                </div>

                                <div class="splide__track">
                                    <ul class="splide__list">
                                        <li class="splide__slide">
                                            <img src="{{ asset('storage/mobil/' . $mobil->foto) }}" alt="">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car__title">
                                <h3 class="car__name"><a href="car.html">{{ $mobil->model }}</a></h3>
                                <span class="car__year">{{ $mobil->merek }}</span>
                            </div>
                            <div class="car__footer">
                                <span class="car__price">Rp. {{ $mobil->harga }} <sub>/ hari</sub></span>
                                <a href="{{ route('mobil.detail', ['id' => $mobil->id]) }}"
                                    class="car__detail"><span>Detail</span></a>
                                <a href="{{ route('rental.form', ['mobil_id' => $mobil->id]) }}" class="car__more"
                                    data-harga="{{ $mobil->harga }}"><span>Rental</span></a>
                            </div>
                        </div>
                    </div>
                @endforeach
                <!-- end car -->
            </section>
            <!-- end cars -->
        </div>

    </main>
@endsection
