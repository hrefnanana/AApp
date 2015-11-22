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
        <nav class="navbar custom navbar-default header">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand active" href="/"><span class ="glyphicon glyphicon-home"></span> Heim</a>
          <a class="navbar-brand" href="/day"><span class ="glyphicon glyphicon-check"></span> Skrá Daga</a>
          <a class="navbar-brand" href="/longterm"><span class ="glyphicon glyphicon-search"></span> Árangur</a>
          <a class="navbar-brand" href="12spor.html"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="about.html"><span class ="glyphicon glyphicon-user"></span> Um Mig</a>
          <a class="navbar-brand left" href="/login"><span class ="glyphicon glyphicon-user"></span> Innskrá/Útskrá </span></a>
          <a class="navbar-brand left" href="/signUp"><span class ="glyphicon glyphicon-user"></span> Nýskráning </span></a>
        </div>
      </div>
    </nav>

    

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
