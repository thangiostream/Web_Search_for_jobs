<?php 
	  if (!isset($_SESSION['ADMIN_USERID'])){
      redirect(web_root."admin/index.php");
     } 
?>
	<div class="row">
       	 <div class="col-lg-12">
            <h1 class="page-header">Danh sách vị trí tuyển dụng  <a href="index.php?view=add" class="btn btn-primary btn-xs  ">  <i class="fa fa-plus-circle fw-fa"></i> Thêm vị trí tuyển dụng việc làm</a>  </h1>
       		</div>
        	<!-- /.col-lg-12 -->
   		 </div>
	 		    <form action="controller.php?action=delete" Method="POST">  	
			     <div class="table-responsive">					
				<table id="dash-table" class="table table-striped table-bordered table-hover"  style="font-size:12px" cellspacing="0">
				
				  <thead>
				  	<tr>

				  		<!-- <th>No.</th> -->
				  		<th>Tên công ty</th> 
				  		<th>Chức danh nghề nghiệp</th> 
				  		<th>Yêu cầu không. của nhân viên</th> 
				  		<th>Lương</th> 
				  		<th>Thời gian làm nghề</th> 
				  		<th>Trình độ chuyên môn/Kinh nghiệm làm việc</th> 
				  		<th>Mô tả công việc</th> 
				  		<th>Giới tính ưa thích</th> 
				  		<th>Lĩnh vực vị trí tuyển dụng</th> 
				  		<th>Tình trạng công việc</th> 
				  		 <th width="10%" align="center">Hoạt động</th>
				  	</tr>	
				  </thead> 
				  <tbody>
				  	<?php 
				  	 // `COMPANYID`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`
				  		$mydb->setQuery("SELECT * FROM `tbljob` j, `tblcompany` c WHERE j.COMPANYID=c.COMPANYID");
				  		$cur = $mydb->loadResultList(); 
						foreach ($cur as $result) {
				  		echo '<tr>';
				  		// echo '<td width="5%" align="center"></td>';
				  		// echo '<td>
				  		//      <input type="checkbox" name="selector[]" id="selector[]" value="'.$result->CATEGORYID. '"/>
				  		// 		' . $result->CATEGORIES.'</a></td>';
				  			echo '<td>' . $result->COMPANYNAME.'</td>';
				  			echo '<td>' . $result->OCCUPATIONTITLE.'</td>';
				  			echo '<td>' . $result->REQ_NO_EMPLOYEES.'</td>';
				  			echo '<td>' . $result->SALARIES.'</td>';
				  			echo '<td>' . $result->DURATION_EMPLOYEMENT.'</td>';
				  			echo '<td>' . $result->QUALIFICATION_WORKEXPERIENCE.'</td>';
				  			echo '<td>' . $result->JOBDESCRIPTION.'</td>';
				  			echo '<td>' . $result->PREFEREDSEX.'</td>';
				  			echo '<td>' . $result->SECTOR_VACANCY.'</td>';
				  			echo '<td>' . $result->JOBSTATUS.'</td>';
				  		echo '<td align="center"><a title="Edit" href="index.php?view=edit&id='.$result->JOBID.'" class="btn btn-primary btn-xs  ">  <span class="fa fa-edit fw-fa"></a>
				  		     <a title="Delete" href="controller.php?action=delete&id='.$result->JOBID.'" class="btn btn-danger btn-xs  ">  <span class="fa  fa-trash-o fw-fa "></a></td>';
				  		// echo '<td></td>';
				  		echo '</tr>';
				  	} 
				  	?>
				  </tbody>
					
				</table>
						<div class="btn-group">
				 <!--  <a href="index.php?view=add" class="btn btn-default">New</a> -->
					<?php
					if($_SESSION['ADMIN_ROLE']=='Administrator'){
					// echo '<button type="submit" class="btn btn-default" name="delete"><span class="glyphicon glyphicon-trash"></span> Delete Selected</button'
					; }?>
				</div>
			
			
				</form>
	
 <div class="table-responsive">	 