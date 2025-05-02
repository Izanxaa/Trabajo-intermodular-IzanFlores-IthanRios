<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>${producto.nombre}</title>
  <link rel="stylesheet" href="/css/styles_web.css" />
  <link rel="stylesheet" href="/css/products.css" />
  <link rel="stylesheet" href="/css/styles_add_product.css" />
</head>
<body>
<div id="header-placeholder"></div>

<div class="main-content">
  <div class="product-detail-container">
    <img src="/producto/imagen/${producto.id}" alt="${producto.nombre}" />

    <div class="product-info">
      <h2>${producto.nombre}</h2>
      <p class="description">${producto.descripcion}</p>
      <p class="price"><strong>Current Price:</strong> €${producto.precio}</p>

      <form action="/product/${producto.id}" method="post">
        <label for="bidAmount"><strong>Your Bid:</strong></label>
        <input type="number" id="bidAmount" name="bidAmount" min="${producto.precio}" step="0.01" required />
        <button type="submit" class="submit-button">Place Bid</button>
      </form>

      <button class="submit-button" onclick="location.href='/home'">Back to the bids</button>
    </div>
  </div>
</div>

<footer class="footer" id="footer-placeholder">
  <p>2025 AuctionHub. All rights reserved.</p>
  <div>
    <a><img src="/img/facebook.jpg" alt="Facebook"> Facebook</a>
    <a><img src="/img/instagram.jpg" alt="Instagram"> Instagram</a>
  </div>
</footer>

<script>
  fetch("/header")
          .then(res => res.text())
          .then(data => {
            document.getElementById("header-placeholder").innerHTML = data;
          });
</script>
</body>
</html>