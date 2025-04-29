<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
    <link rel="stylesheet" href="css/styles_form.css">
<body>
<div class="container-form">
    <h1>Sing up</h1>
    <p>Fill out the following form and become part of our community (* can't be empty)</p>

    <form action="" method="POST">
        <input type="text" name="Username" placeholder="Username *" required>
        <input type="password" name="Password" placeholder="Password *" required>
        <input type="email" name="Email" placeholder="Email *" required>
        <input type="Date" name="Dob" placeholder="Date of Birth *" required>
        <input type="text" name="Address" placeholder="Address">
        <button type="submit">Sign up</button>
    </form>

    <p class="singup-link">Do you have an account? <a href="login">Log in</a></p>
</div>
</body>
</html>