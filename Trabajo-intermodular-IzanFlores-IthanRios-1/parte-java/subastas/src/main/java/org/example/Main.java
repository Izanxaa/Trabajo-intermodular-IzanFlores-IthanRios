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
    }
}