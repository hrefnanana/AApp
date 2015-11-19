<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html; charset=UTF-8" %>

<html lang="is">
    <head>
        <meta charset = "UTF-8">
        <title>Postit Notes</title>

        <link rel="stylesheet" type="text/css" href="<c:url value="/css/postitnote.css"/>"/>
    </head>
    <body>

    

    <h1>Longterm stoff</h1>

    <div>Það eru ${today.getFinished()} hlutir búnir</div>


    <sf:form method="POST" commandName="longterm" action="/longterm">
        <table>
            <tr>
                <td> Days:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="numberOfDays" type="text" placeholder="0-9"/></td>
            </tr>
        </table>

        <input type="submit" VALUE="Check it!"/>
    </sf:form>


    </body>
</html>
