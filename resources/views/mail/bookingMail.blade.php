<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>

<p>{{ $item['mailInfo'] }}</p>
<p>

 <h4>Booking Details:</h4>
- Date Booked: {{ $item?['booking']?['date'] }} <br/>
- Time:{{ $item?['booking']?['time'] }}  <br/>
- Location: {{ $item?['booking']?['location'] }}  <br/>
- Phone: {{ $item?['booking']?['phone'] }} <br/>
</p>


<p>
    {{ $item['mailMessage'] }}
</p>
    </div>
@endsection
