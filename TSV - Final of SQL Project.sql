create database varadaraajan;
show databases;
use varadaraajan;
Create table Rural_Urbanization(Sno int NOT NULL, Country char(10) default 'India' not null, Category varchar(50), Name varchar(30) NOT NULL, 
Accident_Near_Educational_Institution int, Accident_Near_Residential_Area int, Accident_Near_Religious_Place int, Accident_Near_Recreation_PlaceandCinema_Hall int, 
Accident_Near_FactoryandIndustrial_Area int, Accident_Other_Places int, primary key (Name));
desc Rural_Urbanization;
insert into Rural_Urbanization(Sno,Category, Name, Accident_Near_Educational_Institution, Accident_Near_Residential_Area, Accident_Near_Religious_Place,
 Accident_Near_Recreation_PlaceandCinema_Hall, Accident_Near_FactoryandIndustrial_Area, Accident_Other_Places) values
(1,'Union Territory','A & N Islands',0,4,1,0,0,5),
(2, 'State',	'Andhra Pradesh',276,1383,158,267,152,3037),(3, 'State','Arunachal Pradesh', 2,	14,	0,	0,	0,	55), 
(4, 'State','Assam',293,875,138,134,88,24), (5, 'State','Bihar',603,2267,262,108,28,343),
(6,'Union Territory','Chandigarh',3,3,1,0,0,0), (7, 'State',	'Chhattisgarh',138,	1191,56,18,68,1981),
(8,'Union Territory','D & N Haveli and Daman & Diu',10,29,0,8,5,1),(9,'Union Territory', 'Delhi',7,	16,4,0,1,14),
(10, 'State','Goa',5,99,13,2,9,44), (11, 'State','Gujarat',261,1295,201,63,396,2423), 
(12, 'State',	'Haryana',182,734,107,75,99,1853), (13, 'State',	'Himachal Pradesh',50,450,48,28,50,25),
(14,'Union Territory','Jammu & Kashmir',18,165,13,2,22,283), (15,'State', 'Jharkhand',247,583,323,379,217,207),
(16,'State',	'Karnataka',285,1278,191,85,210,5274),(17,'State',	'Kerala',118,700,171,64,50,852),
 (18,'Union Territory','Ladakh',0,5,0,0,0,10),(19,'Union Territory','Lakshadweep',0,0,0,0,0,0), 
 (20, 'State', 'Madhya Pradesh',421,2493,266,254,251,4037),(21, 'State',	'Maharashtra',255,2143,201,53,297,5172), 
 (22, 'State', 'Manipur',9,45,0,8,0,34), (23, 'State', 'Meghalaya',3,30,24,1,0,32), (24, 'State', 'Mizoram',3,23,4,0,1,0),
 (25, 'State',	'Nagaland',1,11,0,0,0,3),(26, 'State',	'Odisha',87,421,162,140,114,1469), (27,'Union Territory','Puducherry',40,34,0,0,0,13),
 (28, 'State',	'Punjab',210,852,161,75,233,664), (29, 'State',	'Rajasthan',191,1031,74,52,228,5159), (30, 'State',	'Sikkim',1,13,1,0,0,13), 
 (31, 'State', 'Tamil Nadu',424,1199,307,442,406,1779), (32,'State','Telangana',64,569,87,80,93,2840), (33,	'State','Tripura',10,73,6,4,2,27),
 (34, 'State',	'Uttar Pradesh',1539,4045,674,318,590,4775), (35, 'State',	'Uttarakhand',13,57,2,25,4,260), (36,'State','West Bengal',99,984,56,32,76,1953);
select * from Rural_Urbanization;
Create table Urban_Urbanization(Sno int NOT NULL, Country char(10) default 'India' not null, Category varchar(50) default 'State' NOT NULL, 
_Name varchar(30) NOT NULL, Accident_Near_Educational_Institution int, Accident_Near_Residential_Area int, Accident_Near_Religious_Place int, 
Accident_Near_Recreation_PlaceandCinema_Hall int, Accident_Near_FactoryandIndustrial_Area int,Accident_At_Pedestrian_Crossing int, 
Accident_Other_Places int, primary key (Sno), foreign key(_Name) references Rural_Urbanization(Name));
desc Urban_Urbanization;
insert into Urban_Urbanization(Sno, Category,_Name, Accident_Near_Educational_Institution, Accident_Near_Residential_Area, Accident_Near_Religious_Place, 
Accident_Near_Recreation_PlaceandCinema_Hall, Accident_Near_FactoryandIndustrial_Area, Accident_At_Pedestrian_Crossing, Accident_Other_Places) values 
(1,'Union Territory',	'A & N Islands',0,2,0,0,0,0,2), (6,'Union Territory','Chandigarh',4,3,4,0,3,6,26), 
(8,'Union Territory','D & N Haveli and Daman & Diu',2,4,1,3,0,1,0), (9,'Union Territory','Delhi',63,385,42,14,44,23,583), 
(14,'Union Territory','Jammu & Kashmir',11,61,6,2,9,16,123), (18,'Union Territory','Ladakh',0,2,2,0,1,3,9),
(19,'Union Territory','Lakshadweep',0,0,0,0,0,0,0), (27,'Union Territory','Puducherry',0,0,0,0,0,0,58);
insert into Urban_Urbanization(Sno,_Name, Accident_Near_Educational_Institution, Accident_Near_Residential_Area, Accident_Near_Religious_Place,
 Accident_Near_Recreation_PlaceandCinema_Hall, Accident_Near_FactoryandIndustrial_Area, Accident_At_Pedestrian_Crossing, Accident_Other_Places) 
values (2,'Andhra Pradesh',157,668,55,91,74,76,645), (3,'Arunachal Pradesh',6,0,0,0,4,0,9), (4, 'Assam',229,509,97,240,163,11,12), 
(5, 'Bihar',562,1315,299,433,196,98,184), (7,'Chhattisgarh',78,404,34,23,50,54,521), (10,'Goa',1,22,6,16,1,0,6), (11,'Gujarat',181,548,87,130,231,126,258), 
(12, 'Haryana',85,283,40,47,149,132,845), (13,'Himachal Pradesh',27,130,17,10,18,3,8), (15,'Jharkhand',173,359,132,183,139,73,29), 
(16,'Karnataka',147,507,104,114,127,65,1373), (17,'Kerala',109,505,74,59,61,57,157), (20, 'Madhya Pradesh',345,1500,233,182,258,110,1315), 
(21, 'Maharashtra',558,1563,243,160,300,123,950), (22,'Manipur',8,10,0,7,0,5,1), (23,'Meghalaya',5,30,1,2,1,0,9), (24,'Mizoram',4,17,1,0,0,0,0), 
(25,'Nagaland',0,10,2,0,0,0,0), (26,'Odisha',76,372,124,217,205,22,1329), (28,'Punjab',209,648,140,163,213,123,225), 
(29,'Rajasthan',116,414,62,67,243,98,1517),(30,'Sikkim',3,7,0,0,0,0,4), (31, 'Tamil Nadu',391,760,254,371,504,483,739),
(32,'Telangana',267,844,504,335,346,183,670), (33,'Tripura',6,50,1,0,0,0,13), (34	,'Uttar Pradesh',1035,2581,651,329,681,0,1819), 
(35,'Uttarakhand',12,48,2,32,1,0,237), (36,'West Bengal',107,536,35,46,94,128,1025);
select * from Urban_Urbanization;


WITH Rural_Urbanization_Range AS (
  SELECT
    'Rural_Urbanization' AS Table_Name,
    Category,
    Name,
    Accident_Near_Educational_Institution
  FROM Rural_Urbanization
  WHERE Accident_Near_Educational_Institution BETWEEN 250 AND 300
)
SELECT
  Table_Name,
  Category,
  Name,
  Accident_Near_Educational_Institution
FROM Rural_Urbanization_Range;

With Urban_Urbanization_Range AS (
  SELECT
    'Urban_Urbanization' AS Table_Name,
    Category,
    _Name AS Name,
    Accident_Near_Educational_Institution
  FROM Urban_Urbanization
  WHERE Accident_Near_Educational_Institution BETWEEN 250 AND 300 
)
SELECT
  Table_Name,
  Category,
  Name,
  Accident_Near_Educational_Institution
FROM Urban_Urbanization_Range
ORDER BY  Name;

select count(Accident_Near_Educational_Institution) from Urban_Urbanization where category = 'State';
select sum(Accident_Near_Educational_Institution) from Urban_Urbanization Where _Name= 'Assam' or 'puducherry';

Select rural.Sno,
    rural.Category,
    rural.Name,
    Urban.Accident_Near_Educational_Institution AS Urban_Accident_Near_Educational_Institution,
    Rural.Accident_Near_Educational_Institution AS Rural_Accident_Near_Educational_Institution
    FROM Urban_Urbanization Urban left outer JOIN Rural_Urbanization Rural ON Urban.Sno = Rural.Sno;
    
    SELECT 
    r.Sno AS RuralSno,
    r.Category AS RuralCategory,
    r.Name AS RuralName,
    u.Sno AS UrbanSno,
    u.Category AS UrbanCategory,
    u._Name AS UrbanName
FROM Rural_Urbanization r
INNER JOIN Urban_Urbanization u ON r.name = u._name;

  SELECT 
    r.Sno AS RuralSno,
    u.Sno AS UrbanSno
    FROM Rural_Urbanization r
right join Urban_Urbanization u ON r.sno = u.sno;

SELECT MAX(Accident_Near_Educational_Institution) AS LargestNumber
FROM Rural_Urbanization;

SELECT
    (SELECT sum(Accident_Near_Residential_Area) FROM Rural_Urbanization) AS Rural_Avg,
    (SELECT sum(Accident_Near_Residential_Area) FROM Urban_Urbanization) AS Urban_Avg;



SELECT Category,
       SUM(Accident_Near_Educational_Institution) AS Total_Educational,
       SUM(Accident_Near_Residential_Area) AS Total_Residential,
       SUM(Accident_Near_Religious_Place) AS Total_Religious,
       SUM(Accident_Near_Recreation_PlaceandCinema_Hall) AS Total_Recreation,
       SUM(Accident_Near_FactoryandIndustrial_Area) AS Total_Factory,
       SUM(Accident_At_Pedestrian_Crossing) AS Total_Pedestrian,
       SUM(Accident_Other_Places) AS Total_Other
FROM Urban_Urbanization
GROUP BY Category;

SELECT
    Rural_Urbanization.Category AS Category,
    SUM(Rural_Urbanization.Accident_Near_Educational_Institution) AS Rural_Educational,
    SUM(Rural_Urbanization.Accident_Near_Residential_Area) AS Rural_Residential,
    SUM(Rural_Urbanization.Accident_Near_Religious_Place) AS Rural_Religious,
    SUM(Rural_Urbanization.Accident_Near_Recreation_PlaceandCinema_Hall) AS Rural_Recreation,
    SUM(Rural_Urbanization.Accident_Near_FactoryandIndustrial_Area) AS Rural_Factory,
    SUM(Rural_Urbanization.Accident_Other_Places) AS Rural_Other,
    SUM(Urban_Urbanization.Accident_Near_Educational_Institution) AS Urban_Educational,
    SUM(Urban_Urbanization.Accident_Near_Residential_Area) AS Urban_Residential,
    SUM(Urban_Urbanization.Accident_Near_Religious_Place) AS Urban_Religious,
    SUM(Urban_Urbanization.Accident_Near_Recreation_PlaceandCinema_Hall) AS Urban_Recreation,
    SUM(Urban_Urbanization.Accident_Near_FactoryandIndustrial_Area) AS Urban_Factory,
    SUM(Urban_Urbanization.Accident_At_Pedestrian_Crossing) AS Urban_Pedestrian,
    SUM(Urban_Urbanization.Accident_Other_Places) AS Urban_Other
FROM
    Rural_Urbanization
JOIN
    Urban_Urbanization ON Rural_Urbanization.Category = Urban_Urbanization.Category
GROUP BY
    Rural_Urbanization.Category;

SELECT
    Rural_Urbanization.Category AS Category,
    max(Rural_Urbanization.Accident_Near_Educational_Institution) AS Rural_Educational,
    max(Rural_Urbanization.Accident_Near_Residential_Area) AS Rural_Residential,
    max(Rural_Urbanization.Accident_Near_Religious_Place) AS Rural_Religious,
    max(Rural_Urbanization.Accident_Near_Recreation_PlaceandCinema_Hall) AS Rural_Recreation,
    max(Rural_Urbanization.Accident_Near_FactoryandIndustrial_Area) AS Rural_Factory,
    max(Rural_Urbanization.Accident_Other_Places) AS Rural_Other,
    max(Urban_Urbanization.Accident_Near_Educational_Institution) AS Urban_Educational,
    max(Urban_Urbanization.Accident_Near_Residential_Area) AS Urban_Residential,
    max(Urban_Urbanization.Accident_Near_Religious_Place) AS Urban_Religious,
    max(Urban_Urbanization.Accident_Near_Recreation_PlaceandCinema_Hall) AS Urban_Recreation,
    max(Urban_Urbanization.Accident_Near_FactoryandIndustrial_Area) AS Urban_Factory,
    max(Urban_Urbanization.Accident_At_Pedestrian_Crossing) AS Urban_Pedestrian,
    max(Urban_Urbanization.Accident_Other_Places) AS Urban_Other
FROM
    Rural_Urbanization
JOIN
    Urban_Urbanization ON Rural_Urbanization.Category = Urban_Urbanization.Category
GROUP BY
    Rural_Urbanization.Category;
    
    SELECT
    'Rural_Urbanization' AS TableName,
    'Accident_Near_Educational_Institution' AS ColumnName,
    MAX(Accident_Near_Educational_Institution) AS Max_Value
FROM
    Rural_Urbanization;
    
    
    
        SELECT
     'Rural_Urbanization' AS TableName,
     Name,
     category,
    'Accident_Near_Educational_Institution' AS ColumnName,
    Accident_Near_Educational_Institution AS Max_Value
FROM
    Rural_Urbanization
WHERE
    Accident_Near_Educational_Institution = (
        SELECT
            MAX(Accident_Near_Educational_Institution)
        FROM
            Rural_Urbanization
    )
    union 
   SELECT
        'Rural_Urbanization' AS TableName,
        Name,
        CATEGORY,
    'Accident_Near_Residential_Area' AS ColumnName,
    Accident_Near_Residential_Area AS Max_Value
FROM
    Rural_Urbanization
WHERE
    Accident_Near_Residential_Area = (
        SELECT
            MAX(Accident_Near_Residential_Area)
        FROM
            Rural_Urbanization
    )
    UNION
   SELECT
        'Rural_Urbanization' AS TableName,
        Name,
        CATEGORY,
    'Accident_Near_Religious_Place' AS ColumnName,
    Accident_Near_Religious_Place AS Max_Value
FROM
    Rural_Urbanization
WHERE
    Accident_Near_Religious_Place = (
        SELECT
            MAX(Accident_Near_Religious_Place)
        FROM
            Rural_Urbanization
    ) 
    UNION
   SELECT
        'Rural_Urbanization' AS TableName,
        Name,
        CATEGORY,
    'Accident_Near_Recreation_PlaceandCinema_Hall' AS ColumnName,
    Accident_Near_Recreation_PlaceandCinema_Hall AS Max_Value
FROM
    Rural_Urbanization
WHERE
    Accident_Near_Recreation_PlaceandCinema_Hall = (
        SELECT
            MAX(Accident_Near_Recreation_PlaceandCinema_Hall)
        FROM
            Rural_Urbanization
    )
    UNION
    SELECT
        'Rural_Urbanization' AS TableName,
        Name,
        CATEGORY,
    'Accident_Near_FactoryandIndustrial_Area' AS ColumnName,
    Accident_Near_FactoryandIndustrial_Area AS Max_Value
FROM
    Rural_Urbanization
WHERE
    Accident_Near_FactoryandIndustrial_Area = (
        SELECT
            MAX(Accident_Near_FactoryandIndustrial_Area)
        FROM
            Rural_Urbanization
    ) UNION
        SELECT
        'Rural_Urbanization' AS TableName,
        Name,
        CATEGORY,
    'Accident_Other_Places' AS ColumnName,
    Accident_Other_Places AS Max_Value
FROM
    Rural_Urbanization
WHERE
   Accident_Other_Places = (
        SELECT
            MAX(Accident_Other_Places)
        FROM
            Rural_Urbanization)
            UNION
            SELECT
        'Urban_Urbanization' AS TableName,
        _Name,
        CATEGORY,
    'Accident_Near_Educational_Institution' AS ColumnName,
    Accident_Near_Educational_Institution AS Max_Value
FROM
    Urban_Urbanization
WHERE
   Accident_Near_Educational_Institution = (
        SELECT
            MAX(Accident_Near_Educational_Institution)
        FROM
            urban_Urbanization)
            union
	SELECT
        'Urban_Urbanization' AS TableName,
        _Name,
        CATEGORY,
    'Accident_Near_Residential_Area' AS ColumnName,
    Accident_Near_Residential_Area AS Max_Value
FROM
    Urban_Urbanization
WHERE
  Accident_Near_Residential_Area = (
        SELECT
            MAX(Accident_Near_Residential_Area)
        FROM
            urban_Urbanization)
            union
             SELECT
        'Urban_Urbanization' AS TableName,
        _Name,
        CATEGORY,
    'Accident_Near_Religious_Place' AS ColumnName,
    Accident_Near_Religious_Place AS Max_Value
FROM
    Urban_Urbanization
WHERE
  Accident_Near_Religious_Place = (
        SELECT
            MAX(Accident_Near_Religious_Place)
        FROM
            urban_Urbanization)
            union
            SELECT
        'Urban_Urbanization' AS TableName,
        _Name,
        CATEGORY,
    'Accident_Near_Recreation_PlaceandCinema_Hall' AS ColumnName,
    Accident_Near_Recreation_PlaceandCinema_Hall AS Max_Value
FROM
    Urban_Urbanization
WHERE
 Accident_Near_Recreation_PlaceandCinema_Hall = (
        SELECT
            MAX(Accident_Near_Recreation_PlaceandCinema_Hall)
        FROM
            urban_Urbanization)
            union
            SELECT
        'Urban_Urbanization' AS TableName,
        _Name,
        CATEGORY,
    'Accident_Near_FactoryandIndustrial_Area' AS ColumnName,
    Accident_Near_FactoryandIndustrial_Area AS Max_Value
FROM
    Urban_Urbanization
WHERE
 Accident_Near_FactoryandIndustrial_Area = (
        SELECT
            MAX(Accident_Near_FactoryandIndustrial_Area)
        FROM
            urban_Urbanization) 
            union
        SELECT
        'Urban_Urbanization' AS TableName,
        _Name,
        CATEGORY,
    'Accident_At_Pedestrian_Crossing' AS ColumnName,
    Accident_At_Pedestrian_Crossing AS Max_Value
FROM
    Urban_Urbanization
WHERE
 Accident_At_Pedestrian_Crossing = (
        SELECT
            MAX(Accident_At_Pedestrian_Crossing)
        FROM
            urban_Urbanization) 
            union
        SELECT
        'Urban_Urbanization' AS TableName,
        _Name,
        CATEGORY,
    'Accident_Other_Places' AS ColumnName,
   Accident_Other_Places AS Max_Value
FROM
    Urban_Urbanization
WHERE
 Accident_Other_Places = (
        SELECT
            MAX(Accident_Other_Places)
        FROM
            urban_Urbanization);      
      
      
      
      WITH RankedRural AS (
  SELECT
    'Rural_Urbanization' AS Table_Name,
    Category,
    Name,
    Accident_Near_Educational_Institution,
   RANK() OVER (PARTITION BY Category ORDER BY Accident_Near_Educational_Institution DESC) AS rnk
  FROM Rural_Urbanization
)
SELECT
  Table_Name,
  Category,
  Name,
  Accident_Near_Educational_Institution,
   rnk
FROM RankedRural;
      
      
      
      
      
      
      
            
 WITH RankedRural AS (
  SELECT
    'Rural_Urbanization' AS Table_Name,
    Category,
    Name,
    Accident_Near_Educational_Institution,
    Accident_Near_Residential_Area,
    Accident_Near_Religious_Place,
    Accident_Near_Recreation_PlaceandCinema_Hall,
    Accident_Near_FactoryandIndustrial_Area,
    Accident_Other_Places,
    RANK() OVER (PARTITION BY Category ORDER BY Accident_Near_Educational_Institution DESC) AS rnk
  FROM Rural_Urbanization
)
SELECT
  Table_Name,
  Category,
  Name,
  Accident_Near_Educational_Institution,
  Accident_Near_Residential_Area,
  Accident_Near_Religious_Place,
  Accident_Near_Recreation_PlaceandCinema_Hall,
  Accident_Near_FactoryandIndustrial_Area,
  Accident_Other_Places,
  rnk
FROM RankedRural;

WITH RankedUrban AS (
  SELECT
    'Urban_Urbanization' AS Table_Name,
    Category,
    _Name AS Name,
    Accident_Near_Educational_Institution,
    Accident_Near_Residential_Area,
    Accident_Near_Religious_Place,
    Accident_Near_Recreation_PlaceandCinema_Hall,
    Accident_Near_FactoryandIndustrial_Area,
    Accident_At_Pedestrian_Crossing,
    Accident_Other_Places,
    RANK() OVER (PARTITION BY Category ORDER BY Accident_Near_Educational_Institution DESC) AS rnk
  FROM Urban_Urbanization
)

SELECT
  Table_Name,
  Category,
  Name,
  Accident_Near_Educational_Institution,
  Accident_Near_Residential_Area,
  Accident_Near_Religious_Place,
  Accident_Near_Recreation_PlaceandCinema_Hall,
  Accident_Near_FactoryandIndustrial_Area,
  Accident_At_Pedestrian_Crossing,
  Accident_Other_Places,
  rnk
FROM RankedUrban;
           
           
           SELECT
  'Rural_Urbanization' AS Table_Name,
  Category,
    SUM(Accident_Near_Educational_Institution) AS TotalAccidents,
  AVG(Accident_Near_Educational_Institution) AS AvgAccidents,
  MIN(Accident_Near_Educational_Institution) AS MinAccidents,
  MAX(Accident_Near_Educational_Institution) AS MaxAccidents
FROM Rural_Urbanization
GROUP BY Category
UNION

SELECT
  'Urban_Urbanization' AS Table_Name,
  Category,
    SUM(Accident_Near_Educational_Institution) AS TotalAccidents,
  AVG(Accident_Near_Educational_Institution) AS AvgAccidents,
  MIN(Accident_Near_Educational_Institution) AS MinAccidents,
  MAX(Accident_Near_Educational_Institution) AS MaxAccidents
FROM Urban_Urbanization
GROUP BY Category;

CREATE VIEW Rural_View AS
SELECT
  'Rural_Urbanization' AS Table_Name,
  category,
  AVG(Accident_Near_Educational_Institution) AS Avg_Educational,
  AVG(Accident_Near_Residential_Area) AS Avg_Residential,
  AVG(Accident_Near_Religious_Place) AS Avg_Religious,
  AVG(Accident_Near_Recreation_PlaceandCinema_Hall) AS Avg_Recreation,
  AVG(Accident_Near_FactoryandIndustrial_Area) AS Avg_Factory,
  AVG(Accident_Other_Places) AS Avg_Other
FROM Rural_Urbanization group by category;
select * from Rural_view;
DROP VIEW Rural_View;




