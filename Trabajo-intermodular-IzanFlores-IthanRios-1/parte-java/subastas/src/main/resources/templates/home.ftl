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
        <!-- Items -->
            <div class="container-container-product">
                <!-- Item 1 -->
                <div class="product-container">
                    <img src="/img/producto-pruebas.jpg" alt="PC">
                    <h3>NitroPC</h3>
                    <p>High-performance desktop for gaming lovers.</p>
                    <button onclick="location.href='product1'">Bid product</button>
                </div>
                <div class="product-container">
                    <img src="/img/gaming-laptop.jpg" alt="PC">
                    <h3>Gaming Laptop Pro X500</h3>
                    <p>Ultra-fast laptop with advanced cooling.</p>
                    <button onclick="location.href='product2'">Bid product</button>
                </div>
                <div class="product-container">
                    <img src="/img/office-laptop.jpg" alt="PC">
                    <h3>Office Laptop Lite 14"</h3>
                    <p>ILightweight and perfect for daily tasks.</p>
                    <button onclick="location.href='product3'">Bid product</button>
                </div>
                <div class="product-container">
                    <img src="/img/macbook.jpg" alt="PC">
                    <h3>MacBook Pro M3</h3>
                    <p>Sleek design with M3 chip for professionals.</p>
                    <button onclick="location.href='product4'">Bid product</button>
                </div>
                <div class="product-container">
                    <img src="/img/super-pc.jpg" alt="PC">
                    <h3>NitroPC Shadow Core</h3>
                    <p>RGB powerhouse ready for multitasking.</p>
                    <button onclick="location.href='product5'">Bid product</button>
                </div>
                <div class="product-container">
                    <img src="/img/super-pc2.jpg" alt="PC">
                    <h3>NitroPC Silent Storm</h3>
                    <p>Silent beast with optimized airflow.</p>
                    <button onclick="location.href='product6'">Bid product</button>
                </div>
                <div class="product-container">
                    <img src="/img/super-pc3.jpg" alt="PC">
                    <h3>NitroPC Creator Forge</h3>
                    <p>Built for creators and high-res workflows.</p>
                    <button onclick="location.href='product7'">Bid product</button>
                </div>
                <!-- Item 8 -->
                <div class="product-container">
                    <img src="/img/mega-pc.jpg" alt="PC">
                    <h3>NitroPC Aurora Pulse</h3>
                    <p>Gaming PC with insane LED setup.</p>
                    <button onclick="location.href='product8'">Bid product</button>
                </div>
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
