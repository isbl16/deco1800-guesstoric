<!doctype html>
<?php
	// Include the script for dealing with database connection
	include("dbconnect.php");
	// Boolean used when showing all of the celebrities in the database
	$show_all = false;
	// Declare variable for the SQL query to be run
	$query = "";
	// The path to the images 
	$path_to_image = "celeb_images/";
	
	/*
	* When you click on a celebrities link, you'll see the URL change to celebs.php?celeb=X
	* This is using the GET method of passing parameters to the scripts contained in the page
	* In this case, the ID of the celebrity that was clicked on
	*
	* First we check if it has been set, if NOT, then we want to set our SQL query string so that it pulls all of the celebrities from the database
	* And it sets $show_all to be true, we'll be outputting different HTML in this case
	*/
	if(!isset($_GET['celeb'])){
		$query = "SELECT ID, Name, Image FROM people";
		$show_all = true;
	}else{
		/*
		* If the celeb parameter has been sent via the GET method
		* Get the value of it, and construct the SQL query so that it returns information only about that celebrity
		*/
		$celeb_id = $_GET['celeb'];
		$query = "SELECT * FROM people WHERE ID=".$celeb_id;
		error_log($query);
	}
	
	/* Double check that $query has been set, and if so, run the query on the database */
	if($query != ""){
		if(!$result = $dbconn->query($query)){
				die("There was an error running the query [".$db->error."]");
			}
	}
	
	?>
<!-- Generate our base HTML Template -->
<html>
	<head>
		<title>PHP Dynamic Page Generation</title>
		<meta charset="utf-8">
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">

		<!-- Import jQuery framework -->
		<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
		<!-- Latest compiled and minified JavaScript -->
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
		<style type="text/css">
			.img-block{
				width: 100%;
			}
			.name{
				font-size: 2em;
			}
			.name small{
				font-size: 0.5em;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="pageheader">Celeb Picker <small>A Dynamic Page Generation Example using PHP/MySQL</small></h1>
					<p class="lead">Click on a celebrity below to view more information about them</p>
					<?php 
						/* If we are displaying only one celebrity, create a link to go back to the page that shows them all */
						if(!$show_all){ echo "<p><a href='/celebs.php'>Go back to all Celebs</a></p>"; }
					?>
				</div>
			</div>
			<div class="row">
				<?php
					/* If we are displaying all of the celebrities, start looping through the results from the database */
					if($show_all){
						while($row = $result->fetch_assoc()){
					?>
						
						<div class="col-lg-3">
							<div class="name">
								<?php 
									// Output the Name & link to show more for that celebrity
									// See the URL being constructed using the ID of the celebrity
									echo $row['Name']." <small><a href='/celebs.php?celeb=".$row['ID']."'>more</a></small>"; 
									?>
							</div>
							<div class="img-rounded img-block">
								<?php 
									// Display the image for the celebrity
									echo "<img class='img-responsive' src='".$path_to_image.$row['Image']."' alt='Picture of ".$row['Name']."'>"; 
									?>
							</div>
							
						</div>
				<?php
						}
					}else{
						/* If we are displaying only one celebrity, grab the result & output the info */
						while($row = $result->fetch_assoc()){
						?>
						<div class="col-lg-12">
							<h2><?php /* Output their name */ echo $row['Name'];?></h2>
							<div class='row'>
							<div class='col-lg-7'>
							<?php 
								/* Output the Bio & a link to IMDB for more info */
								echo "<p>".$row['Bio']."</p>"; 
								echo "<p><a href='".$row['url']."'>Find out more at IMDB</a></p>";
							?>
							</div>
							<div class="col-lg-5">
							<?php
								/* Output their image */
								echo "<img class='thumbnail' src='".$path_to_image.$row['Image']."' alt='Picture of".$row['Name']."'>";

							?>
							</div>
						</div>
						<?php
						}
					}
					?>
						</div>
					<div class="row">
						<div class="col-lg-12">
							<h2>So, what's going on here?</h2>
							<p>There is a MySQL database that has details for 4 celebrities. For each celebrity, we have an ID, Name, Bio, Image & url.</p>
							<p>We connect to the database using PHP and display the information in 2 ways:</p>
							<ol>
								<li>All at once, Name, Image & with a link to view more</li>
								<li>Just one celebrity - Name, Bio, Image, link to IMDB page</li>
							</ol>
							<h3>How it works...</h3>
							<p>The base url <code>celebs.php</code> will output all 4 celebrities (or as many as the database contains) all on the same page. It checks to see if the <code>GET</code> parameters have been set, and if not displays all. The link to view More for each celebrity is a URL constructed from the base URL plus a <code>celeb</code> parameter with the celebrities ID value. For example: Ellen Page's URL is <code>celebs.php?celeb=1</code>.</p>
							<p>When you go to <code>celebs.php?celeb=1</code>, the PHP sees that the GET parameter <code>celeb</code> has been set & queries the database for the celebrity information matching that ID. The PHP then fills in the HTML template with the information from the database.</p>
								
						</div>
					</div>
			</div>
		</div>
		</div>
	</body>
</html>