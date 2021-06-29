<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript"> 

		 var target;
         function refresh(){
             var t = 1000; // rafraîchissement en millisecondes
             setTimeout('showDate()',t)
         }
         
         function showDate() {
             var date = new Date();
             var h = date.getHours();
             var m = date.getMinutes();
             var s = date.getSeconds();
             if( h < 10 ){ h = '0' + h; }
             if( m < 10 ){ m = '0' + m; }
             if( s < 10 ){ s = '0' + s; }
             var time = h + ':' + m +':'+ s;
             document.getElementById('horloge').innerHTML = time;
             
             //console.log(target);
             
             if (time === target ) {
            	 showResultat()
             }
            	 
             refresh();
             
          }
         
         function lancement() {
        	 
        	 var date = new Date();
        	 
        	 var duree = document.getElementById('duree');
        	 
        	 console.log(duree.value);
        	 
        	 var nowDateTime = date.toISOString();
        	 
        	 var nowDate = nowDateTime.split('T')[0]
        	 
        	 //target = new Date(nowDate + duree.value);
        	 
        	 target = duree.value;
        	 
        	 console.log(typeof(nowDate));
        	 
        	 console.log(target);
        	 
        	 // setTimeout('showDate()',target.getTime())
        	 
        	 
        	 
         }
         
         function showResultat() {
        	 
        	 document.getElementById('resultat').innerHTML = 'Terminer';
        	 
        	 
         }
         
</script>
</head>
<body onload=showDate();>
	<span id='horloge'
		style="background-color: #1C1C1C; color: silver; font-size: 40px;"></span>
	<input type="time" id="duree">
	<button onclick="lancement()">GO</button>
	<span id="resultat"></span>
</body>
</html>



