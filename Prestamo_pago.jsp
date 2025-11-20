<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagar Préstamos - Banco UTN</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <style>
        .bg-custom { background-color: #6f42c1 !important; }
        .text-custom { color: #6f42c1 !important; }
        .navbar-custom { background-color: #6f42c1 !important; }

        .btn-custom {
            background-color: #6f42c1;
            border-color: #6f42c1;
            color: white;
        }
        .btn-custom:hover {
            background-color: #5a32a3;
            border-color: #5a32a3;
            color: white;
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="panel.jsp">
            <i class="fas fa-university me-2"></i>Banco App
        </a>
        <div class="navbar-nav ms-auto">
            <span class="navbar-text me-3">
                <i class="fas fa-user me-1"></i>Bienvenida, <strong>Jessica Ibañez</strong>
            </span>
            <a class="btn btn-outline-light btn-sm" href="../login.jsp">
                <i class="fas fa-sign-out-alt me-1"></i>Cerrar Sesión
            </a>
        </div>
    </div>
</nav>


<div class="container mt-4">

    <!-- TITULO -->
    <div class="row mb-4">
        <div class="col-12">
            <h2 class="text-custom">
                <i class="fas fa-credit-card me-2"></i>Pagar Préstamos
            </h2>
            <p class="text-muted">Selecciona la cuota a pagar y la cuenta de origen</p>
        </div>
    </div>

    <!-- CONTENIDO -->
    <div class="row">

        <div class="col-md-6 mb-4">
            <div class="card shadow">
                <div class="card-header bg-light">
                    <h5 class="mb-0"><i class="fas fa-list-ol me-2"></i>Cuotas Pendientes</h5>
                </div>
                <div class="card-body">

                    <form action="ProcesarPagoPrestamo" method="post">

                        <label class="fw-bold mb-2">Seleccionar cuota</label>

                        <select class="form-select mb-3" name="cuotaSeleccionada" required>
                            <option value="" disabled selected>Seleccione una cuota...</option>

                            <!-- Estos valores los reemplazarás por datos reales -->
                            <option value="1">
                                Cuota 1 / 12 - Vence 10/12/2025 - $25.000,00
                            </option>

                            <option value="2">
                                Cuota 2 / 12 - Vence 10/01/2026 - $25.000,00
                            </option>

                            <option value="3">
                                Cuota 3 / 12 - Vence 10/02/2026 - $25.000,00
                            </option>

                        </select>

                </div>
            </div>
        </div>

        <!-- Selección de cuenta -->
        <div class="col-md-6 mb-4">
            <div class="card shadow">
                <div class="card-header bg-light">
                    <h5 class="mb-0"><i class="fas fa-wallet me-2"></i>Cuenta de Origen</h5>
                </div>
                <div class="card-body">

                    <label class="fw-bold mb-2">Seleccione cuenta</label>

                    <select class="form-select mb-3" name="cuentaOrigen" required>
                        <option value="" disabled selected>Seleccione una cuenta...</option>

                        <!-- Reemplazar por cuentas reales -->
                        <option value="1">Caja de Ahorro ****1234 - $25.250,00</option>
                        <option value="2">Cuenta Corriente ****5678 - $20.500,00</option>
                    </select>

                    <button type="submit" class="btn btn-custom w-100">
                        <i class="fas fa-check me-2"></i>Pagar Cuota
                    </button>

                    </form>

                </div>
            </div>
        </div>

    </div>
</div>

<!-- FOOTER -->
<footer class="bg-light mt-5 py-4">
    <div class="container text-center">
        <p class="text-muted mb-0">Banco UTN</p>
    </div>
</footer>

</body>
</html>

