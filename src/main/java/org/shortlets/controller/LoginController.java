package org.shortlets.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import org.shortlets.dao.SimuladorSGBDUsuario;
import br.com.caelum.vraptor.view.Results;
import org.shortlets.dao.UsuarioDao;

@Resource
public class LoginController {
	
	@Autowired
	private SimuladorSGBDUsuario dao;
	@Autowired
	private Result result;
	
	
	@Get("/login/")
	public void index() {
		UserDetails principal = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		result.include("user", principal);
	}
	
	@Get("/login/queryDoAdmin")
	public void seila() {
		dao.queryDoAdmin();
		result.use(Results.http()).body("welcome vc tem acesso à super query");
	}
	
	@Secured("ROLE_ADMIN")
	@Get("/login/admin")
	public void admin() {
		result.use(Results.http()).body("top secret admin stuff");
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_FINANCEIRO')")
	@Get("/login/financeiroOuAdmin")
	public void financeiroOuAdmin() {
		result.use(Results.http()).body("vc só pode ser do financeiro ou admin!");
	}

}
