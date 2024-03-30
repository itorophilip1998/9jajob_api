<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')
@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>

 <p>
    Congratulations! You've received a referral bonus of <b>${{ $item['amount'] }}</b> from {{ $item['referrer_username'] }} for registering and listing a business on 9jajob. Enjoy the benefits!
 </p>
    </div>
@endsection
