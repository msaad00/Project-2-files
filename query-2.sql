SELECT
	Status
	,Count(*) as Total_Number_Outage_Events
	,Month(Start_Time) as Month
	,Year(Start_Time) as Year
FROM
	AEMR
WHERE
	Status='Approved'
GROUP BY
	Status
	,Month(Start_Time)
	,Year(Start_Time)
ORDER BY
	Year(Start_Time)
	,Month(Start_Time);
