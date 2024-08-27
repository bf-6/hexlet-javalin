@import org.example.hexlet.dto.courses.CoursePage
@param CoursePage course
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course</title>
</head>
<body>
<table>
    <tr>
        <td>${course.getCourse().getId()}</td>
        <td>${course.getCourse().getName()}</td>
        <td>${course.getCourse().getDescription()}</td>
    </tr>
</table>
</body>
</html>