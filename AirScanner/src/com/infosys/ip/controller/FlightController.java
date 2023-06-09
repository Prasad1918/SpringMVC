/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.infosys.ip.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.infosys.ip.model.SearchFlights;



@Controller
public class FlightController {

	@Autowired
	private Environment environment;

	@RequestMapping(value = "/searchFlights", method = RequestMethod.POST)
	public ModelAndView flightSearch(@Valid @ModelAttribute("command") SearchFlights searchFlights,
			BindingResult bindingResult, ModelMap model) {
		RestTemplate restTemplate = new RestTemplate();
		String restUrl=environment.getProperty("RestUrl");
		ModelAndView modelAndView = null;

		if (bindingResult.hasErrors()) {
			modelAndView= new ModelAndView("searchFlights", "command", searchFlights);

		} 
		System.out.println("source"+searchFlights.getSource());
		System.out.println("dest "+searchFlights.getDestination());
		System.out.println("jdate"+searchFlights.getJourneyDate());

		@SuppressWarnings("unchecked")
		List<com.infosys.ip.model.SearchFlights> availableFlights = restTemplate.getForObject(/*"http://localhost:2525/InfyGoMVC"*/ restUrl + "/FlightAPI/" + searchFlights.getSource()
		+ "/" + searchFlights.getDestination() + "/" + searchFlights.getJourneyDate(), List.class);
		List<String> sources = restTemplate.getForObject(restUrl+ "/FlightAPI/source" , List.class);

		List<String> destinations = restTemplate.getForObject(restUrl +"/FlightAPI/destination" , List.class);

		model.addAttribute("availableFlights", availableFlights);
		model.addAttribute("size", availableFlights.size());
		modelAndView = new ModelAndView("searchFlights", "command", searchFlights);
		modelAndView.addObject("sourceList", sources);
		modelAndView.addObject("destinationList", destinations);


		return modelAndView;
	}


}
