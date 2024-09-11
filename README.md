## Шпаргалка по Javalin

### Начало работы с Javalin 
***
```java
import io.javalin.Javalin;

public class HelloWorld {
    public static void main(String[] args) {
        var app = Javalin.create(config -> {
            config.bundledPlugins.enableDevLogging();
        });
        app.get("/здесь_указываем_путь", ctx -> ctx.result("Hello World")); // это обработчик запроса
        app.start(7070);
    }
}
```

### Методы Javalin

```java
ctx.result(); // формирует тело ответа
ctx.contentType(); // устанавливает тип возвращаемого контента
ctx.json(); // возвращает данные в виде json
ctx.status(); // меняет код ответа
ctx.header(); // устанавливает заголовки

ctx.queryParamMap(); // Все параметры запросов
ctx.queryParam("name"); // Параметр запроса
ctx.formParamMap(); // Все параметры формы
ctx.formParam("name"); // Параметр формы
```

Open in browser: http://localhost:7070