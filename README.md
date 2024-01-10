# Clinical Trial Recruitment App
#### Video Demo:  https://drive.google.com/file/d/1hCJHBcK-UpDRtPRFuAZwbmMkpn8om6QL/view?usp=sharing
#### Description:
# Introduction - 
## Clinical trial enrollment is a large barrier to biomedical research. Trials are much longer and much more costly as a result of slow recruitment. This leads to higher drug prices and sluggish progress for modern science. I created an app that allows patients to enter information about themselves and sign up to recieve emails about trials they may qualify for. As a clinical research coordinator at Tufts Medical Center, I witness this sluggish progress first hand, as I often ponder how much further along medicine could be if these 3 year trials could be done in just one year. My team specializes in the disease pulmonary hypertension. As a result, my app focuses on patients who have received a clear diagnosis in pulmonary hypertension.

# app.py - 
## I used python and flask to create an app that allows users to enter data and into a SQL database. The data is a table with several health parameters that allow a our company to screen the patients for clinical trials as well as other parameters to help our company contact the patient's if they fit the criteria for one or more trials.

# patient_info.db - 
## stores patient data that has been entered in app.py using db.execute retrieving information that the user enters from add_patient.html. All patients are named after characters from South Park and the data was mostly random numbers I made up on the spot. In reality, this app would be much more logistically complicated to storing information, especially rpivate health information. At my hospital, we keep registries that patients have to consent to sign consent forms in order to allow us to study their data. I bypassed this part as I did not think it was as relevant to the coding aspect of the trial.

# Templates -

# homepage.html - 
## this page allows users to be introduced to the site. The beginning of the page explains who is developing the app and who the app is for. Then I included JavaScript to help the users figure out if they would be helpful to add to the database before they spend any more time filling it out. The JavaScript may not have been the most neccessary feature but I wanted to practice using as many coding languages as I could in order to get more practice. If the patient is deemed a good candiate by the JavaScript response to the questions, they are encouraged to click on a link that takes them to add_patient.html so they can add themselves to the patient_info.db SQl database. The footer has a small note documenting who created the app and it's purpose as well as a phone number and email to contact if the user has questions.

# add_patient.html - 
## The patient can access this page from the "/" route in the app. This is a page for a patient to answer questions about their health information and how they can be contacted. The user is then redirected to "/confirmation" while the data is stored in patient_info.db

# confirmation.html - 
## This code simply lets the patients know htat their data has been successfully recorded and they will be contacted if neccessary. I used CSS to make this file look more presentable and I also supplied a link for the patient to go back to the homepage.

# static -
## style.css - 
### CSS code to enhance my HTML code and make the site more clear and user friendly. I used a little bit of bootstrap to help me but I mostly just created my own outlines. I wanted to keep this simple as I was mainly focused on the python and SQL code working to see if the app was possible. I used link href="{{ url_for('static', filename='style.css') }}" rel="stylesheet" in order to connect my separate css file to a flask application.

# trials_inclusion_exclusion - 
### contains four SQL files that store SQL code to screen for different clinical trials (trials A, B,C, and D). These can be used by the creators of the app to sort through the patient_info.db database and identify which patients qualify for each clinical trial. They can then uses the patient's email address to contact them and educate them on the study.

## There is a bit of JavaScript code on the client side in order to help screen out the patients who would not qualify for any clinical trials.
