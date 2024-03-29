<!-- resources/views/your-page.blade.php -->
@extends('layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>
        <p> We're excited to inform you that your business boost on 9jajob has been successfully activated! This boost will enhance your business visibility and reach on our platform, helping you attract more customers and grow your brand. </p>
       <p>
        Boost Start Date: {{ $item['start_date'] }} <br/>
        Boost End Date: {{ $item['end_date'] }}
       </p>
       <p>  Thank you for choosing to boost your business with us. If you have any questions or need further assistance, please don't hesitate to reach out.
  </p>

    </div>
@endsection
