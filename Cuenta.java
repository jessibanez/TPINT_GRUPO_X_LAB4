package entidad;

import java.util.Date;

public class Cuenta {

	private int id;
	private Cliente cliente;
	private TipoCuenta tipoCuenta;
	private String numeroCuenta;
	private String cbu;
	private Date fechaCreacion;
	private float saldo;
	private boolean estado;
	
	public Cuenta() {
		super();
	}

	public Cuenta(int id, Cliente cliente, TipoCuenta tipoCuenta, String numeroCuenta, String cbu, Date fechaCreacion,
			float saldo, boolean estado) {
		super();
		this.id = id;
		this.cliente = cliente;
		this.tipoCuenta = tipoCuenta;
		this.numeroCuenta = numeroCuenta;
		this.cbu = cbu;
		this.fechaCreacion = fechaCreacion;
		this.saldo = saldo;
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

	public TipoCuenta getTipoCuenta() {
		return tipoCuenta;
	}

	public void setTipoCuenta(TipoCuenta tipoCuenta) {
		this.tipoCuenta = tipoCuenta;
	}

	public String getNumeroCuenta() {
		return numeroCuenta;
	}

	public void setNumeroCuenta(String numeroCuenta) {
		this.numeroCuenta = numeroCuenta;
	}

	public String getCbu() {
		return cbu;
	}

	public void setCbu(String cbu) {
		this.cbu = cbu;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public float getSaldo() {
		return saldo;
	}

	public void setSaldo(float saldo) {
		this.saldo = saldo;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	
	
	
}
