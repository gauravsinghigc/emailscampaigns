 <div class='row'>
     <div class="col-md-10">
         <h5 class="app-sub-heading p-3"> All Users</h5>
     </div>
     <div class="col-md-2">
         <a href="#" onclick="Databar('AddNewUsers')" class="btn btn-block btn-sm btn-danger"><i class='fa fa-plus'></i> New User</a>
     </div>
     <div class="col-md-12">
         <div class="hidden shadow-lg p-3 pt-4 b-r-1 border-dark" id='AddNewUsers'>
             <form action="<?php echo CONTROLLER; ?>" method="POST" enctype="multipart/form-data">
                 <?php echo FormPrimaryInputs(true, [
                        "admin_main_id" => AdminDetails($REQ_UserId, "admin_id"),
                    ]); ?>
                 <div class="row">
                     <div class="col-md-12">
                         <div class="row">
                             <div class="col-md-12">
                                 <h6 class="app-heading bg-info">Add New User</h6>
                             </div>
                             <div class="form-group col-lg-3 col-md-3 col-sm-3 col-12">
                                 <label>Sal *</label>
                                 <select class="form-control" name="UserSalutation" required="">
                                     <?php echo InputOptions(SALUTATION, ""); ?>
                                 </select>
                             </div>
                             <div class="form-group col-lg-9 col-md-9 col-sm-9 col-12">
                                 <label>User Full Name *</label>
                                 <input type="text" name="UserFullName" value='' class="form-control" required="" placeholder="Full Name">
                             </div>
                             <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                 <label>Date of Birth</label>
                                 <input type="date" name="UserDateOfBirth" class="form-control" value="">
                             </div>
                             <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                                 <label>Contact Number *</label>
                                 <input type="phone" name="UserPhoneNumber" class="form-control" value="" placeholder="+91">
                             </div>
                             <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                                 <label>Contact Email-ID *</label>
                                 <input type="email" name="UserEmailId" value="" class="form-control " required="">
                             </div>
                             <div class="form-group col-lg-4 col-md-4 col-sm-6 col-12">
                                 <label>Status</label>
                                 <select name='UserStatus' class="form-control">
                                     <?php echo InputOptionsWithKey([
                                            "1" => "Active",
                                            "0" => "Inactive",
                                            "" => "Select Status"
                                        ], ""); ?>
                                 </select>
                             </div>
                             <div class="form-group col-lg-8 col-md-8 col-sm-12">
                                 <label>User Login Access</label><br>
                                 <p class="w-100">
                                     <?php foreach (USER_ROLES as $user_roles) { ?>
                                         <label class="btn btn-xs btn-default m-1">
                                             <input type="checkbox" name="UserType[]" class="p-1 fs-12 w-px-20 h-75" value='<?php echo $user_roles; ?>'>
                                             <span class="fs-16"><?php echo UpperCase($user_roles); ?></span>
                                         </label>
                                     <?php } ?>
                                 </p>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="row mb-10px mb-20px">
                     <div class="form-group col-lg-12 col-md-12 col-12 text-right">
                         <div class="action-btn">
                             <a href="#" onclick="Databar('AddNewUsers')" class="btn btn-sm btn-danger"><i class='fa fa-times'></i> Cancel</a>
                             <button class="btn btn-md btn-success" type="submit" name="AddNewUserUnderAdmin"><i class="fa fa-check-circle"></i> Create User</button>
                         </div>
                     </div>
                 </div>
             </form>
         </div>
     </div>

     <div class="col-md-12">
         <div class="data-list bg-dark flex-s-b">
             <div class="w-pr-5">Sno</div>
             <div class="w-pr-15">FullName</div>
             <div class="w-pr-25">EmailId</div>
             <div class="w-pr-15">PhoneNumber</div>
             <div class="w-pr-10">UserType</div>
             <div class="w-pr-10">CreatedAt</div>
             <div class="w-pr-5">Status</div>
         </div>

         <?php
            $AllUsers = "SELECT * FROM users, admin_users where users.UserId=admin_users.admin_main_user_id and admin_main_id='" . AdminDetails($REQ_UserId, "admin_id") . "'";
            $AllUsers = _DB_COMMAND_($AllUsers, true);
            if ($AllUsers != null) {
                $StartSerialNo = 0;
                foreach ($AllUsers as $User) {
                    $StartSerialNo++; ?>
                 <div class="data-list flex-s-b">
                     <div class="w-pr-5"><?php echo $StartSerialNo; ?></div>
                     <div class="w-pr-15 bold">
                         <a href="#" onclick="Databar('UserUpdate_<?php echo $User->admin_user_id; ?>')" class="text-info text-underline">
                             <?php echo $User->UserFullName; ?>
                         </a>
                     </div>
                     <div class="w-pr-25"><?php echo $User->UserEmailId; ?></div>
                     <div class="w-pr-15"><?php echo $User->UserPhoneNumber; ?></div>
                     <div class="w-pr-10"><?php echo UserAllAccesses($User->UserId); ?></div>
                     <div class="w-pr-10"><?php echo DATE_FORMATES("d M, Y", $User->UserCreatedAt); ?></div>
                     <div class="w-pr-5"><?php echo StatusViewWithText($User->UserStatus); ?></div>
                 </div>
                 <div class="hidden w-100 shadow-sm p-2 pt-4 b-r-1 border-dark" id='UserUpdate_<?php echo $User->admin_user_id; ?>'>
                     <form action="<?php echo CONTROLLER; ?>" method="POST" enctype="multipart/form-data">
                         <?php echo FormPrimaryInputs(true, [
                                "UserId" => $User->UserId,
                            ]); ?>
                         <div class="row">
                             <div class="col-md-12">
                                 <div class="row">
                                     <div class="col-md-12">
                                         <h6 class="app-heading bg-info">Update User details</h6>
                                     </div>
                                     <div class="form-group col-lg-3 col-md-3 col-sm-3 col-12">
                                         <label>Sal *</label>
                                         <select class="form-control" name="UserSalutation" required="">
                                             <?php echo InputOptions(SALUTATION, $User->UserSalutation); ?>
                                         </select>
                                     </div>
                                     <div class="form-group col-lg-9 col-md-9 col-sm-9 col-12">
                                         <label>User Full Name *</label>
                                         <input type="text" name="UserFullName" value='<?php echo $User->UserFullName; ?>' class="form-control" required="" placeholder="Full Name">
                                     </div>
                                     <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                         <label>Date of Birth</label>
                                         <input type="date" name="UserDateOfBirth" class="form-control" value="<?php echo $User->UserDateOfBirth; ?>">
                                     </div>
                                     <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                                         <label>Contact Number *</label>
                                         <input type="phone" name="UserPhoneNumber" class="form-control" value="<?php echo $User->UserPhoneNumber; ?>" placeholder="+91">
                                     </div>
                                     <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                                         <label>Contact Email-ID *</label>
                                         <input type="email" name="UserEmailId" value="<?php echo $User->UserEmailId; ?>" class="form-control " required="">
                                     </div>
                                     <div class="form-group col-lg-4 col-md-4 col-sm-6 col-12">
                                         <label>Status</label>
                                         <select name='UserStatus' class="form-control">
                                             <?php echo InputOptionsWithKey([
                                                    "1" => "Active",
                                                    "0" => "Inactive",
                                                    "" => "Select Status"
                                                ], $User->UserStatus); ?>
                                         </select>
                                     </div>
                                     <div class="form-group col-lg-8 col-md-8 col-sm-12">
                                         <label>User Login Access</label><br>
                                         <p class="w-100">
                                             <?php foreach (USER_ROLES as $user_roles) {
                                                    $UserAccess = FETCH("SELECT * FROM user_access WHERE UserAccessName='$user_roles' and UserAccessUserId='" . $User->UserId . "'", "UserAccessName");
                                                    if ($UserAccess == $user_roles) {
                                                        $checked = "checked";
                                                    } else {
                                                        $checked = "";
                                                    } ?>
                                                 <label class="btn btn-xs btn-default m-1">
                                                     <input type="checkbox" name="UserType[]" <?php echo $checked; ?> class="p-1 fs-12 w-px-20 h-75" value='<?php echo $user_roles; ?>'>
                                                     <span class="fs-16"><?php echo UpperCase($user_roles); ?></span>
                                                 </label>
                                             <?php } ?>
                                         </p>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row mb-10px mb-20px">
                             <div class="form-group col-lg-12 col-md-12 col-12 text-right">
                                 <div class="action-btn">
                                     <a href="#" onclick="Databar('UserUpdate_<?php echo $User->admin_user_id; ?>')" class="btn btn-sm btn-danger"><i class='fa fa-times'></i> Cancel</a>
                                     <button class="btn btn-md btn-success" type="submit" name="UpdateAdminUserDetails"><i class="fa fa-check-circle"></i> Update Details</button>
                                 </div>
                             </div>
                         </div>
                     </form>
                 </div>
         <?php }
            } else {
                echo NoData("No User found!");
            }
            ?>
     </div>

     <hr>
 </div>