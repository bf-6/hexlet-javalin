@import org.example.hexlet.dto.courses.CoursesPage
@import org.example.hexlet.util.NamedRoutes;
@param CoursesPage page

<form action="${NamedRoutes.coursesPath()}" method="get">
    <input type="search" required name="term" value="${page.getTerm()}">
    <input type="submit" value="Search">
</form>

@template.layout.page(
content = @`
    @for(var course : page.getCourses())
        <div>
            <a href="${NamedRoutes.coursesPath()}/${course.getId()}">${course.getId()}</a>
            ${course.getName()}
            ${course.getDescription()}
        </div>
    @endfor
`
)
