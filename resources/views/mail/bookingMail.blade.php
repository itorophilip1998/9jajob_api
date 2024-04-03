<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>

<p>{{ $item['mailInfo'] }}</p>


  <p>
 <h4>Booking Details:</h4>
- Date Booked: <b> {{ \Carbon\Carbon::parse($item['booking']['date'])->format('jS F, Y') ?? "-"}}</b> <br/>
- Time: <b>{{ $item['booking']['time'] ?? "-"}}</b>  <br/>
- Location: <b>{{ $item['booking']['location'] ?? "-"}} </b> <br/>
- Phone: <b>{{ $item['booking']['phone']  ?? "-"}}</b> <br/>
</p>


<p>
    {{ $item['mailMessage'] }}
</p>
    </div>
@endsection
