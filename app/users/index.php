<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "All Admins";
$PageDescription = "Manage teams";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <meta content="width=device-width, initial-scale=0.9, maximum-scale=1, user-scalable=no" name="viewport" />
  <meta name="keywords" content="<?php echo APP_NAME; ?>">
  <meta name="description" content="<?php echo SECURE(SHORT_DESCRIPTION, "d"); ?>">
  <?php include $Dir . "/assets/HeaderFiles.php"; ?>
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <?php

    include $Dir . "/include/app/Header.php";
    include $Dir . "/include/sidebar/get-side-menus.php";
    include $Dir . "/include/app/Loader.php"; ?>


    <div class="content-wrapper">

      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card card-primary">
                <div class="card-body">

                  <div class="row">
                    <div class="col-md-10 col-9 col-xs-9">
                      <div class="app-heading">
                        <h4 class="mb-0 text-white"><i class="fa fa-users"></i> <?php echo $PageName; ?>
                        </h4>
                      </div>
                    </div>
                    <div class="col-md-2 col-3 col-xs-3">
                      <a href="add.php" class="btn btn-block p-2 btn-danger pull-right">
                        <i class="fa fa-plus"></i>
                        NEW ADMIN
                      </a>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-12">
                      <div class="data-list bg-dark flex-s-b">
                        <div class="w-pr-5">Sno</div>
                        <div class="w-pr-15">Name</div>
                        <div class="w-pr-25">CompanyName</div>
                        <div class="w-pr-15">Website</div>
                        <div class="w-pr-5 text-center">Users</div>
                        <div class="w-pr-10">CreatedAt</div>
                        <div class="w-pr-5">Status</div>
                      </div>
                    </div>

                    <?php
                    $START = START_FROM;
                    $LIST_LIMIT = DEFAULT_RECORD_LISTING;
                    $PAGE_LEVEL_SQL = "SELECT * FROM users, user_access where users.UserId=user_access.UserAccessUserId and UserAccessName='ADMIN' ORDER BY UserId DESC";

                    $AllAdmins = _DB_COMMAND_($PAGE_LEVEL_SQL . " limit $START, $LIST_LIMIT", true);
                    if ($AllAdmins != NULL) {
                      $SerialNo = SERIAL_NO;
                      foreach ($AllAdmins as $key => $Admins) {
                        $SerialNo++;
                    ?>
                        <div class="col-md-12">
                          <div class="data-list flex-s-b">
                            <div class="w-pr-5"><?php echo $SerialNo++; ?></div>
                            <div class="w-pr-15">
                              <a href="details/?uid=<?php echo SECURE($Admins->UserId, "e"); ?>" class='text-info'>
                                <i class="fa fa-user fs-15 mt-1 text-primary"></i> <span class="bold"><?php echo $Admins->UserFullName; ?></span><br>
                                <span><?php echo $Admins->UserEmailId; ?></span>
                              </a>
                            </div>
                            <div class="w-pr-25">
                              <span class="text-info">
                                <i class="fa fa-map-marker fs-15 mt-1 text-danger"></i>
                                <?php echo AdminDetails($Admins->UserId, "admin_company_name"); ?></span><br>
                              <span><?php echo LimitText(AdminDetails($Admins->UserId, "admin_address"), 0, 40); ?></span>

                            </div>
                            <div class="w-pr-15">
                              <i class="fa fa-globe fs-15 mt-1 text-info"></i> <?php echo AdminDetails($Admins->UserId, "admin_website"); ?><br>
                              <span><?php echo AdminDetails($Admins->UserId, "admin_primary_email_id"); ?></span>
                            </div>
                            <div class="w-pr-5 text-center">
                              <b class="h5 mb-0 text-success"><?php echo TOTAL("SELECT admin_user_id FROM admin_users where admin_main_id='" . $Admins->UserId . "'"); ?></b><br>
                              <span class="text-secondary">Users</span>
                            </div>
                            <div class="w-pr-10">
                              <?php echo DATE_FORMATES("d M, Y", AdminDetails($Admins->UserId, "admin_created_at")); ?>
                            </div>
                            <div class="w-pr-5">
                              <?php echo StatusViewWithText($Admins->UserStatus); ?>
                            </div>
                          </div>
                        </div>
                    <?php
                      }
                    } else {
                      echo NoData("No records found!");
                    }
                    ?>
                  </div>



                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>

    <?php include $Dir . "/include/app/Footer.php"; ?>
  </div>

  <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>