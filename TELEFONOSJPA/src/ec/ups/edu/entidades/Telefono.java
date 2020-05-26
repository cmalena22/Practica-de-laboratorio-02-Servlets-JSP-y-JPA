package ec.ups.edu.entidades;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Telefono
 *
 */
@Entity

public class Telefono implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String codigo;
	@ManyToOne
	@JoinColumn
	private Usuario cedula;
	private String numero;
	private String tipo;
	private String operadora;
	
	public Telefono() {
		
	}
	
	public Telefono(String codigo, Usuario cedula, String numero, String tipo, String operadora) {
		
		this.codigo = codigo;
		this.cedula = cedula;
		this.numero = numero;
		this.tipo = tipo;
		this.operadora = operadora;
	}
	


	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public Usuario getCedula() {
		return cedula;
	}

	public void setCedula(Usuario cedula) {
		this.cedula = cedula;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getOperadora() {
		return operadora;
	}

	public void setOperadora(String operadora) {
		this.operadora = operadora;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cedula == null) ? 0 : cedula.hashCode());
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		result = prime * result + ((numero == null) ? 0 : numero.hashCode());
		result = prime * result + ((operadora == null) ? 0 : operadora.hashCode());
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Telefono other = (Telefono) obj;
		if (cedula == null) {
			if (other.cedula != null)
				return false;
		} else if (!cedula.equals(other.cedula))
			return false;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		if (numero == null) {
			if (other.numero != null)
				return false;
		} else if (!numero.equals(other.numero))
			return false;
		if (operadora == null) {
			if (other.operadora != null)
				return false;
		} else if (!operadora.equals(other.operadora))
			return false;
		if (tipo == null) {
			if (other.tipo != null)
				return false;
		} else if (!tipo.equals(other.tipo))
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "Telefono [codigo=" + codigo + ", cedula=" + cedula + ", numero=" + numero + ", tipo=" + tipo
				+ ", operadora=" + operadora + "]";
	}
	
	
   
}
.