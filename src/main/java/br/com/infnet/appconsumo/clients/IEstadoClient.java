package br.com.infnet.appconsumo.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.com.infnet.appconsumo.model.negocio.Estado;
import br.com.infnet.appconsumo.model.negocio.Municipio;

@FeignClient(url = "https://servicodados.ibge.gov.br/api/v1/localidades/estados", name = "estadoClient")
public interface IEstadoClient {
	
	@GetMapping
	public List<Estado> obterEstados();	
	
	@GetMapping("/{id}/municipios")
	public List<Municipio> obterMunicipios(@PathVariable Integer id);	
		
}
