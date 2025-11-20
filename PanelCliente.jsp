<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco UTN - Mi Cuenta</title>
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
    </style>
</head>
<body>
    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">
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
                <h2 class="text-custom"><i class="fas fa-tachometer-alt me-2"></i>Mi Panel</h2>
                <p class="text-muted">Resumen de tus cuentas y operaciones recientes</p>
            </div>
        </div>

        <!-- RESUMEN DE SALDOS -->
        <div class="row mb-4">
            <div class="col-md-8">
                <div class="card balance-card shadow">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-piggy-bank me-2"></i>Saldo Total</h5>
                        <h2 class="display-4 fw-bold">$45,750.00</h2>
                        <p class="mb-0">Disponible en todas tus cuentas</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 shadow">
                    <div class="card-body text-center">
                        <i class="fas fa-wallet fa-3x text-success mb-3"></i>
                        <h5>2 Cuentas Activas</h5>
                        <p class="text-muted">Gestiona tus cuentas</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- ACCIONES RAPIDAS -->
        <div class="row mb-4">
            <div class="col-12">
                <h4 class="mb-3"><i class="fas fa-bolt me-2 text-warning"></i>Acciones Rápidas</h4>
            </div>
            
            <div class="col-lg-3 col-md-6 mb-3">
			    <a href="Transferencias.jsp" class="text-decoration-none">
			        <div class="card quick-action-card text-center card-hover">
			            <div class="card-body">
			                <i class="fas fa-exchange-alt fa-2x text-custom mb-3"></i>
			                <h6 class="text-dark">Transferencias</h6>
			                <small class="text-muted">Entre cuentas o a terceros</small>
			            </div>
			        </div>
			    </a>
			</div>

			<div class="col-lg-3 col-md-6 mb-3">
			    <a href="Prestamo_solicitar.jsp" class="text-decoration-none">
			        <div class="card quick-action-card text-center card-hover">
			            <div class="card-body">
			                <i class="fas fa-hand-holding-usd fa-2x text-success mb-3"></i>
			                <h6 class="text-dark">Solicitar Préstamo</h6>
			                <small class="text-muted">Solicita un préstamo personal</small>
			            </div>
			        </div>
			    </a>
			</div>
			
			<div class="col-lg-3 col-md-6 mb-3">
			    <a href="Prestamo_pago.jsp" class="text-decoration-none">
			        <div class="card quick-action-card text-center card-hover">
			            <div class="card-body">
			                <i class="fas fa-credit-card fa-2x text-info mb-3"></i>
			                <h6 class="text-dark">Pagar Cuotas</h6>
			                <small class="text-muted">Paga tus cuotas pendientes</small>
			            </div>
			        </div>
			    </a>
			</div>
			
			<div class="col-lg-3 col-md-6 mb-3">
			    <a href="PerfilCliente.jsp" class="text-decoration-none">
			        <div class="card quick-action-card text-center card-hover">
			            <div class="card-body">
			                <i class="fas fa-user-circle fa-2x text-secondary mb-3"></i>
			                <h6 class="text-dark">Mi Perfil</h6>
			                <small class="text-muted">Ver mis datos personales</small>
			            </div>
			        </div>
			    </a>
			</div>


        <div class="row">
            <!-- MIS CUENTAS -->
            <div class="col-md-6 mb-4">
                <div class="card shadow">
                    <div class="card-header bg-light">
                        <h5 class="card-title mb-0">
                            <i class="fas fa-credit-card me-2"></i>Mis Cuentas
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">Caja de Ahorro ****1234</h6>
                                <small class="text-muted">Saldo disponible</small>
                            </div>
                            <span class="fw-bold text-success">$25,250.00</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">Cuenta Corriente ****5678</h6>
                                <small class="text-muted">Saldo disponible</small>
                            </div>
                            <span class="fw-bold text-success">$20,500.00</span>
                        </div>
                        <a href="Movimientos.jsp" class="btn btn-custom btn-sm w-100 mt-2">
                           	<i class="fas fa-eye me-1"></i>Ver Todas las Cuentas 
                        </a>
                    </div>
                </div>
            </div>

            <!-- ULTIMOS MOVIMIENTOS -->
            <div class="col-md-6 mb-4">
                <div class="card shadow">
                    <div class="card-header bg-light">
                        <h5 class="card-title mb-0">
                            <i class="fas fa-history me-2"></i>Últimos Movimientos
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">Transferencia recibida CBU **** 8765</h6>
                                <small class="text-muted">05/11/2025</small>
                            </div>
                            <span class="fw-bold text-success">+$11,500.00</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-2">
                            <div>
                                <h6 class="mb-1">Transferencia enviada CBU **** 0909</h6>
                                <small class="text-muted">08/11/2025</small>
                            </div>
                            <span class="fw-bold text-danger">-$8,500.00</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="mb-1">Pago de cuota</h6>
                                <small class="text-muted">10/11/2025</small>
                            </div>
                            <span class="fw-bold text-danger">-$200,300.00</span>
                        </div>
                        <a href="movimientos.jsp" class="btn btn-custom btn-sm w-100 mt-3">
                            <i class="fas fa-list me-1"></i>Ver Historial Completo
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- RECORDATORIOS -->
        <div class="row">
            <div class="col-12">
                <div class="card border-warning shadow">
                    <div class="card-header bg-warning text-dark">
                        <h5 class="card-title mb-0">
                            <i class="fas fa-bell me-2"></i>Recordatorios
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="alert alert-warning mb-2">
                            <i class="fas fa-exclamation-triangle me-2"></i>
                            Tienes 1 cuota pendiente - Vence el 10/12/2025
                        </div>
                        <div class="alert alert-info mb-0">
                            <i class="fas fa-info-circle me-2"></i>
                            Tu préstamo #123 está en revisión
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- PIE DE PAGINA -->
    <footer class="bg-light mt-5 py-4">
        <div class="container text-center">
            <p class="text-muted mb-0">Banco UTN</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>