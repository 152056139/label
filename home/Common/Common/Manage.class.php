<?php

namespace Common\Common;
use Home\Model\AdminuserModel;
/**
* 管理员类
*/
class Manage {
	/**
	 * 获取管理员用户名
	 * @param: variable
	 * @return:
	 */
	public function GetAllManage(){
		$res=new AdminuserModel();
		$sql="select * from tp_adminuser";
		$mes=$res->query($sql);
		return $mes;
	}
	/**
	* 获取单个管理员信息
	* @param: variable
	* @return:
	*/
	public function GetOneAdmin($id){
		$res = new AdminuserModel();
		$sql="select * from tp_adminuser where id=".$id;
		$mes=$res->query($sql);
		return $mes;
	}
	/**
	* 获取$user_limit_id
	* @param: variable
	* @return:
	*/
	public function GetUserLimitId($user_id){
		$res=new AdminuserModel();
		$sql="select user_limit_id from tp_adminuser where user_id=".$user_id;
		return $res->query($sql);
	}
	/**
	* 修改管理员为在线状态
	* @param: variable
	* @return:1 在线      -1 非在线
	*/
	public function ModifyOnline(){
		if(!empty($_SESSION)){
			$res=new AdminuserModel();
			$arr=array(
					'is_online'=>1,
			);
			$res=$res->where('user_id='.$_SESSION['user_id'])->save();
			if($res){
				return 1;
			}else{
				return -1;
			}
		}
	}
}