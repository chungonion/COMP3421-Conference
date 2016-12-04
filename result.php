<?php
include 'config.inc.php';

$email = $_GET["email"];
$Q1= $_GET["Q1"];
$Q2= $_GET["Q2"];
$Q3= $_GET["Q3"];
$Q4= $_GET["Q4"];
$Q5= $_GET["Q5"];
$Q101= $_GET["Q101"];
$Q102=$_GET["Q102"];
$Q103=$_GET["Q103"];
$Q104=$_GET["Q104"];
$Q105=$_GET["Q105"];
$Q106=$_GET["Q106"];
$Q201=$_GET["Q201"];
$Q202=$_GET["Q202"];
$Q203=$_GET["Q203"];
$Q204=$_GET["Q204"];
$other=$_GET["other"];
$year=$_GET["year"];

if(isset($_GET["email"])&& !empty($_GET['email'])&&
isset($_GET["Q1"])&& !empty($_GET['Q1'])&&
isset($_GET["Q2"])&& !empty($_GET['Q2'])&&
isset($_GET["Q3"])&& !empty($_GET['Q3'])&&
isset($_GET["Q4"])&& !empty($_GET['Q4'])&&
isset($_GET["Q5"])&& !empty($_GET['Q5'])&&
isset($_GET["Q101"])&& !empty($_GET['Q101'])&&
isset($_GET["Q102"])&& !empty($_GET['Q102'])&&
isset($_GET["Q103"])&& !empty($_GET['Q103'])&&
isset($_GET["Q104"])&& !empty($_GET['Q104'])&&
isset($_GET["Q105"])&& !empty($_GET['Q105'])&&
isset($_GET["Q106"])&& !empty($_GET['Q106'])&&
isset($_GET["Q201"])&& !empty($_GET['Q201'])&&
isset($_GET["Q202"])&& !empty($_GET['Q202'])&&
isset($_GET["Q203"])&& !empty($_GET['Q203'])&&
isset($_GET["Q204"])&& !empty($_GET['Q204'])){
    if ((($Q1=="A"&&!empty($year))||$Q1!="A")&&((Q3=="E"&&!empty($other))||$Q3!="E")){
    $mysqli = new mysqli($config_mysql_host, $config_mysql_username, $config_mysql_password, $config_mysql_db_name);
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    }

    $sql = "INSERT INTO answer(attendeeID,QuestID,Answer) VALUES ('".$email."','e','".$email."');";
    $mysqli->query($sql);

    $sql = "INSERT INTO answer VALUES ('".$email."','1','".$Q1."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO answer VALUES ('".$email."','2','".$Q2."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO answer VALUES ('".$email."','3','".$Q3."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO answer VALUES ('".$email."','4','".$Q4."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','5','".$Q5."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','101','".$Q101."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','102','".$Q102."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','103','".$Q103."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','104','".$Q104."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','105','".$Q105."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','106','".$Q106."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','201','".$Q201."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','202','".$Q202."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','203','".$Q203."')";
    $mysqli->query($sql);
    $sql = "INSERT INTO  answer VALUES ('".$email."','204','".$Q204."')";
    $mysqli->query($sql);

    $sql = "INSERT INTO 'answer' VALUES ('".$email."','o','".$other."')";
    $mysqli->query($sql);

    $sql = "INSERT INTO 'answer'VALUES ('".$email."','y','".$year."')";
    $mysqli->query($sql);
}else{
    echo "Not complete!";
}
}else{
    echo "Not complete!";
}







 ?>
