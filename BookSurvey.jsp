<%-- 
    Document   : BookSurvey
    Created on : Feb 21, 2024, 9:49:32 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Bookstore survey</h2>
        <form action="Data">
            <div>First Name: <input type="text" name="firstname">
                Last Name :<input type="text" name="lastname"></div> 
            <div>Email Address: <input type="text" name="emailaddress">
                Address: <input type="text" name="address"></div>
            <div> City: <input type="text" name="City">
                Country: <input type="text" name="Country">
                Zip: <input type="text" name="Zip"></div>
            <div  onchange="showOptions()">
                Have purchased books in campus bookstore?
                <input type="radio" name="op" value="yes" id="Options">Yes
                <input type="radio" name="op" value="no" checked id="Options">No
            </div>
            <div id="bookstore" style="display: none">
                Which bookstore do you shop in?
                <select>
                    <option value="Godwill">Godwill bookstore</option>
                    <option value="HelloWorld">HelloWorld bookstore</option>
                </select>
            </div>
            <div>
                Have you ever purchased books on the internet
                <input type="radio" name="options" value="yes">Yes
                <input type="radio" name="options" value="No" >No
            </div>
            <div>How does shopping on the internet compared to shopping in campus bookstore?</div>
            <div><textarea name="comment" rows="7" cols="70"></textarea></div>
            <div><input type="submit" value="Add"></div>
            <script>
                function showOptions() {
                    var show = document.getElementById("Options");
                    if (show.checked) {
                        document.getElementById("bookstore").style.display = "block";
                    } else {
                        document.getElementById("bookstore").style.display = "none";
                    }
                }


            </script>
        </form>
    </body>
</html>
