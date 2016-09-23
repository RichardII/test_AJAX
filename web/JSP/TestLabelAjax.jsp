<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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

        <%-- TEST  http://stackoverflow.com/questions/19970323/update-jsp-page-label-value-using-ajax  --%>

        <script type="text/javascript">
            
            $(":input").bind('keyup mouseup', function () { 
                                                  alert("changed");    
                                              });

              calcul() {
                    $.ajax({
                        url: 'http://localhost:41422/WebApplication1/TimerAjax?userid=' +$('#id_number').text(),
                        type: 'post',
                        dataType: 'json',
                        success: function (data) {
                            $('#lblscore').html(data.score); 
                        }
                      });
                });
        </script>  

        
        <h1>Hello World!</h1>

        <div class="bodycontent">

            <table>
                <tr>
                    <td>quantite =  <input type="number" id="id_number" value="1" min="1" max="3" /> </td>
                    <td>>>>>>>>>><label id="lblscore"></label></td>
                </tr>
            </table>
        </div>

    </body>
</html>
