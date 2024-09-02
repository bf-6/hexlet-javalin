@import org.example.hexlet.dto.users.UserPage
@param UserPage user
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course</title>
</head>
<body>
<table>
    <tr>
        <td>${user.getUser().getName()}</td>
        <td>${user.getUser().getEmail()}</td>
    </tr>
</table>
</body>
</html>