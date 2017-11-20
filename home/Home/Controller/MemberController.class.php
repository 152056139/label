<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\MemberModel;
use Common\Common\MyPage;
use Common\Common\MyUpload;
class MemberController extends Controller{
	/**
	* 显示已毕业成员
	* @param: variable
	* @return:
	*/
	public function gethasgraduate(){
		$res=new MemberModel;
		$count=$res->where("member_type_id=7")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where('member_type_id=7')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
		$this->display();
	}
	/**
	* 显示实习组成员
	* @param: variable
	* @return:
	*/
	public function gettrainmember(){
		$res=new MemberModel;
		$count=$res->where("member_type_id=1")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where('member_type_id=1')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
		$this->display();
	}
	/**
	 * 显示测试组成员
	 * @param: variable
	 * @return:
	 */
	public  function gettestmember(){
		$res=new MemberModel;
		$count=$res->where("member_type_id=2")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where('member_type_id=2')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		//dump($mes);
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
		$this->display();
	}
	/**
	 * 显示研发组成员
	 * @param: variable
	 * @return:
	 */
	public  function getresearchmember(){
		$res=new MemberModel;
		$count=$res->where("member_type_id=3")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where('member_type_id=3')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
	
		//dump($mes);
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
		$this->display();
	}
	/**
	 * 显示项目经理成员
	 * @param: variable
	 * @return:
	 */
	public  function getmanagemember(){
		$res=new MemberModel;
		$count=$res->where("member_type_id=4")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where('member_type_id=4')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
	
		//dump($mes);
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
		$this->display();
	}
	/**
	* 获取成员详细信息
	* @param: variable
	* @return:
	*/
	public  function getdetail($mem_id){
		$res=new MemberModel();
		//dump($mem_id);
		$mes=$res->where('mem_id='.$mem_id)->select();
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 获取明星成员
	* @param: variable
	* @return:
	*/
	public function getstarmember(){
		$res=new MemberModel;
		$count=$res->where("is_star=1")->count();
		$page_obj=MyPage::GetPage($count,20);
		$mes = $res->where('is_star=1')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
	
		//dump($mes);
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
		$this->display();
	}
	/**
	* 我要加入信息收集
	* @param: variable
	* @return:
	*/
	
	public function getnewmember(){
		$this->display();
	}
	/**
	 * 我要加入信息处理
	 * @param: variable
	 * @return:
	 */
	public function addteacherhandle(){
		//dump($_POST);
		//dump($_FILES);
		//exit();
		if(!empty($_POST['mem_name'])&&!empty($_POST['student_no'])){
			if(!empty($_FILES['image']['size'])){
				MyUpload::upload_file();
				$res=new MemberModel();
				$flag=$res->AddTeacherHandle();
				if($flag){
					$this->success('申请成功,请等待耐心等待结果',null,5);
				}else{
					$this->error('申请失败,请重新填写!!!',null,5);
				}
			}
			else{
				$this->error('请上传照片!!!',null,5);
			}
		}else{
			//$this->error('请正确添加表单!!!');
			echo "请正确填写表单";
		}
	}
}