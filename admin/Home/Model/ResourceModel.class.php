<?php
namespace Home\Model;
use Think\Model;
/**
* 资源数据库管理
*/
class ResourceModel extends Model{
	
	/**
	* 获取所有资源
	* @param: variable
	* @return:
	*/
	public function GetPHPMes(){
		return $res=$this->where('study_direction_id=0')->select();
	}
	/**
	 * 添加项目处理
	 * @param: variable
	 * @return:
	 */
	public function AddResHandle(){
		$arr=array(
				'res_name'=>$_POST['res_name'],
				'study_direction_id'=>$_POST['study_direction_id'],
				'upload_user'=>$_POST['upload_user'],
				'is_approve'=>$_POST['is_approve'],
				'resource'=>$_POST['resource'],
		);
		$res=$this->add($arr);
		if($res){
			return 1;
		}else{
			return -1;
		}
	
	} 
	/**
	 * 删除资源信息
	 * @param: variable
	 * @return:
	 */
	public function DelMes($res_id){
		//$sql="delete from tp_resource where res_id={$res_id}";
		//$res=$this->query($sql);
		$res=$this->delete($res_id);
		//dump($res);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 获取未通过审核的资源信息
	 */
	public function GetNopassMes(){
		return $this->where('is_approve=0')->select();
	}
	/**
	 * 修改资源审核状态
	 * @param: variable
	 * @return:
	 */
	public function ModifyPass($res_id){
		$arr=array(
				'is_approve'=>1,
		);
		$res=$this->where('res_id='.$res_id)->save($arr);
		//dump($res);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
}