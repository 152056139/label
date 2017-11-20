<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\AdminuserModel;
use Common\Common\Session;
use Common\Common\Manage;
class IndexController extends Controller {
    public function index(){
    	Manage::ModifyOnline();
    	$res=new AdminuserModel();
    	$mes=$res->getmes();
    	//获取登录用户权限,并根据权限显示对应菜单栏
    	$limit=$res->getuserlimitid();
    	$user_limit_id=$limit[0]['user_limit_id'];
    	$auth=D('admin_limit')->where('user_limit_id='.$user_limit_id)->find();
    	$auth_ids=$auth['role_auth_id'];
    	
    	$sql="select * from tp_auth where auth_id in ({$auth_ids}) and auth_level=0";
    	$auth_menu_first=D('auth')->query($sql);
    	
    	$sql="select * from tp_auth where auth_id in ({$auth_ids}) and auth_level=1";
    	$auth_menu_next=D('auth')->query($sql);
    	
    	$this->assign('auth_menu_first',$auth_menu_first);
    	$this->assign('auth_menu_next',$auth_menu_next);
		$this->display();
    }
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
   
}