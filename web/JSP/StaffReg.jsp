<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <title>Staff Registration</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <%-- HTTP header --%>
        <%
            response.addHeader("Cache-Control", "no-cache");
            response.addHeader("Pragma", "no-cache");
            response.addHeader("Expires", "0");
        %>
        <%-- Javascript --%> 

        <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#Register').click(function (e) {
                    e.preventDefault();
                    $.ajax({
                        url: "http://localhost:41422/WebApplication1/JSP/StaffRegAuth.jsp",
                        type: "post",
                        data: {
                            username: $('#username').val(),
                            password: $('#password').val(),
                            userGroup: $('#userGroup').val()
                        },
                        success: function (msg) {
                            alert(msg);
                        }
                    });
                });
            });
        </script>

        <%-- Main body --%>
        <h1 align="center"> Account Registration: </h1>
        <div align="center">
            <table style="width:30%" >
                <tr>
                    <td> User Name: </td>
                    <td><input type="text" id="username"></td>
                </tr>
                <tr>
                    <td> Password: </td>
                    <td><input type="password" id="password"></td>
                </tr>
                <tr>
                <tr>
                    <td> User Group: </td>
                    <td><select name = "userGroup" id="userGroup">
                            <option value="1">Administrator
                                </optin>
                            <option value="2">Clerk
                                </optin>
                            <option value="3">Operations
                                </optin>
                            <option value="4">Sales
                                </optin>
                        </select></td>
                </tr>
                <tr>
            </table>
            <input type="submit" value="Register" id="Register">
        </div>
        
    </body>
</html>
