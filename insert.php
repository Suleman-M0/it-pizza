<?php

$con=new mysqli("localhost","root","","itpizza");


$name=$_GET["name"];
$mobileno=$_GET["mobileno"];
$cardno=$_GET["cardno"];
$doissue=$_GET["doissue"];
$email=$_GET["email"];
$password=$_GET["password"];
$address=$_GET["address"];

echo "$name \n
$mobileno \n
$cardno \n
$doissue \n
$email \n
$password \n
$address \n";


// $q="insert into ipusers (name,mobileno,cardno,doissue,email,password,address) values('".$name."','".$mobileno."','".$cardno."','".$doissue."','".$email."','".$password."','".$address."')";

// if($con->query($q)==TRUE)
// {    echo "your  Information is Added";}
// else{
// echo "Error Data is Not Inserted";}
// $con->close();


?>