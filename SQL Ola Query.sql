Use ola;

----Retrieve all successful bookings:

Select * 
from Bookings
where Booking_Status = 'Success';


-----Find the average ride distance for each vehicle type:

Select Vehicle_type, Avg(Ride_distance) as Avg_Distance
from Bookings 
group by Vehicle_Type;


-----Get the total number of cancelled rides by customers:

SELECT COUNT(*) as cancelled_rides_by_customers
FROM bookings 
WHERE Booking_Status = 'canceled by Customer';


-----List the top 5 customers who booked the highest number of rides:

SELECT Top 5 Customer_ID, COUNT(Booking_ID) as total_rides 
FROM bookings 
GROUP BY Customer_ID 
ORDER BY total_rides DESC;


----Get the number of rides cancelled by drivers due to personal and car-related issues:

SELECT COUNT(*) 
FROM bookings 
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

 
----Find the maximum and minimum driver ratings for Prime Sedan bookings:

Select Max(Driver_ratings) as Max_ratings, Min(driver_ratings) as Min_ratings 
from Bookings
where Vehicle_Type = 'Prime Sedan';



----Retrieve all rides where payment was made using UPI:

Select Customer_ID, Date,  Payment_Method
from Bookings
where Payment_Method = 'UPI';


----Find the average customer rating per vehicle type:

SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating 
FROM bookings
GROUP BY Vehicle_Type;


----Calculate the total booking value of rides completed successfully:

SELECT SUM(Booking_Value) as total_successful_value 
FROM bookings 
WHERE Booking_Status = 'Success';


-----List all incomplete rides along with the reason:

SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides = 'Yes';


-----List all incomplete rides along with the reason:

SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides ='Yes';