.headers on
.mode column
SELECT *
FROM patients
WHERE WhoGroup = 1
    AND Age > 18
    AND Age < 75
    AND BMI < 45
    AND PVR > 4
    AND (ERA IS NOT 'None' OR PDE5 IS NOT 'None')
    AND (Prost IS NOT 'None' AND (Prost = 'IV-Epoprostenol' OR Prost = 'IV-Treprostinil'));

-- Enter this in the command line
-- .headers on
-- .mode column
    -- C:\Apps\SQLite\sqlite3.exe C:\Users\danst\codedan\clinical-trial-app\patient_info.db