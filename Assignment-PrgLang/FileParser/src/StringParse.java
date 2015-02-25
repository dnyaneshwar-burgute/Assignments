

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author webonise
 */
public class StringParse {
    
    String classname=null;
    Scanner sc=null; 
   
    
    
   //Classes 
    public List findJavaClasses(String file_name)
    {
      List<String> classes=new ArrayList();
      
      
      try{
        sc=new Scanner(new FileInputStream(file_name));
        while(sc.hasNext())
        {
            classname=sc.next();
             if(classname.equals("class"))
             {
                   classes.add(sc.next());                  
             }
        }
      
          
      }catch(Exception e)
      {
          System.out.println(e);
      }      
      
     return classes;
    }
    
    //Methods
  
    public List<String> findJavaMethods(String file_name)
    { 
       List<String> methods=new ArrayList();
       String mPatern ="\\w+ +\\w+ *\\([^\\)]*\\) *\\{";
       // String mPatern = "/w+/s+/w+/(/)/s+{";
     //String mPatern="^/w+/s+/w+/(/)/s+{";
        try{       
        Scanner sc=new Scanner(new FileInputStream(file_name));
           // File f=new File(file_name);
        
        Pattern methodPattern=Pattern.compile(mPatern);
        while(sc.hasNextLine())
        {  
          String methodname=sc.nextLine();
         
            Matcher matchermethod=methodPattern.matcher(methodname);
            
            if(matchermethod.find())
            {
                methods.add(matchermethod.group(0));                
            }   
           
           
        }         
        
        return methods;
        }catch(Exception e)
        {
           System.out.println(e);
        }
        return methods;
    }
    
    public List<String> findJavaVariables(String file_name)
    {
        List<String> variables=new ArrayList<>();
        String pattern="(String|void|int|double|float|Long|char)\\s+\\w+;";
        try {   
            Scanner sc=new Scanner(new FileInputStream(file_name));
            Pattern pVariables=Pattern.compile(pattern);
            String variablename=null;
            while(sc.hasNextLine())
            {
                variablename=sc.nextLine();
                Matcher vmatcher=pVariables.matcher(variablename);
                if(vmatcher.find())
                {
                    variables.add(vmatcher.group(0));
                }
            }
            
         } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return variables;
    }
    
    public boolean isFileIndented(String file_name)
    {
        try {
             int open=0;
             int close=0;
            String content=null;
            Scanner sc=new Scanner(new FileInputStream(file_name));
            while(sc.hasNext())
            {
                content=sc.next();
                if(content.contains("{"))
                {
                    ++open;                    
                }
                if(content.contains("}"))
                {
                    ++close;
                }
                if(open==close)
                {
                    return true;
                }
                    
            }
                       
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
   List<String> findPHPClasses(String file_name)
   {
         List<String> classes=new ArrayList();
        try {
          
            Scanner sc=new Scanner(new FileInputStream(file_name));
            while(sc.hasNext())
            {
                String content=sc.next();
                if(content.equals("class"))
                {
                    classes.add(sc.next());
                }
            }
                 
            
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }
        return classes;
   }
    
   List<String> findPhpMethods(String file_name)
   {
         List<String> methods=new ArrayList();
        try {
          
            Scanner sc=new Scanner(new FileInputStream(file_name));
            while(sc.hasNext())
            {
                String content=sc.next();
                if(content.equals("function"))
                {
                    methods.add(sc.next());
                }
            }
                 
            
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }
        return methods;
   }
      
   List<String> findPhpVariables(String file_name)
   {
         List<String> variables=new ArrayList();
         String pattern="(public|protected|private)\\s(\\$\\w+)";
         Pattern p=Pattern.compile(pattern);
        try {
          
            Scanner sc=new Scanner(new FileInputStream(file_name));
            while(sc.hasNextLine())
            {
                String content=sc.nextLine();
                Matcher match=p.matcher(content);
                 
                    if(match.find())
                    {
                        variables.add(match.group(0));
                    }
            }       
            
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }
        return variables;
   }
   
   boolean isPHPFileIndented(String file_name)

   {     int open=0,close=0;
        try {
            Scanner sc=new Scanner(new FileInputStream(file_name));
            String content=null;
            while(sc.hasNext())
            {
                content=sc.next();
                if(content.equals("def"))
                {
                    ++open;
                }
                if(content.equals("end"))
                {
                    ++close;
                }
            }
            if(open==close)
                return true;
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }return false;
       
   }
   
  List<String> findRubyMethods(String file_name)
  {
        List<String> methods=new ArrayList();
        try {
          
            String content=null;
            Scanner sc=new Scanner(new FileInputStream(file_name));
            while(sc.hasNext())
            {
                content=sc.next();
                if(content.equals("def"))
                {
                    methods.add(sc.next());
                }
            }
            
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }
        return methods;              
  }
  
   List<String> findRubyVariables(String file_name)
   {
        List<String> variables=new ArrayList();
        try {
            String content=null;
            Scanner sc=new Scanner(new FileInputStream(file_name));
            while(sc.hasNext())
            {
                content=sc.next();
                if(content.contains("@@"))
                {
                    variables.add(content);
                }
            }
          
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StringParse.class.getName()).log(Level.SEVERE, null, ex);
        }
          return variables;
   }
    
}
