<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${item.name} | Code &amp; Coffee</title>
    <link rel="stylesheet" type="text/css" href="itemDetail.css">
    <%-- Font Awesome for cart icon --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="menu-body">

<%-- ═══════════════ NAVBAR ═══════════════ --%>
<header class="navbar">
    <div class="logo">
        <a href="${pageContext.request.contextPath}/home.jsp">
            <img src="images/logo(2).png" alt="Code &amp; Coffee Logo">
        </a>
    </div>
    <nav class="nav-container">
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="MenuServlet">Menu</a>
            <a href="about.jsp">About Us</a>
            <a href="contact.jsp">Contact Us</a>
            <i class="fa-solid fa-cart-shopping"></i>
        </div>
    </nav>
</header>

<%-- ═══════════════ PAGE CONTENT ═══════════════ --%>
<div class="page-content">
    <div class="item-container">

        <%-- ── Left: Product Image ── --%>
        <div class="item-image">
            <img src="${item.imageUrl}" alt="${item.name}">

            
        </div>

        <%-- ── Right: Product Details ── --%>
        <div class="item-details">

            <%-- Breadcrumb --%>
            <p class="breadcrumb">
                Home
                <span>›</span>
                ${item.category}
                <span>›</span>
                ${item.name}
            </p>

            <%-- Name --%>
            <h1>${item.name}</h1>

            <%-- Price --%>
            <p class="price">$${String.format("%.2f", item.price)}</p>

            <%-- Description --%>
            <p class="description">${item.longDescription}</p>
<br>
            <hr class="divider">
<br>
            <%-- Size label --%>
            <p><strong>Size:</strong>&nbsp; ${item.sizes}</p>
<br>
            <%-- Size Dropdown --%>
            <select class="size-select" id="sizeSelect">
                <option value="">Choose an option</option>
                <option value="hot-regular">Hot Regular 12 oz</option>
                <option value="hot-large">Hot Large 16 oz</option>
                <option value="iced">Iced 16 oz</option>
            </select>
<br>
            <%-- Quantity + Add to Cart --%>
            <div class="cart-section">
                <input
                    type="number"
                    value="1"
                    min="1"
                    class="quantity-input"
                    id="quantityInput"
                    aria-label="Quantity"
                >
                <button class="add-to-cart-btn" onclick="addToCart(this)">
                    Add to Cart &nbsp;+
                </button>
            </div>

            

        </div><%-- end item-details --%>
    </div><%-- end item-container --%>

   
</div><%-- end page-content --%>

<script>
    function addToCart(btn) {
        const size = document.getElementById('sizeSelect').value;
        if (!size) {
            document.getElementById('sizeSelect').style.borderColor = '#c04848';
            document.getElementById('sizeSelect').focus();
            return;
        }
        document.getElementById('sizeSelect').style.borderColor = '';

        const original = btn.textContent;
        btn.textContent = '✓ Added!';
        btn.style.background = '#3a6b35';
        setTimeout(() => {
            btn.textContent = original;
            btn.style.background = '';
        }, 1800);
    }
</script>

</body>
</html>
