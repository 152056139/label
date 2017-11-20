<?php
namespace Home\Model;
use Think\Model;
use Common\Common\Manage;

/**
* 管理员数据库操作
*/
class AdminuserModel extends Model{
	protected $trueTableName = 'tp_adminuser';
	/**
	* 获取管理员信息
	* @param: variable
	* @return:
	*/
	public function  getmes(){
		return Manage::GetAllManage();
	}
	/**
	* 获取登录用户权限
	* @param: variable
	* @return:
	*/
	public function getuserlimitid(){
		return Manage::GetUserLimitId($_SESSION['user_id']);
	}
	/**
	 * 检测管理员是否存在
	 * @param: variable
	 * @return:1管理员存在,并修改为在线状态 -1管理员不存在
	 */
	public function CheckUser(){
		//dump($_GET);
		$mes=$this->field('user_password')->where("user_name='%s'",$_POST['user_name'])->table('tp_adminuser')->select();
		//print_r($mes);
		if(!empty($mes)){
			if($mes[0]['user_password']==md5($_POST['user_password'])){
				$this->table('tp_adminuser')->where("user_name='%s'",$_POST['user_name'])->is_online=1;
				$this->save();
				return 1;
			}else{
				echo "输入密码有误";
				return -1;
			}
		}else{
			echo '该用户不存在';
			return -1;
		}
	}
	/**
	* 获取已经登录的管理员id
	* @param: variable
	* @return:
	*/
	public function GetOnlineAdminId($user_name){
		$mes=$this->field('user_id')->where("user_name='%s'",$user_name)->table('tp_adminuser')->select();
		return $mes[0]['user_id'];
	}
	/**
	* 获取数据库中的所有管理员
	*/
	public function GetAllAdmin(){
		return $this->field('user_id,user_name,user_limit_id,lastlogin,is_online,email,true_name,is_first_login')->select();
	}
	/**
	* 添加管理员
	* @param: variable
	* @return:
	*/
	public function AddAdmin(){
		//此处没有限制user_limit_id
	if(!empty($_POST['user_name'])&&!empty($_POST['user_password'])&&!empty($_POST['user_password_1'])&&!empty($_POST['email'])&&!empty($_POST['true_name'])){
			if($_POST['user_password']==$_POST['user_password_1']){
			//$arr=array(
			//	"user_name"=>$_POST['user_name'],
			//	"password"=>$_POST['password'],
			//);
			$mes=Manage::GetAllManage();
			//dump($mes);
			$flag=1;
			for($i=0;$i<count($mes);$i++){
				if($mes[$i]['user_name']==$_POST['user_name']){
					echo "该用户名已经存在"; $flag=0; break;
				};
			}
			if($flag==1){
				$arr=array(
						"user_name"		=>		$_POST['user_name'],
						"user_password"		=>		md5($_POST['user_password']),
						"user_limit_id"     =>		$_POST['user_limit_id'],
						"email"				=>		$_POST['email'],
						"true_name"			=>		$_POST['true_name'],	
				);
				$res=$this->add($arr);
				//echo "进库";
				//dump($res);
				if($res){
					return 1;
				}
			}else{
				return -1;
			}
			}else{
				echo "两次密码不一致";
				return -1;
			}
	}
	else{
			echo "表单有误";
			return -1;
		}
	}
	/**
	 * 删除管理员信息
	 * @param: variable
	 * @return:
	 */
	public function DelAdmin($id){
		if($this->delete($id)){
			return 1;
		}else {
			return -1;
		}
	}
	/**
	* 修改管理员信息
	* @param: variable
	* @return:
	*/
	public function ModifyAdmin($user_id){
		$sql="select * from tp_adminuser where user_id={$user_id}";
		return $this->query($sql);
	}
	/**
	* 修改信息确认
	* @param: variable
	* @return:
	*/
	public function ModifyAdminHandle($id){
		$user_name=$_POST['user_name'];
		$password=md5($_POST['user_password']);
		$a=array(
				'user_name'=>$_POST['user_name'],
				'user_password'=>md5($_POST['user_password']),
				'user_limit_id'=>$_POST['user_limit_id'],
				'email'=>$_POST['email'],
				'true_name'=>$_POST['true_name'],
		);
		$res=$this->where('user_id='.$id)->save($a);
		return $res;
	}
	/**
	* 检测管理员为在线状态
	* @param: variable
	* @return:
	*/
	
	/**
	 * 我的信息修改
	 * @param: variable
	 * @return:
	 */
	public function GetMyMes($user_id){
		$res=$this->where('user_id='.$user_id)->select();
		return $res;
	}
	/**
	 * 我的信息修改处理
	 * @param: variable
	 * @return:1修改成功 -1修改时sql出错  -2修改两次密码不一致
	 */
	public  function  ModifyMyMes(){
		if($_POST['user_password']==$_POST['user_password_1']&&!empty($_POST['user_password'])&&!empty($_POST['user_password_1'])){
	
			$arr=array(
					'user_name'=>$_POST['user_name'],
					'user_password'=>md5($_POST['user_password']),
					'user_password_1'=>md5($_POST['user_password_1']),
					'email'=>$_POST['email'],
					'true_name'=>$_POST['true_name'],
			);
			$res=$this->where("user_id=".$_POST['user_id'])->save($arr);
			//dump($res);
			if($res){
				return 1;
			}else{
				return -1;
			}
		}else{
			return -2;
		}
	}
}