<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';
include $Dir . "/app/compose/sections/Header-request.php";


//pagevariables
$PageName = "SEND NEW EMAIL";
$PageDescription = "Manage all customers";

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
    <script type="text/javascript">
        function SidebarActive() {
            document.getElementById("profile").classList.add("active");
            document.getElementById("profile_view").classList.add("active");
        }
        window.onload = SidebarActive;
    </script>
    <style>
        .height-limit-2 {
            height: 100% !important;
        }
    </style>
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
                                        <div class="col-md-12">
                                            <h4 class="app-heading"><i class="fa fa-send"></i> <?php echo $PageName; ?></h4>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-7">
                                            <form class="shadow-sm p-1 rounded-1" action="" method="GET">
                                                <div class="form-group pb-1">
                                                    <h6 class="app-sub-heading">Select Email template & Sender Email-Id</h6>
                                                    <label>Select Email Template</label>
                                                    <select onchange="form.submit()" class="form-control" required name='SELECTED_EMAIL_TEMPLATE_ID'>
                                                        <option value="0">Select Email Template</option>
                                                        <?php
                                                        $AllEmailTemplates = _DB_COMMAND_("SELECT config_mail_template_id, config_mail_template_ref_no FROM config_mail_templates ORDER BY config_mail_template_name ASC", true);
                                                        if ($AllEmailTemplates != null) {
                                                            foreach ($AllEmailTemplates as $EmailTemplate) {
                                                                if ($EmailTemplate->config_mail_template_id == IfRequested("GET", "SELECTED_EMAIL_TEMPLATE_ID", $SELECTED_EMAIL_TEMPLATE_ID, false)) {
                                                                    $selected = "selected";
                                                                } else {
                                                                    $selected = "";
                                                                }
                                                                echo "<option value='" . $EmailTemplate->config_mail_template_id . "' $selected>" . $EmailTemplate->config_mail_template_ref_no . "</option>";
                                                            }
                                                        } else {
                                                            echo "<option value='0'>No Email Templates Found</option>";
                                                        } ?>
                                                    </select>
                                                </div>
                                                <div class="form-group pb-1">
                                                    <label>Select Sender Email-id</label>
                                                    <select onchange="form.submit()" name="SELECTED_SENDER_EMAIL_ID" class="form-control form-control-sm" required>
                                                        <option value='0'>Select Sender Email-id</option>
                                                        <?php
                                                        $AllSenderEmails = "SELECT * FROM config_mail_sender ORDER BY config_mail_sender_id DESC";
                                                        $AllSenderEmails = _DB_COMMAND_($AllSenderEmails, true);
                                                        if ($AllSenderEmails != null) {
                                                            foreach ($AllSenderEmails as $Sender) {
                                                                if ($Sender->config_mail_sender_id == IfRequested("GET", "SELECTED_SENDER_EMAIL_ID", $SELECTED_SENDER_EMAIL_ID, false)) {
                                                                    $selected = "selected";
                                                                } else {
                                                                    $selected = "";
                                                                }
                                                                echo "<option value='" . $Sender->config_mail_sender_id . "' $selected>" . $Sender->config_mail_sender_username . " @ " . $Sender->config_mail_sender_host . " - (Max: " . $Sender->config_mail_send_limit . ")</option>";
                                                            }
                                                        } else {
                                                            echo "<option value='0'>No Sender Email-ids</option>";
                                                        }
                                                        ?>
                                                    </select>
                                                </div>

                                                <div class="form-group pb-1 mt-3">
                                                    <h6 class="app-sub-heading">EMAIL TEMPLATE PREVIEW</h6>
                                                    <?php
                                                    if (isset($_SESSION['SELECTED_EMAIL_TEMPLATE_ID'])) {
                                                        $EmailTemplaTeSQL = "SELECT * FROM config_mail_templates where config_mail_template_id='$SELECTED_EMAIL_TEMPLATE_ID'";
                                                        $SenderEamilidSQL = "SELECT * FROM config_mail_sender where config_mail_sender_id='$SELECTED_SENDER_EMAIL_ID'";
                                                    ?>
                                                        <div class="shadow-sm border-primary p-2 rounded-1">
                                                            <h6 class="text-warning mb-0">Subject:</h6>
                                                            <p class="pb-4"><?php echo FETCH($EmailTemplaTeSQL, "config_mail_template_subject"); ?></p>

                                                            <h6 class="text-warning mb-0">Message:</h6>
                                                            <div class="shadow-sm mt-1 p-2 b-r-2 bg-light border-info border-width-2 mb-3">
                                                                <?php
                                                                $emailTemplateContent = FETCH($EmailTemplaTeSQL, "config_mail_template_content");
                                                                echo html_entity_decode($emailTemplateContent); ?>
                                                            </div>
                                                            <a href="<?php echo APP_URL; ?>/templates/update/?id=<?php echo SECURE($SELECTED_EMAIL_TEMPLATE_ID, "e"); ?>&access_url=<?php echo RUNNING_URL; ?>" class='btn btn-xs btn-primary'>
                                                                <i class='fa fa-edit'></i> Edit
                                                            </a>

                                                            <h6 class="text-warning mb-0 mt-3">Sender Email-ID</h6>
                                                            <p class="pb-4">
                                                                <?php
                                                                if ($SELECTED_SENDER_EMAIL_ID != 0) {
                                                                    echo FETCH($SenderEamilidSQL, "config_mail_sender_username"); ?>
                                                                    @ <?php echo FETCH($SenderEamilidSQL, "config_mail_sender_host"); ?><br>
                                                                    <span>SEND LIMIT : <?php echo FETCH($SenderEamilidSQL, "config_mail_send_limit"); ?> emails/24hr</span>
                                                                <?php } else {
                                                                    echo "No Sender Email-id is selected!";
                                                                } ?>
                                                            </p>
                                                        </div>
                                                    <?php
                                                    } else {
                                                        $emailTemplateContent = null;
                                                        echo NoData("No Email-Template is selected! Please any one template...");
                                                    } ?>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="col-md-5">
                                            <div class="shadow-sm p-2">
                                                <h5 class="app-sub-heading">Sent to</h5>
                                                <form class="" method="POST" action='sending/' enctype="multipart/form-data">
                                                    <input type='hidden' name='EMAIL_ID' value='<?php echo $SELECTED_SENDER_EMAIL_ID; ?>'>
                                                    <input type='hidden' name='TEMPLATE_ID' value='<?php echo $SELECTED_EMAIL_TEMPLATE_ID; ?>'>
                                                    <input type='hidden' name='SENDING_MODULE' value='upload'>

                                                    <div class="form-group pb-1">
                                                        <div class="w-100 shadow-sm p-1">
                                                            <h6 class="app-sub-heading">Upload CSV file!</h6>
                                                            <div class="form-group">
                                                                <label>Upload Record file (csv only)</label>
                                                                <input type="file" name="UPLOADED_CSV_FILE" required accept=".csv,text/csv" class="form-control">
                                                            </div>
                                                            <hr>
                                                            <h6 class="text-danger mt-3 mb-1">Please read care fully before uploading records.</h6>
                                                            <p>Make sure you have included below details;</p>
                                                            <ul>
                                                                <li>All Define variable mention in csv as header name</li>
                                                                <li>You have to make one primary common column whose header name is <b>EMAILID</b>, where email list is provided by you.</li>
                                                                <li>HeaderName must be uppercase and not contain any special character or space between two words.</li>
                                                                <li>Varibale used in template are available in csv file</li>
                                                                <li>number of variables in email template is equal to number of headers in csv file</li>
                                                                <li>Uploaded csv must have below mention headers as column with approx 1 records as row.
                                                                    <ul>
                                                                        <?php
                                                                        preg_match_all('/\$\w+/', $emailTemplateContent, $matches);
                                                                        $ExtractAllVariables = array_unique($matches[0]);
                                                                        $StartCSVHeaders = 0;
                                                                        foreach ($ExtractAllVariables as $VariableName) {
                                                                            $StartCSVHeaders++;
                                                                            $VariableName = removeSpecialCharacter($VariableName, "$");
                                                                            if ($StartCSVHeaders == 1) {
                                                                                echo "<li>$StartCSVHeaders Column - <b>EMAILID</b></li>";
                                                                                $StartCSVHeaders++;
                                                                            }
                                                                            echo "<li>$StartCSVHeaders Column - <b>$VariableName</b></li>";
                                                                        }
                                                                        ?>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <hr>
                                                                <button type="submit" name='PROCESS_DYNAMIC_EMAILS' class="btn btn-sm btn-primary fs-20"><i class='fa fa-send'></i> Start Processing Emails</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script>
            function CheckAll() {
                const checkboxes = document.querySelectorAll('.checks');
                const anyUnchecked = Array.from(checkboxes).some(checkbox => !checkbox.checked);

                checkboxes.forEach(checkbox => {
                    checkbox.checked = anyUnchecked;
                });
            }
        </script>
        <?php
        include $Dir . "/include/forms/Add-New-Sender-Email-Ids.php";
        include $Dir . "/include/app/Footer.php"; ?>
    </div>

    <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>