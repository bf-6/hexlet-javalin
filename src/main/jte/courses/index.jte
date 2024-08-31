@import org.example.hexlet.dto.courses.CoursesPage;
@param CoursesPage page

<form action="/courses" method="get">
    <input type="search" required name="term" value="${page.getTerm()}">
    <input type="submit" value="Search">
</form>

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
