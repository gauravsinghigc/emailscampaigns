 <div class='row'>
     <div class="col-md-12">
         <form action="<?php echo CONTROLLER; ?>" method="POST" enctype="multipart/form-data">
             <?php echo FormPrimaryInputs(true, [
                    "UserId" => $REQ_UserId
                ]); ?> <div class="row">
                 <div class="col-md-12">
                     <div class="row">
                         <div class="col-md-12">
                             <h5 class="app-sub-heading"><b>(A)</b> Primary Information</h5>
                         </div>
                         <div class="form-group col-lg-3 col-md-3 col-sm-3 col-12">
                             <label>Sal *</label>
                             <select class="form-control" name="UserSalutation" required="">
                                 <?php echo InputOptions(SALUTATION, FETCH($UserSql, "UserSalutation")); ?>
                             </select>
                         </div>
                         <div class="form-group col-lg-9 col-md-9 col-sm-9 col-12">
                             <label>User Full Name *</label>
                             <input type="text" name="UserFullName" value='<?php echo FETCH($UserSql, "UserFullName"); ?>' class="form-control" required="" placeholder="Full Name">
                         </div>
                         <div class="form-group col-lg-6 col-md-6 col-sm-12">
                             <label>Date of Birth</label>
                             <input type="date" name="UserDateOfBirth" class="form-control" value="<?php echo FETCH($UserSql, "UserDateOfBirth"); ?>">
                         </div>
                         <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                             <label>Contact Number *</label>
                             <input type="phone" name="UserPhoneNumber" class="form-control" value="<?php echo FETCH($UserSql, "UserPhoneNumber"); ?>" placeholder="+91">
                         </div>
                         <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                             <label>Contact Email-ID *</label>
                             <input type="email" name="UserEmailId" value="<?php echo FETCH($UserSql, "UserEmailId"); ?>" class="form-control " required="">
                         </div>
                         <div class="form-group col-lg-4 col-md-4 col-sm-6 col-12">
                             <label>Status</label>
                             <select name='UserStatus' class="form-control">
                                 <?php echo InputOptionsWithKey([
                                        "1" => "Active",
                                        "0" => "Inactive"
                                    ], FETCH($UserSql, "UserStatus")); ?>
                             </select>
                         </div>
                     </div>
                 </div>

                 <div class="col-md-12">
                     <div class="row">
                         <div class="col-md-12">
                             <h5 class="app-sub-heading"><b>(B)</b> Company Details</h5>
                         </div>
                         <div class="form-group col-lg-8 col-md-8 col-sm-8 col-12">
                             <label>Organisation Name *</label>
                             <input type="text" name="admin_company_name" value='<?php echo AdminDetails($REQ_UserId, "admin_company_name"); ?>' class="form-control" required="" placeholder="">
                         </div>
                         <div class="form-group col-lg-4 col-md-4 col-sm-4">
                             <label>Website</label>
                             <input type="text" name="admin_website" class="form-control" value="<?php echo AdminDetails($REQ_UserId, "admin_website"); ?>">
                         </div>
                         <div class="form-group col-lg-6 col-md-6 col-sm-4 col-12">
                             <label>Organisation Email-id *</label>
                             <input type="email" name="admin_primary_email_id" class="form-control" value="<?php echo AdminDetails($REQ_UserId, "admin_primary_email_id"); ?>" placeholder="">
                         </div>
                         <div class="form-group col-lg-6 col-md-6 col-sm-6 col-12">
                             <label>Phone Number *</label>
                             <input type="phone" name="admin_primary_phone" class="form-control" value="<?php echo AdminDetails($REQ_UserId, "admin_primary_phone"); ?>" placeholder="">
                         </div>
                         <div class="form-group col-lg-12 col-md-12 col-sm-12 col-12">
                             <label>Address</label>
                             <textarea name='admin_address' class="form-control" rows="3"><?php echo AdminDetails($REQ_UserId, "admin_address"); ?></textarea>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="row mb-10px mb-20px">
                 <div class="form-group col-lg-12 col-md-12 col-12 text-right">
                     <div class="action-btn">
                         <button class="btn btn-md btn-success" type="submit" name="UpdateUserDetails"><i class="fa fa-check-circle"></i> Update Details</button>
                     </div>
                 </div>
             </div>
         </form>
     </div>
     <hr>
 </div>