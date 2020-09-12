package br.com.infnet.appconsumo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appconsumo.clients.IEstadoClient;
import br.com.infnet.appconsumo.model.negocio.Estado;
import br.com.infnet.appconsumo.model.negocio.Municipio;

@Service
public class EstadoService {
	
	@Autowired 
	private IEstadoClient estadoClient;
	
	public List<Estado> obterEstados() {
		
		return estadoClient.obterEstados();
	}

	public List<Municipio> obterMunicipios(Integer id) {
				
		return estadoClient.obterMunicipios(id);
	}
	
}
