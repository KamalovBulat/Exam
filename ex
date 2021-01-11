<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>7</title>
    
 
</head>
<body>
 
    <p id="secundomer"></p>
    <input type="button" value="старт" onclick="start()" />
    <input type="button" value="стоп" onclick="stop()" />
    <input type="button" value="сброс" onclick="cancel()" />
 
    <script>
 
       var ms = 0;   
       var s = 0;    
       var m = 0;    
       var MS = 0;   
       var S = 0;    
       var M = 0;    
       var SM = document.getElementById("secundomer");
 
           function fstart() {           
                        ms=ms+5;
                   if (ms == 1000) {
                       ms = 0;
                       s += 1;
                   }
                   if (s == 60) {
                       s = 0;
                       m += 1;
					   
                   }
                   if (m == 60) {
                       clearInterval(x);
                   }
                   MS = "00";
                   if (ms > 99)
                       MS = (ms - (ms % 10)) / 10;
                   if (ms > 9)
                       MS = "0" + (ms-(ms%10))/10;
                   if (s < 10)
                       S = "0" + s;
                   else
                       S = s;
                   if (m < 10)
                       M = "0" + m;
                   else
                       M = m;
                   SM.innerHTML = MS + ":" + S + ":" + M;  
           }
 
           var x;
           function start() { x = setInterval(fstart, 1) } 
     
        function stop()
        {
            clearInterval(x);
        }
 
        function cancel()
        {
            clearInterval(x);
            
			MS = "0";
            S = "0";
            M = "0";
            SM.innerHTML = MS + ":" + S + ":" + M;
        }
        
 
    </script>
 
</body>
</html>
