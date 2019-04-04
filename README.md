Schedule API

Your task is to create a simple schedule management tool.
You can use this API to manage multiple schedules, adding and removing appointments.
For the purpose of this challenge, time will start at int: 0 when the server is started and will remain frozen. (Server time will never reach 1)

Schedule:
  - Has many Appointments.
  - May be created, read, and destroyed.
  - Updated only to add or remove Appointments.
  - Appointments within a Schedule may overlap: i.e. [{start_time: 50, end_time: 55}, {start_time: 51, end_time: 90}]

Appointment:
  - Belongs to one Schedule.
  - Defines at least a start time and an end time.
  - May only be created.  They do not need to be updated or destroyed.
  - End time must be greater than the start time.
    - Acceptable:     {start_time: 1, end_time: 2}
    - Not acceptable: {Start_time: 1, end_time: 1}

Supported Requests:
    - GET:  
      http://localhost:3000/schedules
      http://localhost:3000/schedules/1
  - POST:
      http://localhost:3000/schedules
      http://localhost:3000/schedules/1/appointments
  - DELETE:
      http://localhost:3000/schedules/1/appointments/1
      http://localhost:3000/schedules/1

Requirements:
  - RESTful API (I will use curl to interact with your server).
  - No need to build html views, JSON responses only.
  - Ruby or Go.
  - No restrictions on frameworks or tools.
  - Our estimate is 2-4 hours to complete.

Submission:
  - Please submit a GitHub link to your interviewer when you are complete
