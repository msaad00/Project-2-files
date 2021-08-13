SELECT
	Status
	,Reason
	,Count(*) as Total_Number_Outage_Events
	,ROUND(AVG((TIMESTAMPDIFF(MINUTE, Start_Time, End_Time)/60)/24),2) AS Average_Outage_Duration_Time_Days
	,YEAR(Start_Time) as Year
FROM
	AEMR
WHERE
	Status='Approved'
GROUP BY
	Status
	,Reason
	,YEAR(Start_Time)
ORDER BY
   YEAR(Start_Time)
	,Reason;
