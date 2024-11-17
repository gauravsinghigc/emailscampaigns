<?php
function AdminDetails($AdminId, $ColumnName)
{
    if ($AdminId != null && $ColumnName != null) {
        $AdminDetails = FETCH("SELECT $ColumnName FROM admins where admin_main_id='$AdminId'", "$ColumnName");
        return $AdminDetails;
    } else {
        return null;
    }
}
