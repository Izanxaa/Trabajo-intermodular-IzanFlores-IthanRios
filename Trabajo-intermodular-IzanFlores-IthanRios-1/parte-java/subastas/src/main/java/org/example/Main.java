package org.example;
import io.javalin.Javalin;
import io.javalin.Javalin;
import io.javalin.rendering.template.JavalinFreemarker;
import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args) {

        Configuration freemarkerConfig = new Configuration(Configuration.VERSION_2_3_32);
        freemarkerConfig.setClassForTemplateLoading(Main.class, "/templates"); // carpeta dentro de resources
        freemarkerConfig.setDefaultEncoding("UTF-8");
        freemarkerConfig.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

        JavalinFreemarker freemarker = new JavalinFreemarker(freemarkerConfig);

        Javalin app = Javalin.create(config -> {
            config.staticFiles.add("/public");
            config.fileRenderer(freemarker);
        }).start(7000);

        app.get("/login", ctx -> {
            ctx.render("login.ftl");
        });

        app.post("/login", ctx -> {
            String Email = ctx.formParam("Email");
            String Password = ctx.formParam("Password");
            try (Connection conn = DBConect.connect()) {
                String sql = "select * from usuarios where email = ? and contrasena = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, Email);
                    stmt.setString(2, Password);
                    try (ResultSet rs = stmt.executeQuery()) {
                        if (rs.next()) {
                            String nombreUsuario = rs.getString("nombre");
                            String tipoUsuario = rs.getString("tipo_usuario");
                            ctx.sessionAttribute("nombreUsuario", nombreUsuario);
                            ctx.sessionAttribute("tipoUsuario", tipoUsuario);
                            ctx.redirect("/menu");
                        } else {
                            ctx.result("Correo o contraseña incorrectos.");
                        }
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                ctx.result("Error al conectar con la base de datos.");
            }
        });

        app.get("/singup", ctx -> {
            ctx.render("singup.ftl");
        });

        app.post("/singup", ctx -> {

            String Username = ctx.formParam("Username");
            String Password = ctx.formParam("Password");
            String Email = ctx.formParam("Email");
            String Address = ctx.formParam("Address");
            String Dob = ctx.formParam("Dob"); //"YYYY-MM-DD"

            SimpleDateFormat inputFormat = new SimpleDateFormat("dd-MM-yyyy");
            java.util.Date parsedDate = inputFormat.parse(Dob);
            java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());


            try (Connection conn = DBConect.connect()) {
                String sql = "insert into usuarios (email, nombre, contrasena, tipo_usuario, direccion, fecha_nac) " +
                        "values (?, ?, ?, ?, ?, ?)"; // "Usuario" default

                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    /* evitar SQL Inyection */
                    stmt.setString(1, Email);
                    stmt.setString(2, Username);
                    stmt.setString(3, Password);
                    stmt.setString(4, "Usuario");
                    stmt.setString(5, Address);
                    stmt.setString(6, String.valueOf(sqlDate));

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        ctx.redirect("/login");
                    } else {
                        ctx.result("Error al registrar el usuario.");
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                ctx.result("Error al conectar a la base de datos.");
            }
        });

        app.get("/home", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null) {
                ctx.redirect("/login");
                return;
            }
            ctx.render("home.ftl");
        });

        app.get("/info_bid", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null) {
                ctx.redirect("/login");
                return;
            }
            ctx.render("info_bid.ftl");
        });

        app.get("/menu", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null) {
                ctx.redirect("/login");
                return;
            }
            Map<String, Object> model = new HashMap<>();
            model.put("nombreUsuario", nombreUsuario);
            model.put("tipoUsuario", tipoUsuario);
            ctx.render("menu.ftl", model);

        });

        app.get("/mybid_list", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null) {
                ctx.redirect("/login");
                return;
            }
            ctx.render("mybid_list.ftl");

        });

        app.get("/add_product", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null) {
                ctx.redirect("/login");
                return;
            }
            ctx.render("add_product.ftl");
        });

        app.get("/confirm_product", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null) {
                ctx.redirect("/login");
                return;
            }
            ctx.render("confirm_product.ftl");
        });

        app.get("/control_users", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null || !tipoUsuario.equals("Administrador")) {
                ctx.redirect("/login");
                return;
            }
            List<Map<String, String>> usuarios = new ArrayList<>();
            try (Connection conn = DBConect.connect()) {
                String sql = "select nombre, email, tipo_usuario from usuarios";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    try (ResultSet rs = stmt.executeQuery()) {
                        while (rs.next()) {
                            if ("Administrador".equals(rs.getString("tipo_usuario"))) {
                                continue;
                            }
                            Map<String, String> user = new HashMap<>();
                            user.put("nombre", rs.getString("nombre"));
                            user.put("email", rs.getString("email"));
                            usuarios.add(user);
                        }
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                ctx.result("Error al obtener los usuarios.");
                return;
            }
            Map<String, Object> model = new HashMap<>();
            model.put("usuarios", usuarios);
            ctx.render("control_users.ftl", model);
        });

        app.get("/header", ctx -> {
            String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (nombreUsuario == null || tipoUsuario == null) {
                ctx.redirect("/login");
                return;
            }
            ctx.render("header.ftl");
        });

        for (int i = 1; i <= 9; i++) {
            int i2 = i;
            app.get("/product" + i, ctx -> {
                String nombreUsuario =  ctx.sessionAttribute("nombreUsuario");
                String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
                if (nombreUsuario == null || tipoUsuario == null) {
                    ctx.redirect("/login");
                    return;
                }
                ctx.render("product" + i2 + ".ftl");
            });
        }
        app.post("/eliminar-usuario", ctx -> {
            String tipoUsuario = ctx.sessionAttribute("tipoUsuario");
            if (tipoUsuario == null || !tipoUsuario.equals("Administrador")) {
                ctx.redirect("/login");
                return;
            }

            String email = ctx.formParam("email");
            try (Connection conn = DBConect.connect()) {
                String sql = "delete from usuarios where email = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, email);
                    int filasAfectadas = stmt.executeUpdate();
                    if (filasAfectadas > 0) {
                        ctx.redirect("/control_users");
                    } else {
                        ctx.result("Usuario no encontrado o no se pudo eliminar.");
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                ctx.result("Error al eliminar el usuario.");
            }
        });
    }
}