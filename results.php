<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Map -->
    <script src='https://api.mapbox.com/mapbox-gl-js/v3.11.0/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v3.11.0/mapbox-gl.css' rel='stylesheet' />

    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <title>Results</title>

    <?php
      $servername = 'cssql.seattleu.edu';
      $user = 'll_jhernandez10';
      $pass = '04Jp6E7/D8qfiUzD';
      $dbname = 'll_jhernandez10';

      // create the connection
      $conn = mysqli_connect($servername, $user, $pass, $dbname);
    ?>
  </head>

  <body>
    <header>
      <!-- the entire top section of the page -->
      <div class="header_parent">
        <a class="logo" href="./index.html">
          <img src="assets/baintrail_logo.png" alt="BainTrails Logo">
        </a>
        <form method="POST" action="./database/trail_results.php">
          <input type="text" id="nav_search" name="search" placeholder="search">
        </form>
        <!-- Links on right side of header -->
        <ul class="nav">
          <a href="./results.php">Trails</a>
          <a href="account.html">Account</a>
        </ul>
      </div>
    </header>

    <!-- the body of the page -->
    <div class="results_content">
      <div class="results">
        <div class="filters">
          <h2>Filters</h2>
          <form method="POST" action="./database/trail_results.php">
            <input type="checkbox" id="kid" name="kid_filter" value="kids">
            <label for="kid">Good for kids</label><br>
            <input type="checkbox" id="dog" name="dog_filter" value="dogs">
            <label for="dog">Good for dogs</label><br>
            <input type="checkbox" id="easy" name="easy_filter" value="easy">
            <label for="easy">Easy</label><br>
            <input type="checkbox" id="moderate" name="moderate_filter" value="moderate">
            <label for="moderate">Moderate</label><br>
            <input type="submit" value="Apply">
          </form>
        </div>

        <?php
            if (!$conn) {
              die('<h2 style="color: green;">connection failed: ' . mysqli_connect_error() . '</h2>');
            } 

            // get the query
            $sql = 'select * from TRAIL natural join Photos';

            // // pass the query to sql 
            $result = mysqli_query($conn, $sql);

            if ($result) {
              // if the query is to select data, use this
              if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                  echo '
                  <div class="trail">
                      <img style="width: 50%; border-radius: 30px;" class="trail_img" src="'. $row["Photo_URL"] .'" alt="photo of a trail">

                      <div class="trail_info">
                        <div class="name_favbutton">
                          <h2 class="trail_name">'. $row["Trail_Name"] .'</h2>
                          <button class="fav_button">Heart Logo</button>
                        </div>
                        
                        <p>'. $row["Trail_Distance"] .'</p>
                        <p>'. $row["Trail_Difficulty"] .'</p>
                        <p>'. $row["Trail_Elevation"] .'</p>
                        <div class="info_reviews">';
                          echo '<ul class="features">'; 
                            if ($row["Trail_Dog"] == 1) {
                              echo '<li>Dog Friendly</li>';
                            } 

                            if ($row["Trail_Family"] == 1) {
                              echo '<li>Family Friendly</li>';
                            } 

                            if ($row["Trail_Forest"] == 1) {
                              echo '<li>Forest</li>';
                            } 

                            if ($row["Trail_View"] == 1) {
                              echo '<li>View</li>';
                            } 

                            if ($row["Trail_BodyWater"] == 1) {
                              echo '<li>Water View</li>';
                            } 

                            if ($row["Trail_Wildlife"] == 1) {
                              echo '<li>Wildlife</li>';
                            } 

                            if ($row["Trail_Parking_Fee"] == 1) {
                              echo '<li>Fee required</li>';
                            } 

                            if ($row["Trail_Parking_Fee"] == 1) {
                              echo '<li>Fee required</li>';
                            } 
                          echo '</ul>';
                          echo '<p class="reviews">' . $row["Trail_Reviews"] . '</p>
                        </div>
                      </div>
                    </div>';
                }
               } else {
                  echo '0 results for ' . $_POST["search"];
               }
             } else {
                echo 'Error processing query: ' . $sql . '<br>';
            }
        ?>
      </div>

      <div class="map">
        <div id='map' style='height: 100%;'></div>
					<script>
					mapboxgl.accessToken = 'pk.eyJ1IjoiamhlcjEwIiwiYSI6ImNtOXhjZHV0dTE2ZHMyam9oYm9vcDJ2ZDcifQ.blzKgRcRdMwQCkUYE3AeeQ';
					const map = new mapboxgl.Map({
						container: 'map', // container ID
						style: 'mapbox://styles/jher10/cmasqzz9a01gq01sie7d6bs8s', // style URL
						center: [-122.5383, 47.6454], // starting position [lng, lat]
						// [-122.5383, 47.6454] Bainbridge island for baintrails
						zoom: 12, // starting zoom
					});

          // Display the data points of 'caretakers'
					map.on('load', () => {
					    map.addSource('Bainbridge-Parks', {
					      type: 'vector',
					      url: 'mapbox://jher10.cm9xch21p12ln1opbkv1cz00x-8ckm1' // my tileset ID
					    });
              
              // Show the data placed into map from mapbox
					    map.addLayer({
					      'id': 'Bainbridge-Parks',
					      'type': 'circle', 
					      'source': 'Bainbridge-Parks',
					      'source-layer': 'Bainbridge-Parks',
					      'paint': {
					        'circle-color': '#043302',
					        'circle-width': 2
					      }
					    });
					});
					</script>
      </div>
    </div>

    <!-- the bottom of the page -->
    <footer>
      <div class="footer_parent">
        <p id="1"><a href="about.html">About</a></p>
        <p id="2"><a href="contact.html">Contact</a></p>
      </div>

      <?php 
        // disconnect
        mysqli_free_result($result);
        mysqli_close($conn);
      ?>
      <script src="script.js"></script>
    </footer>

    
  </body>
</html>
