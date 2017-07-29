<%-- 
    Document   : listar
    Created on : 28/07/2017, 12:49:44 PM
    Author     : KikeVostro
--%>
<%@page import="java.util.Iterator"%>
<%@page import="entidades.ProyectoTb"%>
<%@page import="java.util.List"%>
<%
    // String mensaje = (String) request.getAttribute("mensaje");
    List<ProyectoTb> listado = (List<ProyectoTb>) request.getAttribute("listar_proyectos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<div class="container-fluid  col-md-6 text-center">  
    <button type="button" class="btn btn-primary btn-lg">Creando Proyectos</button>
</div>
</head>
<body>
    <header>    
        <div class="container-fluid col-md-8 col-center ">
            <nav class="navbar navbar-light " >                
                <form class="form-inline " >
                    <a href="index_w.jsp"> <button class="btn btn-outline-success btn-lg " type="button" >Inicio</button></a>
                    <a href="crear.jsp"><button class="btn btn-outline-success btn-lg " type="button"  >Crear </button></a>
                    <a href="consultar.jsp"><button class="btn btn-outline-success btn-lg " type="button"  >Consultar </button></a>
                    <a href="editar.jsp"><button class="btn btn-outline-success btn-lg " type="button"  >Editar</button></a>
                    <a href="eliminar.jsp"><button class="btn btn-outline-success btn-lg " type="button">Eliminar</button></a>                               
                    <a href="listar.jsp"><button class="btn btn-outline-success btn-lg active" type="button" active>Listar</button></a>
                </form>
            </nav>
        </div>
    </header>
    <aside>            
        <%-- Lugar Aside --%>
    </aside>      
    <%-- Lugar Section--%>
    <form action="<%=request.getContextPath()%>/cproyectostb" method="get"  >
        <div class="container-fluid col-md-8 col-center ">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>                 
                        <th class="text-center">Id</th> 
                        <th  class="text-center">Nombre</th>
                        <th class="text-center">Fecha Inicio</th>
                        <th class="text-center">Fecha Final</th>
                        <th class="text-center">Director</th>
                        <th class="text-center">Cliente</th>
                        <th class="text-center">Descripcion</th>
                        <th class="text-center">Valor</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int i = 0;
                        Iterator<ProyectoTb> iterador = listado.iterator();
                        while (iterador.hasNext() == true) {
                            i += 1;
                            ProyectoTb project = iterador.next();
                    %> 
                    <tr>
                        <td><%=i%> </td>
                        <td><%=project.getId()%> </td>
                        <td><%=project.getNombre()%></td>
                        <td><%=project.getFechaI()%></td>
                        <td><%=project.getFechaF()%></td>
                        <td><%=project.getDirector()%></td>
                        <td><%=project.getCliente()%></td>
                        <td><%=project.getDescripncion()%></td>
                        <td><%=project.getValor()%></td>
                    </tr>       
                    <%
                        }
                    %>
                </tbody>
            </table>
            <div class="container-fluid  col-md-16 text-center">  
                <button type="submit" name="accion" value="Listar" class="btn btn-primary btn-lg">Listar</button>  
            </div>
    </form>
</div>

<article>
    <%-- Lugar Article 1--%>
</article>
<article>
    <%-- Lugar Article 1--%>
</article>
<!-- jQuery first, then Tether, then Bootstrap JS. -->
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>

</html>


