package org.shortlets.dao;

import org.shortlets.model.User;

public interface SimuladorSGBDUsuario {

	User find(String login);

	User queryDoAdmin();

}
