<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="is">
    <head>
        <meta charset = "UTF-8">
        <title>Postit Notes</title>

        <link rel="stylesheet" type="text/css" href="<c:url value="/css/postitnote.css"/>"/>
    </head>
    <body>
        <h1>${prufa}</h1>
        <h1>${ekkitil}</h1>


          <sf:form method="POST" commandName="user" action="/signUp">
              <table>
                <tr>
                    <td> Username:</td>
                    <td><sf:input path="userName" type="text" placeholder="jonniklikk"/></td>

                    <td> Password:</td>
                    <td><sf:input path="password" type="text" placeholder="jonniklikk44"/></td>


                    <td> First name:</td>
                    <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                    <td><sf:input path="firstName" type="text" placeholder="Jon"/></td>

                    <td> Last name:</td>
                    <td><sf:input path="lastName" type="text" placeholder="Jonsson"/></td>

              

                    <td> Sober date:</td>
                    <td><sf:input path="soberDate" type="text" placeholder="220191"/></td>

                </tr>
            </table>
     
            <input type="submit" VALUE="Sign up"/>
        </sf:form>



</body>
</html>