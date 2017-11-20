<?php
// 应用入口文件

// 检测PHP环境
if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');

// 开启调试模式 建议开发阶段开启 部署阶段注释或者设为false
define('APP_DEBUG',true);
// 定义应用目录的名字和目录
define('APP_NAME','home');
define('APP_PATH','home/');
//定义thikphp核心框架的目录
define('THINK_PATH','ThinkPHP/');



define('ROOT_URL',"http://{$_SERVER['HTTP_HOST']}/expment");
define('IMG',"http://{$_SERVER['HTTP_HOST']}/expment/Uploads");//成员图像位置
define('CSS_URL',ROOT_URL.'/home/public/css');
define('IMG_URL',ROOT_URL.'/home/public/img');//css样式图像位置
define('JS_URL',ROOT_URL.'/home/public/js');
//var_dump($_SERVER['HTTP_HOST']);

 

// 引入ThinkPHP入口文件
require './ThinkPHP/ThinkPHP.php';//要在宏定义之后才能引入Thinkphp文件
// 亲^_^ 后面不需要任何代码了 就是如此简单