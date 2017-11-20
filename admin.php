<?php
// 应用入口文件

// 检测PHP环境
if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');

// 开启调试模式 建议开发阶段开启 部署阶段注释或者设为false
define('APP_DEBUG',true);
// 定义应用目录的名字和目录
define('APP_NAME','admin');
define('APP_PATH','admin/');
//定义thikphp核心框架的目录
define('THINK_PATH','ThinkPHP/');

// 引入ThinkPHP入口文件
define('ROOT_URL',"http://{$_SERVER['HTTP_HOST']}/expment");//192.168.1.208
define('CSS_URL',ROOT_URL.'/Public/css');
define('IMG_URL',ROOT_URL.'/Public/image');
define('UPLOAD',ROOT_URL.'/Uploads');
//define('delete_big_img','12');
//define('delete_small_img',null);
require './ThinkPHP/ThinkPHP.php';

// 亲^_^ 后面不需要任何代码了 就是如此简单
