@import gg.jte.Content
@import org.example.hexlet.dto.BasePage
@import org.example.hexlet.util.NamedRoutes
@param Content content
@param BasePage page = null

<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Welcome page</title>
    <title>/courses</title>
    <title>/</title>
</head>
<body>
<p>
    <a href="/">Main</a>
    <a href="${NamedRoutes.coursesPath()}">Courses</a>
</p>
@if(page != null && page.getFlash() != null)
    <p>${page.getFlash()}</p>
@endif
<p>COURSES:</p>
${content}
<footer style="color: red; font-size: 14px;">
    <br>
    <hr>
    Курсы
</footer>
</body>
</html>