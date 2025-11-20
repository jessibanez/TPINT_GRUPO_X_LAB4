<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco UTN - Panel Administrador</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .card-hover:hover {
            transform: translateY(-5px);
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        .balance-card {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        .quick-action-card {
            background: #f8f9fa;
            border: 2px solid transparent;
            cursor: pointer;
            height: 100%;
        }
        .quick-action-card:hover {
            border-color: #007bff;
            background: white;
        }
        .bg-custom {
            background-color: #6f42c1 !important;
        }
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
        .text-custom {
            color: #6f42c1 !important;
        }
        .navbar-custom {
            background-color: #6f42c1 !important;
        }
        .stat-card {
            border-left: 4px solid #6f42c1;
        }
    </style>
</head>
<body>
    <!-- ENCABEZADO -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-university me-2"></i>Banco UTN - Administración
            </a>
            <div class="navbar-nav ms-auto">
                <span class="navbar-text me-3">
                    <i class="fas fa-user-shield me-1"></i>Administrador, <strong>Usuario X</strong>
                </span>
                <a class="btn btn-outline-light btn-sm" href="../login.jsp">
                    <i class="fas fa-sign-out-alt me-1"></i>Cerrar Sesión
                </a>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <!-- Header -->
        <div class="row mb-4">
            <div class="col-12">
                <h2 class="text-custom"><i class="fas fa-tachometer-alt me-2"></i>Panel de Control</h2>
                <p class="text-muted">Gestión integral del sistema bancario</p>
            </div>
        </div>

        <!-- ESTADÍSTICAS -->
        <div class="row mb-4">
            <div class="col-md-3 mb-3">
                <div class="card stat-card shadow card-hover">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <h6 class="card-title text-muted">Total Clientes</h6>
                                <h3 class="text-custom">156</h3>
                            </div>
                            <i class="fas fa-users fa-2x text-custom"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card stat-card shadow card-hover">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <h6 class="card-title text-muted">Cuentas Activas</h6>
                                <h3 class="text-custom">324</h3>
                            </div>
                            <i class="fas fa-credit-card fa-2x text-custom"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card stat-card shadow card-hover">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <h6 class="card-title text-muted">Préstamos Pendientes</h6>
                                <h3 class="text-warning">15</h3>
                            </div>
                            <i class="fas fa-hand-holding-usd fa-2x text-warning"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card stat-card shadow card-hover">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <h6 class="card-title text-muted">Transferencias Hoy</h6>
                                <h3 class="text-info">47</h3>
                            </div>
                            <i class="fas fa-exchange-alt fa-2x text-info"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ACCIONES ADMIN -->
        <div class="row mb-4">
            <div class="col-12">
                <h4 class="mb-3"><i class="fas fa-cogs me-2 text-custom"></i>Gestión del Sistema</h4>
            </div>
            <div class="col-lg-3 col-md-6 mb-3">
                <div class="card quick-action-card text-center card-hover" onclick="location.href='clientes-list.jsp'">
                    <div class="card-body">
                        <i class="fas fa-users fa-2x text-custom mb-3"></i>
                        <h6>Gestión de Clientes</h6>
                        <small class="text-muted">ABML de clientes</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-3">
                <div class="card quick-action-card text-center card-hover" onclick="location.href='cuentas-list.jsp'">
                    <div class="card-body">
                        <i class="fas fa-credit-card fa-2x text-success mb-3"></i>
                        <h6>Gestión de Cuentas</h6>
                        <small class="text-muted">ABML de cuentas</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-3">
                <div class="card quick-action-card text-center card-hover" onclick="location.href='prestamos-list.jsp'">
                    <div class="card-body">
                        <i class="fas fa-file-invoice-dollar fa-2x text-warning mb-3"></i>
                        <h6>Autorizar Préstamos</h6>
                        <small class="text-muted">Revisar y autorizar</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-3">
                <div class="card quick-action-card text-center card-hover" onclick="location.href='reportes.jsp'">
                    <div class="card-body">
                        <i class="fas fa-chart-bar fa-2x text-info mb-3"></i>
                        <h6>Reportes</h6>
                        <small class="text-muted">Estadísticas e informes</small>
                    </div>
                </div>
            </div>
        </div>

        <!-- PRÉSTAMOS PENDIENTES -->
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-header bg-light d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">
                            <i class="fas fa-clock me-2 text-warning"></i>Préstamos Pendientes de Autorización
                        </h5>
                        <span class="badge bg-warning">15 pendientes</span>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">María González</h6>
                                <small class="text-muted">DNI: 30.456.789 - Solicita: $5O0,000 - 12 cuotas</small>
                            </div>
                            <span class="badge bg-warning">Pendiente</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">Roberto Sánchez</h6>
                                <small class="text-muted">DNI: 25.123.456 - Solicita: $1,000,000 - 24 cuotas</small>
                            </div>
                            <span class="badge bg-warning">Pendiente</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">Ana Martínez</h6>
                                <small class="text-muted">DNI: 28.987.654 - Solicita: $700,000 - 36 cuotas</small>
                            </div>
                            <span class="badge bg-warning">Pendiente</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">Carlos Rodríguez</h6>
                                <small class="text-muted">DNI: 33.654.321 - Solicita: $3,000,000 - 24 cuotas</small>
                            </div>
                            <span class="badge bg-warning">Pendiente</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="mb-1">Laura Fernández</h6>
                                <small class="text-muted">DNI: 35.111.222 - Solicita: $4,500,000 - 12 cuotas</small>
                            </div>
                            <span class="badge bg-warning">Pendiente</span>
                        </div>
                        <a href="prestamos-list.jsp" class="btn btn-custom btn-sm w-100 mt-3">
                            <i class="fas fa-list me-1"></i>Revisar Todos los Préstamos Pendientes
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-light mt-5 py-4">
        <div class="container text-center">
            <p class="text-muted mb-0">Banco UTN - Panel de Administración</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>