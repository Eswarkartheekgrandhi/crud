1) Project Structure
crud_project/
│
├─ db/
│   └─ changelog/
│       └─ db.changelog-master.xml
├─ lib/
│   └─ postgresql-42.7.3.jar
├─ app.py
├─ liquibase.properties
├─ run_liquibase.sh
└─ README.md

2) Git Initialization
Open Git Bash in your project folder:
# Initialize git
git init

# Add all files
git add .

# Commit initial version
git commit -m "Initial commit - project setup"

3) Add Liquibase Properties (liquibase.properties)
Make sure the JAR is in lib/.

4) Add Liquibase Changelog (db/changelog/db.changelog-master.xml)

5) Add Bash Script to Run Liquibase (run_liquibase.sh)
set -e --> Exit the script immediately if any command fails (non-zero exit status).
Make it executable in Git Bash:
chmod +x run_liquibase.sh  --> Gives execute permissions
Run it:
./run_liquibase.sh

6) Git + Liquibase Automation
Every time you update your database schema:
# 1. Add/modify changelog files
git add db/changelog/db.changelog-master.xml
git commit -m "Added users table"

# 2. Run Liquibase to update DB
./run_liquibase.sh

# 3. Push changes to remote (optional)
git push origin main

7) Add Flask App (app.py)

8) Run Flask App
In Git Bash:
cd C:/Users/eswar/OneDrive/Desktop/crud_project
python app.py
Open: http://127.0.0.1:5000

-->Everything is ready for manual updates and commits.
-->You can continue building your app, modifying changelogs, and running ./run_liquibase.sh whenever you change the database schema.