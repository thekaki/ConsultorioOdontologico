<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <%-- head --%>
    <jsp:include page="/components/header.jsp" />
    
    <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
    
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

                    <!-- Contenido dinámico -->
                    <div class="container-fluid">
                        <!-- Aquí va tu contenido dinámico -->
                        <h1>Editar Usuarios</h1>
                        <form class="user" action="SvEditarUsuarios" method="POST">
                            <div class="form-group col">
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                                           value="<%=usu.getNombreUsuario()%>">
                                </div>
                                <div class="col-sm-6 mb-3">

                                    <input type="password" class="form-control form-control-user" id="password" name="password"
                                           value="<%=usu.getContrasenia()%>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="rol" name="rol"
                                           value="<%=usu.getRol()%>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Editar Usuario
                                    </button>
                                </div>
                            </div>
                        </form>
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
