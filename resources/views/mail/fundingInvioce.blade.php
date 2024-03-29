<!-- resources/views/your-page.blade.php -->
@extends('layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>


       <p> We're pleased to notify you that your 9jajob wallet has been successfully topped up with an amount of{{ $item['amount']}}.</p>
<p>This funding will enable you to unlock various features and services on our platform, enhancing your experience and opportunities.</p>
<p>Your wallet balance is now ready to be used for activities such as job postings, business boosting, and more. We hope you find this added convenience beneficial in achieving your goals on 9jajob. <br/>
Should you have any inquiries or require assistance regarding your wallet or any other aspect of our platform, please feel free to reach out to us. </p>
<p>

Thank you for choosing 9jajob. We're committed to providing you with exceptional service and support every step of the way.

</p>
    </div>
@endsection
