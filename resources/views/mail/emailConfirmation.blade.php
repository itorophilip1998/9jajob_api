<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')
@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>
        <p>Thank you for registering an account with 9jajob! To complete the registration process and access all the features of our platform, please confirm your email address by clicking the button below:
             </p>
            <div class="button-container">
            <a href="{{ $item['link'] }}" class="button_confirm">Confirm Email Address</a>
            </div>
<p>
    If you did not register for an account on 9jajob or believe you received this email by mistake, please disregard this message. Your account will not be activated unless you confirm your email address.
</p>
    </div>
@endsection
