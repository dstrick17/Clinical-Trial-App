SELECT *
FROM patients
WHERE WhoGroup = 3
    AND Age > 18
    AND PVR > 3
    AND ERA = 'None'
    AND (Prost = 'Inhaled-Treprostinil'OR Prost = 'None')
    AND PDE5 = 'None';

-- Enter this in the command line
-- .headers on
-- .mode column
    -- C:\Apps\SQLite\sqlite3.exe C:\Users\danst\codedan\clinical-trial-app\patient_info.db