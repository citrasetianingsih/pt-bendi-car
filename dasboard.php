<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .dashboard-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px; /* Set a width for better layout */
        }
        .dashboard-container h1 {
            color: #333;
        }
        .dashboard-container p {
            color: #666;
        }
        .logout-button {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
        }
        .logout-button:hover {
            background-color: #d32f2f;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
    <script>
        function logout() {
            // Simulate logout process
            // You can add additional logic here (e.g., clearing session storage, etc.)
            alert("You have been logged out.");
            // Redirect to login page or another page
            window.location.href = "index.html"; // Change this to your actual login URL
        }
    </script>
</head>
<body>
    <div class="dashboard-container">
        <h1>Daftar Mobil</h1>
        <p>Pt. bendi.car</p>
        
        <table>
            <thead>
                <tr>
                    <th>Merek</th>
                    <th>Harga</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Toyota</td>
                    <td>45,000.000</td>
                </tr>
                <tr>
                    <td>Honda</td>
                    <td>50,000.000</td>
                </tr>
                <tr>
                    <td>pajero</td>
                    <td>75,000.000</td>
                </tr>
                <tr>
                    <td>BMW</td>
                    <td>80,000.000</td>
                </tr>
                <tr>
                    <td>brio</td>
                    <td>50,000.000</td>
                </tr>
            </tbody>
        </table>

        <button class="logout-button" onclick="logout()">Logout</button>
    </div>
</body>
</html>