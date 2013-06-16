<?php 
require("php/db.php");
?>
<!DOCTYPE html> 
<html> 
<head> 
    <title>Stundenplan</title> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/themes/stp-eckig.min.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
    <script src="js/store.min.js"></script>
    <script src="js/script.js"></script>


</head>

<body> 

<div data-role="page" id="index">
 
    <div data-role="header" >
        <h1>Startseite</h1>
    </div>               
    
    <div data-role="content">
        <form action="wahlfaecher.php" method="POST">
        <h4>
            Mache deine Angaben, um deinen Stundenplan zu speichern:
        </h4>

        <div data-role="fieldcontain">
            <label for="studium">Studiengang</label>
            <select name="studiengang" id="studium" data-native-menu="false">

                <?php 
                $question=$db->prepare("SELECT name, id FROM studiengang");
                $question->execute();
                $result=$question->fetchAll();
                                        
                for($i=0; $i<count($result) ; $i++){
                    echo '<option value="'.$result[$i]["id"].'">' . $result[$i]["name"] . "</option>"."\n";
                }
                ?>
                                       
            </select>
        </div>

        <div data-role="fieldcontain">
            <fieldset data-role="controlgroup" data-type="horizontal">
                <legend>Semester</legend>
                 <?php 
                $question=$db->prepare("SELECT * FROM semester");
                $question->execute();
                $result=$question->fetchAll();
                                        
                for($i=0; $i<count($result) ; $i++){
                    echo '<input type="radio" class="'.$result[$i]["studiengang_id"].'" name="semester" id="semester'.$i.'" value="'.$result[$i]["id"].'">'."\n";
                    echo '<label for="semester'.$i.'">'.$result[$i]["semester"].'</label>'."\n";
                }
                ?>
            </fieldset>
        </div>
         <div data-role="fieldcontain">
            <label for="btnnext"></label>
            <input type="submit" value="Weiter" id="btnnext">
        </div>
    </form>
    </div>
</div> 

</body>
</html>

