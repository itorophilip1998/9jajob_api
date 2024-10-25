<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .container p {
            margin-bottom: 20px;
            color: #666;
        }
        .delete-btn, .cancel-btn {
            display: inline-block;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin: 5px;
            font-size: 16px;
        }
        .delete-btn {
            background-color: #e74c3c;
            color: white;
            border: none;
        }
        .cancel-btn {
            background-color: #3498db;
            color: white;
            border: none;
        }
        .delete-btn:hover, .cancel-btn:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <div class="container">
                <p>{{ session('message') }}</p>

        <h2>Delete Account</h2>
        <p>Are you sure you want to delete your account? This action is irreversible.</p>

        <form action="/delete-account" method="POST">
            @csrf
            @method('POST')
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
            </div>

            <button type="submit" class="btn btn-danger delete-btn">Delete Account</button>
            {{-- <a href="{{ route('user.profile') }}" class="btn btn-primary cancel-btn">Cancel</a> --}}
        </form>
    </div>

    <!-- Bootstrap JS and dependencies (Optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
