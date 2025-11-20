<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABML Préstamos</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
<body class="bg-light">

 <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="Home.jsp">
                <i class="fas fa-university me-2"></i>Banco App
            </a>
            <div class="navbar-nav ms-auto">
                <span class="navbar-text me-3">
                    <i class="fas fa-user me-1"></i>Bienvenido, <strong>Administrador</strong>
                </span>
                <a class="btn btn-outline-light btn-sm" href="../login.jsp">
                    <i class="fas fa-sign-out-alt me-1"></i>Cerrar Sesión
                </a>
            </div>
        </div>
    </nav>


<div class="container py-4">

    <!-- Título -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="fw-bold">Gestión de Préstamos</h2>
        <a href="Home.jsp" class="btn btn-secondary">
            <i class="fas fa-arrow-left"></i> Volver al Menú
        </a>
    </div>

    <!-- Botón agregar -->
    <div class="d-flex justify-content-end mb-3">
        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalPrestamo">
            <i class="fas fa-user-plus"></i> Solicitar Préstamo
        </button>
    </div>

    <!-- Buscador -->
    <div class="card mb-3">
        <div class="card-body">
            <form class="row g-3">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Buscar por nombre, DNI o usuario">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-primary w-100">Buscar</button>
                </div>
            </form>
        </div>
    </div>


	<!-- Tabla de clientes -->
	<div class="card">
	    <div class="card-body">
	        <table class="table table-hover align-middle">
	            <thead class="table-dark">
	                <tr>
	                    <th>Cliente</th>
	                    <th>Fecha de alta</th>
	                    <th>Importe</th>
	                    <th>Cuotas</th>
	                    <th>Cuota Número</th>
	                    <th>Importe Cuota</th>
	                    <th>Estado</th> 
	                    <th>Acciones</th>
	                </tr>
	            </thead>
	            <tbody>
	                <!-- Ejemplo Fila -->
	                <tr>
	                    <td>Juan Romero</td>
	                    <td>26/06/2011</td>
	                    <td>$3100,00</td>
	                    <td>12</td>
	                    <td>5</td>
	                    <td>$415,00</td>
	                    <td>
	                        <span class="badge bg-success">Activo</span>
	                    </td>
	                    <td>
	                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#modalPrestamo">
	                            Editar
	                        </button>
	                        <button class="btn btn-danger btn-sm">
	                            Eliminar
	                        </button>
	                    </td>
	                </tr>
	                <!-- Otro ejemplo -->
	                <tr>
	                    <td>Ernesto Sábato</td>
	                    <td>09/12/2018</td>
	                    <td>$7200</td>
	                    <td>24</td>
	                    <td>7</td>
	                    <td>$455,00</td>
	                    <td>
	                        <span class="badge bg-danger">Atrasado</span>
	                    </td>
	                    <td>
	                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#modalPrestamo">
	                            Editar
	                        </button>
	                        <button class="btn btn-danger btn-sm">
	                            Eliminar
	                        </button>
	                    </td>
	                </tr>
	                
	                <tr>
	                    <td>Peter Parker</td>
	                    <td>03/03/2025</td>
	                    <td>$15200</td>
	                    <td>18</td>
	                    <td>15</td>
	                    <td>$1355,00</td>
	                    <td>
	                        <span class="badge bg-success">Activo</span>
	                    </td>
	                    <td>
	                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#modalPrestamo">
	                            Editar
	                        </button>
	                        <button class="btn btn-danger btn-sm">
	                            Eliminar
	                        </button>
	                    </td>
	                </tr>
	            </tbody>
	        </table>
	    </div>
	</div>

<!-- Modal Alta/Modificación -->
<div class="modal fade" id="modalPrestamo" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        
            <div class="modal-header">
                <h5 class="modal-title">Solicitud de préstamo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">

                <form class="row g-3">
                    
                    <div class="col-md-12">
                        <label class="form-label">Cliente</label>
                        <select class="form-control" id="clientes" name="select-clientes">
                        	<option value="">--Seleccione un cliente--</option>
						    <option>Juan Romero</option>
						    <option>Ernesto Sábato</option>
						    <option>Peter Parker</option>
                        </select>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Importe</label>
                        <input type="number" class="form-control">
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Cuotas</label>
                        <input type="number" class="form-control">
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Sistema de amortización</label>
                        <select class="form-control" id="amortizacion" name="select-amortizacion">
                        	<option value="">--Seleccione tipo de amortización--</option>
						    <option>Francés</option>
						    <option>Inglés</option>
                        </select>
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Tipo de préstamo</label>
                        <select class="form-control" id="tipo-prestamo" name="select-tipo-prestamo">
                        	<option value="">--Seleccione tipo de préstamo--</option>
						    <option>Francés</option>
						    <option>Inglés</option>
                        </select>
                    </div>
                    
                </form>

            </div>

            <div class="modal-footer">
                <button class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <button class="btn btn-primary">Solicitar</button>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Font Awesome -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/js/all.min.js"></script>
</div>
</body>
</html>
