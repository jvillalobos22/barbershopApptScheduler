## Barbershop Appointment Scheduling Application
This project was built as a final project for my Web Programming Fundamentals
class at California State University, Chico.

### Overview
This Rails web application is used for scheduling appointments with a barbershop. An appointment should be scheduled with a single barber, and the client can leave a review for a barber. A barber can log in and see his appointments, schedule an appointment manually and edit any of their information.


### Technologies
* Rails version 4.2.4
* Foundation Rails
  * For responsive grid support and various framework features
  * SCSS is used for all custom stylesheets
* Devise Gem
  * For user authentication
 

### Design Considerations
* Client should be able to create an appointment without creating an account
* The only info we should collect is client name and phone number
* All Barbers can see and schedule appointments for eachother
* Application will be fully responsive, with a mobile first approach
 * Barbers will need to access appointments through their mobile device while at their workstations
* Certain information and functionality should be limited to the Barber for whom it is associated

### Plans For Future Functionality
* Add realtime updating of available appointments
* Limit available appointments to time slots of at least 45 minutes
* Give clients ability to make an account to save time on repeat appointments
* Add jQuery date picker to appointment creation and update
* Create admin account that can create barbers, destroy reviews and have super functionality that should not be available to Barbers


### Screenshots

#### Homepage 
![Screenshot of the homepage](/screenshots/barbershop_home.png)



#### Barber Show Page
![Screenshot of the barber showpage](/screenshots/barbershop_show.png)



#### Barber Appointments Page [Responsive View]
![Screenshot of the barber appointments page](/screenshots/appointment_show.png)

