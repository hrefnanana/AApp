package project.service;

import project.persistence.entities.Day;

import java.util.List;

public interface DayService {

    /**
     * Save a {@link Day}
     * @param postitNote {@link Day} to be saved
     * @return {@link Day} that was saved
     */
	Day save(Day day);

    /**
     * Delete {@link Day}
     * @param day {@link Day} to be deleted
     */
    void delete(Day day);

    /**
     * Get all {@link Day}s
     * @return A list of {@link Day}s
     */
    List<Day> findAll();

    /**
     * Get all {@link Day}s in a reverse order
     * @return A reversed list of {@link Day}s
     */
    List<Day> findAllByOrderByIdDesc();

    /**
     * Find a {@link Day} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link Day} with {@link Long id}
     */
    Day findOne(Long id);

    /**
     * Find all {@link Day}s with {@link String date}
     * @param date {@link String}
     * @return All {@link Day}s with the {@link String date} passed
     */
    Day findByDateAndUserId(String date, Long userId);
    
    void deleteByDateAndUserId(String date, Long userId);


    

}
