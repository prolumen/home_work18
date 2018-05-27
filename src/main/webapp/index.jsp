<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" %>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
    <header>

    </header>
    <div class="row">
        <div class="col-3">
            <h2>JSP with Hibernate</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-3">
            <a class="btn btn-primary btn-md" href="/get_all_user">
                Get all users
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <% if (Math.random() < 0.5) { %>
            <B>Удачного</B> Вам дня!
            <% } else { %>
            <B>Не удачного</B> Вам дня!
            <% } %>
                <br/>
                <%! private int accessCount = 0; %>
                Количество обращений к странице с момента загрузки сервера:
                <%= ++accessCount %>
                <c:out value="16+64*2" />
                <c:out value="${16+64*2}" />
                <c:set var="user" scope="session" value="Max" />
                <c:out value="${user}" />
        </div>
        <div class="col-12">
            <%= new java.util.Date() %>
            <%= request.getRemoteHost()%>
        </div>
        <div class="col-3">
            <a class="btn btn-primary btn-large" href="/pages/test.jsp">
                <%--<button>trdklkefhwed</button>--%>
                salary
            </a>
        </div>
    </div>
    <div class="row">
        <div class="hero-unit">
            <h3>Параграф рыбатекстного бреда!</h3>
            <p>С другой стороны начало повседневной работы по формированию позиции требуют от нас анализа существенных финансовых и административных условий. Повседневная практика показывает, что новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Товарищи! укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям.
        </div>
    </div>
    <div class="row">
        <div class="col-3">
            <form method="get">
                <div class="form-group">
                    <label for="formGroupExampleInput">My bootstrap form</label>
                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="input text">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn-success">Get somethings</button>
                </div>
            </form>
        </div>
    </div>
    </body>
</html>
