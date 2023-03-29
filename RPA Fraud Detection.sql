 select * from transaction_data
 limit 10;

 select full_name, email from transaction_data
 where zip = "20252";

 select full_name, email from transaction_data
 where full_name = "Art Vandelay" or 
 full_name like "% der %";

 select ip_address, email from transaction_data
 where ip_address like"10.%";

 select email from transaction_data
 where email like "%temp_email.com";

 select * from transaction_data 
 where ip_address like "120.%" and 
 full_name = "John%";