<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')
@section('content')
    <div class="container">
        <h2>Dear {{ $item["user"] }},</h2>

        @php
        // Format the amount with thousand separators and two decimal places
        $formattedAmount = number_format($item['amount'], 2);
    @endphp
 <p>
    Congratulations! You've received a referral bonus of <b>₦{{   $formattedAmount }}</b> from <b>{{ $item['referrer_username'] }}</b> for registering and listing a business on 9jajob. Enjoy the benefits!
 </p>
    </div>
@endsection
