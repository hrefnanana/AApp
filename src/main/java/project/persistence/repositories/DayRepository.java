package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import project.persistence.entities.Day;

import java.util.List;

/**
 * By extending the {@link JpaRepository} we have access to powerful methods.
 * For detailed information, see:
 * http://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html
 * http://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 *
 */
public interface DayRepository extends JpaRepository<Day, Long> {

    Day save(Day day);

    void delete(Day day);

    List<Day> findAll();
    
    @Modifying
    @Transactional
    @Query(value = "DELETE FROM Day d where d.date = ?1 AND d.userId = ?2")
    void deleteByDateAndUserId(String date, Long userId);

    // If we need a custom query that maybe doesn't fit the naming convention used by the JPA repository,
    // then we can write it quite easily with the @Query notation, like you see below.
    // This method returns all PostitNotes where the length of the name is equal or greater than 3 characters.
   // @Query(value = "SELECT p FROM day p where length(p.date) >= 3 ")
    //List<Day> findAllWithNameLongerThan3Chars();

    // Instead of the method findAllReverseOrder() in PostitNoteService.java,
    // We could have used this method by adding the words
    // ByOrderByIdDesc, which mean: Order By Id in a Descending order
    //
    List<Day> findAllByOrderByIdDesc();

    Day findOne(Long id);

    Day findByDateAndUserId(String date, long userId);
}
