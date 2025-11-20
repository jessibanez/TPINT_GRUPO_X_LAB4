<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Banco UTN - Movimientos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <style>
        .bg-custom {
            background-color: #6f42c1 !important;
        }
        .text-custom {
            color: #6f42c1 !important;
        }
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
                <i class="fas fa-list-alt me-2"></i>Detalle de Movimientos
            </h2>
            <p class="text-muted">Consulta los movimientos de tus cuentas</p>
        </div>
    </div>

    <!-- SELECTOR DE CUENTA -->
    <div class="card shadow mb-4">
        <div class="card-header bg-light">
            <h5 class="mb-0">
                <i class="fas fa-credit-card me-2"></i>Seleccionar Cuenta
            </h5>
        </div>

        <div class="card-body">
            <form method="GET" action="movimientos.jsp">
                <div class="row">
                    <div class="col-md-8">
                        <label class="form-label fw-bold">Cuenta</label>
                        <select name="cuenta" class="form-select">
                            <option value="1234">Caja de Ahorro ****1234</option>
                            <option value="5678">Cuenta Corriente ****5678</option>
                        </select>
                    </div>

                    <div class="col-md-4 d-flex align-items-end">
                        <button type="submit" class="btn btn-custom w-100">
                            <i class="fas fa-search me-1"></i>Consultar
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- TABLA DE MOVIMIENTOS -->
    <div class="card shadow card-hover">
        <div class="card-header bg-light">
            <h5 class="mb-0">
                <i class="fas fa-history me-2"></i>Movimientos de la cuenta
            </h5>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead class="table-light">
                        <tr>
                            <th>Fecha</th>
                            <th>Descripción</th>
                            <th>Tipo</th>
                            <th class="text-end">Importe</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- EJEMPLOS FIJOS (luego se reemplazan con BD) -->
                        <tr>
                            <td>10/11/2025</td>
                            <td>Pago de cuota</td>
                            <td><span class="badge bg-danger">Pago de préstamo</span></td>
                            <td class="text-end text-danger">-$200,300.00</td>
                        </tr>
                        <tr>
                            <td>08/11/2025</td>
                            <td>Transferencia enviada</td>
                            <td><span class="badge bg-danger">Transferencia</span></td>
                            <td class="text-end text-danger">-$8,500.00</td>
                        </tr>
                        <tr>
                            <td>05/11/2025</td>
                            <td>Transferencia recibida</td>
                            <td><span class="badge bg-success">Transferencia</span></td>
                            <td class="text-end text-success">+$11,500.00</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <a href="PanelCliente.jsp" class="btn btn-custom mt-3">
                <i class="fas fa-arrow-left me-1"></i>Volver
            </a>
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
