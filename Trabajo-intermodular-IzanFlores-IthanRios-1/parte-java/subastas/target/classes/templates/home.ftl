<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blind Auction</title>
    <link rel="stylesheet" href="css/styles_web.css">
    <link rel="stylesheet" href="css/styles_add_product.css">
    <link rel="alternate" type="application/rss+xml" title="Auction RSS" href="rss.xml">
</head>
<body>

<div id="header-placeholder"></div>

<section class="intro">
    <h2>Featured Auctions</h2>
    <p>These are the auctions for the top products you can find</p>
</section>

<section class="product-list">
    <h3>Latest Additions</h3>
    <div class="container-container-product">
        <#list productos as producto>
            <div class="product-container">
                <img src="/producto/imagen/${producto.id}" alt="${producto.nombre}" width="200">
                <h3>${producto.nombre}</h3>
                <p>${producto.descripcion?default("Sin descripción")}</p>
                <p><strong>Precio: $${producto.precio}</strong></p>
                <button onclick="location.href='/product/${producto.id}'">Bid product</button>
            </div>
        </#list>
    </div>
</section>

<footer class="footer">
    <p>2025 AuctionHub. All rights reserved.</p>
    <div>
        <a><img src="/img/facebook.jpg" alt="Facebook">Facebook</a>
        <a><img src="/img/instagram.jpg" alt="Instagram">Instagram</a>
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
