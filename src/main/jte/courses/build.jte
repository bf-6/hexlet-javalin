@import org.example.hexlet.dto.courses.BuildCoursePage
@param BuildCoursePage page

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
<form action="/courses" method="post">
    <div>
        <label>
            Имя
            <input type="text" name="name" />
        </label>
    </div>
    <div>
        <label>
            Описание
            <input type="text" required name="description" />
        </label>
    </div>
    <input type="submit" value="Сохранить курс" />
</form>