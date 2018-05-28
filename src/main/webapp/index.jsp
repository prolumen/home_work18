<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" %>
<html>
    <%@include file="header.jsp"  %>
    <header id="header">
        <div class="intro">
            <div class="container">
                <div class="row">
                    <div class="intro-text">
                        <h1>JSP with Hibernate</h1>
                        <p>Java</p>
                        <a href="/get_all_user" class="btn btn-custom btn-lg page-scroll">Get all users</a> </div>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="col-6 col-lg-6">
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

        <div class="col-6 col-lg-6">
            <%= new java.util.Date() %>
            <%= request.getRemoteHost()%>
        </div>
    </div>

    <%--<div id="contact">--%>
    <div class="container">
        <div class="row">
            <div class="col-3 col-lg-3"></div>
            <div class="col-6 col-lg-6">
                <form method="get">
                    <div class="form-group">
                        <label for="formGroupExampleInput">My bootstrap form</label>
                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="input text">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-custom btn-lg page-scroll">Get somethings</button>
                    </div>
                </form>
            </div>
            <div class="col-3 col-lg-3"></div>
        </div>
    </div>
    <%--</div>--%>

    <div id="about">
        <div class="container">
            <div class="section-title text-center center">
                <h2>Параграф рыбатекстного бреда!</h2>
                <hr>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-6"> <img src="img/about.jpg" class="img-responsive" alt=""> </div>
                <div class="col-xs-12 col-md-6">
                    <div class="about-text">
                        <p>С другой стороны начало повседневной работы по формированию позиции требуют от нас анализа существенных финансовых и административных условий. Повседневная практика показывает, что новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Товарищи! укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям.</p>
                            <a href="/pages/test.jsp" class="btn btn-default btn-lg page-scroll">Get test JSP</a> </div>
                </div>
            </div>
        </div>
    </div>
    
    <%@include file="footer.jsp"%>
    

    </body>
</html>
