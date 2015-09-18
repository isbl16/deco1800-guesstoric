/*how to create a new JavaScript file http://www.htmlgoodies.com/beyond/javascript/article.php/3470901 */
<!-- hide script from old browsers
/*Tutorial and specs to get started on doing a new clock http://www.javascriptkit.com/javatutors/time1.shtml */
function currentTime()
   {
   var d=new Date();
   ap="am";
   h=d.getHours();
   m=d.getMinutes();
   s=d.getSeconds();
   if (h>11) { ap = "pm"; }
   if (h>12) { h = h-12; }
   if (h==0) { h = 12; }
   if (m<10) { m = "0" + m; }
   if (s<10) { s = "0" + s; }
   document.getElementById('timehere').innerHTML=h + ":" + m + ":" + s + " " + ap;
   t=setTimeout('currentTime()',500);
   }

// end hiding script from old browsers -->
