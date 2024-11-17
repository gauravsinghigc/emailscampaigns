<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
   <!-- Left navbar links -->
   <ul class="navbar-nav header">
      <li class="nav-item">
         <a class="nav-link h3 p-0" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars h1"></i></a>
      </li>
      <li class="nav-item">
         <a class="nav-link h3 p-0" onclick="Databar('DrillIntoTheSoftware')" href="#"><i class="fas fa-search h2"></i></a>
      </li>
      <?php if (DEVICE_TYPE == "COMPUTER") { ?>
         <li class="navbar-item">
            <span class="nav-link h6 p-0"><i class="fa fa-clock"></i> <span id="clock"></span></span>
         </li>
      <?php } ?>
   </ul>

   <!-- Right navbar links -->
   <ul class="navbar-nav ml-auto auth-header">
      <li class="nav-item">
         <a href="<?php echo APP_URL; ?>/profile/" class="nav-link user-panel p-0 pr-2 shadow-sm p-1 rounded">
            <div class="image">
               <img src="<?php echo LOGIN_UserProfileImage; ?>" class="img-circle elevation-2" alt="<?php echo LOGIN_UserFullName; ?>" title="<?php echo LOGIN_UserFullName; ?>" />
               <span class="p-1 h6 float-right"><b><?php echo LOGIN_UserFullName; ?></b></span>
            </div>
         </a>
      </li>
   </ul>
</nav>
<!-- /.navbar -->