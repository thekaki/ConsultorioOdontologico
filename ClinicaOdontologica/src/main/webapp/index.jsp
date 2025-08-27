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
                        <h1 class="h3 mb-0 text-gray-800">Clinica Odontológica</h1>
                    </div>

                    <img src="https://centromedicoabc.com/wp-content/uploads/2024/07/Dentistas-profesional-de-la-salud-scaled.webp" 
                         alt="Dentista"
                         class="img-fluid d-block mt-4 mb-4"
                         style="max-width: 600px; height: auto;">

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
