
var data = {
   
    myFunction: function(){
   var eq=document.getElementById("eq").value;
   var patt1=new RegExp("[a-z 0-9]x[+|-][a-z|0-9]y[+|-][a-z 0-9]=0");
   //var patt2=new RegExp("[a-z 0-9]y[+|-][a-z|0-9]x[+|-][a-z 0-9]=0");
   //var patt3=new RegExp("[a-z 0-9]y[+|-][a-z|0-9]x[+|-]=[a-z 0-9]");
   //var patt4=new RegExp("[a-z 0-9]x[+|-][a-z|0-9]y[+|-]=[a-z 0-9]");
   if(eq=="" || !(patt1.test(eq)))
   {   
      alert("please , Enter the correct equation for line");   
   }
   else
   {
      document.getElementById("result").style.display="block";
      
      // var test = "Hello";
      //document.getElementById("").value = test;
      var p=eq.charAt(0);
      document.getElementById("xconst").value=p;
      var q=eq.charAt(3);
      document.getElementById("yconst").value=q;
      var r=eq.charAt(6);
      document.getElementById("const").value=r;  
      
    }   
 
  },

drawGraph: function (){

  var p=document.getElementById("xconst").value;  
  var q=document.getElementById("yconst").value;
  var r=document.getElementById("const").value;
   
  var xrange=parseInt(document.getElementById("xrange").value);
  var xstep=parseInt(document.getElementById("xstep").value); 
  if(xrange=="" || xstep=="")
  {
     alert("Enter the range of x and increment factor");
   }
  else
 {
   document.getElementById("gragh").style.display="block";
  var xvalue=0;
  var yvalue=0;
     var canvas = document.getElementById("lineCanvas");
     var context = canvas.getContext('2d');
     context.beginPath();
     context.translate(150,150);
  for(xvalue=0;xvalue<xrange;xvalue=xvalue+xstep)
   {     
      yvalue=parseInt(((-r-(p*xvalue))/q));
      //context.moveTo(xvalue, yvalue);
      context.lineTo(xvalue,yvalue);
      context.stroke();    
     
   }
 }  
}

};
