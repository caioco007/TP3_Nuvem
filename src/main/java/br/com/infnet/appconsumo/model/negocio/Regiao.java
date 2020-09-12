package br.com.infnet.appconsumo.model.negocio;

public class Regiao {

	private Integer id;
	private String sigla;
	private String nome;
	
	@Override
	public String toString() {
		return String.format(
				"[%s] %s, %s", 
				this.getId(),
				this.getSigla(),
				this.getNome()				
				);
				
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
}

