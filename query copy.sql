SELECT
	Status
	,Reason
	,Count(*) as Total_Number_Outage_Events
	,Month(Start_Time) as Month
FROM
	AEMR
WHERE
	Status='Approved'
	AND YEAR(Start_Time) = 2016
GROUP BY
	Status
	,Reason
	,Month(Start_Time)
ORDER BY
	Reason,Month;
