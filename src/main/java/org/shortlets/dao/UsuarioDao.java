package org.shortlets.dao;

import org.springframework.security.access.annotation.Secured;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.PrototypeScoped;
import org.shortlets.model.User;


@PrototypeScoped
@Component
public class UsuarioDao implements SimuladorSGBDUsuario {

	@Override
	public User find(String login) {
		if ("admin".equals(login)) {
			return User.ADMIN;
		}
		if ("financeiro".equals(login)) {
			return User.FINANCEIRO;
		}
		if ("user".equals(login)) {
			return User.USER;
		}
		return null;
	}
	
	
	@Secured("ROLE_ADMIN")
	public User queryDoAdmin() {
		return null;
	}

}
