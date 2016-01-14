package mx.ipn.upiicsa.sansonelexaminador.servlet;

public class BeanUsuario {
	
	private String idEvento;
	private String idParticipante;
	private String claveParticipacion;
	private String examen;

	public String getIdEvento() {
		return idEvento;
	}
	public void setIdEvento(String idEvento) {
		this.idEvento = idEvento;
	}
	public String getIdParticipante() {
		return idParticipante;
	}
	public void setIdParticipante(String idParticipante) {
		this.idParticipante = idParticipante;
	}
	public String getClaveParticipacion() {
		return claveParticipacion;
	}
	public void setClaveParticipacion(String claveParticipacion) {
		this.claveParticipacion = claveParticipacion;
	}
	public String getExamen() {
		return examen;
	}
	public void setExamen(String examen) {
		this.examen = examen;
	}
	
	public BeanUsuario(String idEvento, String idParticipante, String claveParticipacion,
			String examen) {
		super();
		this.idEvento = idEvento;
		this.idParticipante = idParticipante;
		this.claveParticipacion = claveParticipacion;
		this.examen = examen;
	}

}
