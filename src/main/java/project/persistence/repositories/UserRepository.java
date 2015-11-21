package project.persistence.repositories;

//import org.jboss.logging.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.jpa.repository.*;

import project.persistence.entities.*;

import java.util.List;

/**
 * By extending the {@link JpaRepository} we have access to powerful methods.
 * For detailed information, see:
 * http://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html
 * http://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 *
 */
public interface UserRepository extends JpaRepository<User, Long> {

    User save(User user);

    void delete(User user);

    List<User> findAll();
    
    @Modifying
    @Transactional
    @Query(value = "DELETE FROM Day d where d.date = ?1 ")
    void deleteByDate(String date);
/*
    // If we need a custom query that maybe doesn't fit the naming convention used by the JPA repository,
    // then we can write it quite easily with the @Query notation, like you see below.
    // This method returns all PostitNotes where the length of the name is equal or greater than 3 characters.
   // @Query(value = "SELECT p FROM day p where length(p.date) >= 3 ")
    //List<Day> findAllWithNameLongerThan3Chars();

    // Instead of the method findAllReverseOrder() in PostitNoteService.java,
    // We could have used this method by adding the words
    // ByOrderByIdDesc, which mean: Order By Id in a Descending order
    //
    List<User> findAllByOrderByIdDesc();

    User findOne(Long id);

    List<User> findByDate(String date); */
    
    
   
    @Query(value = "SELECT u.userName FROM User u WHERE u.userName = ?1")
    String doesExist(String username);

    // If we need a custom query that maybe doesn't fit the naming convention used by the JPA repository,
    // then we can write it quite easily with the @Query notation, like you see below.
    // This method returns all PostitNotes where the length of the name is equal or greater than 3 characters.
   // @Query(value = "SELECT p FROM day p where length(p.date) >= 3 ")
    //List<Day> findAllWithNameLongerThan3Chars();

    // Instead of the method findAllReverseOrder() in PostitNoteService.java,
    // We could have used this method by adding the words
    // ByOrderByIdDesc, which mean: Order By Id in a Descending order
    //
    List<User> findAllByOrderByIdDesc();

    User findOne(Long id);

    List<User> findByDate(String date);
    
    @Query(value = "SELECT u.userName FROM User u WHERE u.userName = ?1 AND u.password = ?2")
	String checkIfMatch(String username, String password);
}
