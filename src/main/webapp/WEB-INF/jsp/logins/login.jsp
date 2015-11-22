<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

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
          <a class="navbar-brand" href="days.html"><span class ="glyphicon glyphicon-check"></span> Skr� Daga</a>
          <a class="navbar-brand" href="arangur.html"><span class ="glyphicon glyphicon-search"></span> �rangur</a>
          <a class="navbar-brand" href="12spor.html"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="about.html"><span class ="glyphicon glyphicon-user"></span> Um Mig</a>
          <a class="navbar-brand left" href="login.html"><span class ="glyphicon glyphicon-user"></span> Innskr�/�tskr�</a>
        </div>
      </div>
    </nav>
<div class="container">
    <div class="row jumbotron">
    <div class="span12">
      <sf:form class="form-horizontal" method="POST" commandName="user" action="/login">
        <fieldset>
          <div id="legend">
            <h3>Innskr�</h3>
          	</div>
          	<div class="control-group">
            	<label class="control-label"  for="username">Notendanafn</label>
            	<div class="controls">
              		<sf:input path="userName" placeholder="Notendanafn" class="input-xlarge"/>
           		 </div>
          	</div>
          <div class="control-group">
            <!-- Password-->
            <label class="control-label" for="password">Lykilor�</label>
            <div class="controls">
              <sf:input path="password" type="password" placeholder="Lykilor�" class="input-xlarge"/>
            </div>
          </div>
          <div class="control-group">
            <!-- Button -->
            <div class="controls">
              <input type="submit" value="Login" class="btn button"/>
            </div>
          </div>
        </fieldset>
      </sf:form>
    </div>
  </div>
</div>
</body>
</html>