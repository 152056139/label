<?php
namespace Home\Model;
use Think\Model;
/**
* 实验室公告数据管理
*/
class NoticeModel extends Model{
	/**
	* 获取实验公告信息
	* @param: variable
	* @return:
	*/
	public function GetAllMes(){
		
		return $this->select();
	}
	/**
	 * 修改实验室公告信息
	 * @param: variable
	 * @return:
	 */
	public function  ModifyNotice($notice_id){
		return $this->where('notice_id='.$notice_id)->select();
	}
	/**
	 * 修改信息确认
	 * @param: variable
	 * @return:
	 */
	public function ModifyNoticeHandle(){
		$arr=array(
				'title'=>$_POST['title'],
				'text'=>$_POST['text'],
				'mem_id'=>$_POST['mem_id'],
				'time'=>date('Y-m-d'),
		);
		//dump($_SESSION);
		$mes=$this->where('notice_id='.$_POST['notice_id'])->save($arr);
		if($mes){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 删除实验室公告
	 * @param: variable
	 * @return:
	 */
	public function DelNotice($notice_id){
		return $this->where('notice_id='.$notice_id)->delete();
	}
	/**
	 * 添加实验室公告
	 * @param: variable
	 * @return:
	 */
	public function AddNotice(){
		$arr=array(
				'title'=>$_POST['title'],
				'text'=>$_POST['text'],
				'mem_id'=>$_POST['mem_id'],
				'time'=>date('y-m-d'),
		);
		$mes=$this->add($arr);
		if($mes){
			return 1;
		}else{
			return -1;
		}
	}
	public function  GetFourMes(){
		$sql="select * from tp_notice order by time desc limit 4";
		return $this->query($sql);
	}
	
}