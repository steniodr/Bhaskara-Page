<%@page import="br.bhaskara.Bhaskara"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="resources/delta-icone.png">
        <title>Bhaskara Resultado</title>
    </head>
    <body style="background-image: url('resources/math-background.jpg');">
        <%
               int a, b, c;
               int[] resul;
               a = Integer.parseInt(request.getParameter("valueA"));
               b = Integer.parseInt(request.getParameter("valueB"));
               c = Integer.parseInt(request.getParameter("valueC"));
               
               resul = Bhaskara.equationBhaskara(a, b, c);
        %>
        
        <div class="container mt-5 pt-5" style="background-color: #c6c6c6; border: rgba(0, 0, 0, 0.5) 3px solid; padding-left: 30px; padding-right: 30px">
            <div class="row justify-content-evenly">
            
            <div>
                <h2 class="mb-5 fw-normal text-center"><b>Resultado equação de Bhaskara</b></h2>
            </div>
                
                <div class="row text-center">
                    <div>
                        <h3 class="mb-5 fw-normal text-center">Numeros inseridos</h3>
                    </div>
                    
                    <div class="mb-3 col-md-4">
                        <p for="inputA" class="fw-normal h4" >Valor de A:  <b><%= a %></b></p>
                    </div>
                    <div class="mb-3 col-md-4">
                        <p for="inputB" class="fw-normal h4" >Valor de B:  <b><%= b %></b></p>
                    </div>
                    <div class="mb-3 col-md-4">
                        <p for="inputC" class="fw-normal h4" >Valor de C:  <b><%= c %></b></p>
                    </div>
                    <div>
                        <% if(resul != null) { %>
                    <% if( resul[0] > 0){ %>
                    <hr>
                    <div class="row mt-5">
                        <div>
                        <h3 class="mb-5 fw-normal text-center">Resultado</h3>
                        </div>
                        
                        <div class="mb-3 col-md-4">
                        <h3 class="mb-5 fw-normal text-center"> Delta = <b><%= resul[0] %></b></h3>
                        </div>
                        <div class="mb-3 col-md-4">
                        <h3 class="mb-5 fw-normal text-center"> X1 = <b><%= resul[1] %></b></h3>
                        </div>
                        <div class="mb-3 col-md-4">
                        <h3 class="mb-5 fw-normal text-center"> X2 = <b><%= resul[2] %></b></h3>
                        </div>
                    </div>
                    
                    <%} else if(resul[0] == -666){ %>
                    <hr>
                    <h3 class="mb-5 fw-normal text-center"> Valor de A igual a 0</h3>
                    <%} else { %>
                    <hr>
                    <h3 class="mb-2 fw-normal text-center"> Delta = <b><%= resul[0] %></b></h3>
                    <h3 class="mb-5 fw-normal text-center"> Não existe raízes reais </h3>

                    <%} %>
                <%} %>
                    </div>
                    
                </div>
        </div>
    </body>
</html>
