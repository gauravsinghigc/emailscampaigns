<div class="col-md-3 text-center">
    <div class="box-shadow">
        <img src="<?php echo GetUserImage($REQ_UserId); ?>" class="img-fluid rounded shadow-sm w-50 mt-2">
        <h5 class="mt-2 mb-1">
            <?php echo StatusView(FETCH($UserSql, "UserStatus")); ?>
            <?php echo FETCH($UserSql, "UserSalutation"); ?> <?php echo FETCH($UserSql, "UserFullName"); ?><br>
            <i class='small fs-13 italic bold'>
                (<?php echo AdminDetails($REQ_UserId, "admin_company_name"); ?>)
            </i><br>
            <span class='small fs-12'>
                <i class="fa fa-envelope text-danger"></i> <?php echo FETCH($UserSql, "UserEmailId"); ?>
            </span><br>
            <span class='small fs-12'>
                <i class="fa fa-phone text-danger"></i> <?php echo FETCH($UserSql, "UserPhoneNumber"); ?>
            </span>
        </h5>
        <p class="mb-1 auto-height">
            <span>
                <i class="fa fa-birthday-cake text-danger"></i>
                <?php echo DATE_FORMATES("d M, Y", FETCH($UserSql, "UserDateOfBirth")); ?>
            </span>
        </p>
        <hr>
        <?php include "Navbar.php"; ?>
    </div>
</div>