
<?php 

include 'nedmin/netting/baglan.php';

 ?>


<section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">




<?php 
                                $slidersor=$db->prepare("select * from slider order by slider_id DESC limit 25");
                                $slidersor->execute();
                                
                                $say=0;

                                  while($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC))
                                  {  ?>
                                        
                                        <?php if ($slidercek['slider_durum']==1){

                                         ?>


                                              <?php   if ($say==0) { ?>
                                          
                                                 <div class="carousel-item active" style="background-image: url('<?php echo $slidercek['slider_resimyol']; ?>');">
                                                  <div class="carousel-container">
                                                    <div class="carousel-content">
                                                      <h2>We are professional</h2>
                                                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                                      <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>
                                                    </div>
                                                  </div>
                                                </div>

                                               <?php  }else{ ?>
                                           
                                                 <div class="carousel-item" style="background-image: url('<?php echo $slidercek['slider_resimyol']; ?>');">
                                                  <div class="carousel-container">
                                                    <div class="carousel-content">
                                                      <h2>We are professional</h2>
                                                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                                      <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>
                                                    </div>
                                                  </div>
                                                </div>

          
                                              <?php } ?>

                        

                                          


                                          <?php $say++; }else{

                                            
                                          } ?>

                      <?php } ?>

        </div>

        <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- #intro -->