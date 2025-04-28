<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>MacBook Pro M3</title>
  <link rel="stylesheet" href="css/styles_web.css" />
  <link rel="stylesheet" href="css/products.css" />
  <link rel="stylesheet" href="css/styles_add_product.css" />
</head>
<body>
<div id="header-placeholder"></div>

<div class="main-content">
  <div class="product-detail-container">
    <img src="img/macbook.jpg" alt="Gaming Laptop Pro X500" />

    <div class="product-info">
      <h2>MacBook Pro M3</h2>
      <p class="description">
        Apple’s latest MacBook with the powerful M3 chip, perfect for creatives and professionals who value performance, design, and mobility.
      </p>
      <p class="price"><strong>Starting Price:</strong> €1,799.00</p>
      <div class="bid-section">
        <label for="bidAmount"><strong>Your Bid:</strong></label>
        <input type="number" id="bidAmount" name="bidAmount" min="1800" step="0.01" required />
      </div>
      <button class="submit-button" onclick="location.href='info_bid'">Place Bid</button>
      <button class="submit-button" onclick="location.href='home'">Back to de bils</button>
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
  fetch("header")
          .then(res => res.text())
          .then(data => {
            document.getElementById("header-placeholder").innerHTML = data;
          });
</script>
</body>
</html>
