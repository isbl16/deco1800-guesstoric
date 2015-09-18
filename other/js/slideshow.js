<!--Slide Show tutorial from http://www.javascriptkit.com/howto/show.shtml -->
				var image1=new Image() 
				image1.src="images/meetup.jpg"
				var image2=new Image()
				image2.src="images/hacking.jpg"
				var image3=new Image()
				image3.src="images/artpainting.jpg"
				var image4=new Image()
				image4.src="images/retrosharebackbone.jpg"

				//variable that will increment through the images
				var step=1
				function slideit(){
					//if browser does not support the image object, exit.
					if (!document.images)
						return
					document.images.slide.src=eval("image"+step+".src")
					if (step<4)
						step++
					else
						step=1
					//call function "slideit()" every 2.5 seconds
					setTimeout("slideit()",2500)
				}
				slideit()