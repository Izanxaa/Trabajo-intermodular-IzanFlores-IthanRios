<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="css/styles_form.css">
    <link rel="stylesheet" href="css/styles_add_product.css">
</head>
<body>
<div id="header-placeholder"></div>

<div class="container">
    <h1>Admin Panel</h1>
    <table>
        <tbody>
            <#list usuarios as usuario>
                <tr>
                    <td>${usuario.nombre}</td>
                    <td>${usuario.email}</td>
                    <td>
                        <form action="/eliminar-usuario" method="post" style="display:inline;">
                            <input type="hidden" name="email" value="${usuario.email}">
                            <button class="btn red" type="submit">Delete</button>
                        </form>
                        <button class="btn blue">Send Warning</button>
                    </td>
                </tr>
            </#list>
        </tbody>
    </table>
</div>

<script>
    fetch("header")
        .then(res => res.text())
        .then(data => {
            document.getElementById("header-placeholder").innerHTML = data;
        });
</script>
</body>
</html>
