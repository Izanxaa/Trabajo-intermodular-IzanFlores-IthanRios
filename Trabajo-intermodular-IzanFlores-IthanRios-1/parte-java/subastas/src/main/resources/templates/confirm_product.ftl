<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Confirmation</title>
    <link rel="stylesheet" href="../public/css/styles_add_product.css">
</head>
<body>

    <div id="header-placeholder"></div>

    <div class="main-content">
        <div class="product-form-container">
            <h2>Product Successfully Uploaded</h2>

            <div style="text-align: left;">
                <p><strong>Product Name:</strong> Gaming Laptop Pro X500</p>
                <p><strong>Description:</strong> An ultra-fast laptop with cutting-edge components and advanced cooling technology, designed to handle the most intense gaming sessions with ease.</p>
                <p><strong>Image Preview:</strong></p>
                <div class="image-preview">
                    <img src="img/producto-pruebas.jpg" alt="Gaming Laptop">
                </div>
                <p><strong>Starting Price:</strong> €1,299.99</p>
            </div>

            <button onclick="location.href='home.html'" class="submit-button">Confirm</button>
        </div>
    </div>

    <footer class="footer">
        <p>2025 AuctionHub. All rights reserved.</p>
        <div>
            <a href="#"><img src="img/facebook.jpg" alt="Facebook"> Facebook</a>
            <a href="#"><img src="img/instagram.jpg" alt="Instagram"> Instagram</a>
        </div>
    </footer>

    <script>
        fetch("header.html")
.then(res => res.text())
.then(data => {
document.getElementById("header-placeholder").innerHTML = data;
});
    </script>

</body>
</html>
