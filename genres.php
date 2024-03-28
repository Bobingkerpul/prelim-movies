<?php
require_once 'config.php';


if ($_GET) {
    $movie = $_GET['movie'];

    echo $movie;
}
