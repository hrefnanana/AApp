<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    <p>This skeleton of a Spring Boot Web project was made to help groups get started on their projects without to much hassle.</p>

    <ul>
        <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
        <li><a href="/day">PRUFPRUFPRUFURPFURPFUR</a></li>
    </ul>
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
