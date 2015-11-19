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

    

    <br>
    <p>I dag er : ${time}</p>
    <br>

    <h1><a href="/day">Postit Notes</a></h1>
    <h2>${today.borda}</h2>

     <sf:form method="POST" commandName="day" action="/day">

        <table>
            <tr>
                <td> Name:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="date" type="text" placeholder="DD/MM/YYYY"/></td>
            </tr>

            <c:choose>
            <c:when test="${today.vakna7}">
                <tr>
                    <td> Vakna:</td>
                     <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                     <td><sf:checkbox path="vakna7"  checked="checked"/></td>
            </tr>
            </c:when>    
            <c:otherwise>
             <tr>
                <td> Vakna:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:checkbox path="vakna7"  /></td>
            </tr>

            </c:otherwise>
            </c:choose>

            <c:choose>
            <c:when test="${today.borda}">
                <tr>
                    <td> Borða:</td>
                     <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                     <td><sf:checkbox path="borda"  checked="checked"/></td>
            </tr>
            </c:when>    
            <c:otherwise>
             <tr>
                <td> Borða:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:checkbox path="borda"  /></td>
            </tr>

            </c:otherwise>
            </c:choose>

            <c:choose>
            <c:when test="${today.hugleida}">
                <tr>
                    <td> Hugleiða:</td>
                     <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                     <td><sf:checkbox path="hugleida"  checked="checked"/></td>
            </tr>
            </c:when>    
            <c:otherwise>
             <tr>
                <td> Hugleiða:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:checkbox path="hugleida"  /></td>
            </tr>

            </c:otherwise>
            </c:choose>
           
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
                        <td>${day.id}</td>
                        <td>${day.borda}</td>
                        <td>${day.vakna7}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>

        <%--If all tests are false, then do this--%>
        <c:otherwise>
            <h3>No notes!</h3>
        </c:otherwise>
    </c:choose>


    </body>
</html>
