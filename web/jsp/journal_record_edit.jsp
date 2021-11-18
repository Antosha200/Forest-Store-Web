<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%--fmt:setLocale value="${sessionScope._CURRENT_LOCALE}"/--%>
<fmt:setBundle basename="resources.pagecontent" var="txt"/>

<%@ include file="inc/header.inc.jsp" %>

<div id="left">

    <%@ include file="inc/menu.inc.jsp" %>

</div>

<div id="mainmiddle">

    <h1><fmt:message key="content.journal" bundle="${txt}"/> ${course.name}</h1>



    <div class="block" style="min-width: 50%;">
        <table width="100%">
            <form method="post" action="${contextPath}/controller">
                <input type="hidden" name="command" value="journaledit">
                <input type="hidden" name="id" value="${edititem.id}">
                <tr class="header"><td colspan="2"><fmt:message key="content.editstudentmark" bundle="${txt}"/></td></tr>
                <tr>
                    <td style="width: 20%;">
                        <fmt:message key="content.student" bundle="${txt}"/>
                    </td>
                    <td>
                        ${edititem.studentLastName}
                        ${edititem.studentFirstName}
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%;">
                        <fmt:message key="content.mark" bundle="${txt}"/>
                    </td>
                    <td style="width: 80%;">
                        <select name="mark">
                            <option value="0"> - </option>
                            <option value="1"> 1 </option>
                            <option value="2"> 2 </option>
                            <option value="3"> 3 </option>
                            <option value="4"> 4 </option>
                            <option value="5"> 5 </option>
                            <option value="6"> 6 </option>
                            <option value="7"> 7 </option>
                            <option value="8"> 9 </option>
                            <option value="9"> 10 </option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%;">
                        <fmt:message key="content.miss" bundle="${txt}"/>
                    </td>
                    <td style="width: 80%;">
                        <select name="miss">
                            <option value="0"> - </option>
                            <option value="1"> 1 </option>
                            <option value="2"> 2 </option>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fmt:message key="content.mdata" bundle="${txt}"/>
                    </td>
                    <td>
                        <textarea name="mdata" style="width: 20%; height: 20px;"><c:out value="${edititem.mdata}"/></textarea>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fmt:message key="content.notice" bundle="${txt}"/>
                    </td>
                    <td>
                        <textarea name="note" style="width: 100%; height: 100px;"><c:out value="${edititem.note}"/></textarea>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: right;">
                        <input type="submit" value="<fmt:message key="content.action.save" bundle="${txt}"/>"></td>
                </tr>
            </form>
        </table>
    </div>

    <a href="${contextPath}/controller?command=journal&id=${course.id}"><fmt:message key="content.backtojournal" bundle="${txt}"/></a>


</div>