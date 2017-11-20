<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\NoticeModel;
use Common\Common\MyPage;
/**
* 实验室公告管理
* @param: $GLOBALS
* @return:
*/
class NoticeController extends Controller{
	/**
	* 获取所有公告信息
	* @param: variable
	* @return:
	*/
	public function getallmes(){
		$res=new NoticeModel();
		
		$count=$res->count();
		$page_obj=MyPage::GetPage($count,4);
		$mes = $res->field(true)->order('time')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		//$mes=$res->GetAllMes();
		
		
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
		$this->display();
	}
	/**
	* 获取具体公告信息
	* @param: variable
	* @return:
	*/
	public function getdetail($notice_id){
		$res=new NoticeModel();
		$mes=$res->where('notice_id='.$notice_id)->select();
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	
	
}