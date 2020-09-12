package br.com.infnet.appconsumo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.appconsumo.model.service.EstadoService;

@Controller
public class EstadoController {
	
	@Autowired 
	private EstadoService estadoService;
	
	@RequestMapping(value = "/estados", method = RequestMethod.GET)
	public String obterEstados(
				Model model
			) {
		
		model.addAttribute("estados", estadoService.obterEstados());
		
		return "estado";
	}
	
	@RequestMapping(value = "/estados/{id}/municipios", method = RequestMethod.GET)
	public String obterMunicipioss(
				Model model,
				@PathVariable Integer id
			) {
		
		model.addAttribute("municipios", estadoService.obterMunicipios(id));
		
		return "municipio";
	}
}
