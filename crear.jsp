<%-- 
    Document   : crear
    Created on : 17/07/2017, 06:58:37 PM
    Author     : KikeVostro
--%>
<%
    String mensaje2 = request.getParameter("mensaje");
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
        <button type="button" class="btn btn-primary btn-lg">Creando Proyectos</button>
    </div>
</head>
<body>
    <header>    
        <div class="container-fluid col-md-8 col-center ">
            <nav class="navbar navbar-light " >                
                <form class="form-inline " >
                    <a href="index_w.jsp"> <button class="btn btn-outline-success btn-lg " type="button" >Inicio</button></a>
                    <a href="crear.jsp"><button class="btn btn-outline-success btn-lg active" type="button" >Crear </button></a>
                    <a href="consultar.jsp"><button class="btn btn-outline-success btn-lg " type="button"  >Consultar </button></a>
                    <a href="editar.jsp"><button class="btn btn-outline-success btn-lg " type="button"  >Editar</button></a>
                    <a href="eliminar.jsp"><button class="btn btn-outline-success btn-lg " type="button">Eliminar</button></a>                               
                    <a href="listar.jsp"><button class="btn btn-outline-success btn-lg " type="button">Listar</button></a>
                </form>
            </nav>
        </div>
    </header>
    <aside>            
        <%-- Lugar Aside --%>
    </aside>
    <section>

        <h2 style="text-align: center" class="text-danger">
            <span style="text-decoration-color: red ">
                <i>   <%=mensaje2 != null ? mensaje2 : ""%></i>
            </span>
        </h2>
        <%-- Lugar Section--%>
        <form action="<%=request.getContextPath()%>/cproyectostb" method="get"  >
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="nombre" placeholder="Aqui Nombre" required>
                    </div>          
                </div>
            </div> <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Fecha De Inicio</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="fecha_i" placeholder="Aqui Fecha De Inicio" required>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Fecha Final</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="fecha_f" placeholder="Aqui Fecha Final" required>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Director</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="director" placeholder="Aqui Director" required>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Cliente</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="cliente" placeholder="Aqui Cliente" required>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Descripcion</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="descripcion" placeholder="Aqui Descripcion" required>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-10 ">  
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Valor</label>
                    <div class="col-sm-6">
                        <input type="number" class="form-control" name="valor" placeholder="Aqui Valor" required>
                    </div>          
                </div>
            </div> 
            <div class="container-fluid  col-md-12 text-center">  
                <button type="submit" name="accion" value="Guardar" class="btn btn-primary">Guardar</button>               
                <button type="reset"  class="btn btn-primary" >Limpiar</button> 
            </div>

        </form>
    </section>
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
