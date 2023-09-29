SELECT *
FROM Nigerian_Cases..nigerian_hcf

-- The query below counts and the status of facilities and states they are located in. 
SELECT DISTINCT(

CAST(properties_state_name AS nvarchar)) AS state_name,
COUNT(CAST(id AS nvarchar)) AS Total_per_state,
--
COUNT(CASE WHEN CAST(properties_functional_status AS varchar) ='Functional'
THEN CAST(properties_functional_status AS varchar) ELSE NULL END) AS Number_of_Functional,

COUNT(CASE WHEN CAST(properties_functional_status AS varchar) ='Partially Functional'
THEN CAST(properties_functional_status AS varchar) ELSE NULL END) AS Number_of_Partially_Functional,

COUNT(CASE WHEN CAST(properties_functional_status AS varchar) ='Not Functional'
THEN CAST(properties_functional_status AS varchar) ELSE NULL END) AS Number_of_Not_Functional,

COUNT(CASE WHEN CAST(properties_functional_status AS varchar) ='Unknown'
THEN CAST(properties_functional_status AS varchar) ELSE NULL END) AS Number_of_Unknown,

COUNT(CASE WHEN CAST(properties_category AS varchar) ='Primary Health Center'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Primary_Health_Centers,

COUNT(CASE WHEN CAST(properties_category AS varchar) ='Dispensary'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Primary_Dispensary,

COUNT(CASE WHEN CAST(properties_category AS varchar) ='Private Non Profit'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Private_Non_Profit,

COUNT(CASE WHEN CAST(properties_category AS varchar) ='Comprehensive Health Center'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_CHC,

COUNT(CASE WHEN CAST(properties_category AS varchar) IN ('Medical Center','Federal Medical Center')
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Medical_Center,

COUNT(CASE WHEN CAST(properties_category AS varchar) = 'Educational Clinic'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Educational_Clinic, 

COUNT(CASE WHEN CAST(properties_category AS varchar) = 'Veterinary Clinic'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Vet_Clinic,

COUNT(CASE WHEN CAST(properties_category AS varchar) = 'Maternity Home'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Materity_Home,

COUNT(CASE WHEN CAST(properties_category AS varchar) = 'General Hospital'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_General_Hospital, 

COUNT(CASE WHEN CAST(properties_category AS varchar) = 'Educational Clinic'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Educational_Clinic,

COUNT(CASE WHEN CAST(properties_category AS varchar) = 'Teaching Hospital'
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Teaching_Hospital,

COUNT(CASE WHEN CAST(properties_category AS varchar) LIKE ('Research%')
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_Research_Hospital,

COUNT(CASE WHEN CAST(properties_category AS varchar) LIKE ('Military%')
THEN CAST(properties_category AS varchar) ELSE NULL END) AS Number_of_MPC

FROM Nigerian_Cases..nigerian_hcf
GROUP BY CAST(properties_state_name AS nvarchar)
ORDER BY 1 ASC

