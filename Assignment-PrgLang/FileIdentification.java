import java.io.*;
import java.util.*;
class FileIdentification
{
	public static void main(String[] args) {
 
		BufferedReader br = null;
                Scanner sc=null;
           
              int flag=0; 
 
		try {
 
			String sCurrentLine;
                    
                        System.out.println("Enter the file name from  the following");
                        System.out.println("College.java,Student.java,binding.rb,myClass.php"); 
                        sc=new Scanner(System.in);
                        String file_name=sc.next(); 
			br = new BufferedReader(new FileReader(file_name));
                      
                     while ((sCurrentLine = br.readLine()) != null)
                      {
                      
                               if(sCurrentLine.contains("<?php"))
                               {
                                  flag=1;
                                System.out.println("Given file is php");     
                                break;
                                 
                               }   
                               else
                               {
                                      if(sCurrentLine.contains("public static void main(String args[])"))
                                       
                                       {flag=1;
                                         System.out.println("Given file is java");
                                            break;
                                       }   
                                       else
                                       {
                                            if(sCurrentLine.contains("def"))
                                              {  flag=1;
                                               System.out.println("File of ruby");
                                               break;
                                                
                                              }
                                            else
                                             {  
                                                    continue;
                                              }    
                                                                                      
                                       }
                               }   


				
			}
                    
                  if(flag==0)
                   { 
                    System.out.println("Given file is not identified");
                    }          

 
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (br != null)br.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
 
	}
}
