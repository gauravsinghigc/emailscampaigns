<?php
if (isset($_GET['uid'])) {
    $_SESSION['REQ_UserId'] = SECURE($_GET['uid'], "d");
    $REQ_UserId = $_SESSION['REQ_UserId'];
} else {
    $REQ_UserId = $_SESSION['REQ_UserId'];
}

$UserSql = "SELECT * FROM users where UserId='$REQ_UserId'";
$PageSqls = $UserSql;

HandleInvalidData(TOTAL($UserSql), APP_URL . "/users");

$LOGIN_UserProfileImage1 = FETCH($UserSql, "UserProfileImage");
if ($LOGIN_UserProfileImage1 == "default.png") {
    $LOGIN_UserProfileImage1 = STORAGE_URL_D . "/default.png";
} else {
    $LOGIN_UserProfileImage1 = STORAGE_URL_U . "/" . $REQ_UserId . "/img/" . $LOGIN_UserProfileImage1;
}


$Menus = [
    "primary_info.php" => "Primary Info",
    "users.php" => "All Users",
    "security.php" => "Login And Security"
];
define("MENU", $Menus);
