  <section id="banner">
   
  <!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides">
              <li>
                <img src="<?php echo web_root; ?>/plugins/home-plugins/img/slides/saovo.jpg" alt="" />
                <div class="flex-caption">
                    <h3>
Sự đổi mới</h3> 
          <p>
Chúng tôi tạo ra những cơ hội</p> 
           
                </div>
              </li>
              <li>
                <img src="<?php echo web_root; ?>plugins/home-plugins/img/slides/embay.jpg" alt="" />
                <div class="flex-caption">
                    <h3>
Chuyên môn hóa</h3> 
          <p>Thành công phụ thuộc vào công việc</p> 
           
                </div>
              </li>
            </ul>
        </div>
  <!-- end slider -->
 
  </section> 
  <section id="call-to-action-2">
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-sm-9">
          <h3>
Hợp tác với các nhà lãnh đạo doanh nghiệp</h3>
          <p>Phát triển các mối quan hệ chiến lược, lâu dài, thành công giữa khách hàng và nhà cung cấp, dựa trên việc đạt được các phương pháp thực hành tốt nhất và lợi thế cạnh tranh bền vững. Trong mô hình đối tác kinh doanh, các chuyên gia nhân sự làm việc chặt chẽ với các lãnh đạo doanh nghiệp và quản lý trực tiếp để đạt được các mục tiêu chung của tổ chức.</p>
        </div>
       <!--  <div class="col-md-2 col-sm-3">
          <a href="#" class="btn btn-primary">Read More</a>
        </div> -->
      </div>
    </div>
  </section>
  
  <section id="content">
  
  
  <div class="container">
        <div class="row">
      <div class="col-md-12">
        <div class="aligncenter"><h2 class="aligncenter">
Công ty</h2><!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, doloribus omnis minus ovident, doloribus omnis minus temporibus perferendis nesciunt.. --></div>
        <br/>
      </div>
    </div>

    <?php 
      $sql = "SELECT * FROM `tblcompany`";
      $mydb->setQuery($sql);
      $comp = $mydb->loadResultList();


      foreach ($comp as $company ) {
        # code...
    
    ?>
            <div class="col-sm-4 info-blocks">
                <i class="icon-info-blocks fa fa-building-o"></i>
                <div class="info-blocks-in">
                    <h3><?php echo $company->COMPANYNAME;?></h3>
                    <!-- <p><?php echo $company->COMPANYMISSION;?></p> -->
                    <p>
Địa chỉ :<?php echo $company->COMPANYADDRESS;?></p>
                    <p>
Liên hệ với tôi :<?php echo $company->COMPANYCONTACTNO;?></p>
                </div>
            </div>

    <?php } ?> 
  </div>
  </section>
  
  <section class="section-padding gray-bg">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-title text-center">
            <h2 >Công việc phổ biến</h2>  
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 ">
          <?php 
            $sql = "SELECT * FROM `tblcategory`";
            $mydb->setQuery($sql);
            $cur = $mydb->loadResultList();

            foreach ($cur as $result) {
              echo '<div class="col-md-3" style="font-size:15px;padding:5px">* <a href="'.web_root.'index.php?q=category&search='.$result->CATEGORY.'">'.$result->CATEGORY.'</a></div>';
            }

          ?>
        </div>
      </div>
 
    </div>
  </section>    
  <section id="content-3-10" class="content-block data-section nopad content-3-10">
  <div class="image-container col-sm-6 col-xs-12 pull-left">
  <img src="plugins/home-plugins/img/doi1.png" alt="showcase image">
  </div>

  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6 col-sm-offset-6 col-xs-12 content">
        <div class="editContent">
          <h3>
Đội của chúng tôi</h3>
        </div>
        <div class="editContent"  style="height:235px;">
          <p> 
          &nbsp;&nbsp;Thái độ "một đội" của chúng tôi phá vỡ rào cản và giúp chúng tôi tham gia hiệu quả như nhau từ cấp C đến tiền tuyến. Phong cách làm việc hợp tác của chúng tôi nhấn mạnh đến tinh thần đồng đội, sự tin tưởng và sự khoan dung đối với những ý kiến ​​​​khác nhau. Mọi người nói với chúng tôi rằng chúng tôi là người thực tế, dễ gần và vui vẻ.<br/><br/>

          &nbsp;&nbsp;Chúng tôi đam mê kết quả thực sự của khách hàng và động lực hành động thực tế bắt đầu từ 8 giờ sáng Thứ Hai và không ngừng nghỉ. Chúng tôi tập hợp khách hàng bằng năng lượng lan truyền của mình để tạo ra sự thay đổi.<br/><br/>

          &nbsp;&nbsp;
Và chúng tôi không bao giờ đi một mình. Chúng tôi hỗ trợ và được hỗ trợ để phát triển các câu chuyện về kết quả cá nhân của riêng mình. Chúng tôi cân bằng giữa thách thức và đồng sáng tạo với khách hàng của mình, xây dựng năng lực nội bộ cần thiết để họ tạo ra kết quả có thể lặp lại. </p>
        </div> 
      </div>
    </div><!-- /.row-->
  </div><!-- /.container -->
</section>
  
  <div class="about home-about">
        <div class="container">
            
            <div class="row">
              <div class="col-md-4">
                <!-- Heading and para -->
                <div class="block-heading-two">
                  <h3><span>
Chương trình</span></h3>
                </div>
                <p>"Cuộc sống không phải là về việc đợi chờ, mà là về việc tìm kiếm và tận hưởng những cơ hội mới." <br><br></p>
              </div>
              <div class="col-md-4">
                <div class="block-heading-two">
                  <h3><span>
Tin mới nhất</span></h3>
                </div>    
                <!-- Accordion starts -->
                <div class="panel-group" id="accordion-alt3">
                 <!-- Panel. Use "panel-XXX" class for different colors. Replace "XXX" with color. -->
                  <div class="panel"> 
                  <!-- Panel heading -->
                   <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseOne-alt3">
                      <i class="fa fa-angle-right"></i>
                      ECB: AI chưa đe dọa việc làm
                      </a>
                    </h4>
                   </div>
                   <div id="collapseOne-alt3" class="panel-collapse collapse">
                    <!-- Panel body -->
                    <div class="panel-body">
                    Ngân hàng Trung ương châu Âu (ECB) công bố nghiên cứu cho thấy trí tuệ nhân tạo (AI) có thể làm giảm thu nhập, chứ chưa đe dọa việc làm.
                    </div>
                   </div>
                  </div>
                  <div class="panel">
                   <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseTwo-alt3">
                      <i class="fa fa-angle-right"></i> 
                      Những bà nội trợ góp sức cho tương lai của AI
                      </a>
                    </h4>
                   </div>
                   <div id="collapseTwo-alt3" class="panel-collapse collapse">
                    <div class="panel-body">
                    TRUNG QUỐC - Ba năm trước, He Jie là một bà nội trợ sống nhờ mức lương khiêm tốn của chồng nhưng nay cô là một phần không thể thiếu trong ngành công nghiệp AI đang bùng nổ.
                    </div>
                   </div>
                  </div>
                  <div class="panel">
                   <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseThree-alt3">
                      <i class="fa fa-angle-right"></i> 10 công việc thu nhập cao, ít căng thẳng

                      </a>
                    </h4>
                   </div>
                   <div id="collapseThree-alt3" class="panel-collapse collapse">
                    <div class="panel-body">
                    Nhà kinh tế môi trường, kỹ sư pin nhiên liệu hay người vẽ bản đồ là các công việc được đánh giá ít áp lực, thu nhập hàng năm khoảng 100.000 USD.
                    </div>
                   </div>
                  </div>
                  <div class="panel">
                   <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseFour-alt3">
                      <i class="fa fa-angle-right"></i> Lao động bị cắt giảm chật vật cầm cự
                      </a>
                    </h4>
                   </div>
                   <div id="collapseFour-alt3" class="panel-collapse collapse">
                    <div class="panel-body">
                    Bị cắt giảm vì thiếu đơn hàng, gần một năm gõ cửa mọi công ty trong khu công nghệ cao quận 9 nhưng đều bị từ chối, anh Khắc Thông chấp nhận gác chuyên môn kỹ thuật để đi phụ hồ.
                   </div>
                  </div>
                </div>
                <!-- Accordion ends -->
                
              </div>
              
              <div class="col-md-4">
                <div class="block-heading-two">
                  <h3><span>Nhận xét</span></h3>
                </div>  
                     <div class="testimonials">
                    <div class="active item">
                      <blockquote><p>Tính năng tìm kiếm của trang web này cũng rất hiệu quả.</p></blockquote>
                      <div class="carousel-info">
                      <img alt="" src="plugins/home-plugins/img/damdoc.jpg" class="pull-left">
                      <div class="pull-left">
                        <span class="testimonials-name">Nguyễn Văn Thắng</span>
                        <span class="testimonials-post">Giám đốc Kỹ thuật</span>
                      </div>
                      </div>
                    </div>
                  </div>
              </div>
              
            </div>
            
                        
             
            <br>
           
            </div>
            
          </div>