

<%@page import="java.util.List"%>
<%@page import="model.Alumno"%>
<%@page import="dao.RegistrarAlumnoDao"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>Registro de Alumno</title>
    </head>
    <body>
    <body style="margin-top: 30px">      

        <div class="container">            
            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Agregar nuevo Alumno</button>
            <div style="padding-left: 800px">                  
                <input type="text" class="form-control" value="Buscar"/>                            
            </div>
        </div>  

        <br>
        <div class="container">               
            <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
            <table class="table table-bordered"  id="tablaDatos">
                <thead>
                    <tr>
                        <th class="text-center">Id</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellidos</th>
                        <th class="text-center">ciclo</th>
                        <th class="text-center">carrera</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody id="tbodys">


                    <%
                        RegistrarAlumnoDao dao = new RegistrarAlumnoDao();
                        List<Alumno> lista = dao.listarAlumno();

                        for (int i = 0; i < lista.size(); i++) {
                            
                        

                    %>
                    <tr>
                        <td class="text-center"><%=lista.get(i).getIdAlumno()%></td>
                        <td class="text-center"><%=lista.get(i).getNombre()%></td>
                        <td class="text-center"><%=lista.get(i).getApellido()%></td>
                        <td class="text-center"><%=lista.get(i).getCiclo()%></td>
                        <td class="text-center"><%=lista.get(i).getCarrera()%></td>

                        <td class="text-center">

                            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Editar</button>
                            <button type="button" class="btn btn-warning btn-lg">Elimnar</button>
                        </td>
                    </tr>
                    <%}%>
            </table>
        </div>    

        <div class="container">          
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                    <div class="modal-content">
                        <div class="modal-header">                            
                            <h4 class="modal-title" id="myModalLabel">Agregar Registro</h4>
                        </div>
                        <div class="modal-body">
                            <form action="AlumnServlet" method="post">
                                <label>Nombre</label><br>
                                <input class="form-control" type="text" name="nombre"><br>
                                <label>Apellido</label><br>
                                <input class="form-control" type="text" name="apellido"><br>
                                <label>ciclo</label><br>
                                <input class="form-control" type="text" name="ciclo"><br>
                                <label>carrera</label><br>
                                <input class="form-control" type="text" name="carrera"><br>                                   
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                            
                                    <input type="submit" value="Guardar" class="btn btn-primary"/>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>  

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>