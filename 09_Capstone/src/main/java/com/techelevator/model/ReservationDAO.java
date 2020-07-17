package com.techelevator.model;

import java.time.LocalDate;


public interface ReservationDAO {

	public Reservation createReservation(int spaceToBeReserved, int numberOfPeople, LocalDate reservationDate,
			LocalDate checkOutDate, String reservedFor);

}
