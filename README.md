# Ola Data Analysis Project 

## Objective 
Identified the reason and trend for ride cancellation.

## Tools Used 
# -Excel
# -Sql 
# -Power Bi

## Key Insights 
# -Success Rates of Booking 
# -Cancellation pattern 
# -Revenue Trend
# -Payment methods 

## Sql Query With answers 

## 1.	Retrieve all successful bookings: 
SELECT * FROM bookings WHERE Booking_Status = 'Success';

 <img width="940" height="218" alt="image" src="https://github.com/user-attachments/assets/e34586cb-495f-49e8-bc2a-6c678927c80c" />


## 2.	Find the average ride distance for each vehicle type: 
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY Vehicle_Type;

 <img width="344" height="255" alt="image" src="https://github.com/user-attachments/assets/4e51388b-6039-45a2-b27d-c9e4de439d33" />


## 3.	Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'cancelled by Customer';

<img width="356" height="72" alt="image" src="https://github.com/user-attachments/assets/c2d31d7c-9833-4684-ac20-481752268818" />


## 4.	List the top 5 customers who booked the highest number of rides: 
SELECT Top 5 Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY Customer_ID ORDER BY total_rides DESC;
 
 <img width="314" height="194" alt="image" src="https://github.com/user-attachments/assets/83068ce6-fe4c-4cb5-b8e3-cbd207bfa368" />


## 5.	Get the number of rides cancelled by drivers due to personal and car-related issues: 
SELECT COUNT(*) 
FROM bookings WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

<img width="259" height="73" alt="image" src="https://github.com/user-attachments/assets/02790b17-2b4d-4f4b-ae7c-29a0910aa42e" />

 

## 6.	Find the maximum and minimum driver ratings for Prime Sedan bookings: 
SELECT MAX(Driver_Ratings) as Max_rating, MIN(Driver_Ratings) as Min_rating FROM bookings WHERE Vehicle_Type = 'Prime Sedan'

<img width="320" height="70" alt="image" src="https://github.com/user-attachments/assets/9cba98ba-386d-417d-998a-437559996d3c" />

 


## 7.	Retrieve all rides where payment was made using UPI:
Select Customer_ID, Date,  Payment_Method from Bookings where Payment_Method = 'UPI' 

<img width="655" height="547" alt="image" src="https://github.com/user-attachments/assets/ad104a74-8eb7-4737-bf24-c98679201d29" />


## 8.	Find the average customer rating per vehicle type: 
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings GROUP BY Vehicle_Type;

<img width="411" height="258" alt="image" src="https://github.com/user-attachments/assets/39c87a21-6598-4744-8908-efebe788875d" />

 

## 9.	Calculate the total booking value of rides completed successfully:
 SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE Booking_Status = 'Success';
 
 <img width="280" height="73" alt="image" src="https://github.com/user-attachments/assets/627b84ca-a031-4df1-8b7b-0174b6e37a45" />

 
## 10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides = 'Yes';

<img width="488" height="548" alt="image" src="https://github.com/user-attachments/assets/e1ad3aef-7f23-4c01-995c-603f1b7b749f" />


 

 
 ## Dashboard Preview 
1 <img width="1306" height="734" alt="image" src="https://github.com/user-attachments/assets/7d2900a6-d604-4b81-b1e4-61b48121c195" />
2 <img width="1305" height="728" alt="image" src="https://github.com/user-attachments/assets/a2fb3912-9704-48a0-85f5-f828ed144f42" />
3 <img width="1303" height="730" alt="image" src="https://github.com/user-attachments/assets/a5262b04-3d74-4e19-96a7-fc5f468cc5b4" />
4 <img width="1303" height="728" alt="image" src="https://github.com/user-attachments/assets/43c4f320-4120-47b0-b0e7-2439da6a0f66" />
5 <img width="1310" height="728" alt="image" src="https://github.com/user-attachments/assets/1f27b2b3-d92c-4882-ac8b-d9f0ecbec501" />

## Data set 
Downloaded Through Kaggle 


