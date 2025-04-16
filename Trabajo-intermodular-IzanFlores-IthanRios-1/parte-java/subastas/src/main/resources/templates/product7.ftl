<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>NitroPC Creator Forge</title>
  <link rel="stylesheet" href="../public/css/styles_web.css" />
  <link rel="stylesheet" href="../public/css/products.css" />
  <link rel="stylesheet" href="../public/css/styles_add_product.css" />
</head>
<body>
  <div id="header-placeholder"></div>

  <div class="main-content">
    <div class="product-detail-container">
      <img src="img/super-pc3.jpg" alt="NitroPC Creator Forge"/>

      <div class="product-info">
        <h2>NitroPC Creator Forge</h2>
        <p class="description">
          Built for creators, video editors, and designers, this machine delivers sharp performance and efficiency for high-resolution workloads.
        </p>
        <p class="price"><strong>Starting Price:</strong>€1,050.00</p>
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
