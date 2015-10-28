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

    <h1><a href="/day/days">Postit Notes</a></h1>

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


    </body>
</html>
