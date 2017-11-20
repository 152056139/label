<?php
namespace Home\Controller;
use Think\Controller;
use Common\Common\Session;
use Home\Model\AdminuserModel;
use Common\Common\MyPage;
use Common\Common\Manage;
/**
* 管理员管理
*/
class UserController extends Controller{
	/**
	* 默认入口
	* @param: variable
	* @return:
	*/
	public function login(){

		if(Session::IssetSession()>0){

			$this->display('Index/index');
		}else{

		if(!empty($_POST['user_name'])&&!empty($_POST['user_password'])){

				$mes=new AdminuserModel('tp_adminuser');
				if($mes->CheckUser()>0){
					$_SESSION['user_name']=$_POST['user_name'];
					$_SESSION['user_password']=md5($_POST['user_password']);
					$_SESSION['user_id']=$mes->GetOnlineAdminId($_POST['user_name']);
					$this->success("登录成功,正在进入后台主页...",U('Index/index'),3);
				}else{
					$this->error("登录失败,正在跳转到登录页面...",U('User/login'),3);
				}

			}
			else{
				$this->display('User/login');
			}
		}
	}
	/**
	* 管理员退出
	* @param: variable
	* @return:
	*/
 	public function exitadmin(){
		Session::ClearSession();
		$this->display('User/login');
	}
	/**
	* 获取所有管理员
	* @param: variable
	* @return:
	*/
	public function getalladmin(){
		if(Session::IssetSession()>0){
			$res=new AdminuserModel('tp_adminuser');
			$count=$res->count();

			$page_obj=MyPage::GetPage($count);
			$this->assign('page',$page_obj->show());
			$mes=$res->GetAllAdmin();
			//dump($mes);
			$this->assign('mes',$mes);
			$this->display();

		}
	}
	/**
	* 添加管理员
	* @param: variable
	* @return:
	*/
	public function addadmin(){
		$this->display();
	}
	/**
	* 添加管理员处理
	* @param: variable
	* @return:
	*/
	public function addadminhandle(){
		$res=new AdminuserModel();
		$flag=$res->Addadmin();
		if($flag>0){
			$this->success('添加成功');
			//$this->display('User/addadmin');
		}

	}
	/**
	* 删除管理员
	* @param: variable
	* @return:
	*/
	public  function deladmin($id){
		//dump($id);
		$mes=new AdminuserModel('tp_adminuser');
		$flag=$mes->DelAdmin($id);
		if($flag>0){
			$this->success('删除成功');
		}else{
			$this->error('删除失败');
		}
	}
	/**
	* 修改管理员信息
	* @param: variable
	* @return:
	*/
	public function modifyadmin($user_id){
		$res=new AdminuserModel();
		$mes=$res->ModifyAdmin($user_id);
		//dump($mes);
		$this->assign('res',$mes);
		$this->display();
	}
	/**
	* 修改管理员信息确认
	* @param: variable
	* @return:
	*/
	public function modifyadminhandle($id){
		$res=new AdminuserModel();
		$mes=$res->ModifyAdminHandle($id);
		//dump($mes);
		if($mes>0){
			echo '修改成功';
		}
	}
	/**
	* 我的信息修改
	* @param: variable
	* @return:
	*/
	public function getmymes($user_id){
		$res=new AdminuserModel();
		$mes=$res->GetMyMes($user_id);
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 我的信息修改处理
	* @param: variable
	* @return:
	*/
	public  function  modifymymes(){
		$res=new AdminuserModel();
		$flag=$res->ModifyMyMes();
		if($flag>0){
			$this->success("修改成功");
		}elseif($flag==-2){
			$this->error("两次密码输入不一致");
		}else{
			$this->error("修改失败");
		}
	}
}
