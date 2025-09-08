
create Database OCD_PATIENT


select * from [dbo].[OCD Patients]

--Total Patients
SELECT COUNT(*) AS total_patients
FROM [dbo].[OCD Patients];


--Patients by Gender
SELECT gender, COUNT(*) AS patient_count
FROM [dbo].[OCD Patients]
GROUP BY gender;

-- Average Age\
SELECT AVG(age) AS average_age
FROM [dbo].[OCD Patients];

-- most common obsession type
SELECT obsession_type, COUNT(*) AS count_obsession
FROM [dbo].[OCD Patients]
GROUP BY obsession_type
ORDER BY count_obsession DESC;

--Average Y-BOCS scores
SELECT 
    AVG(y_bocs_score_obsessions) AS avg_obsession_score,
    AVG(y_bocs_score_compulsions) AS avg_compulsion_score,
    AVG(y_bocs_score_obsessions + y_bocs_score_compulsions) AS avg_total_score
FROM [dbo].[OCD Patients];


--Depression & Anxiety counts
SELECT 
    SUM(CASE WHEN UPPER(LTRIM(RTRIM(depression_diagnosis))) = 'YES' THEN 1 ELSE 0 END) AS with_depression,
    SUM(CASE WHEN UPPER(LTRIM(RTRIM(anxiety_diagnosis))) = 'YES' THEN 1 ELSE 0 END)    AS with_anxiety
FROM [dbo].[OCD Patients];



