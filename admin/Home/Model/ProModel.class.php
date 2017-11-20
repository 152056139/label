<?php
namespace Home\Model;
use Think\Model;
/**
* 项目数据库操作
*/
class ProModel extends Model{
	/*select mem_name from tp_member where mem_id in(select mem_id from tp_pro where pro_id=15 );*/
	/**
	* 函数项目成员
	* @param: variable
	* @return:
	*/
	/*public function GetProNum(){
		$sql_1="select mem_id from tp_pro where pro_id=15";
		$mes=$this->query($sql_1);
		trim($mes,)
		//dump($mes);
		return $mes;
		//$sql_2="select mem_name from tp_member where mem_id in( );";
	}*/
	/**
	* 获取还未开始的项目
	* @param: variable
	* @return:
	*/
	public function GetNoDoingPro(){
		return $this->where('pro_type=0')->select();
	}
	public function GetSixNoDoingPro(){
		return $this->where('pro_type=0')->limit(6)->select();
	}
	
	/**
	* 获取正在进行的项目
	* @param: variable
	* @return:
	*/
	public function GetUnDoingPro(){
		return $this->where('pro_type=1')->select();
	}
	public function GetSixUnDoingPro(){
		return $this->where('pro_type=1')->limit(6)->select();
	}
	
	/**
	*获取正在进行的项目的总数
	* @param: variable
	* @return:
	*/
	public function GetCount($type){
		$sql="select count(*) from tp_pro where pro_type=".$type;
		return $this->query($sql);
	}
	
	/**
	* 获取已经完成的数据
	* @param: variable
	* @return:
	*/
	public function GetHaveDonePro(){
		return $this->where('pro_type=2')->select();
	}
	public function GetSixHaveDonePro(){
		return $this->where('pro_type=2')->limit(6)->select();
	}
	/**
	 * 添加项目
	 * @param: variable
	 * @return:
	 */
	public function AddProHandle(){
		if(!empty($_POST['mem_id'])){
			$arr=$_POST['mem_id'];
			for($i=0;$i<count($arr);$i++){
				$str.=$arr[$i].",";
			}
			$str=substr($str,0,strlen($str)-1);
		}
		//dump($str);
		 $arr=array(
		 		'pro_name'=>$_POST['pro_name'],
		 		'start_time'=>$_POST['start_time'],
		 		'end_time'=>$_POST['end_time'],
		 		'manage'=>$_POST['manage'],
		 		'teacher_id'=>$_POST['teacher_id'],
		 		'pro_sources'=>$_POST['pro_sources'],
		 		'pro_introduce'=>$_POST['pro_introduce'],
		 		'mem_id'=>$str,
		 		'pro_type'=>$_POST['pro_type'],
		 		'image' => $_POST['image'],
		 		
		 );
		 $arr1=array(
		 		'pro_name'=>$_POST['pro_name'],
		 		'start_time'=>$_POST['start_time'],
		 		'end_time'=>$_POST['end_time'],
		 		'manage'=>$_POST['manage'],
		 		'teacher_id'=>$_POST['teacher_id'],
		 		'pro_sources'=>$_POST['pro_sources'],
		 		'pro_introduce'=>$_POST['pro_introduce'],
		 		'mem_id'=>$str,
		 		'pro_type'=>$_POST['pro_type'],
		 		
		 		 
		 );
		 if(!empty($_POST['image'])){
		 	$res=$this->add($arr);
		 	if($res){
		 		return 1;
		 	}else{
		 		return -1;
		 	}
		 }else{
		 	$res=$this->add($arr1);
		 	if($res){
		 		return 1;
		 	}else{
		 		return -1;
		 	}
		 }
		 
	}
	/**
	* 获取实验室成员id,名字
	* @param: variable
	* @return:
	*/
	public function GetMemIdName(){
		$sql="select mem_id,mem_name from tp_member";
		return $res=$this->query($sql);
		
	} 
	/**
	* 修改还未开始的项目
	* @param: variable
	* @return:
	*/
	public function ModifyNodoingPro($pro_id){
		return $this->where('pro_id='.$pro_id)->select();
	}
	public function ModifyUndoingPro($pro_id){
		return $this->where('pro_id='.$pro_id)->select();
	}
	public function ModifyHaveDonePro($pro_id){
		return $this->where('pro_id='.$pro_id)->select();
	}
	/**
	 * 修改还未开始的项目确认
	 * @param: variable
	 * @return:
	 */
	public function ModifyNodoingProHandle(){
		$arr=array(
				'pro_name'=>$_POST['pro_name'],
				'start_time'=>$_POST['start_time'],
				'end_time'=>$_POST['end_time'],
				'manage'=>$_POST['manage'],
				'teacher_id'=>$_POST['teacher_id'],
				'pro_sources'=>$_POST['pro_sources'],
				'mem_id'=>$_POST['mem_id'],
				'pro_introduce'=>$_POST['pro_introduce'],
				'pro_type'=>$_POST['pro_type'],
				'image' => $_POST['image'],
				
		);
		$arr1=array(
				'pro_name'=>$_POST['pro_name'],
				'start_time'=>$_POST['start_time'],
				'end_time'=>$_POST['end_time'],
				'manage'=>$_POST['manage'],
				'teacher_id'=>$_POST['teacher_id'],
				'pro_sources'=>$_POST['pro_sources'],
				'mem_id'=>$_POST['mem_id'],
				'pro_introduce'=>$_POST['pro_introduce'],
				'pro_type'=>$_POST['pro_type'],
				'image' => $_POST['image'],
		
		);
		if(!empty($_POST['image'])){
			$res=$this->where('pro_id='.$_POST['pro_id'])->save($arr);
			if($res){
				return 1;
			}else{
				return -1;
			}
		}else{
			$res=$this->where('pro_id='.$_POST['pro_id'])->save($arr1);
			if($res){
				return 1;
			}else{
				return -1;
			}
		}
		
	}
	/**
	 * 删除项目
	 * @param: variable
	 * @return:
	 */
	public function DelPro($pro_id){
		$res=$this->delete($pro_id);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
}