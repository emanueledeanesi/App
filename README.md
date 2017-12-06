# Invoice App

Project developed by:
- Emanuele Deanesi 185457
- Cladio Bettin 186690

This simple application was implemented using the web-application framework Ruby on Rails. 
This app was designed for companies which want to keep track of their customers and the related activities and invoices to pay. 

Each customer entity must be filled in with name, surname, company, address, phone number, VAT number and email in order to have a complete rappresentation of the client.

When you create an activity you have to choose from a select box, which contains all the fullname of the customers created, the customer you want to relate at the activity. Each activity has a short description, a start date, an end date and the total hours of work. 

When you want to know the total hours charged for a customer you have to create the bill. As for the activities you have to choose from a select box the customer. Each bill is characterized from the date of issue,the terms of payment, the hourly rate customizable for each customer, the tax rate, the withholding and the discount. 
Thanks to the implementation of specific methods the app will sum all the hours of works related with the customer and it will provide you the taxable and the total cost to pay.
