<htmt>
  <head>
    <!-- Map -->
    <script src='https://api.mapbox.com/mapbox-gl-js/v3.11.0/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v3.11.0/mapbox-gl.css' rel='stylesheet' />

    <link rel="stylesheet" href="../style.css">
    <script src="script.js"></script>
    <title>Results</title>
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
        </div>

        <!-- Insert some sort of for loop to populate the data from the DB here  -->
        <?php
          echo '<h1>Searched for: ' . $_POST["search"] . '</h1>';
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

  </body>
</html>
