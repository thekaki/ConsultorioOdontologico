<%-- layout.jsp
     Plantilla principal: incluye componentes y deja el body vacio para contenido dinámico.
     Usa <jsp:include> para inclusión dinámica.
--%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <%-- head --%>
    <jsp:include page="/components/header.jsp" />

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <%-- sidebar --%>
            <jsp:include page="/components/sideBar.jsp" />

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <%-- topbar --%>
                    <jsp:include page="/components/topBar.jsp" />

                    <!-- Aquí es donde añades tu contenido por página -->
                    <div class="container-fluid">
                        <%-- CONTENT START (dejado vacío) --%>
                        <!-- Añade aquí tu HTML dinámico por página -->
                        <!-- Page Heading -->
                        <h1>Ver Usuarios</h1>


                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Lista de todos los usuarios del sistema</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nombre</th>
                                                <th>Rol</th>
                                                <th>Activo</th>
                                                <th>Acción</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nombre</th>
                                                <th>Rol</th>
                                                <th>Activo</th>
                                                <th>Acción</th>
                                            </tr>
                                        </tfoot>
                                        <%
                                            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                                        %>
                                        <tbody>
                                            <% for (Usuario usu : listaUsuarios) {%>
                                            <tr>
                                                <td><%=usu.getId_usuario()%></td>
                                                <td><%=usu.getNombreUsuario()%></td>
                                                <td><%=usu.getRol()%></td>
                                                <td>True</td>
                                                <td style="white-space: nowrap;">
                                                    <form name="eliminar" action="SvEliminarUsuarios" method="POST" style="display:inline-block; margin-right:5px;">
                                                        <button type="submit" class="btn btn-danger btn-sm">
                                                            <i class="fas fa-trash-alt"></i> Eliminar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">
                                                    </form>
                                                    <form name="editar" action="SvEditarUsuarios" method="GET" style="display:inline-block;">
                                                        <button type="submit" class="btn btn-primary btn-sm">
                                                            <i class="fas fa-pencil-alt"></i> Editar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">
                                                    </form>
                                                </td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <%-- footer (incluye modal/scroll) --%>
                <jsp:include page="/components/footer.jsp" />

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <%-- scripts JS (siempre al final del body) --%>
        <jsp:include page="/components/scripts.jsp" />

    </body>
</html>