<?php
namespace Home\Model;
use Think\Model;
class EquipmentModel extends Model{
	/**
	 * 获取所有设备信息
	 * @param: variable
	 * @return:
	 */
	public function  GetAllEquip(){
		$sql="select * from tp_equipment";
		return $this->query($sql);
	}
	/**
	* 修改设备信息
	* @param: variable
	* @return:
	*/
	public function ModifyEquip($equip_id){
		
		return $this->where('equip_id='.$equip_id)->select();
	}
	/**
	* 修改信息确认
	* @param: variable
	* @return:
	*/
	public function ModifyEquipHandle(){
		$arr=array(
				'equip_no'=>$_POST['equip_no'],
				'equip_name'=>$_POST['equip_name'],
				'equip_describe'=>$_POST['equip_describe'],
				'equip_num'=>$_POST['equip_num'],
				
		);
		$res=$this->where('equip_id='.$_POST['equip_id'])->save($arr);
		if($res){
			return 1;
			
		}else{
			return -1;
		}
	}
	/**
	 * 添加设备
	 * @param: variable
	 * @return:
	 */
	public function AddEquip(){
		$arr=array(
				'equip_no'=>$_POST['equip_no'],
				'equip_name'=>$_POST['equip_name'],
				'equip_describe'=>$_POST['equip_describe'],
				'equip_num'=>$_POST['equip_num'],
		
		);
		$res=$this->add($arr);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 删除设备
	 * @param: variable
	 * @return:
	 */
	public function DelEquip($equip_id){
		$res=$this->delete($equip_id);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
}