<%-- 
    Document   : tablero
    Created on : 21-sep-2015, 11:43:47
    Author     : minutti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
        <script>
            var origen = null;
            function celdaPresionada(id){
                if(origen === null){
                    origen = id;
                    console.log("Origen: " + id);
                }
                else{
                    console.log("Moviendo de " + origen + " a " + id);
                    
                    var contenidoOrigen = $("#" + origen).html();
                    $("#" + id).html(contenidoOrigen);
                    $("#" + origen).html("");
                    origen = null;
                }
            }
            function esDiferenteColor(casillaA,casillaB){
                var piezaA = casillaA.indexOf("white");
                var piezaB = casillaB.indexOf("white");
                
            }
        </script>
    </head>
    <body>
        <h1>CHESS</h1>
        
    <center>
        <table>
            <%
                for(int i = 0;i<8;i++){
            %>
            <tr>
                <%
                    for(int j = 0;j<8;j++){

                %>
                    <td id="<%=i+"_"+j%>" class="<%=(i+j)%2==0?"negras":""%>" onclick="celdaPresionada(id)">
                    <%
                        if(i==1){
                    %>
                            <img src="imagenes/Pawn-black_256x256_32.png" alt=""/>
                    <%
                        }
                        if(i==6){
                    %>
                            <img src="imagenes/Pawn-white_256x256_32.png" alt=""/>
                    <%
                        }      
                    
                    %>
   
                    </td>
                <%
                    }
                %>
        </tr>
            <%   
                }
            %>
        </table>
    </center>
    </body>
</html>
