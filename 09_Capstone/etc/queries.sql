SELECT  venue.name, city.name, city.state_abbreviation, venue.description, category.name FROM venue
Join city on venue.city_id = city.id
join category_venue on venue.id = category_venue.venue_id
join category on category.id = category_venue.category_id where venue.id = 1;

SELECT id, venue_id, name, open_from, open_to, CAST(daily_rate as decimal), max_occupancy FROM space WHERE venue_id = 3;
SELECT id, venue_id, name, is_accessible, open_from, open_to, Cast(daily_rate as decimal), max_occupancy FROM space WHERE venue_id = 1;

CAST(money data type AS decimal());
select * from space where max_occupancy = 100;

Select * from reservation where number_of_attendees =?<=max_occupancy;

Select
        space.id, space.venue_id, space.name, space.is_accessible, space.max_occupancy, cast(space.daily_rate as numeric)
from space
join reservation on reservation.space_id = space.id
join venue on venue.id = space.venue_id
WHERE ('10' <= space.max_occupancy) AND  ('2020/01/09' >= reservation.end_date OR '2020/01/10' <= reservation.start_date) AND (space.venue_id = 1) limit  5;

Insert into reservation(reservation_id, space_id, number_of_attendees, start_date, end_date, reserved_for) VALUES (DEFAULT,?,?,?,?,?) RETURNING reservation_id;

select nextval('reservation_reservation_id_seq'::regclass);