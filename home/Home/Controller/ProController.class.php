<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\ProModel;
use Common\Common\MyPage;
class ProController extends Controller{
	/**
	* 获取还未开始的项目
	* @param: variable
	* @return:
	*/
	public function getnodoingpro(){
		
		$res=new ProModel();
	 	$count=$res->where("pro_type=0")->count();
	 	//echo $count;
		$page_obj=MyPage::GetPage($count,8);
		$mes = $res->where('pro_type=0')->field(true)->order('pro_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$member=$res->GetMemIdName();//获取成员名字
		//根据项目中的学生id,找到相应的文字
		for($j=0;$j<count($mes);$j++){
			$temp = explode(',',$mes[$j]['mem_id']);
			for($i=0;$i<count($member);$i++){
				if(in_array($member[$i]['mem_id'],$temp)){
					$mem_name.=$member[$i]['mem_name'].",";
				}
			}
			//echo "第".$j."组成员为:";
			$mes[$j]['Chinese']=$mem_name;
		}
		
		
		$this->assign('page',$page_obj->show());
	 	$this->assign('mes',$mes);
	 	//dump($mes);
	 	$this->display();
	}
	/**
	 * 获取正在进行的项目
	 * @param: variable
	 * @return:
	 */
	public function getundoingpro(){
	
		$res=new ProModel();
		$count=$res->where("pro_type=1")->count();
		//echo $count;
		$page_obj=MyPage::GetPage($count,8);
		$mes = $res->where('pro_type=1')->field(true)->order('pro_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		//dump($mes);
		$this->display();
	}
	/**
	 * 获取已经完成的项目
	 * @param: variable
	 * @return:
	 */
	public function gethavedonepro(){
	
		$res=new ProModel();
		$count=$res->where("pro_type=2")->count();
		//echo $count;
		$page_obj=MyPage::GetPage($count,8);
		$mes = $res->where('pro_type=2')->field(true)->order('pro_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		//dump($mes);
		$this->display();
	}
	/**
	 * 获取项目详细信息
	 * @param: variable
	 * @return:
	 */
	public  function getdetail($pro_id){
		$res=new ProModel();
		//dump($mem_id);
		$mes=$res->where('pro_id='.$pro_id)->select();
		//根据项目中的学生id,找到相应的文字
		$member=$res->GetMemIdName();//获取成员名字
		for($j=0;$j<count($mes);$j++){
			$temp = explode(',',$mes[$j]['mem_id']);
			for($i=0;$i<count($member);$i++){
				if(in_array($member[$i]['mem_id'],$temp)){
					$mem_name.=$member[$i]['mem_name'].",";
				}
			}
			//echo "第".$j."组成员为:";
			$mes[$j]['Chinese']=$mem_name;
		}
		
		$this->assign('mes',$mes);
		$this->display();
	}
}
