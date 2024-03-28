<?php
$mysqli = new mysqli('localhost', 'root', '', 'cjabarca_prelim2024');


if ($mysqli->connect_errno) {
    throw new RuntimeException('mysqli connection error: ' . $mysqli->connect_error);
}
