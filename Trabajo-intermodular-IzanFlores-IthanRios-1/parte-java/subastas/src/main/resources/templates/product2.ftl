<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Gaming Laptop Pro X500</title>
  <link rel="stylesheet" href="css/styles_web.css" />
  <link rel="stylesheet" href="css/products.css" />
  <link rel="stylesheet" href="css/styles_add_product.css" />
</head>
<body>
<div id="header-placeholder"></div>

<div class="main-content">
  <div class="product-detail-container">
    <img src="../public/img/gaming-laptop.jpg" alt="Gaming Laptop Pro X500" />

    <div class="product-info">
      <h2>Gaming Laptop Pro X500</h2>
      <p class="description">
        An ultra-fast laptop with cutting-edge components and advanced cooling technology, designed to handle the most intense gaming sessions with ease.
      </p>
      <p class="price"><strong>Starting Price:</strong> €1,299.99</p>
      <div class="bid-section">
        <label for="bidAmount"><strong>Your Bid:</strong></label>
        <input type="number" id="bidAmount" name="bidAmount" min="1300" step="0.01" required />
      </div>
      <button class="submit-button" onclick="location.href='info_bid.html'">Place Bid</button>
      <button class="submit-button" onclick="location.href='home.html'">Back to de bils</button>
    </div>
  </div>
</div>

<footer class="footer" id="footer-placeholder">
  <p>2025 AuctionHub. All rights reserved.</p>
  <div>
    <a><img src="../public/img/facebook.jpg" alt="Facebook"> Facebook</a>
    <a><img src="../public/img/instagram.jpg" alt="Instagram"> Instagram</a>
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
