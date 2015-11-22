<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html; charset=UTF-8" %>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AApp</title>
    
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
    <link rel="stylesheet" href="/css/index.css">
  </head>
  <body data-spy="scroll" data-target=".navbar-fixed-top">
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
          <a class="navbar-brand" href="/progress"><span class ="glyphicon glyphicon-search"></span> Árangur</a>
          <a class="navbar-brand" href="12spor.html"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="about.html"><span class ="glyphicon glyphicon-user"></span> Um Mig</a>
          <a class="navbar-brand left" href="/login"><span class ="glyphicon glyphicon-user"></span> Innskrá/Útskrá </span></a>
          <a class="navbar-brand left" href="/signUp"><span class ="glyphicon glyphicon-user"></span> Nýskráning </span></a>
        </div>
      </div>
    </nav>
    <div class="container-fluid jumbotron text-center">
      <h1>Velkominn Jón </h1>
      <div class="well">
        <p>Þú hefur verið edrú í  <span >${days}</span> daga, <span >${months} </span> mánuði og <span >${years}</span> ár!</p>
      </div>
      <button href="#" type="button" class="button btn btn-lg btn-lg">
      <span class="glyphicon glyphicon-check">
      </span> Skrá Daga
      </button>
      <button href="#" type="button" class="button btn btn-lg btn-lg">
      <span class="glyphicon glyphicon-search">
      </span> Skoða árangur
      </button>
    </div>
    <ul>
      <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
      <li><a href="/day">PRUFPRUFPRUFURPFURPFUR</a></li>
    </ul>
  </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
