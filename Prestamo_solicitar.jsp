<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Solicitar Préstamo - Banco UTN</title>

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

    <!-- TÍTULO -->
    <div class="row mb-4">
        <div class="col-12">
            <h2 class="text-custom">
                <i class="fas fa-file-signature me-2"></i>Solicitud de Préstamo
            </h2>
            <p class="text-muted">Completa los datos para solicitar tu préstamo</p>
        </div>
    </div>

    <!-- FORMULARIO -->
    <div class="card shadow card-hover">
        <div class="card-header bg-light">
            <h5 class="mb-0">
                <i class="fas fa-edit me-2"></i>Datos de la Solicitud
            </h5>
        </div>

        <div class="card-body">
            <form action="PrestamoServlet" method="POST">

                <div class="row mb-3">
                    <!-- MONTO -->
					<div class="col-md-4">
					    <label class="form-label fw-bold">Monto solicitado</label>
					    <input 
					        type="number" 
					        name="monto" 
					        class="form-control" 
					        placeholder="Ingrese el monto"
					        min="1"
					        required
					    >
					</div>

                    <!-- CUOTAS -->
                    <div class="col-md-4">
                        <label class="form-label fw-bold">Cantidad de cuotas</label>
                        <select name="cuotas" class="form-select" required>
                            <option value="">Seleccione cuotas</option>
                            <option value="6">6 cuotas</option>
                            <option value="12">12 cuotas</option>
                            <option value="18">18 cuotas</option>
                            <option value="24">24 cuotas</option>
                        </select>
                    </div>

                    <!-- CUENTA DESTINO -->
                    <div class="col-md-4">
                        <label class="form-label fw-bold">Cuenta destino</label>
                        <select name="cuentaDestino" class="form-select" required>
                            <option value="">Seleccione la cuenta</option>
                            <option value="1234">Caja de Ahorro ****1234</option>
                            <option value="5678">Cuenta Corriente ****5678</option>
                        </select>
                    </div>
                </div>

                <!-- BOTONES -->
                <div class="d-flex justify-content-between mt-4">
                    <a href="prestamos.jsp" class="btn btn-secondary">
                        <i class="fas fa-arrow-left me-1"></i>Volver
                    </a>

                    <button type="submit" class="btn btn-custom">
                        <i class="fas fa-check me-1"></i>Enviar Solicitud
                    </button>
                </div>

            </form>
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
