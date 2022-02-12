<?php
$db = parse_ini_file("config.ini");

session_start();
error_reporting(E_ALL & ~E_NOTICE);        // schakel notices uit (zijn niet interessant maar mollen de JSON output wel)
header('Access-Control-Allow-Origin: *');  // kan ook van andere servers dan alleen localhost benaderd worden
header('Content-Type: application/json');  // geef aan dat deze file een JSON format teruggeeft

// include "db.php"; // hierin wordt de database connection geset in $con (zie voorbeeld hieronder)
// onderstaande db connectie via MySQLi kan de inhoud zijn van db.php (hier in apart bestand, want er staan wachtwoorden in)

$con = mysqli_connect($db['host'], $db['username'], $db['password'], $db['db_name']);

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
mysqli_query($con, "SET NAMES 'utf8'"); // om de data in de juiste charachter-set op te halen. ZONDER DEZE KAN JE JSON CORRUPT ZIJN => GEEN OUTPUT!!


// Deze API geeft in ieder geval onderstaande array in JSON terug
// Hieronder de standaard json output, zodat api altijd wat terug geeft (tenzij er fouten in de PHP zitten)











$json = array(
    "sMessage"=>"nog niets geset",
    "bSuccess"=>false,
    "data"=>null
);

// via de URL: https:// [pad naar API] api.php?action=getBeer kun je biertjes ophalen
// verwacht GET variabele action. Deze kan je ook naar POST veranderen
if( $_GET["action"] == "getBeer" ) {
    // bieren: id, naam, brouwer, type, gisting, perc
    $sql = "SELECT bier.id, bier.naam, bier.brouwer, bier.type, bier.gisting, bier.perc, bier.inkoop_prijs, COUNT(likes.beer_id) AS likes 
    FROM `bier` 
    LEFT JOIN likes ON bier.id = likes.beer_id 
    GROUP BY bier.id; ";
    $res = mysqli_query($con, $sql);    // uitvoeren van query op $con die in db.php geset is
    if($res) {
        $lst = array();
        while($rij = mysqli_fetch_assoc($res)) {
            $lst[] =  $rij; // zorgt dat foute characterset omgezet wordt naar UTF8
        }
        $json = array(
            "sMessage"=>"Biertjes zijn opgehaald",
            "bSuccess"=>true,
            "data"=>$lst
        );
    } else {
        $json = array(
            "sMessage"=>"Biertjes zijn NIET opgehaald. SQL: ".$sql,
            "bSuccess"=>false,
            "data"=>null
        );
    }
}
// bovenstaande GET (POST) action wordt zonder authentication check uitgevoerd

// Onderstaande GET actions staan binnen een token-check, worden alleen uitgevoerd als token klopt
// Dit is voor andere C_UD (Create Update, Delete) acties waarvan je niet wilt dat iedereen die uit kan voeren
//$token = "geheim_token"; // $token wordt hier hard geset, komt normaal van authentication
//if($token == "geheim_token") {

    // via de URL: https://[pad naar API]/api.php?action=updateBeer kun je biertjes updaten
    // verwacht GET (kan ook POST) variabele action en POST variabele $_POST["data"] met alle veld-inhoud
    if( $_GET["action"] == "updateBeer" ) {
        //bier__bier: `id`, `naam`, `brouwer`, `type`, `gisting`, `perc`

        // alleen nodig wanneer je een POST met axios doet!! :
        //$_POST = json_decode(array_keys($_POST)[0], true); //als je Axios gebruikt (in js parsed as string)

        $sql = "UPDATE bier SET
						naam 	= '" . $_POST["naam"] . "',
						brouwer = '" . $_POST["brouwer"] . "',
						type	= '" . $_POST["type"] . "',
						gisting	= '" . $_POST["gisting"] . "',
						perc	= '" . $_POST["perc"] . "',
                        inkoop_prijs = '" . $_POST["inkoop_prijs"] . "'
					WHERE id = " . $_POST["id"] . "; ";
        $res = mysqli_query($con, $sql);
        if ($res) {
            // evt. het geupdate record weer ophalen om terug te geven
            // $sql2  = " SELECT * FROM bieren ";
            // $sql2 .= " WHERE id = '".$_POST["data"]["id"]."' ";
            // $res2 = mysqli_query($con, $sql);
            // $lst2 = array();
            // while($rij2 = mysqli_fetch_assoc($res2)) {
            //    $lst2[] = array_map("utf8_encode", $rij2);
            // }
            $json = array(
                "sMessage" => "Bier is aangepast",
                "bSuccess" => true,
                "data" => null  /* of "data" => $lst2 */
            );
        } 
        // else {
        //     $json = array(
        //         // als de query fout gaat geeft hij de sql terug, handig voor ontwikkelaar, niet voor productie..!
        //         "sMessage" => "Biertjes van Brouwer: ".$_POST["brouwer"]." zijn NIET ge-update. SQL: " . $sql,
        //         "bSuccess" => false,
        //         "data" => null
        //     );
        // }
    }

    if( $_GET["action"] == "deleteBeer" ) {
        //bier__bier: `id`, `naam`, `brouwer`, `type`, `gisting`, `perc`
        $sql = "DELETE FROM bier
					WHERE id = ".$_POST["id"]."; ";
        $res = mysqli_query($con, $sql);
        if($res) {
            $json = array(
                "sMessage"=>"Biertje met id = ".$_POST["id"]." is gewist",
                "bSuccess"=>true,
                "data"=>null
            );
        } 
        // else {
        //     $json = array(
        //         "sMessage"=>"Biertje met id = ".$_POST["data"]["id"]." is niet gewist. SQL: ".$sql,
        //         "bSuccess"=>false,
        //         "data"=>null
        //     );
        // }
    }

    if( $_GET["action"] == "addBeer" ) {
        $sql = "INSERT INTO bier SET
						naam 	= '" . $_POST["naam"] . "',
						brouwer = '" . $_POST["brouwer"] . "',
						type	= '" . $_POST["type"] . "',
						gisting	= '" . $_POST["gisting"] . "',
						perc	= '" . $_POST["perc"] . "',
                        inkoop_prijs = '" . $_POST["inkoop_prijs"] . "';";
        $res = mysqli_query($con, $sql);
        if ($res) {
            $json = array(
                "sMessage" => "Bier is toegevoegd",
                "bSuccess" => true,
                "data" => null  /* of "data" => $lst2 */
            );
        } 
        // else {
        //     $json = array(
        //         // als de query fout gaat geeft hij de sql terug, handig voor ontwikkelaar, niet voor productie..!
        //         "sMessage" => "Biertjes van Brouwer: ".$_POST["brouwer"]." zijn NIET ge-update. SQL: " . $sql,
        //         "bSuccess" => false,
        //         "data" => null
        //     );
        // }
    }
//}  // einde van secret


    // if( $_GET["action"] == "increaseLike" ) {
    //     $sql = "UPDATE bier SET
    //                     likes 	= '" . $_POST["likes"] . "'
    //                 WHERE id = " . $_POST["id"] . "; ";
    //     $res = mysqli_query($con, $sql);
    //     if ($res) {
    //         $json = array(
    //             "sMessage" => "Bier is aangepast",
    //             "bSuccess" => true,
    //             "data" => null  /* of "data" => $lst2 */
    //         );
    //     } 

    // }

    if( $_GET["action"] == "increaseLike" ) {

        $ip;
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }

        $sql = "INSERT INTO likes SET
						beer_id = '" . $_POST["id"] . "',
                        ip_adress = '" . $ip . "';";
        $res = mysqli_query($con, $sql);
        if ($res) {
            $json = array(
                "sMessage" => "Bier is toegevoegd",
                "bSuccess" => true,
                "data" => null  /* of "data" => $lst2 */
            );
        } 
    }

    if( $_GET["action"] == "getBeerLikes" ) {
        // bieren: id, naam, brouwer, type, gisting, perc
        $sql = "SELECT *
                FROM bier
                ORDER BY id; ";
        $res = mysqli_query($con, $sql);    // uitvoeren van query op $con die in db.php geset is
        if($res) {
            $lst = array();
            while($rij = mysqli_fetch_assoc($res)) {
                $lst[] =  $rij; // zorgt dat foute characterset omgezet wordt naar UTF8
                $sql2 = "SELECT beer_id, ip_adress
                        FROM likes 
                        WHERE beer_id = '". $rij['id']. "'";
                $res2 = mysqli_query($con, $sql2);
                if($res2) {
                    $lst2 = array();
                    $lst2[] = $res2;
                }
            };
            $json = array(
                "sMessage"=>"Biertjes zijn opgehaald",
                "bSuccess"=>true,
                "data"=>$lst,
                "data2"=>$lst2,
            );
        } else {
            $json = array(
                "sMessage"=>"Biertjes zijn NIET opgehaald. SQL: ".$sql,
                "bSuccess"=>false,
                "data"=>null
            );
        }
    }







    
    if( $_GET["action"] == "getBeers3" ) {
 
        $sql = "SELECT bier.id, bier.naam, bier.brouwer, bier.type, bier.gisting, bier.perc, bier.inkoop_prijs,
                GROUP_CONCAT(reviews.rating) rating,
                GROUP_CONCAT(reviews.review) review,
                GROUP_CONCAT(reviews.id) review_id,
                GROUP_CONCAT(reviews.bier_id) bier_id
                FROM bier
                LEFT JOIN reviews ON bier.id = reviews.bier_id
                GROUP BY bier.id";
        $res = mysqli_query($con, $sql);  
        if($res) {
            $lst = array();
            while($row = mysqli_fetch_assoc($res)) {
    
                $reviewArray = array();
                
                if($row['bier_id'] > 1) {
    
                    $bier_id = explode(',', $row['bier_id']);
                    $review_id = explode(',', $row['review_id']);
                    $rating = explode(',', $row['rating']);
                    $review = explode(',', $row['review']);
    
                    $reviewLength = count($review_id);
    
                    for($i = 0; $i < $reviewLength; $i++) {
                        $reviewArray[] = array(     "id"=>$review_id[$i], 
                                                    "bier_id"=>$bier_id[$i], 
                                                    "rating"=>$rating[$i], 
                                                    "review"=>$review[$i]
                        );
                    }
                }
                else {
                    $reviewArray = null;
                }
    
                $lst[] = array( "id"=>$row['id'], 
                                "naam"=>$row['naam'], 
                                "brouwer"=>$row['brouwer'], 
                                "type"=>$row['type'], 
                                "gisting"=>$row['gisting'], 
                                "perc"=>$row['perc'], 
                                "inkoop_prijs"=>$row['inkoop_prijs'], 
                                "reviews" => $reviewArray
                );
            }
            $json = array(
                "sMessage"=>"Biertjes zijn opgehaald",
                "bSuccess"=>true,
                "data"=>$lst
            );
        } 
        else {
            $json = array(
                "sMessage"=>"Biertjes zijn NIET opgehaald. SQL: ".$sql,
                "bSuccess"=>false,
                "data"=>null
            );
        }
    }

echo json_encode($json);
    