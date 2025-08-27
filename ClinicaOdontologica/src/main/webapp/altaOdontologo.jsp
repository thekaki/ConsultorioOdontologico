<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <%@include file="components/header.jsp"%>   <!-- aquí va el <head> -->

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <%@include file="components/sideBar.jsp"%>   <!-- sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <%@include file="components/topBar.jsp"%>   <!-- barra superior -->

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
                                
                                <!<!-- Aqui añadiremos lo que respecta a horarios y usuarios -->
                            </div>
                            <a href="login.html" class="btn btn-primary btn-user btn-block">
                                Registrar Odontólogo
                            </a>
                            <hr>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>
</div>
<!-- End Main Content -->

<%@include file="components/footer.jsp"%>   <!-- footer -->

</div>
<!-- End Content Wrapper -->

</div>
<!-- End Page Wrapper -->

<%@include file="components/scripts.jsp"%>   <!-- scripts JS -->

</body>
</html>
