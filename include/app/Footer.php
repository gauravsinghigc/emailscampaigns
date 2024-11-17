<div class="time-block" hidden="">
    <span><i class="fa fa-clock-o pl-1"></i> </span>
    <span id="clock">8:10:45</span>
    <span> | </span>
    <span class="date"><?php echo date("d D M, Y"); ?></span>
</div>

<script>
    function showTime() {
        let time = new Date();
        let hour = time.getHours();
        let min = time.getMinutes();
        let sec = time.getSeconds();
        am_pm = "AM";
        if (hour > 12) {
            hour -= 12;
            am_pm = "PM";
        }
        if (hour == 0) {
            hr = 12;
            am_pm = "AM";
        }
        hour = hour < 10 ? "0" + hour : hour;
        min = min < 10 ? "0" + min : min;
        sec = sec < 10 ? "0" + sec : sec;
        let currentTime = hour + ":" + min + ":" + sec + " " + am_pm + "";
        let CurrentFullTime = hour + ":" + min + ":" + sec + " " + am_pm + "";
        document.getElementById("clock").innerHTML = "&nbsp;" + currentTime + " ";

        //show reminder at reminder time
        var RunningTime = hour + ":" + min + " " + am_pm;

        //functional times

    }
    setInterval(showTime, 1000);
</script>
<div id="footer" class="app-footer m-0">
    <?php if (DEVICE_TYPE == "COMPUTER") { ?>
        <footer class="main-footer"> Copyrighted &copy;
            <?php echo date("Y"); ?> - <span class="text-primary"><?php echo APP_NAME; ?></span> | Managed By <a href="<?php echo DEVELOPER_URL; ?>" class="text-primary" target="_blank"><?php echo DEVELOPED_BY; ?></a>
        </footer>
    <?php } ?>
</div>