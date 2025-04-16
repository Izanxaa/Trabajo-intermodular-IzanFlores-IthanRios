package org.example;
import io.javalin.Javalin;
import io.javalin.rendering.template;
//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Javalin app = Javalin.create(config -> {
            // Sirve archivos estáticos desde la carpeta 'public'
            config.addStaticFiles("/public");
        }).start(7000);

        // Ruta para mostrar el login
        app.get("/login", ctx -> {
            ctx.render("/templates/login.ftl");
        });

        // Ruta para mostrar el sign up
        app.get("/signup", ctx -> {
            ctx.render("/templates/signup.ftl");
        });

        app.get("/home", ctx -> {
            ctx.render("/templates/home.ftl");
        });

        app.get("/info_bid", ctx -> {
            ctx.render("/templates/info_bid.ftl");
        });

        app.get("/menu", ctx -> {
            ctx.render("/templates/menu.ftl");
        });

        app.get("/mybids_list", ctx -> {
            ctx.render("/templates/mybids_list.ftl");
        });

        app.get("/add_products", ctx -> {
            ctx.render("/templates/add_products.ftl");
        });

        app.get("/confirm_product", ctx -> {
            ctx.render("/templates/confirm_product.ftl");
        });

        app.get("/control_users", ctx -> {
            ctx.render("/templates/control_users.ftl");
        });

        app.get("/signup", ctx -> {
            ctx.render("/templates/signup.ftl");
        });

        app.get("/header", ctx -> {
            ctx.render("/templates/header.ftl");
        });

        for (int i = 1; i <= 9; i++) {
            int i2 = i;
            app.get("/product"+i, ctx -> {
                ctx.render("/templates/product"+i2+".ftl");
            });
        }
    }
}