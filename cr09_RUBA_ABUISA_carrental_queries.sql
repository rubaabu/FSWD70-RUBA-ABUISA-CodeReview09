SELECT customer.NAME, car.TYPE
FROM `car`
INNER JOIN `customer` on customer_ID = CAR_ID;



SELECT customer.NAME, reservation.CHARGES
FROM `reservation`
INNER JOIN `customer` on customer_ID = reservation_ID;

