<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mail Notification</title>
    <style>

.button-container {
    text-align: center;
    margin: 1rem 0;

}

.button_confirm {
    display: inline-block;
    padding: 10px 20px;
    background-color: #086c0a; /* Green */
    color: white !important;
    border: 2px solid #086c0a; /* Green border */
    border-radius: 5px;
    text-decoration: none;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Shadow */
    transition: all 0.3s ease;
}
p,h2{
    color:black !important
}
.button_confirm:hover {
    background-color: #45a049; /* Darker green on hover */
    border-color: #45a049; /* Darker green border on hover */
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Larger shadow on hover */
}


        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;

        }
        .mailBox{
                box-sizing: border-box;
    font-family: -apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Helvetica,Arial,sans-serif,'Apple Color Emoji','Segoe UI Emoji','Segoe UI Symbol';
    background-color: #edf2f7 !important;
    border-bottom: 1px solid #edf2f7;
    border-top: 1px solid #edf2f7;
    margin: 0;
    width: 100%;
            padding-top: 1rem;

        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            /* border: 1px solid #ccc; */
            border-radius: 5px;
            /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
            background:white;
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        .invoice-details {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .invoice-details div {
            flex: 1;
        }

        .items {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .items th, .items td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        .items th {
            background-color: #f2f2f2;
        }

        .total {
            margin-top: 20px;
            text-align: right;
        }
           .logo {
            max-width: 150px; /* Adjust the max-width based on your logo size */
            margin-bottom: 10px;
        }
        footer{
            text-align: center;
            margin-bottom: 2rem;
            margin-top: 2rem;
        }
    </style>
</head>
<body>
  <div class="mailBox">
    {{-- header --}}
   @include('mail.layouts.mail_header')

     @yield('content')

    {{-- footer --}}
    @include('mail.layouts.mail_footer')

  </div>
</body>
</html>


