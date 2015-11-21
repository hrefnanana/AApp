<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html; charset=UTF-8" %>


<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AApp</title>
    
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/days.css">
</head>
 <body>
    <nav class="navbar navbar-default header">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><span class ="glyphicon glyphicon-home"></span> Heim</a>
          <a class="navbar-brand" href="days.html"><span class ="glyphicon glyphicon-check"></span> Skrá Daga</a>
          <a class="navbar-brand" href="arangur.html"><span class ="glyphicon glyphicon-search"></span> Árangur</a>
          <a class="navbar-brand" href="12spor.html"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="about.html"><span class ="glyphicon glyphicon-user"></span> Um Mig</a>
          <a class="navbar-brand left" href="login.html"><span class ="glyphicon glyphicon-user"></span> Innskrá/Útskrá </span></a>
          
        </div>
      </div>
    </nav>
  <main>
    <h1 class="text-center"> Hakaðu við þau atriði sem þú hefur lokið við í dag</h1>
    <h2 class="text-center">Í dag er : ${time}</h2>
    <div class="row">
      <div class="col-12">
        <div class="jumbotron">
			<sf:form method="POST" commandName="day" action="/day">

        		<table class="table-responsive text-center table-bordered">
            		<tr>
                		<td class="col-3"> </td>
                	<%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
               			 <td><sf:input path="date" type="text" placeholder="DD/MM/YYYY"/></td>
           			 </tr>

            <c:choose>
            <c:when test="${today.vakna7}">
                <tr class="active">
                    <td class="col-3"> Vakna:</td>
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
        </div>
      </div>
    </div>
    </main>

  </body>
    <p>I dag er : ${time}</p>

    <h1><a href="/day">Postit Notes</a></h1>
    <h2>${today.borda}</h2>

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
