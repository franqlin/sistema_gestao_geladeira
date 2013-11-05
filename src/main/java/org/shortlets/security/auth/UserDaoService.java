package org.shortlets.security.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import org.shortlets.dao.SimuladorSGBDUsuario;
import org.shortlets.model.User;

public class UserDaoService implements UserDetailsService {
	
    private SimuladorSGBDUsuario users;
	private PasswordEncoder encoder;
    
    @Autowired
    public UserDaoService(SimuladorSGBDUsuario users, PasswordEncoder encoder) {
		this.users = users;
		this.encoder = encoder;
    }

	@Override
	public UserDetails loadUserByUsername(String login)
			throws UsernameNotFoundException {
		User user = users.find(login);
		return user;
	}

}
