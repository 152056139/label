<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\ProModel;
use Common\Common\MyPage;
use Common\Common\Session;
use Common\Common\MyUpload;
/**
* 项目管理
*/
class ProController extends Controller{
	/**
	 * 系统默认入口
	 * @param: variable
	 * @return:
	 */
	public function login(){
		if(Session::IssetSession()>0){
			$this->display('Index/index');
		}else{
			$this->display('User/login');
		}
	}
	/**
	* 获取未开始的项目
	* @param: variable
	* @return:
	*/
	 public function getnodoingpro(){
	 	$res=new ProModel();
	 	$mes=$res->GetNoDoingPro();
	 	$count=$res->GetCount('0');
	 	$page_obj=MyPage::GetPage($count[0]['count(*)'],20);
	 	//dump($page_obj);
	 	$this->assign('page',$page_obj->show());
	 	$this->assign('mes',$mes);
	 	$this->display();
	 }
	 /**
	  * 获取正在进行的项目
	  * @param: $GLOBALS
	  * @return:
	  */
	 public function getundoingpro(){
	 	$res=new ProModel();
	 	$mes=$res->GetUnDoingPro();
	 	//dump($mes);
	 	//echo $mes[3]['mem_id'];
	 	//$sql="select mem_name from tp_member where mem_id in({$mes[3]['mem_id']})";
	 	//$meg=$res->query($sql);
	 	//dump($meg);

	 	$count=$res->GetCount('1');
	 	$page_obj=MyPage::GetPage($count[0]['count(*)']);
	 	$this->assign('page',$page_obj->show());
	 	//dump($mes);
	 	$this->assign('mes',$mes);
	 	$this->display();
	 }
	 /**
	 * 获取已经完成的项目
	 * @param: variable
	 * @return:
	 */
	 public function gethavedonepro(){
	 	$res=new ProModel();
	 	$mes=$res->GetHaveDonePro();
	 	$count=$res->GetCount('2');
	 	$page_obj=MyPage::GetPage($count[0]['count(*)']);
	 	$this->assign('page',$page_obj->show());
	 	//dump($mes);
	 	$this->assign('mes',$mes);
	 	$this->display();
	 }
	 /**
	 * 添加项目
	 * @param: variable
	 * @return:
	 */
	 public function addpro(){
	 	$res=new ProModel();
	 	$mes=$res->GetMemIdName();
	 	//dump($mes);
	 	$this->assign('mes',$mes);
	 	$this->display();
	 }
	 /**
	 * 添加项目处理
	 * @param: variable
	 * @return:
	 */
	 public function addprohandle(){
	 	//dump($_POST);
	 	MyUpload::upload_pro_file();
	 	$res=new ProModel();
	 	$flag=$res->AddProHandle();
	 	if($flag>0){
	 		$this->success("添加成功");
	 	}else{
	 		$this->error("添加失败");
	 	}

	 }
	 /**
	 * 修改还未开始的项目
	 * @param: variable
	 * @return:
	 */
	 public function  modifynodoingpro($pro_id){

	 	$res=new ProModel();
	 	$mes=$res->ModifyNodoingPro($pro_id);
	 	//dump($mes);
	 	$this->assign('mes',$mes);
	 	$this->display();
	 }
	 /**
	  * 修改还未开始的项目处理
	  * @param: variable
	  * @return:
	  */
	 public function  modifynodoingprohandle(){
	 	//dump($_POST);
	 	if(empty($_FILES['image']['size'])){
	 		$res=new ProModel();
	 		$flag=$res->ModifyNodoingProHandle();
	 		if($flag>0){
	 			echo "修改成功";
	 		}else{
	 			echo  "修改失败";
	 		}
	 	}else{
	 		MyUpload::upload_pro_file();
	 		$res=new ProModel();
	 		$flag=$res->ModifyNodoingProHandle();
	 		if($flag>0){
	 			echo "修改成功";
	 		}else{
	 			echo  "修改失败";
	 		}
	 	}

	 }

	 /**
	 * 删除项目
	 * @param: variable
	 * @return:
	 */
	 public function delpro($pro_id){
	 	$res=new ProModel();
	 	$flag=$res->DelPro($pro_id);
	 	if($flag>0){
	 		echo "删除成功";
	 	}else{
	 		echo "删除失败";
	 	}
	 }
}
