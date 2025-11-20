<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <div class="card shadow p-4 card-hover">

        <h3 class="text-custom mb-1"> Transferencias </h3>
        <p class="text-muted">Realiza transferencias entre tus cuentas o hacia otras cuentas</p>

        <form action="TransferenciaConfirmar" method="post">

            <div class="mb-3">
                <label class="form-label fw-bold"> Cuenta origen: </label>
                <select name="origen" class="form-select" required>
                    <option value="">Seleccione una cuenta </option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label fw-bold">Tipo de transferencia: </label>

                <div class="d-flex gap-4 mt-1">
                    <label class="me-3">
                        <input type="radio" name="tipo" value="interna" checked onclick="toggleTipo()">
                        Entre mis cuentas
                    </label>
 
                        <label>
                        <input type="radio" name="tipo" value="tercero" onclick="toggleTipo()">
                        A otros clientes por CBU
                    </label>
                </div>
            </div>

            <div id="misCuentasDestino" class="mb-3">
                <label class="form-label fw-bold">Cuenta destino (mis cuentas): </label>
                <select name="destinoInterna" class="form-select">
  
                </select>
            </div>

            <div id="CBU" class="mb-3" style="display:none;">
                <label class="form-label fw-bold">CBU: </label>
                <input type="text" name="cbuDestino" class="form-control" placeholder="Ingresar CBU" maxlength="22">
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label class="form-label fw-bold">Monto: </label>
                    <input type="number" name="monto" class="form-control" min="1" step="0.01" required>
                </div>

                <div class="col-md-8 mb-3">
                    <label class="form-label fw-bold">Descripción (opcional): </label>
                    <input type="text" name="descripcion" class="form-control" placeholder="Ej: Pago de compra, ahorro...">
                </div>
            </div>

			
			
            <div class="text-end mt-3">
                <button class="btn btn-custom px-4">Continuar</button>
            </div>

        </form>

    </div>
</div>

<script>
    function toggleTipo() {
        const tipo = document.querySelector('input[name="tipo"]:checked').value;

        const destinoInterno = document.getElementById("misCuentasDestino");
        const destinoCBU = document.getElementById("CBU");

        if (tipo === "interna") {
            destinoInterno.style.display = "block";
            destinoCBU.style.display = "none";
        } else {
            destinoInterno.style.display = "none";
            destinoCBU.style.display = "block";
        }
    }
    
    window.onload = toggleTipo;
</script>

</body>

</html>