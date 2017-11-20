<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\MemberModel;
use Common\Common\MyUpload;
use Common\Common\MyPage;
use Common\Common\Session;
/**
* 成员管理类
*/
class MemberController extends Controller{
	 //private static $delete_big_img="big";//大图片
	 //private static $delete_small_img="small";
	 
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
	* 获取新成员信息
	* @param: variable
	* @return:
	*/
	public function getnewmember(){
		$res=new MemberModel();
		//$mes=$res->GetNewMember();
		//dump($mes);
		$count=$res->where("is_new=1")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('is_new=1')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 修改新成员信息
	* @param: variable
	* @return:
	*/
	public function modifynewmember($mem_id){
		$res=new MemberModel();
		$mes=$res->ModifyNewMember($mem_id);
		
		$image=$mes[0]['image'];
		$url_1='/expment/Uploads'.$image;
		$_SESSION['delete_small_img']=$smallurl='.'.substr($url_1,8);
		$url_2='/expment/Uploads'.substr($image,0,20).substr($image,26);
		$_SESSION['delete_big_img']=$bigurl='.'.substr($url_2,8);
		
		$this->assign('mes',$mes);
		$this->display();
		
	}
	/**
	* 修改新成员信息处理
	* @param: variable
	* @return:
	*/
	public function modifynewmemberhandle(){
		//dump($_POST);
		//dump($_FILES);
		//dump($_SESSION);
		
		if(empty($_FILES['image']['size'])){
			$res=new MemberModel();
			$mes=$res->ModifyMewMemberHandle();
			if($mes>0){
				$this->success("修改成功");
			}else{
				$this->error("修改失败");
			}
		}else{
			MyUpload::upload_file();
			$res=new MemberModel();
			$mes=$res->ModifyMewMemberHandle();
			
			if($mes){
				if(@unlink($_SESSION['delete_small_img'])&&@unlink($_SESSION['delete_big_img'])){
					$this->success('修改成功');
				}else{
					$this->error("文件删除失败");
				}
				
				//$this->success("修改成功");
				//echo "修改成功";
			}else{
				$this->error("修改失败");
				//echo "修改失败";
			}
		}
	}
	
	/**
	* 获取实习组成员信息
	* @param: variable
	* @return:
	*/
	public function gettrainmember(){
		$res=new MemberModel();
		$mes=$res->GetTrainMember();
		//dump($mes);
		$count=$res->where("member_type_id=1")->count();
		$page_obj=MyPage::GetPage($count);
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 添加成员
	* @param: variable
	* @return:
	*/
	public function addmember(){
		$this->display();
	}
	/**
	* 添加成员处理
	* @param: variable
	* @return:
	*/
	public function addmemberhandle(){
		if(empty($_FILES['image']['size'])){
			$this->error("请上传照片");
		}else{
			MyUpload::upload_file();
			$res=new MemberModel();
			$flag=$res->AddMemberHandle();
			if($flag){
				$this->success('添加成功');
			}else{
				$this->error('添加失败');
			}
		}
		
	}
	
	/**
	*获取测试组成员
	* @param: variable
	* @return:
	*/
	public function gettestmember(){
		$res=new MemberModel();
		//$mes=$res->GetTestMember();
		$count=$res->where("member_type_id=2")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('member_type_id=2')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 修改成员信息
	* @param: variable
	* @return:
	*/
	public function modifymember($mem_id){
		$res=new MemberModel();
		$mes=$res->ModifyMember($mem_id);
		//dump($mes);
		$image=$mes[0]['image'];
		$url_1='/expment/Uploads'.$image;
		$_SESSION['delete_small_img']=$smallurl='.'.substr($url_1,8);
		$url_2='/expment/Uploads'.substr($image,0,20).substr($image,26);
		$_SESSION['delete_big_img']=$bigurl='.'.substr($url_2,8);
		
		
		$this->assign('mes',$mes);
		$this->display();
		
	}/**
	* 修改成员信息处理
	* @param: $GLOBALS
	* @return:
	*/
	public function modifymemberhandle(){
		
		//dump($_FILES);
		if(empty($_FILES['image']['size'])){
			$res=new MemberModel();
			$mes=$res->ModifyMemberHandle();
			if($mes>0){//未修改文件时
				$this->success("修改成功");
			}else{
				$this->error("修改失败");
			}
		}else{//修改文件时
			MyUpload::upload_file();
			$res=new MemberModel();
			$mes=$res->ModifyMemberHandle();
			if($mes>0){
				if(@unlink($_SESSION['delete_small_img'])&&@unlink($_SESSION['delete_big_img'])){
					$this->success('修改成功');
				}else{
					$this->error("文件删除失败");
				}
			}else{
				$this->error("修改失败");
				
			}
		}
	}
	
		
		
		
	
	/**
	 * 删除成员
	 * @param: variable
	 * @return:
	 */
	public function delmember($mem_id,$image){
		$res=new MemberModel();
		$mes=$res->DelMember($mem_id);
		if($mes){
			$url_1='/expment/Uploads'.$image;
			$smallurl='.'.substr($url_1,8);
			$url_2='/expment/Uploads'.substr($image,0,20).substr($image,26);
			$bigurl='.'.substr($url_2,8);
			if(@unlink($smallurl)&&@unlink($bigurl)){
				$this->success('删除成功');
			}else{
				$this->error("文件删除失败");
			}
		}else{
			$this->error("删除失败");
		}
	}
	/**
	* 获取研发组成员信息
	* @param: variable
	* @return:
	*/
	public function getresearchmember(){
		$res=new MemberModel();
		//$mes=$res->GetResearchMember();
		$count=$res->where("member_type_id=3")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('member_type_id=3')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	} 
	/**
	* 获取项目经理信息
	* @param: variable
	* @return:
	*/
	public function getmanagemember(){
		$res=new MemberModel();
		//$mes=$res->GetManageMember();
		$count=$res->where("member_type_id=4")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('member_type_id=4')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	} 
	/**
	* 获取总负责人信息
	* @param: variable
	* @return:
	*/
	public function getchargemember(){
		$res=new MemberModel();
		//$mes=$res->GetChargeMember();
		$count=$res->where("member_type_id=5")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('member_type_id=5')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	 * 修改总负责人信息
	 * @param: variable
	 * @return:
	 */
	public function modifychargemember($mem_id){
		$res=new MemberModel();
		$mes=$res->ModifyMember($mem_id);
		//dump($mes);
		$image=$mes[0]['image'];
		$url_1='/expment/Uploads'.$image;
		$_SESSION['delete_small_img']=$smallurl='.'.substr($url_1,8);
		$url_2='/expment/Uploads'.substr($image,0,20).substr($image,26);
		$_SESSION['delete_big_img']=$bigurl='.'.substr($url_2,8);
		
		$this->assign('mes',$mes);
		$this->display();
	
	}/**
	* 修改总负责人信息处理
	* @param:
	* @return:
	*/
	public function modifychargememberhandle(){
		
		//dump($_FILES);
		if(empty($_FILES['image']['size'])){
			$res=new MemberModel();
			$mes=$res->ModifyMemberHandle();
			if($mes>0){
				$this->success("修改成功");
			}else{
				$this->error("修改失败");
			}
		}else{
			MyUpload::upload_file();
			$res=new MemberModel();
			$mes=$res->ModifyMemberHandle();
			if($mes>0){
				if(@unlink($_SESSION['delete_small_img'])&&@unlink($_SESSION['delete_big_img'])){
					$this->success('修改成功');
				}else{
					$this->error("文件删除失败");
				}
			}else{
				$this->error("修改失败");
			}
		}
		
		
		
		
	}
	
	/**
	 * 获取指导老师信息
	 * @param: variable
	 * @return:
	 */
	public function getteachermember(){
		$res=new MemberModel();
		$mes=$res->GetTeacherMember();
		$count=$res->where("member_type_id=6")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('member_type_id=6')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	 * 修改指导老师信息
	 * @param: variable
	 * @return:
	 */
	public function modifyteachermember($mem_id){
		$res=new MemberModel();
		$mes=$res->ModifyTeacherMember($mem_id);
		//dump($mes);
		$image=$mes[0]['image'];
		$url_1='/expment/Uploads'.$image;
		$_SESSION['delete_small_img']=$smallurl='.'.substr($url_1,8);
		$url_2='/expment/Uploads'.substr($image,0,20).substr($image,26);
		$_SESSION['delete_big_img']=$bigurl='.'.substr($url_2,8);
		
		$this->assign('mes',$mes);
		$this->display();
	
	}/**
	* 修改指导老师信息处理
	* @param:
	* @return:
	*/
	public function modifyteachertmemberhandle(){
		
		//dump($_FILES);
		if(empty($_FILES['image']['size'])){
			$res=new MemberModel();
			$mes=$res->ModifyMemberHandle();
			if($mes>0){
			$this->success('修改成功');
			}else{
				$this->error("修改失败");
			}
		}else{
			MyUpload::upload_file();
			$res=new MemberModel();
			$mes=$res->ModifyMemberHandle();
			if($mes>0){
			
				if(@unlink($_SESSION['delete_small_img'])&&@unlink($_SESSION['delete_big_img'])){
					$this->success('修改成功');
				}else{
					$this->error("文件删除失败");
				}
			}else{
				$this->error("修改失败");
			}
		}
		
		
		
		
	}
	/**
	* 添加总负责人和指导老师
	* @param: variable
	* @return:
	*/
	public function addteacher(){
			$this->display();
	}
	/**
	 * 添加成员处理
	 * @param: variable
	 * @return:
	 */
	public function addteacherhandle(){
		//dump($_POST);
		$res=new MemberModel();
		$flag=$res->AddTeacherHandle();
		if($flag){
			$this->success('添加成功');
		}else{
			$this->error('添加失败');
		}
	}
	/**
	 * 获取已经毕业成员信息
	 * @param: variable
	 * @return:
	 */
	public function getgraduatemember(){
		$res=new MemberModel();
		//$mes=$res->GetGraduateMember();
		
		$count=$res->where("member_type_id=7")->count();
		$page_obj=MyPage::GetPage($count);
		$mes = $res->where('member_type_id=7')->field(true)->order('mem_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		//dump($count);
		$this->assign('page',$page_obj->show());
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
	}
	/**
	* 添加已经毕业成员
	* @param: variable
	* @return:
	*/
	public function addgraduatemember(){
		$this->display();
	}
	/**
	* 添加已经毕业成员信息处理
	* @param: variable
	* @return:
	*/
	public function addgraduatememberhandle(){
		
		//dump($_FILES);
		if(empty($_FILES['image']['size'])){
			$res=new MemberModel();
			$mes=$res->AddGraduateMemberHandle();
			if($mes){
				$this->success('添加成功');
			}else{
				$this->error('添加失败');
			}
		}else{
			MyUpload::upload_file();
			$res=new MemberModel();
			$mes=$res->AddGraduateMemberHandle();
			if($mes){
				$this->success('添加成功');
			}else{
				$this->error('添加失败');
			}
		}	
	}
	/**
	 * 修改已经毕业成员信息
	 * @param: variable
	 * @return:
	 */
	public function modifygraduatemember($mem_id){
		$res=new MemberModel();
		$mes=$res->ModifyGraduateMember($mem_id);
		//dump($mes);
		$image=$mes[0]['image'];
		$url_1='/expment/Uploads'.$image;
		$_SESSION['delete_small_img']=$smallurl='.'.substr($url_1,8);
		$url_2='/expment/Uploads'.substr($image,0,20).substr($image,26);
		$_SESSION['delete_big_img']=$bigurl='.'.substr($url_2,8);
		
		$this->assign('mes',$mes);
		$this->display();
	
	}/**
	* 修改已经毕业成员信息处理
	* @param:
	* @return:
	*/
	public function modifygraduatememberhandle(){
		
		//dump($_FILES);
		if(empty($_FILES['image']['size'])){
			$res=new MemberModel();
			$mes=$res->ModifyGraduateMemberHandle();
			//dump($mes);
			if($mes>0){
				$this->success('修改成功');
				
			}else{
				$this->error("修改失败");
			}
		}else{
			MyUpload::upload_file();
			$res=new MemberModel();
			$mes=$res->ModifyGraduateMemberHandle();
			if($mes>0){
			if(@unlink($_SESSION['delete_small_img'])&&@unlink($_SESSION['delete_big_img'])){
					$this->success('修改成功');
				}else{
					$this->error("文件删除失败");
				}
			}else{
				$this->error("修改失败");
			}
		}
		
		
		
	}
	
}