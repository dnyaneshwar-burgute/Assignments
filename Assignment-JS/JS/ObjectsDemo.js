$(document).ready(function(){

var obj=Object.create(data);
$("#parse1").click(function(){
			
	obj.myFunction();
	
});

$("#graph1").click(function(){
			
			obj.drawGraph();
	
});

});
