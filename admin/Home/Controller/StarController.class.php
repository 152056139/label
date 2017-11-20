<?php

namespace Home\Controller;
use Think\Controller;
use Home\Model\MemberModel;
class StarController extends Controller{
	/**
	* 获取所有明星成员
	* @param: variable
	* @return:
	*/
	public function  getallstarmem(){
		$m=new MemberModel();
		$mes=$m->GetAllStarMes();
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display();
		}
}

?>