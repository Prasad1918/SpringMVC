/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.infosys.ip.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.infosys.ip.model.SearchFlights;

@Controller
@SessionAttributes("contextPath")
@PropertySource("classpath:/com/infosys/ip/resources/configuration.properties")
public class HomeController {

	@Autowired
	private Environment environment;

	@RequestMapping(value = "/flight", method = RequestMethod.GET)
	public ModelAndView getSourceDestinationDetails(HttpSession session, HttpServletRequest request) {

		String restUrl=environment.getProperty("RestUrl");
		session.setAttribute("contextPath", request.getContextPath());
		RestTemplate restTemplate = new RestTemplate();
		List<String> sources = restTemplate.getForObject(restUrl+ "/FlightAPI/source" , List.class);
		
		List<String> destinations = restTemplate.getForObject(restUrl +"/FlightAPI/destination" , List.class);
		ModelAndView modelAndView = new ModelAndView("searchFlights", "command", new SearchFlights());
		modelAndView.addObject("sourceList", sources);
		modelAndView.addObject("destinationList", destinations);
		return modelAndView;
	}

}
