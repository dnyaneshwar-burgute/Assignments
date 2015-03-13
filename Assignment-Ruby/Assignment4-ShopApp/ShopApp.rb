=begin

	Write a program to maintain shop inventory (console program)

	Take input from user to ask whether the user is customer or shopkeeper
	
	for shopkeeper

	give options to add, remove, list, search and edit products.
	i .Add product
	Take input from user for product detail such as name, price, stock item, company name. Set the id/sr_no. of the product and store all details in file named 		"inventory"
	ii. Remove product by taking id as input
	iii. List all products with all details and id
	iv. Search the product by name
	v. Edit the product by taking id as input to select product and update all details in file.
	
	for user
           
	give options to list and search products and to buy product by product id
	i. list products
	ii. search product
	iii. Buy product and take product id, name, credit card info such as card number, cvv as input and store in a file named "orders".
        After buying the product the stock item of that product should be decremented and user should not be able to buy if the stock item reaches to 0.
	/home/webonise/DD/Assignments/RUBY/Shopping/inventory.yaml
=end



	require 'yaml'
	#Global hash	
        $productData=Hash.new
         		 	
		$filename='/home/webonise/DD/Assignments/RUBY/Shopping/inventory.yaml'
		$filename1='/home/webonise/DD/Assignments/RUBY/Shopping/orders.yaml'		
		f=File.open($filename,"w")
  		 
        #Module for comman operations
        module CommanOperations
               def listProduct
                       puts "List of products:"
                       puts "PID\tPNAME\tSTOCK\tCOMPANY NAME" 
                       $productData.each do |key, obj|
                       print "#{obj.p_id} \t #{obj.pname} \t #{obj.stock_item} \t #{obj.company_name}" 
                       print"\n"   
  			end
               end
               def searchProduct(name)
                       puts "Searched product:"
                       puts "PID\tPNAME\tSTOCK\tCOMPANY NAME" 
                       $productData.each do |key, obj|
                        	if(name==obj.pname)   
                     		 	 print "#{obj.p_id} \t #{obj.pname} \t #{obj.stock_item} \t #{obj.company_name}" 
                      			 print"\n" 
                       		 end    
  			end
               end
        end  

	#class Product
 	class Product
              include CommanOperations
 	      		attr :p_id, true 
 			attr :pname , true
 	       		attr :stock_item , true
   			attr :company_name ,true   
	end

	#class customer
	class Customer
               	 
                 attr :cust_name, true
               	 attr :cust_cardno, true   
               	 attr :cust_cardcvv,true  

                #buy product method 
             	def buyProduct(name)
                    $productData.each do |key,obj| 
                            if(name==obj.pname && obj.stock_item > 0)
                                   puts "Enter the QTY to BUY"
                                   qty=gets.chomp.to_i
                                   if qty > obj.stock_item
                                      puts "That much items are not available"
                                   else
                                       obj.stock_item= obj.stock_item-qty
                                       return true
                                   end      
                            else
                                  puts "Item not in list"
                            end  
                            return false 
                     end 
                end 
	end

       #class shop keeper
       class Shopkeeper
                
                 
                def addProduct
                     	  productObj=Product.new
                          puts "Enter the product id"
                          productObj.p_id=gets.chomp.to_i
                          puts "Enter the Product name"
                          productObj.pname=gets.chomp
                          puts "Enter the item_stock"
                          productObj.stock_item=gets.chomp.to_i
                          puts "Enter the product company"
                          productObj.company_name=gets.chomp
                          $productData.store(productObj.p_id,productObj)
                          puts "Product added successfully ID:#{productObj.p_id}"
                          File.write $filename, YAML.dump($productData)         
                end
                
                def removeProduct
                          productObj=Product.new
                          puts "Enter the product id"
                          productObj.p_id=gets.chomp.to_i
                          $productData.delete(productObj.p_id)
                          puts $productData
		          puts "Product deleteted successfully ID:#{productObj.p_id}"	
                           File.write $filename, YAML.dump($productData)	
                end
              
                def updateProduct
                          productObj=Product.new
                         
                          puts "Enter the product id to update"
                          productObj.p_id=gets.chomp.to_i
                       	  puts "Old data #{$productData.fetch(productObj.p_id)}"
			  $productData.delete(productObj.p_id)				 				
                          puts "Enter the Product name to update"
                          productObj.pname=gets.chomp
                          puts "Enter the item_stock to update"
                          productObj.stock_item=gets.chomp.to_i
                          puts "Enter the product company to update"
                          productObj.company_name=gets.chomp
                          $productData.store(productObj.p_id,productObj)
                          puts $productData
                          puts"Updated successfully"
                          File.write $filename, YAML.dump($productData)   
                end  
       end  

  

  #CASE FUNCTIONALITY
  while true
    	 puts"Enter the choice:"
    	 puts"1:Login as shopkeeper 2:Login as customer 3:Exit"
    	 choice=gets.chomp.to_i
     
     	case choice
    		when 1 then 
                      
                      while true 
                      	 puts"1:Add product 2:Remove Product 3:Update Product 4:Search Product 5:List Product 6:Exit"
                      	 shpk_choice=gets.chomp.to_i  
                          shpkObj=Shopkeeper.new         
                               case shpk_choice
                                	when 1 then
                                         	 shpkObj.addProduct
  					  
	                        	when 2 then
                                        	 shpkObj.removeProduct    
                                	when 3 then
                                          	shpkObj.updateProduct 
                                        when 4 then
                                               productObj=Product.new
                                               puts "Enter the name of product to search" 
                                               pname=gets.chomp
                                               productObj.searchProduct(pname)
                                        when 5 then
                                               productObj=Product.new
                                               productObj.listProduct
                                        when 6 then break

                                        else puts"Wrong choice"                                
                               end    
                        end       
     		
   		when 2 then
                       
                        while true
                               puts "1:To buy product 2:List product 3:Search product 4:Exit"
			       cust_choice=gets.chomp.to_i
                                
                                    case cust_choice
 					 when 1 then
                                                 purchaseInfo=Hash.new
                                                 custObj=Customer.new
                                                 puts"Enter the product name for buy"
                                                 pname=gets.chomp
                                                 if custObj.buyProduct(pname)
						    
                                                    puts "Enter customer name"
                                                    custObj.cust_name=gets.chomp
                                                    puts "Enter the customer card number"
                                                    custObj.cust_cardno=gets.chomp.to_i
                                                    puts "Enter the customer card CVV"
                                                    custObj.cust_cardcvv=gets.chomp.to_i
                                                    purchaseInfo.store(pname,custObj)
                                                    puts "The product purchase details"
                                                    File.write $filename1, YAML.dump(purchaseInfo)                                                          
                                                        
                                                 end 

                                         when 2 then
                                                productObj=Product.new
                                                productObj.listProduct   
                                         when 3 then
                                                productObj=Product.new
                                                puts "Enter the name of product to search" 
                                                pname=gets.chomp
                                                productObj.searchProduct(pname)
                                         when 4 then break
                                         else puts"Wrong choice" 		 																						                                  
  	
				    end
                                             
                               
                               			
                        end  
 			
                when 3 then exit 1

  	        else puts"Invalid choice"
        end
  end    
                 
 
 



