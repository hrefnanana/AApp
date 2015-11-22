<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html; charset=UTF-8" %>


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
          <a class="navbar-brand" href="12spor.html"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="about.html"><span class ="glyphicon glyphicon-user"></span> Um Mig</a>
          <a class="navbar-brand left" href="/login"><span class ="glyphicon glyphicon-user"></span> Innskrá/Útskrá </span></a>
          <a class="navbar-brand left" href="/signUp"><span class ="glyphicon glyphicon-user"></span> Nýskráning </span></a>
        </div>
      </div>
    </nav>
<div class="container">
    <div class="row jumbotron">
    <div class="span12">
      <sf:form class="form-horizontal" method="POST" commandName="longterm" action="/longterm">
        <fieldset>
          <div id="legend">
            <h3>Árangur</h3>
            <h4>Það eru ${today.getFinished()} atriði búnir í dag! </h4>
          	</div>
          	<div class="control-group">
            	<label class="control-label"  for="longterm">Hversu marga daga viltu skoða?</label>
            	<div class="controls">
                <!-- numberOfDays-->
              		<sf:input type="text" path="numberOfDays" placeholder="0" class="input-xlarge"/>
           		 </div>
           		 
          	</div>
          	
          	<div class="control-group">
            <!-- Button -->
            	<div class="controls">
              		<input type="submit" value="Skoða" class="btn button"/>
           		</div>

          	</div>
        </fieldset>
      </sf:form>
    </div>
  </div>
</div>
</body>
</html>
