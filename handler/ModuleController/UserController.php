<?php


//update profile image 
if (isset($_POST['updateprofileimage'])) {
  $UserId  = $_POST['updateprofileimage'];
  $UserProfileImage = UPLOAD_FILES("../storage/users/$UserId/img", "null", "Profile_Photo_" . "_UID_" . $UserId, "UserProfileImage");
  $Update = UPDATE("UPDATE users SET UserProfileImage='$UserProfileImage' where UserId='$UserId'");
  RESPONSE($Update, "Profile Image Updated!", "Unable to update profile image!");

  //remove employee
} else if (isset($_GET['remove_team_member'])) {
  $access_url = SECURE($_GET['access_url'], "d");
  $remove_team_member = SECURE($_GET['remove_team_member'], "d");

  if ($remove_team_member == true) {
    $control_id = SECURE($_GET['control_id'], "d");
    $delete = DELETE_FROM("users", "UserId='$control_id'");
    $delete = DELETE_FROM("user_addresses", "UserAddressUserId='$control_id'");
    $delete = DELETE_FROM("user_bank_details", "UserMainId='$control_id'");
    $delete = DELETE_FROM("user_documents", "UserMainId='$control_id'");
    $delete = DELETE_FROM("user_employment_details", "UserMainUserId='$control_id'");
  } else {
    $delete = false;
  }

  RESPONSE($delete, "Team member is removed successfully!", "Unable to remove team member!");

  //update primary data
} elseif (isset($_POST['UpdateUserDetails'])) {
  $UserId = SECURE($_POST['UserId'], "d");

  $primarydata = array(
    "UserSalutation" => $_POST['UserSalutation'],
    "UserFullName" => $_POST['UserFullName'],
    "UserPhoneNumber" => $_POST['UserPhoneNumber'],
    "UserEmailId" => $_POST['UserEmailId'],
    "UserUpdatedAt" => CURRENT_DATE_TIME,
    "UserStatus" => $_POST['UserStatus'],
    "UserDateOfBirth" => $_POST['UserDateOfBirth'],
  );


  $Update = UPDATE_DATA("users", $primarydata, "UserId='$UserId'");

  if ($Update == true) {
    //save company/admin details
    $admins = [
      "admin_company_name" => $_POST['admin_company_name'],
      "admin_website" => $_POST['admin_website'],
      "admin_address" => POST("admin_address"),
      "admin_primary_email_id" => $_POST['admin_primary_email_id'],
      "admin_primary_phone" => $_POST['admin_primary_phone'],
      "admin_status" => $_POST['UserStatus'],
      "admin_updated_at" => CURRENT_DATE_TIME,
      "admin_updated_by" => LOGIN_UserId,
      "admin_main_id" => $UserId
    ];
    $Check  = CHECK("SELECT * FROM admins where admin_main_id='$UserId'");
    if ($Check == null) {
      $Save = INSERT("admins", $admins);
    } else {
      $Update = UPDATE_DATA("admins", $admins, "admin_main_id='$UserId'");
    }

    //add user under admin
    $admin_id = FETCH("SELECT * FROM admins where admin_main_id='$UserId' ORDER BY admin_id DESC LIMIT 1", "admin_id");
    $admin_users = [
      "admin_main_id" => $admin_id,
      "admin_main_user_id" => $UserId,
    ];
    $CheckUserIdUnderAdmin = CHECK("SELECT * FROM admin_users WHERE admin_main_id='$admin_id' and admin_main_user_id='$UserId'");
    if ($CheckUserIdUnderAdmin == null) {
      $Save = INSERT("admin_users", $admin_users);
    }
  }
  RESPONSE($Update, $_POST['UserFullName'] . " profile is updated successfully!", "Unable to update profile at the moment!");

  //update password
} elseif (isset($_POST['UpdatePassword'])) {
  $UserId = $_SESSION['REQ_UserId'];

  $data = array(
    "UserPassword" => $_POST['UserPassword'],
  );

  $Update = UPDATE_DATA("users", $data, "UserId='$UserId'");
  RESPONSE($Update, "Password is updated successfully!", "Unable to update password at the moment!");

  //create users
} elseif (isset($_POST['SaveCustomer'])) {
  $UserSalutation = $_POST['UserSalutation'];
  $UserFullName = $_POST["UserFullName"];
  $UserPhoneNumber = $_POST['UserPhoneNumber'];
  $UserEmailId = $_POST['UserEmailId'];
  $UserStatus = $_POST["UserStatus"];
  $UserCreatedAt = CURRENT_DATE;
  $UserPassword = $_POST['UserPassword'];
  $UserDateOfBirth = $_POST['UserDateOfBirth'];


  //check if phone or email-id is already registered or not
  $CheckifPhone = CHECK("SELECT * FROM users where UserPhoneNumber='$UserPhoneNumber'");
  $CheckifMail = CHECK("SELECT * FROM users where UserEmailId='$UserEmailId'");
  if ($CheckifPhone != null) {;
    LOCATION("warning", "Phone Number is already registered!", $access_url);
  } elseif ($CheckifMail != null) {
    LOCATION("warning", "Email-id is already registered", $access_url);
  } else {
    $Save = SAVE("users", ["UserFullName", "UserDateOfBirth", "UserSalutation", "UserPassword", "UserPhoneNumber", "UserEmailId", "UserStatus", "UserCreatedAt"]);

    //save other details
    $UserAddressUserId = FETCH("SELECT * FROM users where UserPhoneNumber='$UserPhoneNumber' AND UserEmailId='$UserEmailId' ORDER BY UserId DESC limit 0, 1", "UserId");
    $UserId = $UserAddressUserId;

    //save user access types
    foreach ($_POST['UserType'] as $UserType) {
      $user_access = [
        "UserAccessUserId" => $UserAddressUserId,
        "UserAccessName" => $UserType,
        "UserAccessCreatedAt" => CURRENT_DATE_TIME,
        "UserAccessStatus" => 1
      ];
      $Response = INSERT("user_access", $user_access);
    }

    //save company/admin details
    $admins = [
      "admin_company_name" => $_POST['admin_company_name'],
      "admin_website" => $_POST['admin_website'],
      "admin_address" => POST("admin_address"),
      "admin_primary_email_id" => $_POST['admin_primary_email_id'],
      "admin_primary_phone" => $_POST['admin_primary_phone'],
      "admin_status" => 1,
      "admin_created_at" => CURRENT_DATE_TIME,
      "admin_updated_at" => CURRENT_DATE_TIME,
      "admin_created_by" => LOGIN_UserId,
      "admin_updated_by" => LOGIN_UserId,
      "admin_main_id" => $UserId
    ];
    $Save = INSERT("admins", $admins);

    //add user under admin
    $admin_id = FETCH("SELECT * FROM admins where admin_main_id='$UserId' ORDER BY admin_id DESC LIMIT 1", "admin_id");
    $admin_users = [
      "admin_main_id" => $admin_id,
      "admin_main_user_id" => $UserId,
    ];
    $CheckUserIdUnderAdmin = CHECK("SELECT * FROM admin_users WHERE admin_main_id='$admin_id' and admin_main_user_id='$UserId'");
    if ($CheckUserIdUnderAdmin == null) {
      $Save = INSERT("admin_users", $admin_users);
    }

    //send mail to created account
    SENDMAILS("Welcome to " . APP_NAME, "Dear " . $UserFullName . ",", $UserEmailId, "<br>
 <p>
 Welcome to " . APP_NAME . "!<br>.<br>
 Your Login details are as follows:<br>
 <br>
 <b>Username:</b> " . $UserEmailId . "<br>
 <b>Password:</b> " . $UserPassword . "<br>
 <b>Login URL: </b> " . DOMAIN . "<br>
 <br>
 <b>Note:</b> Please change your password after login.<br>
 </p>");
  }


  //generate response
  RESPONSE($Save, "New Customer Details saved successfully!", "Unable to save customer details at the moment!");

  //update access level for users
} elseif (isset($_POST['UpdateAccessLevel'])) {
  $UserAccessUserId = SECURE($_POST['UserAccessUserId'], "d");

  //remove all access levels
  DELETE_FROM("user_access", "UserAccessUserId='$UserAccessUserId'");

  //save user types
  foreach ($_POST['UserType'] as $UserType) {
    $user_access = [
      "UserAccessUserId" => $UserAccessUserId,
      "UserAccessName" => $UserType,
      "UserAccessCreatedAt" => CURRENT_DATE_TIME,
      "UserAccessStatus" => 1
    ];
    $Response = INSERT("user_access", $user_access, true);
  }

  RESPONSE($Response, "User Access level updated successfully!", "Unable to update user access level!");

  //create new user under admin account
} elseif (isset($_POST['AddNewUserUnderAdmin'])) {
  $admin_main_id = SECURE($_POST['admin_main_id'], "d");

  $primarydata = array(
    "UserSalutation" => $_POST['UserSalutation'],
    "UserFullName" => $_POST['UserFullName'],
    "UserPhoneNumber" => $_POST['UserPhoneNumber'],
    "UserEmailId" => $_POST['UserEmailId'],
    "UserCreatedAt" => CURRENT_DATE_TIME,
    "UserStatus" => $_POST['UserStatus'],
    "UserDateOfBirth" => $_POST['UserDateOfBirth'],
  );

  //check phone number 
  $CheckUsersPhone = CHECK("SELECT * FROM users where UserPhoneNumber='" . $_POST['UserPhoneNumber'] . "'");
  if ($CheckUsersPhone == null) {

    //check email id
    $CheckUserEmailId = CHECK("SELECT * FROM users where UserEmailId='" . $_POST['UserEmailId'] . "'");
    if ($CheckUserEmailId == null) {
      $Save = INSERT("users", $primarydata);
      if ($Save == false) {
        $Error = "Unable to save user information!";
      }

      //add more details
      //save user types
      $LatestUserId = FETCH("SELECT * FROM users where UserPhoneNumber='" . $_POST['UserPhoneNumber'] . "' and UserEmailId='" . $_POST['UserEmailId'] . "'", "UserId");
      foreach ($_POST['UserType'] as $UserType) {
        $user_access = [
          "UserAccessUserId" => $LatestUserId,
          "UserAccessName" => $UserType,
          "UserAccessCreatedAt" => CURRENT_DATE_TIME,
          "UserAccessStatus" => 1
        ];
        $Response = INSERT("user_access", $user_access);
      }

      //add user under admin
      $admin_users = [
        "admin_main_id" => $admin_main_id,
        "admin_main_user_id" => $LatestUserId,
      ];
      $CheckUserIdUnderAdmin = CHECK("SELECT * FROM admin_users WHERE admin_main_id='$LatestUserId' and admin_main_user_id='$LatestUserId'");
      if ($CheckUserIdUnderAdmin == null) {
        $Save = INSERT("admin_users", $admin_users);
      }
    } else {
      $Error = "Email id already exists!";
      $Save = false;
    }
  } else {
    $Error = "Phone number already exists!";
    $Save = false;
  }

  RESPONSE($Save, "User added successfully!", $Error);

  //update user details
} elseif (isset($_POST['UpdateAdminUserDetails'])) {
  $UserAccessUserId = SECURE($_POST['UserId'], "d");

  $primarydata = array(
    "UserSalutation" => $_POST['UserSalutation'],
    "UserFullName" => $_POST['UserFullName'],
    "UserPhoneNumber" => $_POST['UserPhoneNumber'],
    "UserEmailId" => $_POST['UserEmailId'],
    "UserUpdatedAt" => CURRENT_DATE_TIME,
    "UserStatus" => $_POST['UserStatus'],
    "UserDateOfBirth" => $_POST['UserDateOfBirth'],
  );

  //check phone number exists or not
  $CheckUsersPhone = CHECK("SELECT * FROM users where UserId!='$UserAccessUserId' and UserPhoneNumber='" . $_POST['UserPhoneNumber'] . "'");
  if ($CheckUsersPhone == null) {

    //check email id exists or not
    $CheckUserEmailId = CHECK("SELECT * FROM users where UserId!='$UserAccessUserId' and UserEmailId='" . $_POST['UserEmailId'] . "'");
    if ($CheckUserEmailId == null) {

      //update user details
      $Update = UPDATE_DATA("users", $primarydata, "UserId='$UserAccessUserId'");

      //if update is successful
      if ($Update == true) {

        //remove all access levels
        DELETE_FROM("user_access", "UserAccessUserId='$UserAccessUserId'");

        //save user types
        foreach ($_POST['UserType'] as $UserType) {
          $user_access = [
            "UserAccessUserId" => $UserAccessUserId,
            "UserAccessName" => $UserType,
            "UserAccessCreatedAt" => CURRENT_DATE_TIME,
            "UserAccessStatus" => 1
          ];

          //save user types
          $Response = INSERT("user_access", $user_access);
        }

        //failed to update user details
      } else {
        $Error = "Unable to update user information!";
        $Update = false;
      }

      //duplicate email-id found!
    } else {
      $Error = "Email id already exists!";
      $Update = false;
    }

    //duplicate phone number found!
  } else {
    $Error = "Phone number already exists!";
    $Update = false;
  }

  //generate response
  RESPONSE($Update, "User details updated successfully!", $Error);
}
