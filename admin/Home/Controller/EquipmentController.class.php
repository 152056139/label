<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\EquipmentModel;
use Common\Common\MyPage;
use Common\Common\Session;
/**
* 设备管理
*/
class EquipmentController extends Controller{
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
	* 获取所有设备信息
	* @param: variable
	* @return:
	*/
	public function  getallequip(){
		$res=new EquipmentModel();
		//$mes=$res->GetAllEquip();
		$count=$res->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->field(true)->order('equip_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		$this->assign('page',$page_obj->show());
		
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 修改设备信息
	* @param: variable
	* @return:
	*/
	public function modifyequip($equip_id){
		$res=new EquipmentModel();
		$mes=$res->ModifyEquip($equip_id);
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
		
	}
	/**
	* 修改信息确认
	* @param: variable
	* @return:
	*/
	public function modifyequiphandle(){
		//dump($_POST);
		$res=new EquipmentModel();
		$mes=$res->ModifyEquipHandle();
		if($mes){
			$this->success('修改成功');
		}else{
			$this->error('修改失败');
		}
	}
	/**
	* 添加设备
	* @param: variable
	* @return:
	*/
	public function addequip(){
		$this->display();
	}
	/**
	* 添加设备处理
	* @param: variable
	* @return:
	*/
	public function addequiphandle(){
		$res=new EquipmentModel();
		$mes=$res->AddEquip();
		if($mes){
			$this->success('添加成功');
		}else{
			$this->error('添加失败');
		}
	}
	/**
	* 删除设备
	* @param: variable
	* @return:
	*/
	public function delequip($equip_id){
		$res=new EquipmentModel();
		$mes=$res->DelEquip($equip_id);
		if($mes){
			$this->success('删除成功');
		}else{
			$this->error('删除失败');
		}
	}
}