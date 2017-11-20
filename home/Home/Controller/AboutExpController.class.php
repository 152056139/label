<?php

namespace Home\Controller;
use Think\Controller;
use Home\Model\AboutExpModel;
class AboutExpController extends Controller{
	
	
	public function aboutexp(){
		 
		$res=new AboutExpModel();
		$mes=$res->GetIntroduce();
		//dump($mes);
		//$mes[0]["exp_introduce"]=(base64_decode($mes[0]["exp_introduce"]));
		//$mes[0]["exp_regulation"]=(base64_decode($mes[0]["exp_regulation"]));
		//$mes[0]["exp_manage"]=(base64_decode($mes[0]["exp_manage"]));
		//$mes[0]["exp_regulation"]=(base64_decode($mes[0]["exp_regulation"],false));
		//dump($mes[0]['exp_introduce']);
		//dump($mes[0]["exp_introduce"]);
		//echo "123";
		$mes[0] ["exp_introduce"] = html_entity_decode($mes[0]["exp_introduce"]);
		$mes[0] ["exp_regulation"] = html_entity_decode($mes[0]["exp_regulation"]);
		$mes[0] ["exp_manage"] = html_entity_decode($mes[0]["exp_manage"]);
		
		$this->assign('mes',$mes);
		$this->display();
	}
	
	public function eduite(){
		echo "14212312113";
		$this->display();
	}
		
	
}

?>