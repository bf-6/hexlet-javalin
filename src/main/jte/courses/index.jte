@import org.example.hexlet.dto.courses.CoursesPage;
@param CoursesPage page

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Users</title>

</head>
<body>
<table>
    @for(var course : page.getCourses())
        <tr>
            <td><a href="/courses/${course.getId()}">${course.getId()}</a></td>
            <td>${course.getName()}</td>
            <td>${course.getDescription()}</td>
        </tr>
    @endfor
</table>
</body>
</html>