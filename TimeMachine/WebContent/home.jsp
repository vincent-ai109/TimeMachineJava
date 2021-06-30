<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

        var target

        function refresh() {
            var t = 1000; // rafraîchissement en millisecondes
            setTimeout('showDate()', t)
        }

        function showDate() {
            var date = new Date();
            var h = date.getHours();
            var m = date.getMinutes();
            var s = date.getSeconds();
            if (h < 10) { h = '0' + h; }
            if (m < 10) { m = '0' + m; }
            if (s < 10) { s = '0' + s; }
            var time = h + ':' + m + ':' + s;
            if (target > 0) {
                target--;
                if (target <= 60) {
                    document.getElementById('compteur').innerHTML = target;
                }
            }

            if (target === 0) {
                console.log("--------------------GG-------------------")
                showResultat()
            }
            document.getElementById('horloge').innerHTML = time;
            refresh();

        }

        function lancement() {
            var duree = document.getElementById('duree');
            var dur = duree.value.split(':')
            var min = parseInt(dur[1]) * 60
            var hour = parseInt(dur[0]) * 3600
            target = min + hour
        }

        function showResultat() {
            document.getElementById('resultat').innerHTML = 'Terminer';
        }

    </script>
</head>
<body onload=showDate();>

	<span class="container" id='horloge' style="background-color: #1C1C1C; color: silver; font-size: 40px;"></span>

	<input type="time" id="duree">
		<button onclick="lancement()">GO</button>
	<span id="resultat"></span>
</body>
</html>



