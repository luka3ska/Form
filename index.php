<?php
include 'connect.php';
?>

<!DOCTYPE html>
<html lang="hr">
<head>
    <title>Insite</title>

    <meta charset="UTF-8">
    <script defer src="script.js"></script>
    <style>
        <?php include "style.css" ?>
    </style>
</head>

<body>
    <header>
        <h1>Html Forma 1<h1>
    </header>

    <main>
        <table>
        <tr>
            <th></th>
            <th>Ime i prezime</th>
            <th>OIB</th>
            <th>Datum rođenja</th>
            <th></th>
        </tr>

        <form action="" method=POST >
            <?php

            $query = "SELECT * FROM people";
            $result = mysqli_query($dbc, $query);
                $i = 0;
                while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo "<td>".$row['id']."</td>";
                    echo "<td>".$row['name_surname']."</td>";
                    echo "<td>".$row['oib']."</td>";
                    echo "<td>".date('d.m.Y.', strtotime($row['birth_date']))."</td>";
                    echo "<td> <button data-modal-target='#modal' name=".$row['id'].">Otvori Pop Up</button> <td>";
                    echo "</tr>";
            }
        ?>

        </form>

        <div class="modal" id="modal">
            <div class="modal-header">
            <div class="title">Html Forma 1</div>
            <button data-close-button class="close-button">&times;</button>
            </div>
            
            <?php


            if (isset($_POST['1'])) {
                $person = 1;
            } else if (isset($_POST['2'])){
                $person = 2;
            } else if (isset($_POST['3'])){
                $person = 3;
            } else if (isset($_POST['4'])){
                $person = 4;
            } else if (isset($_POST['5'])){
                $person = 5;
            } else if (isset($_POST['6'])){
                $person = 6;
            } else if (isset($_POST['7'])){
                $person = 7;
            } else if (isset($_POST['8'])){
                $person = 8;
            } else if (isset($_POST['9'])){
                $person = 9;
            } else if (isset($_POST['10'])){
                $person = 10;
            }

            $query = "SELECT * FROM people WHERE id=".$person."";
            $result = mysqli_query($dbc, $query);
                $i = 0;
                while($row = mysqli_fetch_array($result)){
                    echo "<div class='modal-body'>";
                    echo "<p>Ime i prezime:".$row['name_surname']." </p>";
                    echo "<p>OIB:".$row['oib']." </p>";
                    echo "<p>Datum rodjenja: ".date('d.m.Y.', strtotime($row['birth_date']))."</p>";
                    echo "</div>";
            }
        ?>




        </div>
        <div id="overlay"></div>


    </main>

    
</body>
</html>
