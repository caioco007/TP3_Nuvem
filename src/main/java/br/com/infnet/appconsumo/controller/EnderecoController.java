package br.com.infnet.appconsumo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.infnet.appconsumo.model.service.EnderecoService;

@Controller
public class EnderecoController {
	
	@Autowired 
	private EnderecoService enderecoService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showInit() {
		return "home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showHome() {
		return "home";
	}
	
	@RequestMapping(value = "/cep", method = RequestMethod.GET)
	public String showCep() {
		return "endereco";
	}
	
	@RequestMapping(value = "/cep", method = RequestMethod.POST)
	public String obterPorCep(
				Model model,
				@RequestParam String cep
			) {
		
		model.addAttribute("endereco", enderecoService.obterPorCep(cep));
		
		return "endereco";
	}
}
