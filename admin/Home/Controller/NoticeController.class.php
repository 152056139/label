<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\NoticeModel;
use Common\Common\MyPage;
use Common\Common\Session;
/**
* 实验室公告管理
* @param: $GLOBALS
* @return:
*/
class NoticeController extends Controller{
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
	/**
	* 获取所有公告信息
	* @param: variable
	* @return:
	*/
	public function getallmes(){
		//dump($_SESSION);
		$res=new NoticeModel();
		//$mes=$res->GetAllMes();
		$count=$res->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->field(true)->order('notice_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 修改实验室公告信息
	* @param: variable
	* @return:
	*/
	public function  modifynotice($notice_id){
		$res=new NoticeModel();
		$mes=$res->ModifyNotice($notice_id);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 修改信息确认
	* @param: variable
	* @return:
	*/
	public function modifynoticehandle(){
		//dump($_POST);
		$res=new Noticemodel();
		$mes=$res->ModifyNoticeHandle();
		if($mes>0){
			$this->success('修改成功');
		}else{
			$this->error('修改失败');
		}
	}
	/**
	* 删除实验室公告
	* @param: variable
	* @return:
	*/
	public function delnotice($notice_id){
		$res=new NoticeModel();
		$mes=$res->DelNotice($notice_id);
		if($mes>0){
			$this->success('删除成功');
		}else{
			$this->error('删除失败');
		}
	}
	/**
	* 添加实验室公告
	* @param: variable
	* @return:
	*/
					
	public function addnotice(){
		$this->display();
	}
					
	/**
	* 添加信息处理
	* @param: variable
	* @return:
	*/
	public function addnoticehandle(){
		//dump($_POST);
		$res=new NoticeModel();
		$mes=$res->AddNotice();
		if($mes>0){
			$this->success('添加成功');
		}else{
			$this->error('添加失败');
		}
	}
	
}