<?php

session_start();
require_once 'config.php';

// $_SESSION["error"] = "";

$imagedirec = 'movies/';
$targetFile = $imagedirec . basename($_FILES['poster']['name']);
$imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));


if (isset($_POST['addmovie'])) {
    $title = $_POST['title'];
    $popularity = $_POST['popularity'];
    $date = $_POST['date'];
    $runtime = $_POST['runtime'];
    $voteave = $_POST['voteave'];

    $selectedGenres = $_POST['genres'];

    // Image Variables
    $postername = $_FILES['poster']['name'];
    $posterTmp = $_FILES['poster']['tmp_name'];
    $postersize = $_FILES['poster']['size'];
    $genres = 'Action-Comedy-Adventure';


    // Check if file already exists
    if (file_exists($targetFile)) {
        $_SESSION["error"] = "Sorry, file already exists.";
    }

    // Check file size
    if ($postersize > 500000000) {
        $_SESSION["error"] = "Sorry, your file is too large.";
    }

    // Allow certain file formats
    if (
        $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif"
    ) {
        $_SESSION["error"] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    }

    if (move_uploaded_file($posterTmp, $targetFile)) {

        // // Iterate over selected genres and insert into the database
        // foreach ($selectedGenres as $genre) {
        //     // Escape the genre to prevent SQL injection
        //     $escapedGenre = $mysqli->real_escape_string($genre);
        //     echo $escapedGenre;
        //     exit;


        // echo "INSERT INTO movies(title, genres, popularity, release_date, runtime, vote_average, poster_path) VALUES ('$title',' $escapedGenre','$popularity','$date','$runtime','$voteave','$postername')";
        // exit;
        $mysqli->query("INSERT INTO movies(title, genres, popularity, release_date, runtime, vote_average, poster_path) VALUES ('$title','$genres','$popularity','$date','$runtime','$voteave','$postername')");
        header('location:index.php');
        // }
    }
}
