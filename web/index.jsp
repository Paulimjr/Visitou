<%-- 
    Document   : index
    Created on : 11/12/2017, 22:38:15
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Página Inicial</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <br>
        <br>
    <center><h2>Visitou, veja as visitas em seu site.</h2></center> 
    <br>
    <center>
        <form action="Visitou" method="POST" id="form_visitar"> 
            <input type="text" id="nome" name="nome" placeholder="Nome e Sobrenome" required/>
            <br>
            <br>
            <input type="text" id="email" name="email" placeholder="Email" required/>
            <br>
            <br>
            <input type="submit" id="bt_visitar" name="bt_visitar" value="Visitar"/>
        </form>
        <br>
        <form action="Visitou/limpar" method="POST">
            <input type="submit" name="Limpar Visitantes" value="Limpar"/>
        </form>
        <br>
        <br>
        <div id="mostrar_visitantes">
                <%
                    String visitados = (String) request.getSession().getAttribute("visitados");
                    if (visitados == null || visitados.isEmpty()) {
                        out.println("Nenhuma visita em sua página...");
                    } else {
                        out.println(visitados);
                    }
                %>

        </div>
    </center>
</body>
</html>
