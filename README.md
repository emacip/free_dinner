== README from Free Dinner

Requirements to run the app.

* I used the ruby version 2.1.4 but you can use other. 
* Run migrations

	```
	rake db:migrate	
	```
* Define Customer Mapping
	
	```
	sh update_customer.sh
	```  
* To import the data of the customers run this rake.   	

	```
	 rake import_customers:import_json	 
	```

* Go to your localhost:3000 and Voilá the list of people we invited to dinner around 100Km