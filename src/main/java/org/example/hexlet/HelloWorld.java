package org.example.hexlet;

import io.javalin.Javalin;
import io.javalin.http.NotFoundResponse;
import io.javalin.rendering.template.JavalinJte;
import org.apache.commons.text.StringEscapeUtils;
import org.example.hexlet.dto.courses.CoursePage;
import org.example.hexlet.dto.courses.CoursesPage;
import org.example.hexlet.model.Course;

import java.util.Collections;
import java.util.List;

public class HelloWorld {

    private static final List<Course> COURSES = Data.getCourses();

    public static void main(String[] args) {
        // Создаем приложение
        var app = Javalin.create(config -> {
            config.bundledPlugins.enableDevLogging();
            config.fileRenderer(new JavalinJte());
        });

        // Описываем, что загрузится по адресу /
        app.get("/", ctx -> ctx.result("Hello World!"));
        app.get("/hello", ctx -> {
            var page = ctx.queryParamAsClass("name", String.class).getOrDefault("World");
            ctx.result("Hello, " + page + "!");
        });

        app.get("/users/{id}/post/{postId}", ctx -> {
            var userId = ctx.pathParam("id");
            var postId =  ctx.pathParam("postId");
            ctx.result("User ID: " + userId + " Post ID: " + postId);
        });

        app.get("/users/{id}", ctx -> {
            var id = ctx.pathParam("id");
            var escapedId = StringEscapeUtils.escapeHtml4(id);
            ctx.contentType("text/html");
            ctx.result("User ID: " + escapedId);
        });

        app.get("/courses", ctx -> {
            var coursesPage = new CoursesPage(COURSES);
            ctx.render("courses/index.jte", Collections.singletonMap("page", coursesPage));
        });

        app.get("/courses/{id}", ctx -> {
            var id = ctx.pathParam("id");

            var c = COURSES.stream()
                    .filter(course -> course.getId() == Integer.parseInt(id))
                    .findFirst();

            if (c.isEmpty()) {
                throw new NotFoundResponse("Course not found");
            }

            CoursePage course = new CoursePage(c.get());

            ctx.render("courses/show.jte", Collections.singletonMap("course", course));

        });

        app.start(7070); // Стартуем веб-сервер
    }
}
