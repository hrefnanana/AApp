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
             <ul>
                    <li><a href='' class="links">Home</a></li>
                    <li><a href='/user' class="links">Me</a></li>
                    <li><a href='' class="links">Rules</a></li>
                    <li><a href='' class="links">12 steps</a></li>
                </ul>
        </nav>

        <main>
            <h1>Velkomin (breyta med nafninu) </h1>
            <h2> Sobercounter: ${soberCounter} </h2>

            <p>You have been sober for <span >${days}</span> days, <span >${months} </span> months and <span >${years}</span> years</p>

            <ul>
                <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
                <li><a href="/day">PRUFPRUFPRUFURPFURPFUR</a></li>
            </ul>
        </main>
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
