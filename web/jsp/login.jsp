<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--fmt:setLocale value="${sessionScope._CURRENT_LOCALE}"/--%>
<fmt:setBundle basename="resources.pagecontent" var="txt"/>

<%@ include file="inc/header.inc.jsp" %>
<div align="center">

    <br>
    <div class="block" style="width: 250px;">
        <h3><fmt:message key="content.signin" bundle="${txt}"/></h3>
        <table border="0" width="100%">
            <form name="loginForm" method="post" action="${contextPath}/controller">
                <input type="hidden" name="command" value="login">
                <tr>
                    <td width="35%"><fmt:message key="content.login" bundle="${txt}"/>:</td>
                    <td width="60%"><input name="login" type="text" value=""
                                           placeholder="<fmt:message key="content.login" bundle="${txt}"/>"></td>
                </tr>
                <tr>
                    <td><fmt:message key="content.password" bundle="${txt}"/>:</td>
                    <td><input name="password" type="password" value=""
                               placeholder="<fmt:message key="content.password" bundle="${txt}"/>"></td>
                </tr>
                <%--<tr>
                    <td colspan="2"><input id="remember" type="checkbox" name="enter[remember]"><label for="remember" style="cursor: hand;"> Запомнить меня</label></td>
                </tr>--%>
                <tr>
                    <td colspan="2" align="right">
                        <input type="submit" value="<fmt:message key="content.signin" bundle="${txt}"/>">
                    </td>
                </tr>
                <tr>
                    <td><a href="${contextPath}/controller?command=register"><fmt:message key="content.register"
                                                                                          bundle="${txt}"/></a></td>
                    <td align="right"><%--<a href="/index.php/protected/password_recovery.html">Забыли пароль?</a>--%></td>
                </tr>
            </form>
        </table>

    </div>
</div>

<%@ include file="inc/footer.inc.jsp" %>


