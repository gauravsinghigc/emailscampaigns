<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "ADD New Admin";
$PageDescription = "Manage all team";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <meta content="width=device-width, initial-scale=0.9, maximum-scale=1, user-scalable=no" name="viewport" />
  <meta name="keywords" content="<?php echo APP_NAME; ?>">
  <meta name="description" content="<?php echo SECURE(SHORT_DESCRIPTION, "d"); ?>">
  <?php include $Dir . "/assets/HeaderFiles.php"; ?> <script type="text/javascript">
    function SidebarActive() {
      document.getElementById("adminaccounts").classList.add("active");
    }
    window.onload = SidebarActive;
  </script>
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <?php
    include $Dir . "/include/app/Header.php";
    include $Dir . "/include/sidebar/get-side-menus.php"; ?>
    <div class="content-wrapper">
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card card-primary">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-12">
                      <h4 class="app-heading"><?php echo $PageName; ?></h4>
                      <a href="index.php" class="btn btn-sm btn-default"><i class="fa fa-angle-left"></i> Back to ALL Users</a>
                    </div>
                  </div>
                  <form action="<?php echo CONTROLLER; ?>" method="POST" enctype="multipart/form-data">
                    <?php echo FormPrimaryInputs(true); ?> <div class="row">
                      <div class="col-md-6">
                        <div class="row">
                          <div class="col-md-12">
                            <h5 class="app-sub-heading"><b>(A)</b> Primary Information</h5>
                          </div>
                          <div class="form-group col-lg-3 col-md-3 col-sm-3 col-12">
                            <label>Sal *</label>
                            <select class="form-control" name="UserSalutation" required="">
                              <option value="Mr.">Mr.</option>
                              <option value="Mrs.">Mrs.</option>
                              <option value="Miss">Miss</option>
                              <option value="M/s">M/s</option>
                            </select>
                          </div>
                          <div class="form-group col-lg-9 col-md-9 col-sm-9 col-12">
                            <label>User Full Name *</label>
                            <input type="text" name="UserFullName" class="form-control" required="" placeholder="Full Name">
                          </div>
                          <div class="form-group col-lg-6 col-md-6 col-sm-12">
                            <label>Date of Birth</label>
                            <input type="date" name="UserDateOfBirth" class="form-control" value="<?php echo date('Y-m-d'); ?>">
                          </div>
                          <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                            <label>Contact Number *</label>
                            <input type="phone" name="UserPhoneNumber" class="form-control" value="+91" placeholder="+91">
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="row">
                          <div class="col-md-12">
                            <h4 class="app-sub-heading"><b>(B)</b> User Login Details, User Roles & Types</h4>
                          </div>

                          <div class="form-group col-md-6">
                            <label>Login Password <span class="text-grey">create password</span></label>
                            <input type="text" name="UserPassword" value="<?php echo rand(1111111, 99999999); ?>" class="form-control">
                          </div>
                          <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                            <label>Login EmailId *</label>
                            <input type="email" name="UserEmailId" class="form-control" required="">
                          </div>

                          <div class="form-group col-lg-8 col-md-8 col-sm-12">
                            <label>User Login Access</label><br>
                            <p class="w-100">
                              <?php
                              $Start = 0;
                              foreach (USER_ROLES as $user_roles) {
                                $Start++;
                                if ($Start == 1) { ?>
                                  <label class="btn btn-xs btn-default m-1">
                                    <input type="checkbox" name="UserType[]" class="p-1 fs-12" value='<?php echo $user_roles; ?>'>
                                    <span class="fs-16"><?php echo UpperCase($user_roles); ?></span>
                                  </label>
                              <?php }
                              } ?>
                            </p>
                          </div>
                          <div class="form-group col-lg-4 col-md-4 col-sm-12">
                            <label>User Status</label>
                            <select class="form-control" name="UserStatus">
                              <option value="1" selected="">Active</option>
                              <option value="0">Inactive</option>
                            </select>
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="row">
                          <div class="col-md-12">
                            <h5 class="app-sub-heading"><b>(C)</b> Company Details</h5>
                          </div>
                          <div class="form-group col-lg-8 col-md-8 col-sm-8 col-12">
                            <label>Organisation Name *</label>
                            <input type="text" name="admin_company_name" class="form-control" required="" placeholder="">
                          </div>
                          <div class="form-group col-lg-4 col-md-4 col-sm-4">
                            <label>Website</label>
                            <input type="text" name="admin_website" class="form-control" value="">
                          </div>
                          <div class="form-group col-lg-6 col-md-6 col-sm-4 col-12">
                            <label>Organisation Email-id *</label>
                            <input type="email" name="admin_primary_email_id" class="form-control" value="" placeholder="">
                          </div>
                          <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                            <label>Phone Number *</label>
                            <input type="phone" name="admin_primary_phone" class="form-control" value="" placeholder="">
                          </div>
                          <div class="form-group col-lg-12 col-md-12 col-sm-12 col-12">
                            <label>Address</label>
                            <textarea name='admin_address' class="form-control" rows="3"></textarea>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row mb-10px mb-20px">
                      <div class="form-group col-lg-12 col-md-12 col-12 text-right">
                        <div class="action-btn">
                          <button class="btn btn-md btn-success" type="submit" name="SaveCustomer"><i class="fa fa-check-circle"></i> Create User</button>
                          <button class="btn btn-md btn-default" type="reset"><i class="fa fa-refresh"></i> Reset</button><br>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>

  <?php include $Dir . "/include/app/Footer.php"; ?>
  <?php include $Dir . "/assets/FooterFiles.php"; ?>
</body>

</html>