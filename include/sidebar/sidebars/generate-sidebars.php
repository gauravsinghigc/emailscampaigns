<?php
$GetUserAccessLevels = _DB_COMMAND_("SELECT UserAccessName FROM user_access where UserAccessStatus='1' and UserAccessUserId='" . LOGIN_UserId . "'", true);
if ($GetUserAccessLevels != null) {
    foreach ($GetUserAccessLevels as $Sidebar) {
        if ($Sidebar->UserAccessName != null) {
            $SideBar =  $Sidebar->UserAccessName;
            $SideBar = SIDEBAR_ACCESS_LEVEL["$SideBar"];
            include __DIR__ . "/access-wise-sidebars/$SideBar";
        }
    }
}
