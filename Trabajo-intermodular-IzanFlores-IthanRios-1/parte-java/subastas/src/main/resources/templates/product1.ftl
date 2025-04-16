<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>NitroPC</title>
  <link rel="stylesheet" href="css/styles_web.css" />
  <link rel="stylesheet" href="css/products.css" />
  <link rel="stylesheet" href="css/styles_add_product.css" />
</head>
<body>
  <div id="header-placeholder"></div>

  <div class="main-content">
    <div class="product-detail-container">
      <img src="img/producto-pruebas.jpg" alt="Gaming Laptop Pro X500" />

      <div class="product-info">
        <h2>NitroPC</h2>
        <p class="description">
          A high-performance desktop built for demanding gamers, equipped with powerful hardware and striking aesthetics to elevate your gameplay experience.
        </p>
        <p class="price"><strong>Starting Price:</strong> €899.00</p>
        <button class="submit-button" onclick="location.href='info_bid.html'">Place Bid</button>
        <button class="submit-button" onclick="location.href='home.html'">Back to de bils</button>
      </div>
    </div>
  </div>

  <footer class="footer" id="footer-placeholder">
    <p>2025 AuctionHub. All rights reserved.</p>
    <div>
      <a><img src="img/facebook.jpg" alt="Facebook"> Facebook</a>
      <a><img src="img/instagram.jpg" alt="Instagram"> Instagram</a>
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
