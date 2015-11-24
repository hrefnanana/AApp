package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.*;
import project.persistence.repositories.*;
import project.service.*;

import java.util.Collections;
import java.util.List;

@Service
public class UserServiceImplementation implements UserService {

    // Instance Variables
	UserRepository repository;

    // Dependency Injection
    @Autowired
    public UserServiceImplementation(UserRepository repository) {
        this.repository = repository;
    }

    @Override
    public User save(User user) {
        return repository.save(user);
    }

    @Override
    public void delete(User user) {
        repository.delete(user);
    }

    @Override
    public List<User> findAll() {
        return repository.findAll();
    }

    @Override
    public List<User> findAllByOrderByIdDesc() {
        return repository.findAllByOrderByIdDesc();
    }
    


    @Override
    public User findOne(Long id) {
        return repository.findOne(id);
    }



	@Override
	public String doesExist(String username) {
		return repository.doesExist(username);
	}

	@Override
	public User findByUserNameAndPassword(String username, String password) {
		return repository.findByUserNameAndPassword(username, password);
	}

	
}
