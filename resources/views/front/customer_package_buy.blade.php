@extends('front.app_front')

@section('content')

<div class="page-banner">
    <h1>{{ PAYMENT }}</h1>
    <nav>
        <ol class="breadcrumb justify-content-center">
            <li class="breadcrumb-item"><a href="{{ url('/') }}">{{ HOME }}</a></li>
            <li class="breadcrumb-item active">{{ PAYMENT }}</li>
        </ol>
    </nav>
</div>

<div class="page-content">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="user-sidebar">
                    @include('front.customer_sidebar')
                </div>
            </div>
            <div class="col-md-9">

                <div class="row">

                    @php
                        $final_price = session()->get('package_price');
                    @endphp

                    @if($g_setting->paypal_status == 'Enable')
                    <div class="col-md-12 mb_50">
                        <h2>{{ PAY_WITH_PAYPAL }}</h2>
                        <div id="paypal-button"></div>
                    </div>
                    @endif

                    @if($g_setting->stripe_status == 'Enable')
                    <div class="col-md-12 mb_50">
                        <h2>{{ PAY_WITH_STRIPE }}</h2>
                        @php
                            $final_price = round($final_price,2);
                            $cents = $final_price*100;
                            $customer_email = session()->get('email');
                        @endphp

                        <form action="{{ route('customer_payment_stripe') }}" method="post">
                            @csrf
                            <script
                                src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                                data-key="{{ $g_setting->stripe_public_key }}"
                                data-amount="{{ $cents }}"
                                data-name="{{ env('APP_NAME') }}"
                                data-description=""
                                data-image="{{ asset('public/images/stripe_icon.png') }}"
                                data-currency="usd"
                                data-email="{{ $customer_email }}"
                            >
                            </script>
                        </form>

                    </div>
                    @endif


                    @if($g_setting->bank_status == 'Enable')
                    <div class="col-md-12 mb_50">
                        <h2>{{ PAY_WITH_BANK }}</h2>
                        @php
                            $final_price = round($final_price,2);
                            $customer_email = session()->get('email');
                        @endphp

                        <form action="{{ route('customer_payment_bank') }}" method="post">
                            @csrf

                            <p><b>{{ BANK_INFORMATION }} ({{ WHERE_TO_PAY }})</b></p>
                            <p>{!! nl2br(clean($g_setting->bank_information)) !!}</p>

                            <textarea name="bank_transaction_info" class="form-control h-200 mb_20" cols="30" rows="10" placeholder="{{ BANK_TRANSACTION_INFO }}" required></textarea>
                            <button type="submit" class="btn btn-primary">{{ SUBMIT }}</button>
                        </form>

                    </div>
                    @endif


                </div>

            </div>
        </div>
    </div>
</div>


@php
    $paypal_mode = $g_setting->paypal_environment;
    $client = $g_setting->paypal_client_id;
    $secret = $g_setting->paypal_secret_key;
@endphp

@if($paypal_mode == 'sandbox')
    @php
        $paypal_url = 'https://api.sandbox.paypal.com/v1/';
        $env_type = 'sandbox';
    @endphp
@elseif($paypal_mode == 'production')
    @php
        $paypal_url = 'https://api.paypal.com/v1/';
        $env_type = 'production';
    @endphp
@endif

<script>
    paypal.Button.render({
        env: '{{ $env_type }}',
        client: {
            sandbox: '{{ $client }}',
            production: '{{ $client }}'
        },
        locale: 'en_US',
        style: {
            size: 'medium',
            color: 'blue',
            shape: 'rect',
        },

        // Set up a payment
        payment: function (data, actions) {
            return actions.payment.create({

                redirect_urls:{
                    return_url: '{{ url("customer/payment/paypal") }}'
                },

                transactions: [{
                    amount: {
                        total: '{{ $final_price }}',
                        currency: 'USD'
                    }
                }]
          });
        },

        // Execute the payment
        onAuthorize: function (data, actions) {
            return actions.redirect();
        }
    }, '#paypal-button');
</script>

@endsection