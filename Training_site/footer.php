<?php
/**
* Footer file is used to display the authors of the project.
* @author Daniel Dilger
*/

$features_loader_path =  $_SERVER["DOCUMENT_ROOT"].'/'.'sqsg6/Training_site/features/features_loader.php';
//echo "Desired path: ".$features_loader_path;
require_once($features_loader_path);

feature_loader("credit", $_SESSION["user"]);


?>