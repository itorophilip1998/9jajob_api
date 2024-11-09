<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>
        <p> We're excited to inform you that your business boost on Sabifix has been successfully activated! This boost will enhance your business visibility and reach on our platform, helping you attract more customers and grow your brand. </p>
       <p>
        Boost Start Date: <b>{{ $item['start_date'] }} <br/></b>
        Boost End Date: <b>{{ $item['end_date'] }}</b>
       </p>
       <p>  Thank you for choosing to boost your business with us. If you have any questions or need further assistance, please don't hesitate to reach out.
  </p>

    </div>
@endsection
