<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%--fmt:setLocale value="${sessionScope._CURRENT_LOCALE}"/--%>
<fmt:setBundle basename="resources.pagecontent" var="txt"/>

<%@ include file="inc/header.inc.jsp" %>

<div id="left">

    <%@ include file="inc/menu.inc.jsp" %>

</div>

<div id="mainmiddle">

    <h1><fmt:message key="content.courses" bundle="${txt}"/></h1>



    <div class="block" style="min-width: 50%;">

        <table width="100%">
            <tbody>
            <tr class="header">
                <th><fmt:message key="content.addeddate" bundle="${txt}"/></th>
                <th><fmt:message key="content.coursename" bundle="${txt}"/></th>
                <th><fmt:message key="content.teacher" bundle="${txt}"/></th>

            </tr>
            <c:forEach items="${requestScope.courses}" var="item">
                <tr>
                    <td><fmt:formatDate pattern="dd/MM/yyyy" value="${item.dateAdd}" /></td>
                    <td>${item.name}</td>
                    <td>${item.teacherFirstName} ${item.teacherLastName}</td>

                </tr>
            </c:forEach>

            </tbody></table>
    </div>

            <div class="block" style="min-width: 50%;">

                <table width="100%">
                    <tbody>

            <form name="missForm" method="post" action="controller">
                <input type="hidden" name="command" value="journaladmin">
                <tr>
                    <td width="35%"><fmt:message key="content.subunit" bundle="${txt}"/>:</td><td width="60%"><input name="subunit" type="text" value="" placeholder="<fmt:message key="content.subunit" bundle="${txt}"/>"></td>
                </tr>

                <%--<tr>
                    <td colspan="2"><input id="remember" type="checkbox" name="enter[remember]"><label for="remember" style="cursor: hand;"> Запомнить меня</label></td>
                </tr>--%>
                <tr>
                    <td colspan="2" align="right"><input type="submit" value="<fmt:message key="content.finde" bundle="${txt}"/>"></td>
                </tr>

            </form>
        </td>
            </tbody></table>
    </div>

