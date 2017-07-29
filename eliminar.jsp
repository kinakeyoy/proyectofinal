<%-- 
    Document   : eliminar
    Created on : 17/07/2017, 06:59:31 PM
    Author     : KikeVostro
--%>
<%@page import="entidades.ProyectoTb"%>
<%
    String Mensaje = (String) request.getAttribute("Mensaje");
    String accion = (String) request.getAttribute("accion");
    ProyectoTb project = (ProyectoTb) request.getAttribute("Proyecto Encontrado");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <div class="container-fluid  col-md-6 text-center">  
        <button type="button" class="btn btn-primary btn-lg">Eliminando Proyectos</button>
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
                    <a href="eliminar.jsp"><button class="btn btn-outline-success btn-lg active" type="button" active>Eliminar</button></a>                               
                    <a href="listar.jsp"><button class="btn btn-outline-success btn-lg " type="button">Listar</button></a>
                </form>
            </nav>
        </div>
    </header>
    <aside>            
        <%-- Lugar Aside --%>
    </aside>
    <section>
        <%-- Lugar Section--%>
        <h2 style="text-align: center" class="text-danger">
            <span style="text-decoration-color: red ">
                <i>   <%=Mensaje != null ? Mensaje : " "%></i>
            </span>
        </h2>
        <form action="<%=request.getContextPath()%>/cproyectostb" method="get"  >
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">ID</label>
                    <div class="col-sm-6">
                        <input type="number" class="form-control" name="id" value="<%=(project != null) ? project.getId() : " "%>"placeholder="Aqui ID" required>
                    </div>          
                </div>
            </div>
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="nombre"   value="<%=(project != null) ? project.getNombre() : " "%>"  disabled>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Fecha De Inicio</label>                 
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="fecha_i" value="<%=(project != null) ? project.getFechaI() : " "%>" disabled>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Fecha Final</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="fecha_f" value="<%=(project != null) ? project.getFechaF() : " "%>" placeholder="Aqui Valor" disabled>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Director</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="director" value="<%=(project != null) ? project.getDirector() : " "%>" placeholder="Aqui Valor" disabled>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Cliente</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="cliente" value="<%=(project != null) ? project.getCliente() : " "%>" placeholder="Aqui Valor" disabled>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Descripcion</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="descripcion" value="<%=(project != null) ? project.getDescripncion() : " "%>" placeholder="Aqui Valor" disabled>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Valor</label>
                    <div class="col-sm-6">
                        <input type="number" class="form-control" name="valor" value="<%=(project != null) ? project.getValor() : " "%>" placeholder="Aqui Valor" disabled>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-12 text-center">  
                <button type="submit" name="accion" value="Consultar_D" class="btn btn-primary">Consultar</button>               
                <button type="submit" name="accion" value="Eliminar" class="btn btn-primary">Eliminar</button>     
                <button type="reset"  class="btn btn-primary" >Limpiar</button> 
            </div>

        </form>

    </section>
    <article>
        <%-- Lugar Article--%>

    </article>

    <article>

    </article>


    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>
