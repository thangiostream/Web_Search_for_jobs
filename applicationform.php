<section id="content">
  <div class="container content">     
 <?php
if (isset($_GET['search'])) {
# code...
$jobid = $_GET['search'];
}else{
$jobid = '';

}
$sql = "SELECT * FROM `tblcompany` c,`tbljob` j WHERE c.`COMPANYID`=j.`COMPANYID` AND JOBID LIKE '%" . $jobid ."%' ORDER BY DATEPOSTED DESC" ;
$mydb->setQuery($sql);
$result = $mydb->loadSingleResult();

?> 



 <p> <?php check_message();?></p>     
<?php 
if (isset($_SESSION['APPLICANTID'])) {
?>
    <div class="col-sm-12">
                   <div class="row">
                    <h2 class=" " >
Chi tiết công việc</h2>
                     <div class="panel">
                         <div class="panel-header">
                              <div style="border-bottom: 1px solid #ddd;padding: 10px;font-size: 25px;font-weight: bold;color: #000;margin-bottom: 5px;"><a href="<?php echo web_root.'index.php?q=viewjob&search='.$result->JOBID;?>"><?php echo $result->OCCUPATIONTITLE ;?></a> 
                              </div> 
                         </div>
                         <div class="panel-body">
                                  <div class="row contentbody">
                                        <div class="col-sm-6">
                                            <ul>
                                                <li><i class="fp-ht-bed"></i>
Số lượng nhân viên bắt buộc :<?php echo $result->REQ_NO_EMPLOYEES; ?></li>
                                                <li><i class="fp-ht-food"></i>
Lương : <?php echo number_format($result->SALARIES,2);  ?></li>
                                                <li><i class="fa fa-sun-"></i>
Thời gian làm nghề : <?php echo $result->DURATION_EMPLOYEMENT; ?></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6">
                                            <ul> 
                                                <li><i class="fp-ht-tv"></i>
Giới tính ưa thích : <?php echo $result->PREFEREDSEX; ?></li>
                                                <li><i class="fp-ht-computer"></i>
Lĩnh vực tuyển dụng : <?php echo $result->SECTOR_VACANCY; ?></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-12">
                                            <p>
Trình độ chuyên môn/Kinh nghiệm làm việc :</p>
                                             <ul style="list-style: none;"> 
                                                <li><?php echo $result->QUALIFICATION_WORKEXPERIENCE ;?></li> 
                                            </ul> 
                                        </div>
                                        <div class="col-sm-12"> 
                                            <p>J
Mô tả công việc :</p>
                                            <ul style="list-style: none;"> 
                                                 <li><?php echo $result->JOBDESCRIPTION ;?></li> 
                                            </ul> 
                                         </div>
                                        <div class="col-sm-12">
                                            <p>
Nhà tuyển dụng :  <?php echo  $result->COMPANYNAME; ?></p> 
                                            <p>
Vị trí :  <?php echo  $result->COMPANYADDRESS; ?></p>
                                        </div>
                                    </div>
                         </div>
                         <div class="panel-footer">
                              
Ngày đăng : <?php echo date_format(date_create($result->DATEPOSTED),'M d, Y'); ?>
                         </div>
                     </div>
                     
                       
                </div>
            </div> 
             <form class="form-horizontal span6 " action="process.php?action=submitapplication&JOBID=<?php echo $result->JOBID; ?>"  enctype="multipart/form-data"  method="POST">
            <div class="col-sm-12">
                <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-header">
                            <div style="border-bottom: 1px solid #ddd;padding: 10px;font-size: 25px;font-weight: bold;color: #000;margin-bottom: 5px;">
Đính kèm sơ yếu lý lịch của bạn ở đây.
                                <input name="JOBID" type="hidden" value="<?php echo $_GET['job'];?>">
                            </div>
                        </div>
                        <div class="panel-body"> 
                            <label class="col-md-2" for="picture" style="padding: 0;margin: 0;">
Tệp đính kèm:</label> 
                            <div class="col-md-10" style="padding: 0;margin: 0;">
                                <input id="picture" name="picture" type="file">
                                <input name="MAX_FILE_SIZE" type="hidden" value="1000000"> 
                            </div> 
                        </div>
                    </div> 
                </div> 
            </div>
           <div class="form-group">
            <div class="col-md-12"> 
                 <button class="btn btn-primary btn-sm pull-right" name="submit" type="submit" >
Nộp <span class="fa fa-arrow-right"></span></button>
              <a href="index.php" class="btn btn-info"><span class="fa fa-arrow-left"></span>&nbsp;<strong>Quay lại</strong></a> 
            </div>
           </div> 
        </form>
<?php }else{ ?>
  <form class="form-horizontal span6  wow fadeInDown" action="process.php?action=submitapplication&JOBID=<?php echo $result->JOBID; ?>"  enctype="multipart/form-data"  method="POST">
			<div class="col-sm-8"> 
                <div class="row">
                    <h2 class=" ">
Thông tin cá nhân</h2>   
                        <?php require_once('applicantform.php') ?>   
                 </div>
			</div>
			<div class="col-sm-4">
				   <div class="row">
                    <h2 class=" " >
Chi tiết công việc</h2>
                     <div class="panel">
                         <div class="panel-header">
                              <div style="border-bottom: 1px solid #ddd;padding: 10px;font-size: 25px;font-weight: bold;color: #000;margin-bottom: 5px;"><a href="<?php echo web_root.'index.php?q=viewjob&search='.$result->JOBID;?>"><?php echo $result->OCCUPATIONTITLE ;?></a> 
                              </div> 
                         </div>
                         <div class="panel-body">
                                  <div class="row contentbody">
                                        <div class="col-sm-6">
                                            <ul>
                                                <li><i class="fp-ht-bed"></i>
Số lượng nhân viên bắt buộc:<?php echo $result->REQ_NO_EMPLOYEES; ?></li>
                                                <li><i class="fp-ht-food"></i>
Lương : <?php echo number_format($result->SALARIES,2);  ?></li>
                                                <li><i class="fa fa-sun-"></i>
Thời gian làm nghề : <?php echo $result->DURATION_EMPLOYEMENT; ?></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6">
                                            <ul> 
                                                <li><i class="fp-ht-tv"></i>
Giới tính ưa thích:<?php echo $result->PREFEREDSEX; ?></li>
                                                <li><i class="fp-ht-computer"></i>
Lĩnh vực tuyển dụng: <?php echo $result->SECTOR_VACANCY; ?></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-12">
                                            <p>
Trình độ chuyên môn/Kinh nghiệm làm việc:</p>
                                             <ul style="list-style: none;"> 
                                                <li><?php echo $result->QUALIFICATION_WORKEXPERIENCE ;?></li> 
                                            </ul> 
                                        </div>
                                        <div class="col-sm-12"> 
                                            <p> Mô tả công việc:</p>
                                            <ul style="list-style: none;"> 
                                                 <li><?php echo $result->JOBDESCRIPTION ;?></li> 
                                            </ul> 
                                         </div>
                                        <div class="col-sm-12">
                                            <p>
Nhà tuyển dụng:  <?php echo  $result->COMPANYNAME; ?></p> 
                                            <p>
Vị trí : <?php echo  $result->COMPANYADDRESS; ?></p>
                                        </div>
                                    </div>
                         </div>
                         <div class="panel-footer">
                           
Ngày đăng : <?php echo date_format(date_create($result->DATEPOSTED),'M d, Y'); ?>
                         </div>
                     </div>
                     
                       
                </div>
			</div>
              <div class="col-sm-12">
                <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-header">
                            <div style="border-bottom: 1px solid #ddd;padding: 10px;font-size: 25px;font-weight: bold;color: #000;margin-bottom: 5px;">
Đính kèm sơ yếu lý lịch của bạn ở đây.
                            </div>
                        </div>
                        <div class="panel-body"> 
                            <label class="col-md-2" for="picture" style="padding: 0;margin: 0;">
Tệp đính kèm:</label> 
                            <div class="col-md-10" style="padding: 0;margin: 0;">
                                <input id="picture" name="picture" type="file">
                                <input name="MAX_FILE_SIZE" type="hidden" value="1000000"> 
                            </div> 
                        </div>
                    </div> 
                </div> 
            </div>
          <div class="form-group">
            <div class="col-md-12"> 
                 <button class="btn btn-primary btn-sm pull-right" name="submit" type="submit" >
Nộp <span class="fa fa-arrow-right"></span></button>
              <a href="index.php" class="btn btn-info"><span class="fa fa-arrow-left"></span>&nbsp;<strong>Quay lại</strong></a> 
            </div>
           </div>   
        </form> 
<?php } ?>
		</div> 
</section> 
  