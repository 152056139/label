<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\ResourceModel;
use Common\Common\MyUpload;
use Common\Common\MyPage;
use Common\Common\Session;
/**
* 学习资源管理
*/
class ResourceController extends Controller{
	
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
	* 获取php资源信息
	* @param: variable
	* @return:
	*/
	
	public function getphpmes(){
		//dump($_SESSION);
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=0 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where("study_direction_id=0 AND is_approve=1")->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		
		$this->display();
	}
	/**
	 * 获取ios资源信息
	 * @param: variable
	 * @return:
	 */
	public function getiosmes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=1 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('study_direction_id=1 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	 * 获取android资源信息
	 * @param: variable
	 * @return:
	 */
	public function getandroidmes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=2 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('study_direction_id=2 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取前端资源信息
	* @param: variable
	* @return:
	*/
	public function getqianduanmes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=3 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('study_direction_id=3 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取java资源信息
	 * @param: variable
	* @return:
	*/
	public function getjavames(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=4 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('study_direction_id=4 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取美工资源信息
	 * @param: variable
	* @return:
	*/
	public function getmeigongmes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=5 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('study_direction_id=5 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/** 获取虚拟现实资源信息
	 * @param: variable
	* @return:
	*/
	public function getxunimes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=6 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('study_direction_id=6 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 获取php资源信息
	* @param: variable
	* @return:
	*/
	
	public function getnetmes(){
		//dump($_SESSION);
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=7 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where("study_direction_id=7 AND is_approve=1")->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 获取php资源信息
	* @param: variable
	* @return:
	*/
	
	public function getcorcppmes(){
		//dump($_SESSION);
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=8 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where("study_direction_id=8 AND is_approve=1")->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 获取php资源信息
	* @param: variable
	* @return:
	*/
	
	public function getothermes(){
		//dump($_SESSION);
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=9 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where("study_direction_id=9 AND is_approve=1")->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 删除资源信息
	* @param: variable
	* @return:
	*/
	public function delmes($res_id,$resource){
		$res=new ResourceModel();
		$flag=$res->DelMes($res_id);
		if($flag>0){
			$url='/expment'.$resource;
			$fileurl='.'.substr($url,8);
			@unlink($fileurl);
			$this->success('删除成功');
		}else{
			$this->error('删除失败');
		}
	}
	/**
	* 添加资源
	* @param: variable
	* @return:
	*/
	public function addres(){
		
		$session=$_SESSION;
		$this->assign('session',$session);
		$this->display();
	}
	/**
	* 添加资源处理
	* @param: variable
	* @return:
	*/
	public function addreshandle(){
			
			MyUpload::upload_video();
			if(!empty($_FILES['resource']['size'])){
			  // 	MyUpload::upload_video();
			   
			   	
			   	
				$res=new ResourceModel();
				$flag=$res->AddResHandle();
				
				if($flag>0){
					echo "添加资源成功";
				}else{
					echo "添加资源失败";
				}
			}
			else{
				$this->error('请上传资源');
			}
	}
	
	
	/**
	* 获取未通过审核的资源信息
	*/
	public function getnopassmes(){
		$res=new ResourceModel();
		//$mes=$res->GetNopassMes();
		$count=$res->where("is_approve=0")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('is_approve=0')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 修改资源审核状态
	* @param: variable
	* @return:
	*/
	public function modifypass($res_id){
		$res=new ResourceModel();
		$flag=$res->ModifyPass($res_id);
		if($flag>0){
			echo "修改成功";
		}else{
			echo "修改失败";
		}
	}
}
	
