<%--
@import org.example.hexlet.dto.users.BuildUserPage
@import org.example.hexlet.util.NamedRoutes
@param BuildUserPage page

@if(page.getErrors() != null)
    <ul>
        @for(var validator : page.getErrors().values())
            @for(var error : validator)
                <li>${error.getMessage()}</li>
            @endfor
        @endfor
    </ul>
@endif

<meta charset="UTF-8">
<form action="${NamedRoutes.usersPath()}" method="post">
    <div>
        <label>
            Имя
            <input type="text" name="name" />
        </label>
    </div>
    <div>
        <label>
            Email
            <input type="email" required name="email" />
        </label>
    </div>
    <div>
        <label>
            Пароль
            <input type="password" required name="password" />
        </label>
    </div>
    <div>
        <label>
            Подтверждение пароля
            <input type="password" required name="passwordConfirmation" />
        </label>
    </div>
    <input type="submit" value="Зарегистрировать" />
</form>--%>

@import org.example.hexlet.dto.users.BuildUserPage
@param BuildUserPage page

@template.layout.page(
content = @`
    @if(page.getErrors() != null)
        <ul>
            @for(var validator : page.getErrors().values())
                @for(var error : validator)
                    <li>${error.getMessage()}</li>
                @endfor
            @endfor
        </ul>
    @endif

    <form action="/users" method="post">
        <div>
            <label>
                Name
                <input type="text" name="name" value="${page.getName()}" />
            </label>
        </div>
        <div>
            <label>
                Email
                <input type="email" required name="email" value="${page.getEmail()}" />
            </label>
        </div>
        <div>
            <label>
                Password
                <input type="password" required name="password" />
            </label>
        </div>
        <div>
            <label>
                Password Confirmation
                <input type="password" required name="passwordConfirmation" />
            </label>
        </div>
        <input type="submit" value="Sign Up" />
    </form>
`
)
