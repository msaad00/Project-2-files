SELECT
	Participant_Code
	,Status
	,Year(Start_Time) as Year
	,ROUND(AVG((TIMESTAMPDIFF(MINUTE, Start_Time, End_Time)/60)/24),2) AS Average_Outage_Duration_Time_Days
FROM
	AEMR
WHERE
	Status='Approved'
GROUP BY
	Participant_Code
	,Status
	,Year(Start_Time)
ORDER BY 
	Year(Start_Time)
	,CAST(Avg(CAST(TIMESTAMPDIFF(DAY,Start_Time,End_Time)AS DECIMAL(18,2))) AS DECIMAL(18,2)) DESC;
