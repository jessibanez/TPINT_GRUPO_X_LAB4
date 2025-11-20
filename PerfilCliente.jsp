<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mi Perfil</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>

<style>
    .profile-card {
        border-radius: 12px;
        padding: 25px;
        background: #fff;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    
    .navbar-custom {
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
    
</style>

</head>
<body class="bg-light">
<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="panel.jsp">
            <i class="fas fa-university me-2"></i>Banco App
        </a>

        <div class="navbar-nav ms-auto">
            <span class="navbar-text me-3">
                <i class="fas fa-user me-1"></i>Bienvenida, 
                <strong>Jessica Ibañez</strong>
            </span>

            <a class="btn btn-outline-light btn-sm" href="../login.jsp">
                <i class="fas fa-sign-out-alt me-1"></i>Cerrar Sesión
            </a>
        </div>
    </div>
</nav>


<div class="container mt-4">

    <h2 class="fw-bold mb-3">
        <i class="fas fa-user-circle me-2"></i> Mi Perfil
    </h2>
    <p class="text-muted">Aquí puedes ver tu información personal.</p>

    <!-- TARJETA DE PERFIL -->
    <div class="profile-card">

        <h5 class="fw-bold mb-3">Datos Personales</h5>

        <div class="row">

            <div class="col-md-6 mb-3">
                <label class="text-muted">Nombre:</label>
                <div class="fw-semibold">Nombre</div>
            </div>

            <div class="col-md-6 mb-3">
                <label class="text-muted">Apellido:</label>
                <div class="fw-semibold">Apelldio</div>
            </div>

            <div class="col-md-6 mb-3">
                <label class="text-muted">DNI:</label>
                <div class="fw-semibold">DNI</div>
            </div>
            
            <div class="col-md-6 mb-3">
                <label class="text-muted">CUIL:</label>
                <div class="fw-semibold">CUIL</div>
            </div>
            
            <div class="col-md-6 mb-3">
                <label class="text-muted">Sexo:</label>
                <div class="fw-semibold">Sexo</div>
            </div>
            
            <div class="col-md-6 mb-3">
                <label class="text-muted">Nacionalidad:</label>
                <div class="fw-semibold">Nacionalidad</div>
            </div>
            
            <div class="col-md-6 mb-3">
                <label class="text-muted">Fecha de nacimiento:</label>
                <div class="fw-semibold">XX/XX/XXXX</div>
            </div>
            
            <div class="col-md-6 mb-3">
                <label class="text-muted">Direccion:</label>
                <div class="fw-semibold">Direccion</div>
            </div>
            
            <div class="col-md-6 mb-3">
                <label class="text-muted">Localidad:</label>
                <div class="fw-semibold">Localidad</div>
            </div>

            <div class="col-md-6 mb-3">
                <label class="text-muted">Correo electronico:</label>
                <div class="fw-semibold">Correo electronico</div>
            </div>

            <div class="col-md-6 mb-3">
                <label class="text-muted">Teléfono:</label>
                <div class="fw-semibold">Telefono</div>
            </div>

        </div>

        <div class="text-end">
			<a href="PanelCliente.jsp" class="btn btn-custom mt-3">
                <i class="fas fa-arrow-left me-1"></i>Volver
            </a>
        </div>
        
        

    </div>

</div>

</body>
</html>
