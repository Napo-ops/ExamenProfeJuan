<%@page import="model.Curso"%>
<%@page import="java.util.List"%>
<%@page import="dao.RegistrarCursoDao"%>


<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>Registro Curso</title>
    </head>
    <body>
    <body style="margin-top: 30px">      

        <div class="container">            
            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Agregar nuevo Curso</button>
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
                        <th class="text-center">Nombre Curso</th>
                        <th class="text-center">Horas</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody id="tbodys">

                    <%
                        RegistrarCursoDao dao = new RegistrarCursoDao();
                        List<Curso> list = dao.listarCurso();

                        for (int i = 0; i < list.size(); i++) {


                    %>

                    <tr>
                        <td class="text-center"><%=list.get(i).getIdCurso()%></td>
                        <td class="text-center"><%=list.get(i).getNombre()%></td>
                        <td class="text-center"><%=list.get(i).getHoras()%></td>

                        <td class="text-center">

                            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Editar</button>
                            <button type="button" class="btn btn-warning btn-lg">Elimnar</button>
                        </td>

         
                    </tr>
                    <% }%>
            </table>
        </div>    

        <div class="container">          
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                    <div class="modal-content">
                        <div class="modal-header">                            
                            <h4 class="modal-title" id="myModalLabel">Agregar Curso</h4>
                        </div>
                        <div class="modal-body">
                            <form action="CursServlet" method="post">
                                <label>Nombre Curso</label><br>
                                <input class="form-control" type="text" name="nombre"><br>
                                <label>Horas</label><br>
                                <input class="form-control" type="text" name="horas"><br>

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


        <div class="container">          
            <div class="modal fade" id="myModalEditar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                    <div class="modal-content">
                        <div class="modal-header">                            
                            <h4 class="modal-title" id="myModalLabel">Actualizar Curso</h4>
                        </div>
                        <div class="modal-body">
                            <form action="RegistrarCursoServlet" method="post">
                                <label>Id</label><br>
                                <input class="form-control" readonly="" type="text" name="nombre" value=""><br>
                                <label>Nombre Curso</label><br>
                                <input class="form-control" type="text" name="nombre"><br>
                                <label>Horas</label><br>
                                <input class="form-control" type="text" name="horas"><br>

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