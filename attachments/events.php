<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Events</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/modern-business.css" rel="stylesheet">
    <link rel="stylesheet" href="css/events.css" type="text/css">
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }
    .carousel-item.active,
    .carousel-item-next,
    .carousel-item-prev {
        display: block;
    }
    </style>
</head>

<body>
    <!-- Navigation -->
<?php include('includes/header.php');?>
<?php include('includes/slider.php');?>
   
    <div class="container">
            <div class="jumbotron">
                    <h1 class="display-4">"रक्तदान महादान"</h1>
                    <br><br>
                    <h2>Blood donation is the best donation</h2>
                    <h2>Every Life is Precious</h2>
                    <p class="lead">~ Latest events organized by NGO's, Hospitals, Social Workers/Government are the gift to the blood patients.</p>
                    <hr class="my-4">
                    <img src="images/camp.png" alt="" id="camp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="images/camp4.jpg" alt="" id="camp"><br><br><br><br>
                    <p id="don">Donation Events:</p>
                    <div class="row">
                        <div class="col-6">
                            <p id="airforce">~ Airforce blood camp at pulwama</p>
                            <img src="images/camp2.jpeg" alt="" id="camp">
                        </div>
                        <div class="col-6">
                            <p id="airforce">~ Donation camp at City Hospital</p>
                            <img src="images/camp3.jpg" alt="" id="camp">
                        </div>
                    </div>
                  </div>
    </div>
    <!-- Footer -->
  <?php include('includes/footer.php');?>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/tether/tether.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>