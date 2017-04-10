<?php
/**
This file contains the function used to customize user accounts.
The function is called "feature_loader". With the help of its helper function "get_version_number", it loads the php code for assigned features.

For example, log in as johndoe@example.com (password "asdf") note the text "erroneous loaded footer 3" at the bottom of the index.php page. This is a trivial example of an assigned error. If logged in with an account that was not assigned that particular feature, the footer will instead say "loaded footer". 
*/

include '/var/www/html/sqsg6/sql_connector.php';




/**
* Helper function for the feature_loader function.
*/
function get_version_number($name, $uid){
	global $mysqli;
	$sql2 = "SELECT * FROM features_available WHERE name=\"".$name."\";";
	$result2 = $mysqli->query($sql2);
	$feature_number = 0;
	if($result2->num_rows > 0)
	{
		while($row = $result2->fetch_assoc())
		{
			$feature_number = $row["id"];
			break;
		}
	}
	$sql3 = "SELECT * FROM assigned_features WHERE user_id=".$uid." AND feature_number=".$feature_number." ORDER BY id DESC;";
	$result3 = $mysqli->query($sql3);
	if($result3->num_rows > 0)
	{
		while($row = $result3->fetch_assoc())
		{
			$version_number = $row["version_number"];
			return $version_number;
		}
	}
	return 0;
}

/** feature_loader is the function that allows each user account to see a custom version of the website.
*
*/
function feature_loader($name, $user_email){

	global $mysqli;
	$version_number = get_version_number($name, $user_email);
	$sql = "SELECT * FROM features_available WHERE name=\"".$name."\";";
	$result = $mysqli->query($sql);
	
	if($result->num_rows > 0)
	{

		while($row = $result->fetch_assoc())
		{
			$file_it_appears_in = $row["owner_file"];
			$on_desktop = $row["on_desktop"];
			$platform = "d";
			if(!$on_desktop){
				$platform = "m";
			}
			$file_name = $name."_".$version_number."_".$file_it_appears_in."_".$platform.".php";
			$file_name = $_SERVER["DOCUMENT_ROOT"].'/'.'sqsg6/Training_site/features/'.$file_name;

			include $file_name;
			break;
		
		}
	}
	else
	{
		echo "An error occurred in the feature loader sql query";
	}
}

?>
