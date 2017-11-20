<?php
namespace Common\Common;
use Home\Model\AdminuserModel;
/**
* session管理
*/
class Session{
	/**
	* 检测管理员是否处于登录状态
	* @param: 
	* @return:1 有值		 -1 无值
	*/
	public static function IssetSession(){
		if(isset($_SESSION['user_name'])&&isset($_SESSION['user_password'])){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	* 管理员退出
	* @param: variable
	* @return:
	*/
	public static function ClearSession(){
		
		$res=new AdminuserModel();
		$arr=array(
				'is_online'=>0,
		);
		$mes=$res->where('user_id='.$_SESSION['user_id'])->save($arr);
		session_destroy();
	}
}