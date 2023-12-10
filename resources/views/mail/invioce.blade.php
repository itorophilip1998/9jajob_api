<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice</title>
    <style>
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

        .header {
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
        <div class="header">
                        <img src="https://i.ibb.co/564KHgf/9jajob.png" alt="Company Logo" class="logo">

        </div>

    <div class="container">
        <div class="header">
            <h2>Invoice</h2>
            <p>Hello {{  $item["user"] }} Thank you for your using 9jajob service!</p>
        </div>

        <div class="invoice-details">
            <div>
                <strong>Invoice Number:</strong> {{ $item["invoiceNumber"] }}
            </div>

        </div>

        <div class="invoice-details">

            <div>
                <strong>Invoice Date:</strong> {{ $item["invoiceDate"] }}
            </div>
        </div>

        <div class="invoice-details">

            <div>
                <strong>Refrence Number:</strong> {{ $item["ref_number"] }}
            </div>
        </div>

        <table class="items">
            <thead>
                <tr>
                    <th>Purpose</th>
                    <th>Transaction Status</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <td>{{ $item['purpose'] }}</td>
                        <td>{{ $item['status'] }}</td>
                        <td>{{ $item['amount'] }}</td>
                    </tr>
            </tbody>
        </table>

        <div class="total">
            <strong>Total Amount:</strong> {{ $item["amount"] }}
        </div>
    </div>
    <footer>
        © 2023 9jajob. All rights reserved.

    </footer>
  </div>
</body>
</html>


