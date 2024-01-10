.headers on
.mode column
SELECT *
FROM patients
WHERE WhoGroup = 2
    AND Age > 18
    AND BMI < 50
    AND PVR > 3
    AND ERA = 'None'
    AND Prost = 'None'
    AND PDE5 = 'None';

-- Enter this in the command line
-- .headers on
-- .mode column
    -- C:\Apps\SQLite\sqlite3.exe C:\Users\danst\codedan\clinical-trial-app\patient_info.db