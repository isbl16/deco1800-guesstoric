	<!--Script code from http://www.siteforinfotech.com/2013/11/image-slideshow-with-navigation-buttons.html -->
	<!--Extra research made on: http://javascript-tutor.net/index.php/lesson-29-creating-slideshow-in-javascript/ --> 
		var i = 0; 
		var image = new Array();   
		// LIST OF IMAGES 
		<!--number of list was changed in order to show more images-->
		image[0] = "images/artpainting.jpg"; 
		image[1] = "images/computers.jpg"; 
		image[2] = "images/hackerspace.jpg";
		image[3] = "images/hacking.jpg";
		image[4] = "images/meetup.jpg";
		image[5] = "images/retrosharebackbone.jpg";
		var k = image.length-1;    
		var caption = new Array(); 

		// LIST OF CAPTIONS		
		<!--number of list was changed in order to show more images-->
		caption[0] = "The HackerSpace is not just for tehcnology fans, but it does host some art events where people can show their talent as well"; 
		caption[1] = "Once people meet on the Bunch of Hackz events, things get a little more interesting, and everyone can see and help by working on the 	provided computers"; 
		caption[2] = "This is the Hacker Space where everybody works on little and big projects, most of people can learn much more when working on teams with our experts";
		caption[3] = "One of the most interesting workshops hosted on every event is the hacking event, where people come from different places to join knowledge and resources in order to work together and hack some systems just for fun."; 
		caption[4] = "The meet ups hosted each week and month can show people more than just a social group, these meet ups can also be considered as workshops where experts can teach via interaction to amateurs and people who want to enforce their knowledge."; 
		caption[5] = "Some of the seminars are conducted by experts in the subject, in addition to being very practical and full of relevant information for those who are in the world of technology , these seminars can connect people and create new micro enterprises.";  

		function next(){
		var el = document.getElementById("mydiv"); 
		el.innerHTML=caption[i]; 
		var img= document.getElementById("slide"); 
		img.src= image[i]; 
		if(i < k ) { i++;}  
		else  { i = 0; }
		}

		function prev(){
		var el = document.getElementById("mydiv"); 
		el.innerHTML=caption[i]; 
		var img= document.getElementById("slide"); 
		img.src= image[i]; 
		if(i >0 ) { i--;}  
		else  { i = k; }
		}

		function swapImage(){ 
		var el = document.getElementById("mydiv"); 
		el.innerHTML=caption[i]; 
		var img= document.getElementById("slide"); 
		img.src= image[i]; 
		if(i < k ) { i++;}  
		else  { i = 0; } 
		setTimeout("swapImage()",10000); 
		} 
		function addLoadEvent(func) { 
		var oldonload = window.onload; 
		if (typeof window.onload != 'function') { 
		window.onload = func; 
		} else  { 
		window.onload = function() { 
		if (oldonload) { 
		oldonload(); 
		} 
		func(); 
		} 
		} 
		} 
		addLoadEvent(function() { 
		swapImage(); 
		});  