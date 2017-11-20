<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\AboutExpModel;
use Common\Common\MyUpload;
use Common\Common\Session;

/**
* 关于实验室管理
*/
class AboutExpController extends Controller{
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
	
	public function getInfo()
	{
		$res=new AboutExpModel();
		$mes=$res->GetMes();
		
		echo json_encode($mes[0]);
	}
	
	public function getmes(){
		$res=new AboutExpModel();
		$mes=$res->GetMes();
		
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display(); 
	}
	
	public function getconnect(){
		$res=new AboutExpModel();
		$mes=$res->GetiIntriduce1();
		
		//dump($mes);
		$this->assign('mes',$mes);
		$this->display(); 
	}
	
	public function modifymes(){
	   
		//dump($_POST);
		//dump($_FILES);
		
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     3145728 ;// 设置附件上传大小
		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		$upload->rootPath  = './Uploads/';
		
		$upload->savePath  =      'Uploads/'; // 设置附件上传目录    // 上传文件
		$info   =   $upload->upload();
		//dump($info);
		if(!$info) {
				
				//$this->error($upload->getError());
				
				$res=new AboutExpModel();
				$flag=$res->ModifyMes();
				if($flag>0){
					$this->success('信息修改成功');
				}else{
					$this->error("信息修改失败");
				}
					
			}else{
					//echo "上传成功";
					for($i=1;$i<=4;$i++){
						if(empty($info["exp_image_$i"]["size"])){
							continue;
						}else{
							$big_image="/".$info["exp_image_$i"]["savepath"].$info["exp_image_$i"]['savename'];
							//$_POST['image']= $big_image;
							//echo "修改后的数组$i:";
							//echo $big_image."<br>";
							//echo'上传成功！'.count($info);
						
							//把已经上传好的图片制作缩略图
							$image=new \Think\Image();
							$src=$upload->rootPath.$big_image;
							$image->open($src);
							$image->thumb(200,100);
							$smallimage="/".$info["exp_image_$i"]['savepath']."small_".$info["exp_image_$i"]['savename'];
							$image->save($upload->rootPath.$smallimage);
							$_POST["exp_image_$i"]= $smallimage;
						}
					}
				
					//dump($_POST);
					$res=new AboutExpModel();
					$flag=$res->ModifyMes();
					if($flag>0){
						$this->success('信息修改成功');
					}else{
						$this->error("信息修改失败");
					}
					
			
		}
	}	
	
}