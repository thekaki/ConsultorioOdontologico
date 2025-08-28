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

                    <!-- Contenido dinámico -->
                    <div class="container-fluid">
                        <!-- Aquí va tu contenido dinámico -->
                        <h1>Alta Odontólogos</h1>
                        <form class="user">
                            <div class="form-group col">
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="dni"
                                           placeholder="Dni">
                                </div>
                                <div class="col-sm-6 mb-3">

                                    <input type="text" class="form-control form-control-user" id="nombre"
                                           placeholder="Nombre">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="apellidos"
                                           placeholder="Apellidos">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="telefono"
                                           placeholder="Telefono">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="direccion" 
                                           placeholder="Dirección">
                                </div>
                                <div class="col-sm-2 mb-3">
                                    <input type="date" class=" form-control form-control-user" id="fechanac"
                                           placeholder="Fecha de nacimiento">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class=" form-control form-control-user" id="especialidad"
                                           placeholder="Especialidad">
                                </div>

                                <!-- Aqui añadiremos lo que respecta a horarios y usuarios -->
                            </div>
                            <div class="col-sm-6 mb-3">
                                <a href="login.html" class="btn btn-primary btn-user btn-block">
                                    Registrar Odontólogo
                                </a>
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