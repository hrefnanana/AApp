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
         <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
          google.load("visualization", "1", {packages:["corechart"]});
          google.setOnLoadCallback(drawChart);
          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Dagsetning',  'Heildaratriði búin'],
              
                ${data}
              
              ]);

            var options = {
              title: 'Titill',
              vAxis: {title: 'lýsandi titill'},
            };

            var chart = new google.visualization.SteppedAreaChart(document.getElementById('chart_div'));

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

    <div id="chart_div" style="width: 900px; height: 500px;"></div>

    <div>Það eru ${today.getFinished()} hlutir búnir</div>

    <c:choose>
        <%--If the model has an attribute with the name `postitNotes`--%>
        <c:when test="${not empty days}">
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
                        <td>${day.getFinished()}</td>
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