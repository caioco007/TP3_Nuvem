package br.com.infnet.appconsumo.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appconsumo.clients.IEnderecoClient;
import br.com.infnet.appconsumo.model.negocio.Endereco;

@Service
public class EnderecoService {
	
	@Autowired 
	private IEnderecoClient enderecoClient;
	
	public Endereco obterPorCep (String cep) {
		return enderecoClient.obterPorCep(cep);
	}
}
