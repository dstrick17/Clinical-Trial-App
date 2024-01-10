SELECT *
FROM patients
WHERE WhoGroup = 1
    AND Age > 18
    AND ((BMI > 40 AND PVR > 5)
        or (BMI <= 40 AND PVR > 4))
    AND FVC > 60
    AND Prost IS NOT 'IV-Epoprostenol'
    AND Prost IS NOT 'IV-Treprostinil';

-- Enter this in the command line
-- .headers on
-- .mode column
    -- C:\Apps\SQLite\sqlite3.exe C:\Users\danst\codedan\clinical-trial-app\patient_info.db