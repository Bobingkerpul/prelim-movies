<?php

session_start();
require_once 'config.php';

if (isset($_POST['search'])) {
  $term = $_POST['s'];


  $movies = $mysqli->query("SELECT * FROM movies WHERE title LIKE '%$term%' ORDER BY popularity DESC");
  $movies = $movies->fetch_all(MYSQLI_ASSOC);
} else if (isset($_GET['genre'])) {

  $genre = $_GET['genre'];
  // echo "SELECT * FROM movies WHERE genres LIKE '%$genre%' ORDER BY popularity DESC";
  // exit;

  $movies = $mysqli->query("SELECT * FROM movies WHERE genres LIKE '%$genre%' ORDER BY popularity DESC");
  $movies = $movies->fetch_all(MYSQLI_ASSOC);

  $movie_genre = $genre;

  // echo $movie_genre;

  // echo ('handle pill button' . ' ' . $_GET['genre']);
  // exit;
} else {
  $movies = $mysqli->query("SELECT * FROM movies ORDER BY popularity DESC");
  $movies = $movies->fetch_all(MYSQLI_ASSOC);
}



?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="./js/jquery-3.7.1.min.js"></script>

  <link rel="stylesheet" href="style2.css">

  <title>Insert Many Data</title>

  <!-- fontawesome -->
  <link rel="stylesheet" href="fontawesome-free-6.1.2-web/css/all.css" />
  <!-- bootstrap -->
  <link rel="stylesheet" href="bootstrap-5.1.3-dist/css/bootstrap.css" />
  <!-- layout style -->
  <link rel="stylesheet" href="css/style2.css" />

  <style>
    .image {
      width: 154px;
      height: 231px;
      object-fit: cover;
    }

    .poster {
      width: 154px;
      height: 231px;
    }
  </style>
</head>

<body>
  <div class="container-fluid">
    <h1 class="display-4 my-3 text-center">Movie List</h1>

    <div class="row justify-content-center pb-4">
      <div class="col-sm-4">
        <form class="input-group" action="index.php" method="POST">
          <input type="text" name="s" class="form-control" value="<?= isset($term) ? $term : '' ?>" />
          <button type="submit" name="search" class="btn btn-dark"><i class="fa fa-search"></i></button>
          <button type="button" name="addMovie" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addMovie"><i class="fa fa-plus"></i></button>
        </form>
      </div>
    </div>
    <div>
      <?php if (isset($movie_genre)) : ?>
        <h3 class="text-center display-6">Movie Genre <strong>"<?= $movie_genre ?>"</strong>
          </h2>
        <?php endif; ?>

    </div>

    <!-- Display Error Message Validation -->
    <?php if (isset($_SESSION["error"])) : ?>
      <div class="alert alert-danger" role="alert">
        <?= $_SESSION["error"] ?>
      </div>
      <?php unset($_SESSION["error"]); ?>
    <?php endif; ?>


    <?php if (!$movies) : ?>
      <h2 class="display-4 my-3 text-center">This Movie Not Avail "<?= $term ?>"</h2>
    <?php else : ?>
      <div class="row">

        <?php foreach ($movies as $movie) : ?>

          <div class="col-xxl-3 col-xl-4 col-md-6 mb-4">
            <div class="card border-0 shadow-sm h-100">
              <div class="card-body">
                <div class="movie">
                  <div class="poster">
                    <img src="movies/<?= $movie['poster_path']; ?>" alt="movie" data-bs-toggle="modal" data-bs-target="#modalId" class="image" />
                  </div>
                  <div class="info">
                    <h2 class="h6">
                      <?= $movie['title']; ?>
                    </h2>
                    <p class="mb-1" title="Popularity">
                      <i class="fa fa-fire-flame-curved"></i>
                      <span><?= $movie['popularity']; ?></span>
                    </p>
                    <p class="mb-1" title="Release Date">
                      <i class="fa fa-calendar-alt"></i>
                      <span><?= $movie['release_date']; ?></span>
                    </p>
                    <p class="mb-1" title="Runtime">
                      <i class="fa fa-clock"></i>
                      <span><?= $movie['runtime']; ?></span> min
                    </p>
                    <p class="mb-1" title="Vote Average">
                      <i class="far fa-star"></i>
                      <span><?= $movie['vote_average']; ?></span>
                    </p>
                    <div class="pt-2 d-flex flex-wrap gap-2">
                      <?php $genre = $movie['genres'];
                      $genres = explode('-', $genre);
                      ?>

                      <?php foreach ($genres as $genre) : ?>
                        <div class="genre"><a href="?genre=<?= $genre ?>" style="text-decoration:none"><?= $genre ?></a></div>
                      <?php endforeach; ?>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    <?php endif; ?>

  </div>



  <!-- Modal Add Movie -->
  <!-- if you want to close by clicking outside the modal, delete the last endpoint:data-bs-backdrop and data-bs-keyboard -->
  <div class="modal fade" id="addMovie" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" role="dialog" aria-labelledby="modalTitleId" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalTitleId">
            Add Movie
          </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6">
              <img src="movies/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg" id="imageHolder" alt="Movie Image" class="w-100">
            </div>
            <div class="col-md-6">
              <form action="addmovie.php" method="post" enctype="multipart/form-data">
                <label for="title">Movie Title</label>
                <input type="text" name="title" id="title" class="form-control">
                <label for="popularity">Popularity</label>
                <input type="number" name="popularity" id="popularity" class="form-control">
                <label for="date">Date</label>
                <input type="date" name="date" id="date" class="form-control">
                <label for="runtime">Run Time</label>
                <input type="number" name="runtime" id="runtime" class="form-control">
                <label for="voteave">Vote Average</label>
                <input type="number" name="voteave" id="voteave" class="form-control">
                <label for="poster">Poster</label>
                <input type="file" name="poster" id="poster" class="form-control">
                <!-- <select name="genres[]" multiple>
                  <option value="Action">Action</option>
                  <option value="Comedy">Comedy</option>
                  <option value="Drama">Drama</option>
                  <option value="Horror">Horror</option>
                </select> -->
                <button type="submit" class="btn btn-primary" name="addmovie">Submit</button>
              </form>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
            Close
          </button>
        </div>
      </div>
    </div>
  </div>


  <!-- Modal Image View -->
  <!-- if you want to close by clicking outside the modal, delete the last endpoint:data-bs-backdrop and data-bs-keyboard -->
  <div class="modal fade" id="modalId" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" role="dialog" aria-labelledby="modalTitleId" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalTitleId">
            Modal Image
          </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <img src="" id="image-modal">
        </div>
      </div>
    </div>
  </div>

  <script>
    $(document).ready(function() {
      // Handler for .ready() called.
      // alert()
      $('.image').click(function() {
        // alert($(this).attr('src'));
        var image = $(this).attr('src');
        // alert(image);
        $('#image-modal').attr('src', image);
      })


    });



    //  Render Image Input file Image

    const poster = document.getElementById('poster');
    const imageHolder = document.getElementById('imageHolder');

    poster.addEventListener('change', imageRenderFile);

    function imageRenderFile() {
      console.log(poster.files[0]);
      const file = poster.files[0];

      if (file) {
        const reader = new FileReader();
        console.log(reader);
        reader.readAsDataURL(file);
        reader.onload = function(e) {
          imageHolder.src = e.target.result;
        }
      }
    }
  </script>


</body>

</html>