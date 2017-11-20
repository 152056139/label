<?php
namespace Home\Model;
use Think\Model;
/**
* 关于实验室数据库操作
*/
class AboutExpModel extends Model{
	/**
	* 获取实验室信息
	* @param: variable
	* @return:
	*/
	public function GetMes(){
		$sql="select * from tp_about_exp";
		return $mes=$this->query($sql);
	}
	public function GetiIntriduce1(){
	$sql="select exp_introduce from tp_about_exp where about_id=1";
		$mes=$this->query($sql);
		//dump($mes);
		return $mes;
	}
	public function  GetIntroduce(){
		$sql="select exp_introduce,exp_regulation,exp_manage from tp_about_exp where about_id=1";
		$mes=$this->query($sql);
		//dump($mes);
		return $mes;
	}
	/**
	* 修改实验室信息
	* @param: variable
	* @return:
	*/
	public function ModifyMes(){
		//$_POST['exp_introduce']=base64_encode($_POST['exp_introduce']);
		//$_POST['exp_regulation']=base64_encode($_POST['exp_regulation']);
		//$_POST['exp_manage']=base64_encode($_POST['exp_manage']);
		$arr=array(
				'exp_introduce'=>$_POST['exp_introduce'],
				'exp_regulation'=>$_POST['exp_regulation'],
				'exp_stu_enviroment'=>$_POST['exp_stu_enviroment'],
				'exp_manage'=>$_POST['exp_manage'],
				'exp_image_1'=>$_POST['exp_image_1'],
				'exp_image_2'=>$_POST['exp_image_2'],
				'exp_image_3'=>$_POST['exp_image_3'],
				'exp_image_4'=>$_POST['exp_image_4'],
		);
		
		//$res=$this->where('about_id='.$_POST['about_id'])->save($arr);
		$mes=$this->create();
		//$res=M()->execute("update tp_about_exp set exp_introduce='".$_POST['exp_introduce']."' where about_id=".$_POST['about_id']);
		$res=$this->where('about_id='.$_POST['about_id'])->save($mes);
		//($this->_sql());
		//exit();
		//echo "测试:".$mes;
		dump($mes);
		if(!empty($res)){
			return 1;
		}else{
			return -1;
		}
	}
	
}