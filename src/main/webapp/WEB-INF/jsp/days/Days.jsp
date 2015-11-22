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
  <main>
    <div class="row">
      <div class="col-12">
        <div class="jumbotron">
        <h4 class="text-center"> Hakaðu við þau atriði sem þú hefur lokið við í dag</h4>
        <h4>${today.vakna7}fd</h4>
			<sf:form method="POST" commandName="day" action="/day" class="well">
			
			
			<c:choose>
            <c:when test="${today.vakna7}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="vakna7" checked="checked"/> Í dag fór ég á fætur á tilsettum tíma </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="vakna7"/> Í dag fór ég á fætur á tilsettum tíma </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
            <c:choose>
            <c:when test="${today.borda}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="borda" checked="checked"/> Í dag borðaði ég reglulega og hollt </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="borda"/> Í dag borðaði ég reglulega og hollt </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
                
            <c:choose>
            <c:when test="${today.hugleida}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="hugleida" checked="checked"/> Í dag gaf ég mér tíma til hugleiðslu </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="hugleida"/> Í dag gaf ég mér tíma til hugleiðslu </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
                
           <c:choose>
            <c:when test="${today.stundvisi}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="stundvisi" checked="checked"/> Í dag var ég stundvís </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="stundvisi"/>  Í dag var ég stundvís </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
                
           <c:choose>
            <c:when test="${today.tiltekt}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="tiltekt" checked="checked"/> Ég hélt hreinu í kringum mig í dag </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="tiltekt"/>  Ég hélt hreinu í kringum mig í dag </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
             
           <c:choose>
            <c:when test="${today.aabok}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="aabok" checked="checked"/> Ég las í AA- bókinni í dag </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="aabok"/>  Ég las í AA-bókinni í dag </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
                             
           <c:choose>
            <c:when test="${today.sofa}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="sofa" checked="checked"/> Ég fór að sofa á skikkanlegum tíma </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="sofa"/>  Ég fór að sofa á skikkanlegum tíma </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
                
           <c:choose>
            <c:when test="${today.dagbok}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="dagbok" checked="checked"/> Ég skrifaði í dagbókina mína í dag </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="dagbok"/>  Ég skrifaði í dagbókina mína í dag </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                

           <c:choose>
            <c:when test="${today.bad}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="bad" checked="checked"/> Ég fór í bað í dag </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="bad"/>  Ég fór í bað í dag </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                

           <c:choose>
            <c:when test="${today.fundur}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="fundur" checked="checked"/> Ég fór á AA fund í dag </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="fundur"/>  Ég fór á AA fund í dag </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
           <c:choose>
            <c:when test="${today.kurteis}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="kurteis" checked="checked"/> Ég sýndi tillitssemi og ábyrgð í dag </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="kurteis"/>  Ég sýndi tillitssemi og ábyrgð í dag </label></li>
                </ul>
                </c:otherwise>
                </c:choose>
                
                
           <c:choose>
            <c:when test="${today.hreyfing}">
              <ul class="list-group checked-list-box">
                <li class="list-group-item" data-color="info"><label> <sf:checkbox path="hreyfing" checked="checked"/> Ég stundaði hreyfingu/útivist í dag </label></li>
              </ul>
              </c:when>
              <c:otherwise>
                <ul class="list-group checked-list-box">
                  <li class="list-group-item" data-color="info"><label> <sf:checkbox path="hreyfing"/> Ég stundaði hreyfingu/útivist í dag </label></li>
                </ul>
                </c:otherwise>
                </c:choose>

                
                <input type="submit" VALUE="Vista" class="button btn btn-default btn-lg btn-block"/>               
              </sf:form>
    </body>
</html>
