package entidad;

public class TipoCuenta {
	
	private int id;
	private String tipoCuenta;
	
	public TipoCuenta() {
		super();
	}

	public TipoCuenta(int id, String tipoCuenta) {
		super();
		this.id = id;
		this.tipoCuenta = tipoCuenta;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipoCuenta() {
		return tipoCuenta;
	}

	public void setTipoCuenta(String tipoCuenta) {
		this.tipoCuenta = tipoCuenta;
	}
	
	

}
