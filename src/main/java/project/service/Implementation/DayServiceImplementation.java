package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.*;
import project.persistence.repositories.*;
import project.service.*;

import java.util.Collections;
import java.util.List;

@Service
public class DayServiceImplementation implements DayService {

    // Instance Variables
	DayRepository repository;

    // Dependency Injection
    @Autowired
    public DayServiceImplementation(DayRepository repository) {
        this.repository = repository;
    }

    @Override
    public Day save(Day day) {
        return repository.save(day);
    }

    @Override
    public void delete(Day day) {
        repository.delete(day);
    }

    @Override
    public List<Day> findAll() {
        return repository.findAll();
    }

    @Override
    public List<Day> findAllByOrderByIdDesc() {
        return repository.findAllByOrderByIdDesc();
    }
    
    @Override
    public void deleteByDateAndUserId(String date, Long userId) {
        repository.deleteByDateAndUserId(date, userId);
    }

    @Override
    public Day findOne(Long id) {
        return repository.findOne(id);
    }

    @Override
    public Day findByDateAndUserId(String date, Long userId) {
        return repository.findByDateAndUserId(date, userId);
    }


}
