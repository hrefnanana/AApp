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
          <a class="navbar-brand active" href="/home"><span class ="glyphicon glyphicon-home"></span> Heim</a>
          <a class="navbar-brand" href="/day"><span class ="glyphicon glyphicon-check"></span> Skrá Daga</a>
          <a class="navbar-brand" href="/longterm"><span class ="glyphicon glyphicon-search"></span> Árangur</a>
          <a class="navbar-brand" href="/12spor"><span class ="glyphicon glyphicon-book"></span> 12 spor</a>
          <a class="navbar-brand" href="/help"><span class ="glyphicon glyphicon-question-sign"></span> Hjálp</a>
          <a class="navbar-brand left" href="/signOut"><span class ="glyphicon glyphicon-user"></span> Skrá út </span></a>
        </div>
      </div>
    </nav>
    <main>
    	<section class="jumbotron">
    		<h1 class="text-center">Leiðbeiningar</h1>
    		<div class="well">
    			<h2>Til að skrá nýjan notanda</h2>
    			<p>1.Ýttu á Nýskrá í valmyndinni efst á síðunni </p>
				<p>2.Veldu þér notandanafn og lykilorð, skráðu nafn þitt og þinn fyrsta edrúdag</p>
				<p>3.Nú hefur þú búið til nýjan notanda og getur skráð þig inn í kerfið með því að velja Innskrá í valmyndinni.</p>   
				<h2>Til að skrá sig inn</h2>
    			<p>1.Ýttu á Innskrá í valmyndinni efst á síðunni </p>
				<p>2.Skráðu notandanafn og lykilorð og ýttu á hnappinn Innsrká</p>
				<p>3.Nú ert nú innskráður í kerfið.</p>  	
				<h2>Til að skrá sig út</h2>
    			<p>1. Ýttu á Skrá út í valmyndinni </p>
				<p>2. Ýttu svo á Skrá út takkann</p>	
        <p>3. Þú hefur skráð þig út</p>  
				<h2>Til að skrá daga</h2>
    			<p>1.Ýttu á Skrá Daga í valmyndinni efst á síðunni</p>
				<p>2.Þar getur þú hakað við öll þau atriðið sem þú hefur lokið við þann daginn</p>
				<p>3.Næst ýtir þú á Vista hnappinn neðst á síðunni.</p>
				<p>4.Þú getur síðan komið inn á síðuna hvenær sem er þann daginn og breytt/bætt við atriðum sem þú hefur lokið við.</p>
				<h2>Til að skoða árangur</h2>
    			<p>1.Ýttu á Árangur í valmyndinni efst á síðunni</p>
				<p>2.Veldu fjölda daga sem þú vilt skoða og sláðu töluna inn í textareitinn.</p>
				<p>3.Ýttu á Skoða hnappinn.</p>
				<p>4.Þá ætti að birtast línurit sem sýnir þér bæði fjölda atriða sem lokið var við á hverjum degi sem og fjölda atriða sem lokið var við á tímabilinu.</p>	
    		</div>	
    	</section>
    </main>
  </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
