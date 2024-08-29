@import org.example.hexlet.dto.courses.CoursesPage;
@param CoursesPage page

@template.layout.page(
content = @`
    @for(var course : page.getCourses())
        <div>
            <a href="/courses/${course.getId()}">${course.getId()}</a>
            ${course.getName()}
            ${course.getDescription()}
        </div>
    @endfor
`
)
