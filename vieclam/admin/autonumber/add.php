
<?php
     if (!isset($_SESSION['USERID'])){
      redirect(web_root."admin/index.php");
     }

?>
 <form class="form-horizontal span6" action="controller.php?action=add" method="POST">

           <div class="row">
         <div class="col-lg-12">
            <h1 class="page-header">Thêm số tự động mới</h1>
          </div>
          <!-- /.col-lg-12 -->
       </div> 
                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "AUTOSTART">Bắt đầu:</label>

                      <div class="col-md-8">
                         <input class="form-control input-sm" id="AUTOSTART" name="AUTOSTART" placeholder=
                            "Bắt đầu" type="text" value="">
                      </div>
                    </div>
                  </div>

                     <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "AUTOINC">INC:</label>

                      <div class="col-md-8">
                         <input class="form-control input-sm" id="AUTOINC" name="AUTOINC" placeholder=
                            "INC" type="text" value="">
                      </div>
                    </div>
                  </div>

                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "AUTOEND">Kết thúc:</label>

                      <div class="col-md-8">
                         <input class="form-control input-sm" id="AUTOEND" name="AUTOEND" placeholder=
                            "Kết thúc" type="text" value="">
                      </div>
                    </div>
                  </div>

                     <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "AUTOKEY">Khoá:</label>

                      <div class="col-md-8">
                         <input class="form-control input-sm" id="AUTOKEY" name="AUTOKEY" placeholder=
                            "Khoá" type="text" value="">
                      </div>
                    </div>
                  </div>




            
             <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "idno"></label>

                      <div class="col-md-8">
                         <button class="btn btn-primary btn-sm" name="save" type="submit" ><span class="fa fa-save fw-fa"></span> Lưu</button>
                      <!-- <a href="index.php" class="btn btn-info"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;<strong>Back</strong></a> -->
                     
                     </div>
                    </div>
                  </div> 

        <div class="form-group">
                <div class="rows">
                  <div class="col-md-6">
                    <label class="col-md-6 control-label" for=
                    "otherperson"></label>

                    <div class="col-md-6">
                   
                    </div>
                  </div>

                  <div class="col-md-6" align="right">
                   

                   </div>
                  
              </div>
              </div>
          
        </form>
      
 