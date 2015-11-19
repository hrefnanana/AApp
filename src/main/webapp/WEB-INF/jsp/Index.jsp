<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html; charset=UTF-8" %>


<html lang="en">
<!--src/main/resources/static-->
    <head>
        <title>AApp</title>
        <link rel="stylesheet" href="/css/index.css">
    </head>
    <body>
    <nav>
        <li>Home</li>
        <li>Me</li>
        <li>Rules</li>
        <li>12 steps</li>
    </nav>


    <h1>Velkomin (breyta med nafninu) </h1>
    <h2> Sobercounter: ${soberCounter} </h2>

    <p>You have been sober for <span >${days}</span> days, <span >${months} </span> months and <span >${years}</span> years</p>

    <ul>
        <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
        <li><a href="/day">PRUFPRUFPRUFURPFURPFUR</a></li>
        <li><a href="/longterm">longtermtjékk</a></li>
    </ul>
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
