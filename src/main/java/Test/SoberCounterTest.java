package Test;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.time.Period;

import org.junit.Test;

public class SoberCounterTest {

	
	LocalDate dateToday = LocalDate.now();
	
	
	@Test
	public void test() {;
	
		LocalDate soberDate = LocalDate.of(2014, 6, 29);
		Period soberCounter = soberDate.until(dateToday);
		int years = soberCounter.getYears();
		int months = soberCounter.getMonths();
		int days = soberCounter.getDays();
		
		assertEquals(years + " " + months+ " " + days, 1 + " " + 4 + " " + 17);
	}

	@Test
	public void testYear() {;
		LocalDate soberDate = LocalDate.of(1998, 11, 15);
		Period soberCounter = soberDate.until(dateToday);
		int years = soberCounter.getYears();
		System.out.println();
	
		assertEquals(years, 17);
	} 
	
	@Test
	public void testLeapYearDays() {;
		LocalDate soberDate = LocalDate.of(2012, 2, 27);
		Period soberCounter = soberDate.until(dateToday);
		int days = soberCounter.getDays();
		System.out.println(days);
		
		assertEquals(days, 19);
	}
	
	@Test
	public void testMonth() {;
	
		LocalDate soberDate = LocalDate.of(2012, 2, 27);
		Period soberCounter = soberDate.until(dateToday);
		int months = soberCounter.getMonths();
		System.out.println(months);
		
		assertEquals(months, 8);
		
	}

}
