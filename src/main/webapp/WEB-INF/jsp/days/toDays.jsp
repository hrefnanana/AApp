<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="is">
    <head>
        <meta charset = "UTF-8">
        <title>Postit Notes</title>

        <link rel="stylesheet" type="text/css" href="<c:url value="/css/postitnote.css"/>"/>
    </head>
    <body>

    <h1><a href="/day/toDays">Today</a></h1>
<!--
     <sf:form method="POST" commandName="day" action="/day">

        <table>
            <tr>
                <td> Name:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="date" type="text" placeholder="DD/MM/YYYY"/></td>
            </tr>
            <tr>
                <td> Vakna:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:checkbox path="vakna7" default="false"/></td>
            </tr>
            <tr>
                <td> Borða:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:checkbox path="borda" default="false"/></td>
            </tr>
            <tr>
                <td> Hugleiða:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:checkbox path="hugleida" default="false"/></td>
            </tr>
           
        </table>

        <input type="submit" VALUE="Check it!"/>

    </sf:form>

     <%--Choose what code to generate based on tests that we implement--%>
    <c:choose>
        <%--If the model has an attribute with the name `postitNotes`--%>
        <c:when test="${not empty day}">
            <%--Create a table for the Postit Notes--%>
            <table class="notes">

                <%--For each postit note, that is in the list that was passed in the model--%>
                <%--generate a row in the table--%>
                <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
                <c:forEach var="day" items="${days}">
                    <tr>
                        <%--We can reference attributes of the Entity by just entering the name we gave--%>
                        <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                        <%--Create a link based on the name attribute value--%>
                        <td><a href="/day/${day.date}">${day.date}</a></td>
                        <%--The String in the note attribute--%>
                        <td>${day.vakna7}</td>
                        <td>${day.borda}</td>
                        <td><sf:checkbox path="hugleida" default="true"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>

        <%--If all tests are false, then do this--%>
        <c:otherwise>
            <h3>No notes!</h3>
        </c:otherwise>
    </c:choose>

-->
    </body>
</html>

