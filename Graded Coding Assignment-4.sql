select count(Gender) from Passenger where Gender="M" and Distance>=600;
select min(Price) from Price where Bus_Type="Sleeper";
select Passenger_Name from Passenger where Passenger_Name like 'S%';
select Passenger_Name, Boarding_City, Destination_City, Passenger.Bus_Type, Price.Price from Passenger INNER JOIN Price ON Passenger.Bus_Type=Price.Bus_type and Passenger.Distance=Price.Distance;
select Passenger.Passenger_Name, Price.price from Passenger, Price where Passenger.Bus_Type="Sitting" and Passenger.Distance>=1000;
select Bus_Type, Price from Price where Distance=(select Distance from Passenger where Passenger_name="Pallavi");
select distinct(Distance) from Passenger order by distance desc;
select Passenger_Name, round(((Distance/(select sum(Distance) from Passenger)) * 100), 2) as Percentage_Distance from Passenger;
select Price, Distance,
CASE
when Price>1000 then 'Expensive'
when Price>500 and Price<1000 then 'Average Cost'
else 'Cheap'
END as Cost
from Price;
