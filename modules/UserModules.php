<?php
//user image
function GetUserImage($UserId, $default = false)
{
  $UserProfileImage = FETCH("SELECT UserProfileImage FROM users where UserId='$UserId'", "UserProfileImage");
  if ($UserProfileImage == "default.png") {
    $UserProfileImg = STORAGE_URL_D . "/default.png";
  } else {
    $FilePath = DOMAIN . "/storage/<?php echo APP_URL;?>/users" . $UserId . "/img/" . $UserProfileImage;
    if (file_exists($FilePath)) {
      $UserProfileImg = STORAGE_URL_U . "/" . $UserId . "/img/" . $UserProfileImage;
    } else {
      $UserProfileImage = FETCH("SELECT UserProfileImage FROM users where UserId='$UserId'", "UserProfileImage");
      $UserProfileImg = STORAGE_URL_U . "/" . $UserId . "/img/" . $UserProfileImage;
    }
  }

  //load default image
  if ($default == true) {
    $UserProfileImg = STORAGE_URL_D . "/default.png";
  }

  //return results
  return $UserProfileImg;
}

//app users
function GetUserData($UserId, $require)
{
  if (empty($UserId)) {
    return null;
  } else {
    $CheckUsers = CHECK("SELECT $require FROM users where UserId='$UserId'");
    if ($CheckUsers == null) {
      return null;
    } else {
      $GetData = FETCH("SELECT $require FROM users where UserId='$UserId'", "$require");
      if ($require == "UserProfileImage") {
        if ($GetData == "user.png") {
          return STORAGE_URL_D . "/default.png";
        } else {
          return STORAGE_URL_U . "/$UserId/img/$GetData";
        }
      } else {
        return $GetData;
      }
    }
  }
}


//select users
function SelectUserOptions($SelectInputName, $default = LOGIN_UserId)
{
  $SelectOptions = "";
  $SelectOptions .= '<select class="form-control" name="' . $SelectInputName . '">';

  $Users = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber FROM users where UserStatus='1' ORDER BY UserFullName ASC", true);
  foreach ($Users as $User) {
    if ($User->UserId == IfRequested("GET", "$SelectInputName", $default, false)) {
      $selected = "selected";
    } else {
      $selected = "";
    }
    $SelectOptions .= "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . " - " . FETCH("SELECT * FROM user_employment_details where UserMainUserId='" . $User->UserId . "'", "UserEmpGroupName") . "</option>";
  }
  $SelectOptions .= '</select>';
  return $SelectOptions;
}

//function get user latest access type
function UserAccessType($UserId)
{
  return FETCH("SELECT UserAccessName FROM user_access WHERE UserAccessUserId='$UserId' ORDER BY UserAccessId DESC limit 1", "UserAccessName");
}


//user all access
function UserAllAccesses($UserId)
{
  $Access = "";
  $UserAllAccesses = _DB_COMMAND_("SELECT UserAccessName FROM user_access WHERE UserAccessUserId='$UserId' ORDER BY UserAccessId DESC", true);
  if ($UserAllAccesses != null) {
    foreach ($UserAllAccesses as $UserAllAccess) {
      $Access .= $UserAllAccess->UserAccessName . ", ";
    }
  }
  return $Access;
}
