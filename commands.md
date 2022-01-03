1. SELECT "Salary" FROM emp WHERE Emp_ID="273407"
2. SELECT First_Name FROM emp WHERE City="Palo Alto" AND Gender="F"
3. SELECT First_Name FROM emp ORDER BY Date_of_Joining ASC LIMIT 1
4. SELECT First_Name,Last_Name,Age_in_Years,City,County FROM emp WHERE First_Name="Jack"
5. SELECT \* FROM emp WHERE Gender="F" AND Age_in_Years>55 AND E_Mail LIKE '%gmail%' AND First_Name LIKE "J%"
6. SELECT First_Name,Last_Name,Age_in_Years,City,County FROM emp WHERE Gender="M" AND Age_in_Years>50 AND First_Name LIKE "J%" AND City="Illinois"
7. SELECT First_Name,Last_Name,Age_in_Years,City,County FROM emp WHERE Gender="M" AND Age_in_Years>50 AND Fathers_Name LIKE "%j%" AND Salary>100000 AND County="New York"
8. SELECT First_Name,Last_Name,Age_in_Years,City,County,Salary FROM emp WHERE Gender="F" AND (Age_In_Years > 50 OR Age_In_Years < 30)
   AND Last_Name LIKE "B%" AND Salary>80000 AND County="New York"
9. SELECT First*Name, COUNT(*) FROM emp WHERE AND GROUP BY first*name HAVING COUNT(*)>1
10. SELECT Last_Name FROM emp WHERE Salary>70000 GROUP BY Last_Name HAVING COUNT(\*)>1
11. SELECT Last_Name FROM emp WHERE LENGTH(First_Name) = 5 AND Years_in_Company>5 GROUP BY Last_Name HAVING COUNT(\*)>1
12. SELECT Age_in_Years,
    CASE
    WHEN Age_in_Years< 30 THEN 'Young'
    WHEN (Age_In_Years <= 50 AND Age_In_Years >= 30) THEN 'Adult'
    WHEN Age_in_Years> 50 THEN 'Old'
    END AS Ages
    FROM emp ORDER BY Age_in_Years;
13. SELECT Years_in_Company,
    CASE
    WHEN Years_in_Company<= 5 THEN 'Young'
    WHEN (Years_in_Company<= 15 AND Years_in_Company> 5) THEN 'medium'
    WHEN Years_in_Company>15 THEN 'Expert'
    END AS Level
    FROM emp ORDER BY Years_in_Company;
14. SELECT First_Name,Last_Name FROM emp ORDER BY First_Name ASC, Last_Name ASC
15. SELECT \* FROM emp ORDER BY Weight_in_Kgs ASC, Age_in_Years

16. select Country,COUNT(DISTINCT event) as ct from summer GROUP BY Country HAVING ct>100 ORDER BY ct ASC
17. select Athlete from summer where Country="CAN" GROUP BY Athlete count(distinct medal) = 3
