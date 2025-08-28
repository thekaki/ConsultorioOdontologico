<%-- components/scripts.jsp
     Scripts en el orden correcto para SB Admin 2 (Bootstrap 4).
     Siempre: jQuery -> Bootstrap Bundle -> plugins -> sb-admin-2 -> demos
--%>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap core JavaScript (bundle incluye Popper.js) -->
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- jQuery easing plugin (usado por sb-admin) -->
<script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>

<!-- Page level plugins (Charts) -->
<script src="${pageContext.request.contextPath}/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts (opcional, sólo si usas gráficos) -->
<script src="${pageContext.request.contextPath}/js/demo/chart-area-demo.js"></script>
<script src="${pageContext.request.contextPath}/js/demo/chart-pie-demo.js"></script>

<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>
