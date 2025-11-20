<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<style>
	
	*{
		margin:0;
		padding:0;
		box-sizing: border-box;
	}
	
	body{
		display:flex;
		heigth: 100vh;
		justify-content: center;
		aling-items: center;
		padding: 10px;
		background: linear-gradient(130deg,skyblue,blue)		
	}
	
	.container{
		max-width: 700px;
		width: 100%;
		padding: 25px 30px;
		background-color: #fff;
		border-radius: 5px;		
	}
	
	.container .tittle
	{
			font-size: 25px;
			font-weight: 500;
	}
	
	.container form
	{
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
		margin: 10px 12px 0;
	}
	
	form .form-group
	{
		margin-bottom: 15px;
		width: calc(100%/2 - 20px);	
	}
	
	form span
	{
		display:block;
		font-weight: 500;
		margin-bottom: 5px;		
	}
	.form-group input
	{
		height:40px;
		width:100;
		outline:none;
		border-radius:5px;
		border: 1px solid #ccc;
		padding-left: 15px;
		border-bottom-width: 2px;
		transition: all 0.3s ease;
	}
	.form-group input:focus,
	.form-group intput:valid{
		border-color: skyblue;
	}
	
	form .button
	{
		width:100px;
		height: 40px;
		margin:40px 0;
		
		/* width: 100%;
	     display: flex;
    	 justify-content: center;
    	 margin: 40px 0;
		*/
		
	}
	
	form .button input
	{
		width:100%;
		height: 100%;
		outline:none;
		cursor:pointer;
		background: linear-gradient(130deg,blue,skyblue);	
		color:#fff;
		font-size: 16px;
		font-weight:500;
		border:none;
		border-radius: 5px;
	}
	
	/*responsive*/
	@media(max-width: 584px)
	{
		.container{
			max-width:100%;			
		}
		
		form .form-group{
			margin-bottom: 15px;
			width:100%;
		}
		
		.container form{
			max-height:400px;
			overflow-y:scroll;
		}
		
		.container form::-webkit-scrollbar{
			width:0;
		}
		form .button{
			margin: 20px 0;
		}		
		
	}
	
	
	
	</style>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="tittle">Alta Cliente</div>
		<form action="#">
			<div class="form-group">
				<span>Apellido</span>
				<input type="text" placeholder="ingrese apellido">				
			</div>
			
			<div class="form-group">
				<span>Nombre</span>
				<input type="text" placeholder="ingrese nombre">				
			</div>
			
			<div class="form-group">
				<span>DNI</span>
				<input type="number" placeholder="ingrese DNI">				
			</div>
			
			<div class="form-group">
				<span>CUIL</span>
				<input type="number" placeholder="ingrese CUIL">				
			</div>
			
			<div class="form-group">
				<span>Fecha de nacimiento</span>
				<input type="text" placeholder="ingrese fecha de nacimiento">				
			</div>
			
			<div class="form-group">
				<span>Nacionalidad</span>
				
				<select name="Nacionalidad" id="pais">
				<option>Seleccione un item</option>
				<option>Argentina</option>				
				</select>			
				
			</div>
			
			<div class="form-group">
				<span>Sexo</span>
				
				<select name="Sexo" id="opc">
				<option>Seleccione un item </option>
				<option></option>				
				</select>				
				
			</div>
			
				<div class="form-group">
				<span>Direccion</span>
				<input type="text" placeholder="ingrese direccion">				
			</div>
			
				<div class="form-group">
				<span>Provincia</span>
				
				<select name="Provincia" id="prov">
				<option>Seleccione un item </option>
				<option></option>				
				</select>				
				
			</div>
			
				<div class="form-group">
				<span>Localidad</span>
				
				<select name="Localidad" id="loc">
				<option>Seleccione un item</option>
				<option></option>				
				</select>			
				
			</div>
			
			<div class="form-group">
				<span>Telefono</span>
				<input type="number" placeholder="ingrese telefono">				
			</div>
			
			<div class="form-group">
				<span>Correo</span>
				<input type="email" placeholder="ingrese correo">				
			</div>
			
			<div class="tittle">Alta Usuario</div>
			
				<div class="form-group">
				<span>Usuario</span>
				<input type="text" placeholder="ingrese usuario">				
			</div>
			
				<div class="form-group">
				<span>Contraseña</span>
				<input type="password" placeholder="ingrese contraseña">				
			</div>
			
			<div class="form-group">
				<span>Confirme contraseña</span>
				<input type="password" placeholder="ingrese contraseña">				
			</div>
			
			<div class="button">
			
			<input type="button" value="Grabar cliente">		
			
			</div>
			<div class="button">
			
			<input type="button" value="Salir">		
			
			</div>
			
			
		</form>
	
	</div>
</body>
</html>