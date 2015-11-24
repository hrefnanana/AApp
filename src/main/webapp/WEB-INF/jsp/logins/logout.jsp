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
        <link rel="stylesheet" href="/css/login.css">
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
          <a class="navbar-brand" href="/12spor"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="/help"><span class ="glyphicon glyphicon-question-sign"></span> Hjálp</a>
          <a class="navbar-brand left" href="/signOut"><span class ="glyphicon glyphicon-user"></span> Skrá út </span></a>
        </div>
      </div>
    </nav>
        <div class="container">
            <p>${notLoggedIn}</p>
            <div class="row jumbotron">
            <div class="span12">
              <sf:form class="form-horizontal" method="POST" action="/signOut">
               
                    <!-- Button -->
                    <div class="controls">
                      <input type="submit" value="Skrá út" class="btn button"/>
                    </div>
                
              </sf:form>
            </div>
          </div>
        </div>
    </body>
</html>