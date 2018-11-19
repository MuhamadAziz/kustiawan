<!DOCTYPE html>
<?php 
  include 'config/koneksi.php';

   function encrypt( $s ) {
        $cryptKey  = 'd8578edf8458ce06fbc5bb76a58c5ca4';
        $qEncoded      = base64_encode( mcrypt_encrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), $s, MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ) );
        return( $qEncoded );
    }
     
    function decrypt($s) {
        $cryptKey  = 'd8578edf8458ce06fbc5bb76a58c5ca4';
        $qDecoded  = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), base64_decode( $s ), MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ), "\0");
        return( $qDecoded );
    }

    $id = 'berita';
    $enkrip  = encrypt($id);
 ?>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="css/animate.min.css">
      <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
      <link rel="stylesheet" type="text/css" href="css/sweetalert.css">
      <script type="text/javascript" src="js/jquery-2.2.0.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script type="text/javascript" src="js/footer-reveal.min.js"></script>
      <script type="text/javascript" src="js/owl.carousel.min.js"></script>
      <script type="text/javascript" src="js/sweetalert.min.js"></script>
      <script type="text/javascript" src="js/wow.min.js"></script>
      <script type="text/javascript" src="js/config.js"></script>
      <title>Kwarcab Kota Bogor</title>
      <link rel="shortcut icon" href="img/watch.png">
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body class="regular-font" onscroll="scrolleffect()" style="background-color: #eee;">
     <div class="before-nav hide-on-small-only">
      <div class="container" style="width: 88%;">
         <a href="mailto:kwartircabangkotabogor@gmail.com" data-activates='dropdown-user' data-beloworigin="true" data-alignment="right" data-constrain_width="true" class="dropdown-button deep-yellow-text">kwartircabangkotabogor@gmail.com</a>
        <a href="#" class="deep-yellow-text waves-effect">Telp : (0251) 8365985</a>
      </div>
    </div>
    <div class="n">
    <nav style="background-color: rgba(66,66,66,.9);">
    <div class="nav-wrapper">
      <div class="container" style="width: 90%;">
      <div class="row">
        <div class="col l3">
          <!-- <a href="index.html" class="brand-logo deep-yellow-text" style="//margin-left: 5%;"><img src="img/watch.svg" class="hide-on-small-only" style="width: 35px;height:35px;margin-top: 40%;position: relative;" alt=""><span class="light-font" style="margin-top: -1%;position: absolute;letter-spacing: -1px;margin-left: 15%;"><span class="bold-font">Agen</span>Bola</span></a> -->
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
        </div>
        <div class="col l9">
          <ul class="right hide-on-med-and-down">
        <li><a href="index.php" class="deep-yellow-text waves-effect">Home</a><li>
       
        <li><a class="deep-yellow-text waves-effect dropdown-button" data-activates='about'>About<i class="material-icons right">arrow_drop_down</i></a></li>
          <ul id='about' class='dropdown-content'>
            <li><a href="tentangkami.html">Visi & Misi</a></li>
            <li><a href="404/index.html">Struktur</a></li>
          </ul>
        <!-- <li><a href="pelayanan.html" class="deep-yellow-text waves-effect">Pelayanan</a></li> -->
        <li><a href="berita.php" class="deep-yellow-text waves-effect">Berita</a></li>
        <li><a href="galeri.php" class="deep-yellow-text waves-effect">Galeri</a></li>
        <li><a href="kontak.html" class="deep-yellow-text waves-effect">Kontak</a></li>

      </ul>
        </div>
   
       <ul id="mobile-demo" class="side-nav">
        <li><a href="index.php">Home</a></li> 
        <li><a href="tentangkami.html" class="deep-yellow-text waves-effect">Tentang Kami</a></li>
        <li><a href="404/index.html" class="deep-yellow-text waves-effect">struktur</a></li>
        <li><a href="berita.php" class="deep-yellow-text waves-effect">Berita</a></li>
        <li><a href="galeri.php" class="deep-yellow-text waves-effect">Galeri</a></li>
        <li><a href="kontak.html" class="deep-yellow-text waves-effect">Kontak</a></li>
      </ul>
    </div>
  </nav>
  </div>
  <div class="slider">
    <ul class="slides">
     <li>
        <img src="img/sli.jpg"> <!-- random image -->
        <div class="caption center-align">
          <!-- <h3 class="samsung-font" style="font-size: 40px;">Butuh Konsultan pertanian dan perkebunan ?</h3>
          <h2><span class="font-bold yellow-text text-darken-2">Iwan Kustiawan dan Rekan saja solusinya</span></h2>
          <a href="#field" class="btn deep-yellow regular-font waves-effect waves-light">Telusuri</a> -->
        </div>
      </li>
   <!-- <li>
        <!-- <img src="img/Display.jpeg"> <!-- random image -->
       <!-- <div class="caption right-align">
         <!-- <h3 class="samsung-font" style="text-transform: capitalize;">Kustiawan Dan Rekan Consultan</h3>
          <h5 class="light grey-text text-lighten-3">Membangun Sepak Bola Indonesia dengan Akhlakul Karimah!</h5> -->
       <!-- </div>-->
      <!-- </li>  -->
     <!-- <li>
        <!-- <img src="img/Display.jpeg"> <!-- random image -->
       <!-- <div class="caption left-align">
         <!-- <h3 class="samsung-font" style="text-transform: capitalize;">Bibit Unggul </h3>
          <h5 class="light grey-text text-lighten-3">Menyediakan bintang masa depan seperti dia!</h5> -->
       <!-- </div> -->
     <!-- </li> -->
    </ul>
  </div>
   <div class="konten" style="background-color: #eee;padding-bottom: 2%;padding-top: 2%;">
  <div class="container" style="width: 90%;">
  <div class="row" id="field">
  <div class="col l3">
    <div class="categorize hide-on-med-and-down">
      <div class="container" style="width: 90%;">
        <ul class="detail-ul" style="padding-top: 3%;margin-top: 0;">
          <li class="cari-judul samsung-font">Twitter</li>
          <div class="divider"></div>
          <div class="twitter">
           <blockquote class="twitter-tweet"><p lang="en" dir="ltr">Sunsets don&#39;t get much better than this one over <a href="https://twitter.com/GrandTetonNPS?ref_src=twsrc%5Etfw">@GrandTetonNPS</a>. <a href="https://twitter.com/hashtag/nature?src=hash&amp;ref_src=twsrc%5Etfw">#nature</a> <a href="https://twitter.com/hashtag/sunset?src=hash&amp;ref_src=twsrc%5Etfw">#sunset</a> <a href="http://t.co/YuKy2rcjyU">pic.twitter.com/YuKy2rcjyU</a></p>&mdash; US Department of the Interior (@Interior) <a href="https://twitter.com/scoutbogor/status/1021948649503371265">May 5, 2014</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
          </div>
        </ul>
      </div>
    </div>

    <div class="categorize hide-on-med-and-down responsive">
      <div class="container" style="width: 90%;">
        <ul class="detail-ul" style="padding-top: 3%;margin-top: 0;">
          <li class="cari-judul samsung-font">Youtube</li>
          <div class="divider"></div>
          <div class="youtube">
<iframe width="250" height="250" src="https://www.youtube.com/embed/0oMK0ZytH14" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          </div>
        </ul>
      </div>
    </div>
  
  </div>

 
  <div class="row">
  <div class="col l8 m3 s14">
      <div class="berita-section white" style="margin-top: 1%;padding-bottom: 14.5%;background: #fafafa;">
    <div class="container" style="width: 90%;"><br> 
      <h4 class="center samsung-font grey-text text-darken-3" style="padding-top: 1%;">Berita</h4>
      <span class="garis"></span><br>
      <div class="row">
        <?php 
            $sql = mysql_query("SELECT * FROM news ORDER BY id_berita DESC limit 3");
            while ($data = mysql_fetch_array($sql)) {
        ?>
            <div class="col l4 m10 s12">
                <div class="card" style="padding-bottom: 5%;">
                  <div class="card-image">
                    <div class="card-photo" style="background-image: url('wp-admin/images/<?php echo $data['image'] ?>');width: 100%;height: 320px;background-size: cover;background-position: center;"></div>
                  </div>
                    <div class="card-content" style="padding-top: 0%;">
                    <div class="center">
                        </div>
                        <h3 class="font-bold grey-text text-darken-3" style="font-size: 25px;"><?php echo $data['title']; ?></h3>
                        <!-- <div class="artikel grey-text text-darken-1 font-regular" style="margin-top: 3%;font-size: 16px;">
                          <?php echo  substr($data['content'], 0,20); ?> -->
                        </div>

                      <div class=" card-action">
                        <a href="blogdetail.php?get=<?php echo $enkrip ?>&id=<?php echo $data['id_berita'] ?>" class="font-light deep-yellow-text" style="text-transform: capitalize;">Selengkapnya</a>
                      </div>
                    </div>
                </div>
            </div>
                     <?php } ?>
		   
      </div>
        <div class="right">
        <a href="berita.php" class="btn font-light waves-effect waves-light" style="text-transform: capitalize;">Halaman Berita</a>
      </div>
  </div>
    </div>
  </div>
  
  </div>
  </div>
</div>
</div>
      <footer class="page-footer white" style="">
          <div class="container">
            <div class="row">
                
                <h3 class="grey-text text-darken-3 samsung-font" align="center">Sosial Media</h3>
                <span class="garis"></span>
                <div class="col l1 m4 s12" align="center" >
                    <a class="grey-text text-lighten-3" href="https://web.facebook.com/PramukaKotaBogor/"><img src="https://use.fontawesome.com/releases/v5.0.8/svgs/brands/facebook.svg" style="width:50px;"></a>
               
              </div>
               <div class="col l1 m4 s12" align="center">
               
                   <a class="grey-text text-lighten-3" href="https://twitter.com/scoutbogor"><img src="https://use.fontawesome.com/releases/v5.0.8/svgs/brands/twitter-square.svg" style="width:50px;"></a> 
             
              </div>
      
                  <div class="col l1 m4 s12"  align="center">
                
                   <a class="grey-text text-lighten-3" href="https://www.instagram.com/kwarcabkotabogor/"><img src="https://use.fontawesome.com/releases/v5.0.8/svgs/brands/instagram.svg" style="width:50px;"></a>
                
              </div>
              
            </div>
          </div>
          <div class="footer-copyright" style="background-color: #f4f4f4">
            <div class="container grey-text text-darken-3" style="width: 90%; ">
            &copy2018 <span class="bold-font">Kominfo Kwarcab Kota Bogor</span>
           
            </div>
          </div>
        </footer>
  <style type="text/css">
               /* .user-input {
                  width: 80% !important;
                  border:1px solid #e0e0e0 !important;
                  border-radius: 30px !important;
                  padding-left: 3% !important;
                  padding-right: 3% !important;
                  box-shadow: none !important; 
                }
                .user-input:focus {
                  border: 2px solid #ff5722;
                  //box-shadow: 0 1px 0 0 #ff5722;
                 }*/
</style>
          
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript">
       $(document).ready(function(){
         $(".button-collapse").sideNav();     
       $('.owl-carousel').owlCarousel({
        loop:true,
        center: true,
        items:1,
        margin:20,
        autoplay:true,
        autoplayTimeout:3500,
        autoplayHoverPause:false,
        });
        });
        $('.modal').modal();
         $('footer').footerReveal({
        shadow:false
        });
         $('.dropdown-button').dropdown({
              inDuration: 300,
              outDuration: 225,
              constrain_width: false, // Does not change width of dropdown to that of the activator
              hover: true, // Activate on hover
              gutter: 0, // Spacing from edge
              belowOrigin: true, // Displays dropdown below the button
              alignment: 'left' // Displays dropdown with edge aligned to the left of button
            }
          );
        new WOW().init();
        $('.parallax').parallax();
      </script>
    </body>
  </html>