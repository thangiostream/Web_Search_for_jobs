
<?php
require_once ("../../include/initialize.php");
 	 if (!isset($_SESSION['USERID'])){
      redirect(web_root."admin/index.php");
     }


$action = (isset($_GET['action']) && $_GET['action'] != '') ? $_GET['action'] : '';

switch ($action) {
	case 'add' :
	doInsert();
	break;
	
	case 'edit' :
	doEdit();
	break;
	
	case 'delete' :
	doDelete();
	break;

 
	}
   
	function doInsert(){
		if(isset($_POST['save'])){


		if ( $_POST['AUTOSTART'] == "" ) {
			$messageStats = false;
			message("Tất cả các trường là bắt buộc!","error");
			redirect('index.php?view=add');
		}else{	
			$autonumber = New Autonumber();
			$autonumber->AUTOSTART	= $_POST['AUTOSTART'];
			$autonumber->AUTOINC	= $_POST['AUTOINC'];
			$autonumber->AUTOEND	= $_POST['AUTOEND'];
			$autonumber->AUTOKEY	= $_POST['AUTOKEY'];
			$autonumber->create();

			message("Số tự động mới được tạo thành công!", "success");
			redirect("index.php");
			
		} 
		}

	}

	function doEdit(){
		if(isset($_POST['save'])){

			$autonumber = New Autonumber();
			$autonumber->AUTOSTART	= $_POST['AUTOSTART'];
			$autonumber->AUTOINC	= $_POST['AUTOINC'];
			$autonumber->AUTOEND	= $_POST['AUTOEND'];
			$autonumber->AUTOKEY	= $_POST['AUTOKEY'];
			$autonumber->update($_POST['AUTOID']);

			message(" Số tự động đã được cập nhật!", "success");
			redirect("index.php");
		}

	}


	function doDelete(){
		// if (isset($_POST['selector'])==''){
		// message("Select a records first before you delete!","error");
		// redirect('index.php');
		// }else{

			$id = $_GET['id'];

			$autonumber = New Autonumber();
			$autonumber->delete($id);

			message("Số tự động đã bị xóa!","info");
			redirect('index.php');

		// $id = $_POST['selector'];
		// $key = count($id);

		// for($i=0;$i<$key;$i++){

		// 	$autonumber = New autonumber();
		// 	$autonumber->delete($id[$i]);

		// 	message("autonumber already Deleted!","info");
		// 	redirect('index.php');
		// }
		// }
		
	}
?>