<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link rel="stylesheet" href="../public/css/styles_add_product.css">
</head>
<body>

    <div id="header-placeholder"></div>

    <div class="product-form-container">
        <h2>Welcome, JUAN</h2>
        <form action="#" method="POST">
            <label for="product-name">Product Name</label>
            <input type="text" id="product-name" name="product-name" required>

            <label for="description">Description</label>
            <textarea id="description" name="description" required></textarea>

            <label for="image-url">Image URL</label>
            <input type="url" id="image-url" name="image-url" placeholder="https://..." oninput="loadImage()">

            <div class="image-preview">
                <img id="preview" src="" alt="Image preview">
            </div>

            <div class="price-section">
                <label for="price">Starting Price (€)</label>
                <input type="number" id="price" name="price" min="0" step="0.01" required>
            </div>

            <button type="submit" class="submit-button" onclick="location.href='confirm_product.html'">Submit</button>
        </form>
    </div>


    <footer class="footer">
        <p>2025 AuctionHub. All rights reserved.</p>
        <div>
            <a href="#"><img src="img/facebook.jpg" alt="Facebook"> Facebook</a>
            <a href="#"><img src="img/instagram.jpg" alt="Instagram"> Instagram</a>
        </div>
    </footer>

    <script>
        function loadImage() {
const url = document.getElementById("image-url").value;
document.getElementById("preview").src = url;
}

        fetch("header.html")
.then(res => res.text())
.then(data => {
document.getElementById("header-placeholder").innerHTML = data;
});
    </script>

</body>
</html>
