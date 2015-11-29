<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html; charset=UTF-8" %>

<html lang="is">
    <head>
        <meta charset = "UTF-8">
        <title>Postit Notes</title>
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   		<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
    	<link rel="stylesheet" href="/css/index.css">
      <link rel="stylesheet" href="/css/arangur.css">


        <link rel="stylesheet" type="text/css" href="<c:url value="/css/postitnote.css"/>"/>
         <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
          google.load("visualization", "1", {packages:["corechart"]});
          google.setOnLoadCallback(drawChart);
          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Dagsetning',  'Heildaratriði búin', 'Í fullkomnum heimi', 'Klárað í dag'],
              
                ${data}
              
              ]);

            var options = {
              title: 'Árangur',
              vAxis: {title: 'Fjöldi Atriða'},
              backgroundColor: '#d3f1f0',
              legend: { position: 'bottom' },
              colors: ['#FF0099','#9900FF','#3333FF'],

              pointSize: 15,
              series: {
                0: { pointShape: 'circle' },
                1: { pointShape: 'triangle' },
                2: { pointShape: 'star' },
            }
            };

            var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

            chart.draw(data, options);
          }
        </script>
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
          <a class="navbar-brand active" href="/home"><span class ="glyphicon glyphicon-home"></span> Heim</a>
          <a class="navbar-brand" href="/day"><span class ="glyphicon glyphicon-check"></span> Skrá Daga</a>
          <a class="navbar-brand" href="/longterm"><span class ="glyphicon glyphicon-search"></span> Árangur</a>
          <a class="navbar-brand" href="/12spor"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="/help"><span class ="glyphicon glyphicon-question-sign"></span> Hjálp</a>
          <a class="navbar-brand left" href="/signOut"><span class ="glyphicon glyphicon-user"></span> Skrá út </span></a>
        </div>
      </div>
    </nav>

    

   
	<section class="jumbotron">
	 <h1 class="text-center">Árangur</h1>
    		<div id="chart_div" style="width: 900px; height: 500px; display:block; margin:0 auto;" class="jojo"></div>
	</section>
    </body>
</html>