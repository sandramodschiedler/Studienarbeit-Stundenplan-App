<?php
if (!is_numeric($_POST["studiengang"])) {
    header("Location: index.php");
}
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

    <div data-role="header">
        <h1>Wahlfächer</h1>
        <a href="index.php" data-direction="reverse" data-role="button" data-icon="arrow-l" data-theme="b">Zurück</a> 
    </div>
    
    <div data-role="content">
        <h4>Wähle deine Wahlfächer</h4>

            <div data-role="fieldcontain">
                <form>
                    <fieldset data-role="controlgroup" >
                     <?php 
                        $question=$db->prepare("SELECT id,name FROM wahlfach WHERE studiengang_id=".$_POST["studiengang"]);
                        $question->execute();
                        $result=$question->fetchAll();
                                        
                        for($i=0; $i<count($result) ; $i++){
                        echo '<input name="wahlfach" type="checkbox" value="'.$result[$i]["id"].'" id="wahlfach'.$i.'">'."\n";
                        echo '<label for="wahlfach'.$i.'">'.$result[$i]["name"].'</label>'."\n";
                        }
                    ?>
                    </fieldset>
                </form>

        </div>
        <div data-role="fieldcontain">
            <a href="dialog.php" id="btnsave" data-role="button" data-rel="dialog" data-inline="true" data-transition="slidedown">Wahlfächer bestätigen</a>
        </div>
        <div data-role="fieldcontain">
            <a href="dialog.php" data-role="button" data-rel="dialog" data-inline="true">Überspringen</a>
        </div>
    </div>

</div>

</body>
</html>