<?php
namespace Home\Controller;

use Think\Controller;
use Home\Model\AboutExpModel;
use Home\Model\NoticeModel;
use Home\Model\MemberModel;
use Home\Model\ProModel;
 


class IndexController extends Controller {
    public function index(){
    	$aboutexp=new AboutExpModel();
    	$notice=new NoticeModel();
    	$member=new MemberModel();
    	$pro=new ProModel();
    	
    	$mes_aboutexp=$aboutexp->GetMes();
    	$mes_notice=$notice->GetFourMes();
    	$mes_member_train=$member->GetTwoTrainMember();
    	$mes_member_test=$member->GetTwoTestMember();
    	$mes_member_research=$member->GetFiveResearchMember();
    	$mes_member_star=$member->GetTenStarMes();
    	$mes_member_pro=$pro->GetSixNoDoingPro();
    	$mes_member_pro_1=$pro->GetSixUnDoingPro();
    	$mes_member_pro_2=$pro->GetSixHaveDonePro();
    	
    	//dump($mes_member_research);
    	//echo '123';
    	$this->assign('mes_notice',$mes_notice);
    	$this->assign('mes_aboutexp',$mes_aboutexp);
    	$this->assign('mes_member_train',$mes_member_train);
    	$this->assign('mes_member_test',$mes_member_test);
    	$this->assign('mes_member_research',$mes_member_research);
    	$this->assign('mes_member_star',$mes_member_star);
    	$this->assign('mes_member_pro',$mes_member_pro);
    	$this->assign('mes_member_pro_1',$mes_member_pro_1);
    	$this->assign('mes_member_pro_2',$mes_member_pro_2);
		
    	
    	$this->display('Index/index');
    }
   /* public function get(){
    	$res=new AboutExpModel();
    	$mes=$res->GetIntroduce();
    	$mes[0]["exp_introduce"]=(base64_decode($mes[0]["exp_introduce"],false));
    	dump($mes);
    	//dump($_POST);
    	//dump("dfdsd ");
    	//echo "请e";
    	//dump($_POST);
    	//dump($_SERVER);
    	//dump($_FILES);
    	//$mes=$_POST['editor'];
    	//$res=new AboutExpModel();
    	//$mes=$res->test();
    	 
    	$this->assign('mes',$mes);
    	$this->display();
    
    }*/
	 public function get(){
		 
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
		$this->display('Index/index');
	}
}