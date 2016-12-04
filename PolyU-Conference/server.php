<?php
$mysqli;


function sql_connection()
{
    include 'config.inc.php';
    global $mysqli;
    $mysqli = new mysqli($config_mysql_host, $config_mysql_username, $config_mysql_password, $config_mysql_db_name);
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    }
    // else {
    //     echo "OK!";
    //     // $sql = "INSERT INTO test VALUES ('Test','TEST');";
    //     // $mysqli->query($sql);
    // }
}

function start()
{
    sql_connection();
}


function get_database_data(/*$type,*/$table, $criteria, $where_clause)
{
    global $mysqli;
    if (empty($where_clause)) {
        $sql = "SELECT ".$criteria ." FROM ".$table." ";
    } else {
        $sql = "SELECT ".$criteria ." FROM ".$table." WHERE ".$where_clause;
    }
    $sql_result =  $mysqli->query($sql);
    $outputs = array();
    if ($sql_result->num_rows > 0) {
        while ($row = $sql_result->fetch_assoc()) {
            $output = array();
            $output = $row;
            $outputs[]=$output;
        }
    }
    $json=json_encode($outputs);
    echo $json;
}

function set_database_data($table, $data)
{
    global $mysqli;
    $sql = "INSERT INTO".$table."VALUES ?????"; //tbc, that we need to insert new stuff
}

// start();
// get_database_data("events","title","");
//test data

if (isset($_POST['action']) && !empty($_POST['action'])) {
    $action = $_POST['action'];
    start();
    // isset or something like that
    switch ($action) {
        case 'start':
            echo "Started!";
            break;

        case 'get_database':
            if (
                // isset($_POST['type']) && !empty($_POST['type'])&&
            isset($_POST['table'])&& !empty($_POST['table'])&&
            isset($_POST['criteria'])&& !empty($_POST['criteria'])&&
            isset($_POST['where_clause'])) {
                // $type = $_POST['type'];
                $table = $_POST['table'];
                $criteria = $_POST['criteria'];
                $where_clause = $_POST['where_clause'];
                get_database_data(/*$type,*/$table, $criteria, $where_clause);   //Access to the database, and return the query
            }
            break;
        case 'get_tourist_information':
            get_database_data(/*$type,*/"attraction", "*", "");
            break;
        case 'get_events_information':
            get_database_data(/*$type,*/"events", "*", "");
            break;
        case 'get_presentation_information':
            get_database_data(/*$type,*/"presentationcsv", "*", "");
            break;
        case 'get_speakers_list_information':
            get_database_data(/*$type,*/"authorsabstracts", "*", "");
            break;
        case 'get_authorsabstracts_information':
                get_database_data(/*$type,*/"authorsabstracts", "*", "");
                break;
        case 'get_sponsorship_information':
                get_database_data(/*$type,*/"sponsorship", "*", "");
                break;
        case 'get_abstract_list_information':

            break;
        case 'get_survey_questions':
            get_database_data(/*$type,*/"surveyquestions", "*", "");
            break;
        case 'search':
            if (isset($_POST['query']) && !empty($_POST['query'])) {
                $query=$_POST['query'];
                if (isset($_POST['search_type']) && !empty($_POST['search_type'])) {
                    $where_clause = "title LIKE '%".$query."%' OR speakerLastname LIKE '%".$query."%' OR speakerLastname LIKE '%".$query."%'";
                    $search_type=$_POST['search_type'];
                    switch ($search_type) {
                        case 'presentation':
                            get_database_data(/*$type,*/"presentationcsv", "*", $where_clause);
                        break;
                        case 'speaker':
                        break;
                    }
                }
            }
            break;
        case 'set_database_data':
            // if (isset($_POST['file_name']) && !empty($_POST['filename'])) {
            //     $file_name = $_POST['file_name'];
            // }
            if (isset($_POST['table_name']) && !empty($_POST['table_name'])&&
            isset($_POST['data']) && !empty($_POST['data'])) {
                $table_name = $_POST['table_name'];
                $data = $_POST['data'];
                set_database_data($table_name, $data);
            }
            break;
        case 'not_finish_survey':
            $criteria = "email";
            $table = "attendee";
            $where_clause = "attendeeID NOT IN(SELECT attendeeID FROM answer)";
            get_database_data($criteria, $table, $where_clause);
            break;

    }
}
