# Work Zone Activity Monitor

This application allows authenticated personnel to report work zone-based activities from the field. This includes the following:
- Reports: Reporting ongoing one-off work in the field, ex. lighting repair
- Recordings: Mapping a work zone road section or activity area by driving through and recording signage/worker presence
- Uploading and downloading reports/recordings

This application is an iteration of the [Work Zone Data Collection Tool](https://github.com/TonyEnglish/Work_Zone_Data_Collection_Toolset)

This repository contains the following sub-projects:
- /api
  - Python-based API for receiving reports from the reporting app, and managing reports in Postgres
  - Framework: Python [FastAPI](https://fastapi.tiangolo.com/)
 
## Usage
This repository utilized Docker to run and test the services. These services require environment variables. Start by creating a copy of the sample.env file named .env, and fill out the environment variables


After setting up your environment file, use the following command to run all of the services:
```sh
docker compose up --build -d
```

This will run the following images:
- wzam_api: Python api which handles interactions with the reporting app and reads/writes data to postgres
- wzam_keycloak: Keycloak image which handles api and reporting app athentication
- wzam_postgres: PostgreSQL server which stores project, road segment, activity area, reports, and recordings
