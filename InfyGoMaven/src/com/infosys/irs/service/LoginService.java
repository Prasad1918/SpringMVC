/**
 * 
 */
package com.infosys.irs.service;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infosys.irs.entity.UserEntity;
import com.infosys.irs.exception.InvalidCredentialException;
import com.infosys.irs.model.Login;
import com.infosys.irs.model.User;
import com.infosys.irs.repository.UserRepository;


@Service
public class LoginService {
	@Autowired
	private UserRepository userRepository;	
	
	public User authenticateLogin(Login userLogin) throws InvalidCredentialException{
		Optional<UserEntity> op = userRepository.findById(userLogin.getUserName());
		if(!op.isPresent())
		{
			throw new InvalidCredentialException(
					"LoginService.INVALID_CREDENTIALS");
		}
		UserEntity userentity = op.get();
		if(!(userentity.getPassword().equals(userLogin.getPassword()))){
			throw new InvalidCredentialException(
					"LoginService.INVALID_CREDENTIALS");
		}
		User user=new User();
		user.setCity(userentity.getCity());
		user.setEmail(userentity.getEmail());
		user.setName(userentity.getName());
		user.setPassword(userentity.getPassword());
		user.setPhone(userentity.getPhone());
		user.setUserId(userentity.getUserId());
		return user;				
		}
	}
