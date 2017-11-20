<?php
namespace Common\Common;
use Think\Upload;
class MyUpload extends Upload{
	//实现成员图像上传并制作压缩图
	public static function upload_file(){
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     3145728 ;// 设置附件上传大小
		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		$upload->rootPath  = './Uploads/';
		//$upload->saveName = 'md5';
		$upload->savePath  =      'Uploads/'; // 设置附件上传目录    // 上传文件
		$info   =   $upload->upload();
		//dump($info);
		if(!$info) {
		// 上传错误提示错误信息
			$this->error($upload->getError());
			//dump($info);
			//echo 'chuangchuanzuowu';
			//echo $upload->getError();
			//$this->error("不允许上传此类型文件");
			
		}else{
			echo "上传成功";
		
			 $big_image="/".$info['image']['savepath'].$info['image']['savename'];
			//$_POST['image']= $big_image;
			dump($_POST['image']);
			echo'上传成功！';
		
			//把已经上传好的图片制作缩略图
			$image=new \Think\Image();
			$src=$upload->rootPath.$big_image;
			$image->open($src);
			$image->thumb(226,290);
			$smallimage="/".$info['image']['savepath']."small_".$info['image']['savename'];
			$image->save($upload->rootPath.$smallimage);
			$_POST['image']= $smallimage;
			
			//裁剪已经上传的图片用于制作头像73*73
			return 1;
		} 
	}
	
	//实现项目图片上传并制作压缩图
	public static function upload_pro_file(){
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     3145728 ;// 设置附件上传大小
		$upload->exts      =     array('JPG','jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		$upload->rootPath  = './Uploads/';
		//$upload->saveName = 'md5';
		$upload->savePath  =      'Uploads/'; // 设置附件上传目录    // 上传文件
		$info   =   $upload->upload();
		//dump($info);
		if(!$info) {
			// 上传错误提示错误信息
			$this->error($upload->getError());
			//dump($info);
			//echo 'chuangchuanzuowu';
			//echo $upload->getError();
			//$this->error("不允许上传此类型文件");
				
		}else{
			echo "上传成功";
	
			$big_image="/".$info['image']['savepath'].$info['image']['savename'];
			//$_POST['image']= $big_image;
			dump($_POST['image']);
			echo'上传成功！';
	
			//把已经上传好的图片制作缩略图
			$image=new \Think\Image();
			$src=$upload->rootPath.$big_image;
			$image->open($src);
			$image->thumb(377,215);
			$smallimage="/".$info['image']['savepath']."small_".$info['image']['savename'];
			$image->save($upload->rootPath.$smallimage);
			$_POST['image']= $smallimage;
				
			//裁剪已经上传的图片用于制作头像73*73
			return 1;
		}
	}
	
	//实现视频,文档,压缩包,视频文件上传
	public static function  upload_video(){
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     1048576000 ;// 设置附件上传大小
		$upload->exts      =     array('html','avi','doc','docx','pdf','rar','zip','mp4','3gp','rm', 'rmvb', 'flv', 'wmv','txt');// 设置附件上传类型
		$upload->rootPath  = './Uploads/';
		//$upload->saveName  = '';
		$upload->savePath  =      'Resource/'; // 设置附件上传目录    // 上传文件
		$info   =   $upload->upload();
		//dump($info);
		if(!$info) {
			// 上传错误提示错误信息
			$this->error($upload->getError());
			//dump($info);
			//echo 'chuangchuanzuowu';
			//echo $upload->getError();
			
				
		}else{
			$_POST['resource']="/Uploads/".$info['resource']['savepath'].$info['resource']['savename'];
			
			echo "上传成功";
		}
		
	}
	
	
	
	
	
	
}