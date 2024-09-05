<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')
@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>
        <p>This is a reset password email confirmation, and you can find your token below:
             </p>
            <div class="button-container">
            <h1 class="button_token">{{ $item['token'] }}</h1>
            </div>
<p>
    If you did not request for password change, please ignore the mail and dont share the token/
</p>
    </div>
@endsection
