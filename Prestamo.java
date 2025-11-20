package entidad;

import java.util.Date;

public class Prestamo {
	
	private int id;
	private Cliente cliente;
	private Cuenta cuenta;
	private Date fechaAlta;
	private float importeSolicitado;
	private float tasaInteres;
	private int cantidadCuotas;
	private float importeCuota;
	private int plazoMeses;
	private EstadoPrestamo estadoPrestamo;
	private boolean estado;
	
	public Prestamo() {
		super();
	}

	

	public Prestamo(int id, Cliente cliente, Cuenta cuenta, Date fechaAlta, float importeSolicitado, float tasaInteres,
			int cantidadCuotas, float importeCuota, int plazoMeses, EstadoPrestamo estadoPrestamo, boolean estado) {
		super();
		this.id = id;
		this.cliente = cliente;
		this.cuenta = cuenta;
		this.fechaAlta = fechaAlta;
		this.importeSolicitado = importeSolicitado;
		this.tasaInteres = tasaInteres;
		this.cantidadCuotas = cantidadCuotas;
		this.importeCuota = importeCuota;
		this.plazoMeses = plazoMeses;
		this.estadoPrestamo = estadoPrestamo;
		this.estado = estado;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Cuenta getCuenta() {
		return cuenta;
	}

	public void setCuenta(Cuenta cuenta) {
		this.cuenta = cuenta;
	}

	public Date getFechaAlta() {
		return fechaAlta;
	}

	public void setFechaAlta(Date fechaAlta) {
		this.fechaAlta = fechaAlta;
	}

	public float getImporteSolicitado() {
		return importeSolicitado;
	}

	public void setImporteSolicitado(float importeSolicitado) {
		this.importeSolicitado = importeSolicitado;
	}

	public float getTasaInteres() {
		return tasaInteres;
	}

	public void setTasaInteres(float tasaInteres) {
		this.tasaInteres = tasaInteres;
	}

	public int getCantidadCuotas() {
		return cantidadCuotas;
	}

	public void setCantidadCuotas(int cantidadCuotas) {
		this.cantidadCuotas = cantidadCuotas;
	}

	public float getImporteCuota() {
		return importeCuota;
	}

	public void setImporteCuota(float importeCuota) {
		this.importeCuota = importeCuota;
	}

	public int getPlazoMeses() {
		return plazoMeses;
	}

	public void setPlazoMeses(int plazoMeses) {
		this.plazoMeses = plazoMeses;
	}
	
	
	public EstadoPrestamo getEstadoPrestamo() {
		return estadoPrestamo;
	}


	public void setEstadoPrestamo(EstadoPrestamo estadoPrestamo) {
		this.estadoPrestamo = estadoPrestamo;
	}


	public boolean getEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	
	
}
