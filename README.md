The aim of the project is to implement a web application, where by any person ie, patient can
schedule an appointment online. The patient can go through the list of doctors available and
make an appointment to his/her choice and convenience. Also, the patients previous records if
any, are available to the doctor, helps in diagnosing the patients condition.                    
                                                                                                   
#Software Requirements:                                                                           

	Web Framework: 	Ruby On Rails 4.0.0
	Database: 	   	MySql                                       
	Operating System:Ubuntu 12.04    
	Text Editor:		Gedit
	Server: 		    WEBrick 1.3.1
                                                                    
#Commands:

	$ rails new OnlinePatient -d mysql

#Models:

	$ rails g model Patient
	$ rails g model Doctor
	$ rails g model Appointment
      $ rails g model Department
  
#Controller:

        $ rails g controller static_pages
        $ rails g controller patients
        $ rails g controller doctors
        $ rails g controller appointments
        $ rails g controller departments

#Database:

        $ rake db:migrate

#View:

   Home Page: Used superfish Jquery plugin.                                                      
   Appointment Form: Used Jquery and Datepicker.                                                 
   Home Page for Doctors: SimpleCalendar gem.                                                    
