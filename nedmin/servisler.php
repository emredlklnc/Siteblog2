<?php 
include 'header.php';
include 'netting/baglan.php';

if (isset($_POST['aranan'])) 
{
  $aranan=$_POST['aranan'];
   $servissor=$db->prepare("select * from servisler where servis_baslik like '%$aranan%' ");
   $servissor->execute();
   $say=$servissor->rowCount();
}
else{
      $servissor=$db->prepare("select * from servisler ");
      $servissor->execute();
      $say=$servissor->rowCount();
}


?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>YÖNETİM PANELİ  <?php echo $_POST['aranan']; ?></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">

                <form action="" method="POST">
                  <div class="input-group">
                    <input type="text" class="form-control" name="aranan" placeholder="Anahtar Kelime Giriniz...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="submit" name="arama">Ara!</button>
                    </span>
                  </div>
                </form>

                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                
                 
                  <div class="x_content">
                      
                    <!--tablo başlangıc-->
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Servis işlemleri <?php echo "---".$say." Adet Kayıt Listelendi" ?><small>

                      <?php 
                      if($_GET['durum']=='ok')
                        { ?>
                          <b style="color: green;">İşlem Başarılı..</b>

                       <?php } else if($_GET['durum']=='no'){ ?>

                          <b style="color: red;">İşlem Yapılamadı..</b>

                       <?php } ?>
                          
                        </small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                    

                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            
                            <th class="column-title">Servis Başlık</th>
                            <th class="column-title">Servis İçerik </th>
                            <th class="column-title">Servis İcon </th>
                            <th style="width: 80px;" class="column-title"></th>
                            <th style="width: 80px;" class="column-title"></th>
                           
                           
                          </tr>
                        </thead>

                        <tbody>
                          <?php 
                               
                                

                                  while($serviscek=$servissor->fetch(PDO::FETCH_ASSOC))
                                  { ?>

                                      <tr class="even pointer">
                                      <td class=" "><?php echo $serviscek['servis_baslik']; ?></td>
                                      <td class=" "><?php echo substr($serviscek['servis_icerik'],0,70);?>...</td>
                                      <td class=" "><?php echo $serviscek['servis_icon']; ?></td>
                                    
                                      <td class=" ">
                                              <a href="servisler-duzenle.php?servis_id=<?php echo $serviscek['servis_id']; ?>">
                                              <button style="width: 80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"> Düzenle</i>
                                              </button>
                                              </a>
                                      </td>

                                      <td class=" ">
                                            <a href="netting/islem.php?servissil=ok&servis_id=<?php echo $serviscek['servis_id']; ?>">

                                            <button style="width: 80px;" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"> SİL</i></button>
                                            </a>
                                      </td>
                                      </tr>

                                  <?php  } ?>
                          
                        </tbody>
                      </table>
                    </div>
              
            
                  </div>
                </div>
              </div>



<!--tablo bitiş-->



                  </div>
                
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
   <?php include 'footer.php'; ?>