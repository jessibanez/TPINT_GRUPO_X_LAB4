<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Banco UTN - Préstamos</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <style>
        .bg-custom { background-color: #6f42c1 !important; }
        .text-custom { color: #6f42c1 !important; }
        .btn-custom {
            background-color: #6f42c1;
            border-color: #6f42c1;
            color: white;
        }
        .btn-custom:hover {
            background-color: #5a32a3;
            border-color: #5a32a3;
        }
        .card-hover:hover {
            transform: translateY(-5px);
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom shadow-sm">
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

    <!-- ENCABEZADO -->
    <div class="row mb-4">
        <div class="col-12">
            <h2 class="text-custom">
                <i class="fas fa-hand-holding-usd me-2"></i>Préstamos
            </h2>
            <p class="text-muted">Solicita un préstamo y revisa tus solicitudes activas</p>
        </div>
    </div>

    <div class="row">

        <!-- SOLICITAR PRÉSTAMO -->
        <div class="col-md-4 mb-4">
            <div class="card shadow card-hover h-100">
                <div class="card-body text-center">
                    <i class="fas fa-plus-circle fa-3x text-success mb-3"></i>
                    <h5 class="mb-2">Solicitar Préstamo</h5>
                    <p class="text-muted">Completa una solicitud y el banco la revisará</p>

                    <a href="prestamo_solicitar.jsp" class="btn btn-custom w-100">
                        <i class="fas fa-file-signature me-1"></i>Solicitar
                    </a>
                </div>
            </div>
        </div>

        <!-- MIS PRÉSTAMOS -->
        <div class="col-md-8 mb-4">
            <div class="card shadow">
                <div class="card-header bg-light">
                    <h5 class="mb-0">
                        <i class="fas fa-list me-2"></i>Mis Préstamos
                    </h5>
                </div>

                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table table-hover align-middle">
                            <thead class="table-light">
                                <tr>
                                   <th>Fecha</th>
                                    <th>Monto</th>
                                    <th>Cuotas</th>
                                    <th>Estado</th>
                                    
                                </tr>
                            </thead>

                            <tbody>
                                <!-- DATOS DE EJEMPLO (sustituir por BD) -->
                                <tr>
                                    <td>10/11/2025</td>
                                    <td>$200,000</td>
                                    <td>12</td>
                                    <td>
                                        <span class="badge bg-info text-dark">En revisión</span>
                                    </td>
                                   
                                </tr>

                                <tr>
                                    <td>05/09/2025</td>
                                    <td>$150,000</td>
                                    <td>24</td>
                                    <td>
                                        <span class="badge bg-success">Aprobado</span>
                                    </td>
                                    
                                </tr>

                                <tr>
                                    <td>01/06/2025</td>
                                    <td>$90,000</td>
                                    <td>12</td>
                                    <td>
                                        <span class="badge bg-danger">Rechazado</span>
                                    </td>
                                    
                                </tr>

                            </tbody>
                        </table>
                    </div>

                    <a href="panel.jsp" class="btn btn-custom mt-3">
                        <i class="fas fa-arrow-left me-1"></i>Volver al Panel
                    </a>

                </div>
            </div>
        </div>
    </div>

</div>

<footer class="bg-light mt-5 py-4">
    <div class="container text-center">
        <p class="text-muted mb-0">Banco UTN</p>
    </div>
</footer>

</body>
</html>
