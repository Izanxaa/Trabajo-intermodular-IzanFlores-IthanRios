<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Bids</title>
  <link rel="stylesheet" href="css/styles_add_product.css">
  <link rel="stylesheet" href="css/styles_bids.css">
</head>
<body>
  <div id="header-placeholder"></div>

  <div class="main-content">
    <h2 class="my-bids-title">My Participated Bids</h2>

    <!-- Bid item 1 -->
    <div class="bid-item">
      <img src="img/producto-pruebas.jpg" alt="NitroPC">
      <div class="bid-info">
        <div class="bid-description">
          <h3>NitroPC</h3>
          <p><strong>Bid Amount:</strong> €899.00</p>
        </div>
        <div class="bid-actions">
          <button class="submit-button">Modify Bid</button>
          <button class="submit-button cancel">Cancel Bid</button>
        </div>
      </div>
    </div>
    <hr class="bid-divider">

    <!-- Bid item 2 -->
    <div class="bid-item">
      <img src="img/gaming-laptop.jpg" alt="Gaming Laptop Pro X500">
      <div class="bid-info">
        <div class="bid-description">
          <h3>Gaming Laptop Pro X500</h3>
          <p><strong>Bid Amount:</strong> €1,299.99</p>
        </div>
        <div class="bid-actions">
          <button class="submit-button">Modify Bid</button>
          <button class="submit-button cancel">Cancel Bid</button>
        </div>
      </div>
    </div>
    <hr class="bid-divider">

    <!-- Bid item 3 -->
    <div class="bid-item">
      <img src="img/office-laptop.jpg" alt="Office Laptop Lite 14">
      <div class="bid-info">
        <div class="bid-description">
          <h3>Office Laptop Lite 14"</h3>
          <p><strong>Bid Amount:</strong> €499.00</p>
        </div>
        <div class="bid-actions">
          <button class="submit-button">Modify Bid</button>
          <button class="submit-button cancel">Cancel Bid</button>
        </div>
      </div>
    </div>

    <div class="bids-footer-buttons">
      <button onclick="location.href='home.html'" class="submit-button">Back to Home</button>
      <button onclick="location.href='login.html'" class="submit-button">Log Out</button>
    </div>
  </div>

  <footer class="footer">
    <p>2025 AuctionHub. All rights reserved.</p>
    <div>
        <a><img src="img/facebook.jpg" alt="Facebook">Facebook</a>
        <a><img src="img/instagram.jpg" alt="Instagram">Instagram</a>
    </div>
</footer>

  <script>
    fetch("header.html").then(res => res.text()).then(data => document.getElementById("header-placeholder").innerHTML = data);
    fetch("footer.html").then(res => res.text()).then(data => document.getElementById("footer-placeholder").innerHTML = data);
  </script>
</body>
</html>