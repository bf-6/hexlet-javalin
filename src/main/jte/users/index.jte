@import org.example.hexlet.dto.users.UsersPage
@import org.example.hexlet.util.NamedRoutes;
@param UsersPage page

    <html>
    <head>
        <meta charset="UTF-8">
        <title>Хекслет</title>
    </head>
    <body>
    <h1>Users</h1>
    @if(page.getUsers().isEmpty())
        <p>Пока не добавлено ни одного пользователя</p>
    @else
        @for(var user : page.getUsers())
            <div>
                <h2><a href="${NamedRoutes.usersPath()}">${user.getName()}</a> ${user.getEmail()}</h2>
            </div>
        @endfor
    @endif
    </body>
    </html>
