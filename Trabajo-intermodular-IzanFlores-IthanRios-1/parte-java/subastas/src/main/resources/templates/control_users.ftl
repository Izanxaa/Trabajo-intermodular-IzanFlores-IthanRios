<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/styles_add_product.css">
</head>
<body>
<div id="header-placeholder"></div>

<div class="container">
    <h1>Admin Panel</h1>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>John Smith</td>
            <td>johnsmith@mail.com</td>
            <td>
                <button class="btn red">Delete</button>
                <button class="btn blue">Send Warning</button>
            </td>
        </tr>
        <tr>
            <td>Emily Davis</td>
            <td>emilydavis@mail.com</td>
            <td>
                <button class="btn red">Delete</button>
                <button class="btn blue">Send Warning</button>
            </td>
        </tr>
        <tr>
            <td>Michael Johnson</td>
            <td>mjohnson@mail.com</td>
            <td>
                <button class="btn red">Delete</button>
                <button class="btn blue">Send Warning</button>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    fetch("header.html")
        .then(res => res.text())
        .then(data => {
            document.getElementById("header-placeholder").innerHTML = data;
        });
</script>
</body>
</html>
