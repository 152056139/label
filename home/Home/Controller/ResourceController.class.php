<?php

namespace Home\Controller;

use Think\Controller;
use Home\Model\ResourceModel;
use Home\Model\EquipmentModel;
use Common\Common\MyPage;
class ResourceController extends Controller {
	
	/**
	 * 增加下载量
	 * @param: variable
	 * @return:
	 */
	public function addxiazai($res_id,$resource){
		//echo $res_id;
		//echo $resource;
		$res=new ResourceModel();
		$res->where('res_id='.$res_id)->setInc('xiazai');
		$mes=$res->where('res_id='.$res_id)->select();;
		//dump($mes);
		//exit();
		//$this->assign('res_id',$res_id);
		//$this->assign('resource',$resource);
		$file =$_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[0]['resource'];                                           //计算机上的一个文件
		$fileName = basename($file);                                                                      //获取文件名
		header("Content-Type:application/octet-stream");                                    //告诉浏览器文档类型(mime类型); octet-stream指的是二进制文件类型;下载任何类型的文件都可以这么指定
		header("Content-Disposition:attachment;filename=".$fileName);        //告诉浏览器以附件方式对待文件(即下载文件);并设置下载后的文件名
		header("Accept-ranges:bytes");                                                                   //告诉浏览器文件大小的单位
		header("Accept-Length:".filesize($file));     
								 //告诉浏览器文件的大小
		$h = fopen($file, 'r'); 
		 
																						//打开文件
		echo fread($h, filesize($file)); 
				//$this->display();
	
	}
	
	/**
	* 获取php学习资源
	* @param: variable
	* @return:
	*/
	public function getphpmes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=0 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where("study_direction_id=0 AND is_approve=1")->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}else{
				echo "文件不存在";
			}
		}
		//dump($mes);
		$this->assign('mes',$mes);
		$this->assign('page',$page_obj->show());
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
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=1 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
		
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
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=2 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		//dump($mes);
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
		
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
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=3 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
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
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=4 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		//dump($mes);
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
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
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=5 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取虚拟现实资源信息
	 * @param: variable
	* @return:
	*/
	public function getxunimes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=6 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=6 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取.NET信息
	 * @param: variable
	* @return:
	*/
	public function getnetmes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=7 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=7 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取C/C++信息
	 * @param: variable
	* @return:
	*/
	public function getcorcppmes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=8 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=8 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取其他学习资源信息
	 * @param: variable
	* @return:
	*/
	public function getothermes(){
		$res=new ResourceModel();
		$count=$res->where("study_direction_id=9 AND is_approve=1")->count();
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->where('study_direction_id=9 AND is_approve=1')->field(true)->order('res_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		for($m=0;$m<count($mes);$m++){
			if(file_exists($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']) ){
				$size=filesize($_SERVER['CONTEXT_DOCUMENT_ROOT'].$mes[$m]['resource']);
				$units = array(' B', ' KB', ' MB', ' GB', ' TB');
				for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
				$mes[$m]['size']=round($size, 2).$units[$i];
				//echo $mes[$m]['size'];
			}
		}
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
	/* 获取其他学习资源信息
	 * @param: variable
	* @return:
	*/
	public function getequipmentmes(){
		$res=new EquipmentModel();
		$count=$res->count();
		$page_obj=MyPage::GetPage($count,12);
		$mes = $res->field(true)->order('equip_id')->limit($page_obj->firstRow, $page_obj->listRows)->select();
		$this->assign('page',$page_obj->show());
		$this->assign('mes',$mes);
		$this->display();
	}
}

?>