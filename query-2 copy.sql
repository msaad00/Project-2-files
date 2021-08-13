SELECT
	SUM(CASE WHEN Reason = 'Forced' THEN 1 ELSE 0 END) as Total_Number_Forced_Outage_Events
	,Count(*) as Total_Number_Outage_Events
	,ROUND(((SUM(CASE WHEN Reason = 'Forced' THEN 1 ELSE 0 END)/Count(*))*100),2) as Forced_Outage_Percentage
	,Year(Start_Time) as Year
FROM
	AEMR
WHERE
	Status = 'Approved'
GROUP BY
	Year(Start_Time);
