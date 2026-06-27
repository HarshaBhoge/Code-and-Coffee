<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order | Code & Coffee</title>

    <style>
        /* =============================
           GLOBAL STYLES
        ==============================*/
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            background: linear-gradient(rgba(0,0,0,0.85), rgba(0,0,0,0.85)),
                        url("images/coffee-bg.jpg");
            background-size: cover;
            background-position: center;
            color: #fff;
        }

        /* =============================
           NAVBAR
        ==============================*/
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 60px;
            background-color: rgba(0,0,0,0.6);
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
            color: #f5c16c;
        }

        .nav-links a {
            margin-left: 25px;
            text-decoration: none;
            color: white;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #f5c16c;
        }

        /* =============================
           ORDER CONTAINER
        ==============================*/
        .order-container {
            width: 40%;
            margin: 80px auto;
            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 15px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .order-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #f5c16c;
        }

        /* =============================
           FORM STYLING
        ==============================*/
        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: none;
            outline: none;
            font-size: 14px;
        }

        input:focus, select:focus {
            border: 2px solid #f5c16c;
        }

        /* =============================
           BUTTON
        ==============================*/
        .order-btn {
            width: 100%;
            padding: 12px;
            border-radius: 25px;
            border: none;
            background-color: #f5c16c;
            color: #000;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .order-btn:hover {
            background-color: #e0a94b;
        }

        /* =============================
           FOOTER
        ==============================*/
        footer {
            text-align: center;
            padding: 20px;
            background-color: rgba(0,0,0,0.7);
            font-size: 14px;
            color: #bbb;
        }

    </style>
</head>
<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">Code & Coffee</div>
    <div class="nav-links">
        <a href="home.jsp">Home</a>
        <a href="menu.jsp">Menu</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
    </div>
</div>

<!-- ORDER FORM -->
<div class="order-container">
    <h2>Place Your Order</h2>

    <form action="OrderServlet" method="post">

        <div class="form-group">
            <label>Full Name</label>
            <input type="text" name="customerName" required>
        </div>

        <div class="form-group">
            <label>Select Coffee</label>
            <select name="coffeeType" required>
                <option value="">-- Choose Coffee --</option>
                <option>Espresso</option>
                <option>Cappuccino</option>
                <option>Latte</option>
                <option>Mocha</option>
                <option>Cold Brew</option>
                <option>Piccolo</option>
            </select>
        </div>

        <div class="form-group">
            <label>Quantity</label>
            <input type="number" name="quantity" min="1" required>
        </div>

        <div class="form-group">
            <label>Phone Number</label>
            <input type="tel" name="phone" required>
        </div>

        <button type="submit" class="order-btn">Confirm Order</button>

    </form>
</div>

<!-- FOOTER -->
<footer>
    © 2026 Code & Coffee | Brewing Logic, One Cup at a Time
</footer>

</body>
</html>