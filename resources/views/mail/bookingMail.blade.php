<!-- resources/views/your-page.blade.php -->
@extends('layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>

<p>{{ $item['mailInfo'] }}</p>
<p>

 <h4>Booking Details:</h4>
- Date Booked: {{ $item['date'] }} <br/>
- Time:{{ $item['time'] }}  <br/>
- Location: {{ $item['location'] }}  <br/>
- Phone: {{ $item['phone'] }} <br/>
</p>


<p>
    {{ $item['mailMessage'] }}
</p>
    </div>
@endsection
