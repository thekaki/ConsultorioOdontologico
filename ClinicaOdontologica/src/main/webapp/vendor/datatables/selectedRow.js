document.addEventListener("DOMContentLoaded", () => {
    const filas = document.querySelectorAll(".fila-usuario");
    const inputId = document.getElementById("idSeleccionado");

    filas.forEach(fila => {
        fila.addEventListener("click", () => {
            // Quitar selección previa
            filas.forEach(f => f.classList.remove("table-active"));

            // Marcar esta fila
            fila.classList.add("table-active");

            // Guardar id en input oculto
            inputId.value = fila.dataset.id;
        });
    });

    // Validar antes de enviar que haya selección
    document.getElementById("formAcciones").addEventListener("submit", (e) => {
        if (!inputId.value) {
            e.preventDefault();
            alert("Selecciona un usuario primero");
        }
    });
});
