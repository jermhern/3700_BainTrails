<html>
  <head>
    <!-- Map -->
    <script src='https://api.mapbox.com/mapbox-gl-js/v3.11.0/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v3.11.0/mapbox-gl.css' rel='stylesheet' />

    <link rel="stylesheet" href="../style.css">
    <script src="script.js"></script>
    <title>Results</title>

    <?php
      // // establish connection with DB 
      // $servername = 'cssql.seattleu.edu';
      // $user = 'll_jhernandez10';
      // $pass = '2345678';
      // $dbname = '345678';

      // // create the connection
      // $conn = mysqli_connect($servername, $user, $pass, $dbname);

      // if (!$conn) {
      //   die('<h2>DB Connection Error: ' . mysqli_connect_error() . '</h2><br>
      //        <button onclick="history.back();">Go back!</button>');
      // } 
    ?>
  </head>

  <body>
    <header>
      <!-- the entire top section of the page -->
      <div class="header_parent">
        <a class="logo" href="../index.html">
          <img src="../assets/baintrail_logo.png" alt="BainTrails Logo">
        </a>
        <form method="POST" action="trail_results.php">
          <input type="text" id="nav_search" name="search" placeholder="search">
        </form>
        <!-- Links on right side of header -->
        <ul class="nav">
          <a href="../results.html">Trails</a>
          <a href="lost_page.html">Account</a>
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
            <label for="kid_filter">Good for kids</label><br>
            <input type="checkbox" id="dog" name="dog_filter" value="dogs">
            <label for="dog_filter">Good for dogs</label><br>
            <input type="checkbox" id="easy" name="easy_filter" value="easy">
            <label for="easy_filter">Easy</label><br>
            <input type="checkbox" id="moderate" name="moderate_filter" value="moderate">
            <label for="moderate_filter">Moderate</label><br>
            <input type="submit" value="Apply">
          </form>
        </div>

        <!-- Insert some sort of for loop to populate the data from the DB here  -->
        <?php
          echo '<h1>Results for: ' . $_POST["search"] . '</h1>';
        ?>

        <div class="trail">
          <img class="trail_img" src="../assets/trail_placeholder.png" alt="trail icon">

          <div class="trail_info">
            <div class="name_favbutton">
              <h2 class="trail_name">1. $TrailName</h2>
              <button class="fav_button">Heart Logo</button>
            </div>
            
            <p>$Distance</p>
            <div class="info_reviews">
              <p class="features">$Features</p>
              <p class="reviews">$Reviews</p>
            </div>
          </div>
        </div>
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
						zoom: 11, // starting zoom
					});

          // Display the data points of 'caretakers'
					map.on('load', () => {
					    map.addSource('Bainbridge-Parks', {
					      type: 'vector',
					      url: 'mapbox://jher10.cm9xch21p12ln1opbkv1cz00x-8ckm1' // my tileset ID
					    });
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
        <p id="1"><a href="lost_page.html">About</a></p>
        <p id="2"><a href="lost_page.html">Contact</a></p>
      </div>
    </footer>

    <script src="script.js"></script>
    <?php 
      // disconnect
      mysqli_free_result($result);
      mysqli_close($conn);
    ?>
  </body>
</html>
