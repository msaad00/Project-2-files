SELECT
	Count(*) as Total_Number_Outage_Events
	,Reason
	,Year(Start_Time) as Year
FROM
AEMR
WHERE
	Reason='Forced'
	AND Status = 'Approved'
GROUP BY
	Reason
	,Year(Start_Time)
