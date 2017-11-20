/*
Navicat MySQL Data Transfer

Source Server         : xampp
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : experiment

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-15 21:10:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_about_exp`
-- ----------------------------
DROP TABLE IF EXISTS `tp_about_exp`;
CREATE TABLE `tp_about_exp` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `exp_introduce` text,
  `exp_regulation` text,
  `exp_stu_environment` text,
  `exp_manage` text,
  `exp_image_1` varchar(255) DEFAULT NULL,
  `exp_image_2` varchar(255) DEFAULT NULL,
  `exp_image_3` varchar(255) DEFAULT NULL,
  `exp_image_4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_about_exp
-- ----------------------------
INSERT INTO `tp_about_exp` VALUES ('1', '&lt;p&gt;&lt;span style=&quot;color: rgb(84, 141, 212);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 37px; margin-bottom: 5px;&quot;&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;计算机工程系协同创新协同育人基地是以工程化实践项目应用为导向的开放式实践教学及创新中心，基地定期吸纳有志于IT行业发展，有梦想、脚踏实地的学生加入，在导师的指导下进行学习锻炼和项目实践。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 24px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;太原工业学院计算机工程研究所&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;太原工业学院计算机工程研究所成立于2003年，拥有一支由博士、硕士以及在校学生组成的科研梯队。主要从事计算机图形图像、虚拟现实等产品的开发和应用研究工作。实验室现有微软Kinect、HTC VIVO眼镜、数字头盔、数据手套等虚拟现实设备，近年来先后完成了太原市科技厅八大功能区建设专项项目“中华傅山园虚拟漫游系统”、“太原工业学院三维虚拟漫游系统”、“飘尘中苯并芘检测数据可视化研究”、“电力企业标准化管理平台”等项目。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;计算机工程研究所采用导师制培养模式，为北京朗迪锋科技有限公司协同创新、协同育人基地，合作进行订单式人才培养，近年来先后培养了近50名优秀学生进入到腾讯游戏、中视典、7k7k、微软等知名公司就业，从事计算机图形引擎、游戏开发等相关工作。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 24px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;移动互联创新基地&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 2em;&quot;&gt;&lt;span style=&quot;font-family: 宋体; line-height: 1.5em; text-indent: 43px;&quot;&gt;移动互联创新基地是面向高速发展的移动互联、信息化技术，面向学生开放的以移动开发技术实训、大学生创新实践及学科竞赛、移动互联产品研发及产品运营和孵化等为主要运营模式的大学生实践创新基地。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 2em;&quot;&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;基地&lt;/span&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;现有Android 3G移动互联开发实验平台、苹果Mac Mini实验开发平台、三星Note3手机及GT-P5210平板电脑等设备。设立了Java web、Vistudio .Net、Android、IOS、UI、Web前端等技术方向，基地自2012年成立以来，先后在中国软件杯程序设计大赛、互联网+创新创业大赛、华北五省（市、自治区）及港澳台计算机应用大赛等全国性大赛中获得优异成绩，完成了“草坪区公安分局视频监控导侦平台”、“山西公安派出所办案流程标准化智能管理平台”、“万聚恒O2O导购平台”等多个项目，获批省级和国家级大学生创新创业项目各2项，先后在各个方向培养了优秀学生进入到微软中国、锤子科技、金山西山居、万方等全国知名公司就业。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(84, 141, 212);&quot;&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;;text-align: center;line-height: 150%&quot;&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: black; line-height: 150%; font-family: 黑体;&quot;&gt;移动互联创新实验室管理制度&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt;移动互联创新实验室是实施应用型人才培养，实现工程实践能力的提高、工程素养的渗透和创新精神塑造的重要基地。为了更好地规范实验室的管理，为广大学生创造良好的工作学习环境，高效地完成工程实践及科研项目，特制定如下管理制度。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第一条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 实验室坚持以“工程化应用、面向学生、强化实践”为基本原则，积极创造良好的实践活动环境，激发学生的实践主动性、积极性和创造性。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第二条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 坚持和发扬“精心、精业、精品”研究所文化，以高度的责任心、事业心和刻苦专研的学习创新精神，按时高质量完成项目或学习任务，实现作品和产品质量的有效提升。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第三条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 以项目团队或项目组的形式进行学习和项目研发，团队成员具有良好的团队合作精神，通过有效的沟通和相互信任，实现团队整体优势和创造力的充分发挥。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第四条&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt; &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt;实验室每年选拔一名学生作为负责人协助老师进行实验室的日常管理，其他同学应服从实验室负责人的管理并积极配合完成各项工作。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第五条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 对进入实验室学习的学生履行考勤管理制度，对连续一个月考勤不合格或学习态度不端正的学生，取消其在实验室学习工作的资格并收回其工位。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第六条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 实验室采取卫生值日制度，值日的学生或团队负责实验室的整体环境卫生。其他同学应自觉维护实验室的卫生环境，保持实验室的环境整洁、安静。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第七条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 爱护实验室公共设施和实验设备。实验设备借用按照《移动互联创新实验室仪器设备借用制度》的规定，须履行借用手续。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第八条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 做好实验室的安全工作，最后离开实验室的人员必须自觉检查和关闭所有门窗，检查所有用电设备，关闭长时间带电运作可能会产生严重后果的用电设备。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 32px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 16px;&quot;&gt;第九条&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt; 实验室内禁止吸烟，严禁一切明火进入。不得私接电源、拉线路、严禁乱动电闸和消防器材。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;;line-height: 150%&quot;&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;;line-height: 150%&quot;&gt;&lt;span style=&quot;;line-height: 150%;font-family: 宋体;font-size: 16px&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;计算机工程系&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;;font-family: 宋体;font-size: 16px&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2014年12月&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; line-height: 2em;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;计算机工程研究所管理制度&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;计算机工程研究所是实施应用型人才培养，实现工程实践能力的提高、工程素养的渗透和创新精神塑造的重要基地。目前的主要研究方向有图形图像处理&lt;/span&gt;,&lt;span style=&quot;font-family: 宋体;&quot;&gt;计算机视觉和模式识别等。为了更好地规范研究所的管理，为广大师生创造良好的科研、学习和工作氛围工作学习环境，高效地完成工程实践及科研项目，现就对研究所的管理规定如下：&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;第一条&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt; &lt;span style=&quot;font-family: 宋体;&quot;&gt;研究所坚持以“工程化应用、面向学生、强化实践”为基本原则，积极创造良好的实践活动环境，激发学生的实践主动性、积极性和创造性。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;第二条&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt; &lt;span style=&quot;font-family: 宋体;&quot;&gt;坚持和发扬“精心、精业、精品”研究所文化，以高度的责任心、事业心和刻苦专研的学习创新精神，按时高质量完成项目或学习任务，实现作品和产品质量的有效提升。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;第三条&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;&lt;/span&gt;&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;以项目团队或项目组的形式进行学习和项目研发，团队成员具有良好的团队合作精神，通过有效的沟通和相互信任，实现团队整体优势和创造力的充分发挥。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;第四条&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;&lt;/span&gt;&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;研究所每年选拔一名学生作为负责人协助老师进行研究所的日常管理，其他同学应服从研究所负责人的管理并积极配合完成各项工作。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;第五条&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;对进入研究所学习的学生履行考勤管理制度，对连续一个月考勤不合格或学习态度不端正的学生，取消其在研究所学习工作的资格并收回其工位。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;第六条&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;禁止在研究所内玩游戏，上网，打电话。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;第七条&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;&lt;/span&gt;&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;研究所采取卫生值日制度，值日的学生或团队负责研究所的整体环境卫生。其他同学应自觉维护研究所的卫生环境，保持研究所的环境整洁、安静。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;第八条&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;爱护研究所公共设施和实验设备。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;第九条&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;做好研究所的安全工作，最后离开研究所的人员必须自觉检查和关闭所有门窗，检查所有用电设备，关闭长时间带电运作可能会产生严重后果的用电设备。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;第十条&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; &lt;span style=&quot;font-family: 宋体;&quot;&gt;研究所内禁止吸烟，严禁一切明火进入。不得私接电源、拉线路、严禁乱动电闸和消防器材。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em; text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 计算机工程系&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;;font-family: 宋体;font-size: 16px&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2014年12月&lt;/span&gt;&lt;/p&gt;', '实验室学习环境', '&lt;p style=&quot;;text-align: center&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 21px;&quot;&gt;计算机工程系协同创新实践基地运行模式&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 28px;&quot;&gt;&lt;span style=&quot;;font-family: 宋体&quot;&gt;计算机工程系协同创新实践基地秉承“精心、精业、精品”研究所文化，以“创新、筑梦，思启未来”为理念，以开放、包容的姿态，为广大学生创造实践锻炼和创新成长的环境。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;;text-align: center;line-height: 150%;text-indent: 37px&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 19px;&quot;&gt;计算机工程研究室运行模式&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 28px;&quot;&gt;&lt;span style=&quot;;font-family: 宋体&quot;&gt;计算机工程研究室采用导师制管理模式。研究所主要研究方向为计算机图形图像，包括计算机图形建模、渲染及相关算法的研究。每年不定期选拔有志于从事计算机图形图像研究的在校学生进入研究所进行学习，在导师指导下进行相关技术的理论学习和实践锻炼。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;;text-align: center;line-height: 150%;text-indent: 37px&quot;&gt;&lt;span style=&quot;font-family: 黑体,SimHei;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 150%; font-size: 19px;&quot;&gt;移动互联创新基地运行模式&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 28px;&quot;&gt;&lt;span style=&quot;;font-family: 宋体&quot;&gt;移动互联创新基地采用导师制和软件工程项目管理相结合的运行模式。基地现设“实习岗”、“测试岗”、“研发岗”、“项目经理”和“指导教师”等岗位，通过项目管理平台软件等信息化手段对基地进行管理。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 28px;&quot;&gt;&lt;span style=&quot;;font-family: 宋体&quot;&gt;基地每年定期发布纳新信息，学生通过自主报名、基地选拔后进入基地进行学习。基地新成员所在岗位为“实习岗”，主要以自主学习的方式完成指导教师分配的学习任务。“实习岗”学生通过个人的学习和参加基地安排的项目实训锻炼，逐步升级为“测试岗”、“研发岗”以及“项目经理”等岗位（具体见《移动互联创新基地本科生遴选办法》）。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em; text-indent: 28px;&quot;&gt;&lt;span style=&quot;;font-family: 宋体&quot;&gt;基地学生根据个人技术方向，在项目组长或指导教师指导下完成项目实训。基地通过学科竞赛、个人项目立项、工程项目研发等多种方式，以贴近于真实的公司化项目管理和研发模式，实现专业工程能力的提升。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; line-height: 2em;&quot;&gt;&lt;span style=&quot;;font-family: 宋体;font-size: 14px&quot;&gt;在计算机工程系协同创新实践基地对基地进行学习的学生须严格遵守《移动互联创新实验室管理制度》和《计算机工程研究所管理制度》，对学生进行定期考核和日常考勤，对于违反基地规章制度、考核不合格和长期缺勤的学生，将予以淘汰。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/Uploads/2017-03-21/small_58d0e3a685989.png', '/Uploads/2016-09-18/small_57de537bbb1f3.jpg', '/Uploads/2016-09-18/small_57de52d32f5ba.jpg', '/Uploads/2016-09-18/small_57de52d33049d.jpg');

-- ----------------------------
-- Table structure for `tp_about_exp_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tp_about_exp_copy`;
CREATE TABLE `tp_about_exp_copy` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `exp_introduce` text,
  `exp_regulation` text,
  `exp_stu_environment` text,
  `exp_manage` text,
  `exp_image_1` varchar(255) DEFAULT NULL,
  `exp_image_2` varchar(255) DEFAULT NULL,
  `exp_image_3` varchar(255) DEFAULT NULL,
  `exp_image_4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_about_exp_copy
-- ----------------------------
INSERT INTO `tp_about_exp_copy` VALUES ('1', 'PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+5oiR5Lus5Li76KaB56CU56m25LuA5LmI77yfPC9wPjxwIGNsYXNzPSJydF9mb250IiBzdHlsZT0iZm9udC1mYW1pbHk6IOW+rui9r+mbhem7kTsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAwcHg7IHBhZGRpbmc6IDBweDsgZm9udC1zaXplOiAxM3B4OyBjb2xvcjogcmdiKDEwMiwgMTAyLCAxMDIpOyBsaW5lLWhlaWdodDogMjVweDsgdGV4dC1pbmRlbnQ6IDIwcHg7IHdoaXRlLXNwYWNlOiBub3JtYWw7Ij7orqHnrpfmnLrlt6XnqIvns7vnjrDmnInigJzorqHnrpfmnLrnp5HlrabkuI7mioDmnK/igJ3jgIHigJznvZHnu5zlt6XnqIvigJ3lkozigJzova/ku7blt6XnqIvigJ3kuInkuKrmnKznp5HkuJPkuJrvvIzlhbbkuK3igJzorqHnrpfmnLrnp5HlrabkuI7mioDmnK/igJ3kuJPkuJoyMDEz5bm06KKr6K+E5Li65bGx6KW/55yB6auY562J5a2m5qCh54m56Imy5LiT5Lia5bu66K6+54K577yM5oiQ5Li65paw5LiA6L2u55qE5bGx6KW/55yB54m56Imy5LiT5Lia5bu66K6+54K577yb6K6h566X5py65bel56iL5a6e6aqM5pWZ5a2m5Lit5b+D6KKr6K+E5Li64oCc5Y2B5LqM5LqU5bGx6KW/55yB6auY562J5a2m5qCh5a6e6aqM5pWZ5a2m56S66IyD5Lit5b+D44CCMjAxM+W5tOiuoeeul+acuuW3peeoi+ezu+WcqOWHnee7g+WkmuW5tOWKnuWtpueJueiJsueahOWfuuehgOS4iu+8jOeUs+aKpeS6huKAnOaVsOWtl+WqkuS9k+KAneS4k+S4mu+8jOS4uuaJi+acuua4uOaIj+eahOW8gOWPkeaPkOS+m+S6huaWsOeahOaUr+aSkeW5s+WPsOOAgjwvcD48cCBzdHlsZT0iZm9udC1mYW1pbHk6IOW+rui9r+mbhem7kTsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAwcHg7IHBhZGRpbmc6IDBweDsgZm9udC1zaXplOiBtZWRpdW07IHdoaXRlLXNwYWNlOiBub3JtYWw7Ij48aW1nIHNyYz0iaHR0cDovL2xvY2FsaG9zdC9leHBtZW50L2hvbWUvcHVibGljL2ltZy8lRTUlOUYlQkElRTUlOUMlQjAlRTQlQkIlOEIlRTclQkIlOERpbWcvJUU1JTlGJUJBJUU1JTlDJUIwJUU3JUFFJTgwJUU0JUJCJThCXzAxLnBuZyIgYWx0PSIiIHdpZHRoPSIxMDAlIiBjbGFzcz0icGhvdG8wMSIvPjwvcD48cCBjbGFzcz0icnRfZm9udCIgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogMTNweDsgY29sb3I6IHJnYigxMDIsIDEwMiwgMTAyKTsgbGluZS1oZWlnaHQ6IDI1cHg7IHRleHQtaW5kZW50OiAyMHB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+MjAxM+W5tDbmnIjmiJDnq4vkuoborqHnrpfmnLrlt6XnqIvnoJTnqbbmiYDvvIznoa7lrprkuobomZrmi5/njrDlrp7lkozmlbDmja7lupPlu7rmqKHkuKTkuKrkuLvopoHnoJTnqbbmlrnlkJHvvIzmiJDnq4vkuobnu5PmnoTlkIjnkIbnmoTnp5HnoJTmoq/pmJ/vvIzkuLrlhajmoKHmlZnluIjnmoTnp5HnoJTlt6XkvZzmj5Dkvpvkuobln7rnoYDlkozkv53pmpzjgII8L3A+PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvZXhwbWVudC9ob21lL3B1YmxpYy9pbWcvJUU1JTlGJUJBJUU1JTlDJUIwJUU0JUJCJThCJUU3JUJCJThEaW1nLyVFNSU5RiVCQSVFNSU5QyVCMCVFNyVBRSU4MCVFNCVCQiU4Ql8wMi5wbmciIGFsdD0iIiBjbGFzcz0icGhvdG8wMiIvPjwvcD48cCBjbGFzcz0icnRfZm9udCIgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogMTNweDsgY29sb3I6IHJnYigxMDIsIDEwMiwgMTAyKTsgbGluZS1oZWlnaHQ6IDI1cHg7IHRleHQtaW5kZW50OiAyMHB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+6K6h566X5py65bel56iL57O7546w5pyJ5LiT6IGM5pWZ5biINDPlkI3vvIzlhbbkuK3pq5jnuqfogYznp7Dku6XkuIo55Lq677yM6K6y5biIMTfkurrvvIzljZrlo6vlkoznoZXlo6vlrabljobljaDliLA4NiXjgILlhajns7vlhbHojrflvpfnnIHnuqfku6XkuIrmlZnlrabmiJDmnpw06aG577yM5YW25Lit5LqM562J5aWWM+mhue+8jOS4gOetieWlluS4gOmhueOAgjHkurrojrflvpflsbHopb/nnIEmcXVvdDvluIjlvrfmoIflhbUmcXVvdDvnp7Dlj7fvvIwx5Lq65Zyo5bGx6KW/55yB6auY562J6Zmi5qCh5Lit6Z2S5bm05pWZ5biI5pWZ5a2m5Z+65pys5Yqf56ue6LWb5Lit5Y+W5b6X5LqM562J5aWW5bm26K6w5bGx6KW/55yB56S+5Lya5Li75LmJ5Yqz5Yqo56ue6LWb5LiA562J5Yqf5LiA5qyh44CCMeS6uuWcqDIwMTDlubTnrKzljYHlsYrlhajlm73lpJrlqpLkvZPor77ku7blpKfotZstLS0t6auY5pWZ5bel56eR57uE6I635LiJ562J5aWWPC9wPjxwPjxici8+PC9wPg==', 'PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+5oiR5Lus6ZyA6KaB6YG15a6I5LuA5LmI77yfPC9wPjxwIGNsYXNzPSJydF9ydWxlIiBzdHlsZT0iZm9udC1mYW1pbHk6IOW+rui9r+mbhem7kTsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAwcHg7IHBhZGRpbmc6IDBweDsgZm9udC1zaXplOiAxNHB4OyBjb2xvcjogcmdiKDEwMiwgMTAyLCAxMDIpOyBsaW5lLWhlaWdodDogMzVweDsgd2hpdGUtc3BhY2U6IG5vcm1hbDsiPuS4gOOAgSDpgbXlrojlrabpmaLlj4rorqHnrpfmnLrns7vnmoTlkITpobnop4Tnq6DliLbluqbjgII8YnIvPuS6jOOAgSDmjInml7bliLDlspfvvIzlsL3ogYzlsL3otKPvvIzkuI3lvpfnp4Hoh6rkuLLlspfjgIHnprvogYzjgIHnvLrlspfjgII8YnIvPuS4ieOAgSDotJ/otKPlrp7pqozlrqTljavnlJ/muIXmiavjgII8YnIvPuWbm+OAgSDlt6XkvZzorqTnnJ/vvIzkuLvliqjluK7liqnlrabpmaLop6PlhrPlkITnp43pl67popjjgII8YnIvPuS6lOOAgSDkv53or4Horr7lpIfnmoTmraPluLjov5DooYznirbmgIHjgILlpoLmnInpl67popjlupTlj4rml7bnu7Tkv67kuK3lv4PogZTns7vvvIzkuI3lvpfmk4Xoh6rlrZDmi4bljbjmnLrlmajlkoznp7vliqjorr7lpIfjgIImbmJzcDs8YnIvPuWFreOAgSDlrp7pqozlrqTkuI3lh4bmtY/op4jmmrTlipvlkozoibLmg4XnvZHpobXjgIHkuI3lhYHorrjkuIrkvKDlj43liqjoqIDorrrvvIzlpoLmnInlj5HnjrDlupTlj4rml7bliLbmraLlubbpgJrnn6XmnInlhbPkurrlkZjjgII8YnIvPuS4g+OAgSDkv53or4HmraPluLjnmoTkuIrnuqfnqIvluo/vvIznnIvnrqHlpb3lrp7pqozlrqTnmoTmiYDmnInnianlk4HvvIzlpoLlj5HnlJ/orr7lpIforr7mlr3nmoTkuKLlpLHmiJbmjZ/lnY/vvIzlupTmjInljp/ku7fotZTlgb/jgIImbmJzcDs8YnIvPuWFq+OAgSDkuIrnuqfnu5PmnZ/lkI7vvIzmoLjlr7nlpb3nianlk4HlkI7mlrnlj6/nprvlvIDjgII8YnIvPuS5neOAgSDkuIrnuqfmnJ/pl7TvvIzkuI3lh4bnp4Hoh6rluKbku5bkurrov5vlhaXlrp7pqozlrqTjgII8YnIvPuWNgeOAgSDlt6XkvZzmnJ/pl7TvvIzlupTor6Xnp6/mnoHphY3lkIjmlZnluIjlrozmiJDlhbbku5blt6XkvZzjgII8L3A+PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvZXhwbWVudC9ob21lL3B1YmxpYy9pbWcvJUU1JTlGJUJBJUU1JTlDJUIwJUU0JUJCJThCJUU3JUJCJThEaW1nL2h1YW5qaW5nMDMuanBnIiBhbHQ9IiIgY2xhc3M9InJ1bGUtcGhvdG8iLz48L3A+PHA+PGJyLz48L3A+', '实验室学习环境', 'PHAgY2xhc3M9InJ0X3J1bGUiIHN0eWxlPSJmb250LWZhbWlseTog5b6u6L2v6ZuF6buROyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDBweDsgcGFkZGluZzogMHB4OyBmb250LXNpemU6IDE0cHg7IGNvbG9yOiByZ2IoMTAyLCAxMDIsIDEwMik7IGxpbmUtaGVpZ2h0OiAzNXB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+56ys5LiA5p2hIOaAuyDliJnkuLrliqDlvLrorqHnrpfmnLrlrp7pqozlrqTnmoTnrqHnkIbvvIzlhYXliIblj5HmjKXorqHnrpfmnLrlrp7pqozlrqTnmoTovoXliqnmlZnlrabkvZznlKjvvIzlu7bplb/orqHnrpfmnLrlrp7pqozlrqTorr7lpIfkvb/nlKjlr7/lkb3vvIznoa7kv53mlZnlrabnp6nluo/nmoTmraPluLjov5vooYzvvIznibnliLblrprmnKzliLbluqbjgII8YnIvPuesrOS6jOadoSDkvZMg5Yi26K6h566X5py65a6e6aqM5a6k55qE5L2/55So5LiO566h55CG5a6e6KGM57uf56256KeE5YiS44CB57uf5LiA5qCH5YeG44CB57uf5LiA566h55CG44CB5YiG5bGC6LSf6LSj44CCPC9wPjxwIHN0eWxlPSJmb250LWZhbWlseTog5b6u6L2v6ZuF6buROyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDBweDsgcGFkZGluZzogMHB4OyBmb250LXNpemU6IG1lZGl1bTsgd2hpdGUtc3BhY2U6IG5vcm1hbDsiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L2V4cG1lbnQvaG9tZS9wdWJsaWMvaW1nLyVFNSU5RiVCQSVFNSU5QyVCMCVFNCVCQiU4QiVFNyVCQiU4RGltZy8lRTUlOUYlQkElRTUlOUMlQjAlRTclQUUlODAlRTQlQkIlOEJfMDIucG5nIiBhbHQ9IiIgY2xhc3M9InBob3RvMDIiLz48L3A+PHAgY2xhc3M9InJ0X3J1bGUiIHN0eWxlPSJmb250LWZhbWlseTog5b6u6L2v6ZuF6buROyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDBweDsgcGFkZGluZzogMHB4OyBmb250LXNpemU6IDE0cHg7IGNvbG9yOiByZ2IoMTAyLCAxMDIsIDEwMik7IGxpbmUtaGVpZ2h0OiAzNXB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+56ys5LiJ5p2hIOiBjCDotKMg6K6h566X5py65a6e6aqM5a6k5pel5bi45L2/55So5LiO566h55CG77yM55Sx5ZCE6K6h566X5py65a6e6aqM5a6k566h55CG5ZGY5YW35L2T6LSf6LSj77yM5Li76KaB6IGM6LSj5YyF5ous77yaPGJyLz4x44CB6LSf6LSj6K6h566X5py65a6e6aqM5a6k5YaF5omA5pyJ6K6h566X5py65ZKM5YW25a6D6K6+5aSH55qE5L2/55So44CB57u05oqk44CB5L+d5YW744CB57u05L+u5bel5L2c77ybPGJyLz4y44CB6K6k55yf5L+d566h5aW96K6h566X5py65a6e6aqM5a6k5YaF6K6+5aSH77yM6K6k55yf5aGr5YaZ5L2/55So6K6w5b2V77ybPGJyLz4z44CB6LSf6LSj57u05oqk572R57uc5a6J5YWo5ZKM5L+h5oGv5a6J5YWo5bel5L2c77yM5a6a5pyf5YGa5aW96Ziy55eF5q+S6L2v5Lu255qE5Y2H57qn44CB5p+l5q+S5bel5L2c77ybPGJyLz4044CB6LSf6LSj5L+d5a2Y6K6h566X5py65a6e6aqM5a6k5L2/55So55qE5pyJ5YWz6K6w5b2V5bm25o6l5Y+X5LiK5LiA57qn6YOo6Zeo55qE55uR552j5ZKM5qOA5p+l77ybPGJyLz4144CB5LiO5YW25a6D5aSE77yI5a6k77yJ5a+G5YiH6YWN5ZCI77yM5YGa5aW96K6h566X5py65Z+56K6t5bel5L2c77ybPGJyLz4244CB6LSf6LSj6K6h566X5py65a6e6aqM5a6k55qE6Ziy55uX44CB6Ziy54Gr44CB5a6J5YWo6Zeu6aKY5Y+K5Y2r55Sf6Zeu6aKY77ybPGJyLz4344CB6LSf6LSj5a6J6KOF5ZKM5Y246L295ZCE56eN5bqU55So6L2v5Lu277ybPGJyLz4444CB5Y+K5pe244CB5YeG56Gu5YGa5aW96K6h566X5py65a6e6aqM5a6k5pWw5o2u5aSH5Lu977yM5Lul5L6/5Ye6546w6Zeu6aKY5pe25Y+K5pe25oGi5aSN77ybPGJyLz4544CB57u05oyB5LiK5py656ep5bqP77yM6LSf6LSj6K++5YmN5YeG5aSH77yM5Lul5L+d6K+B5q2j5bi455qE5pWZ5a2m5rS75Yqo77ybPC9wPjxwPjxici8+PC9wPg==', '/Uploads/2016-09-18/small_57de54eb49a73.jpg', '/Uploads/2016-09-18/small_57de537bbb1f3.jpg', '/Uploads/2016-09-18/small_57de52d32f5ba.jpg', '/Uploads/2016-09-18/small_57de52d33049d.jpg');

-- ----------------------------
-- Table structure for `tp_about_exp_copy1`
-- ----------------------------
DROP TABLE IF EXISTS `tp_about_exp_copy1`;
CREATE TABLE `tp_about_exp_copy1` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `exp_introduce` text,
  `exp_regulation` text,
  `exp_stu_environment` text,
  `exp_manage` text,
  `exp_image_1` varchar(255) DEFAULT NULL,
  `exp_image_2` varchar(255) DEFAULT NULL,
  `exp_image_3` varchar(255) DEFAULT NULL,
  `exp_image_4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_about_exp_copy1
-- ----------------------------
INSERT INTO `tp_about_exp_copy1` VALUES ('1', 'PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+5oiR5Lus5Li76KaB56CU56m25LuA5LmI77yfPC9wPjxwIGNsYXNzPSJydF9mb250IiBzdHlsZT0iZm9udC1mYW1pbHk6IOW+rui9r+mbhem7kTsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAwcHg7IHBhZGRpbmc6IDBweDsgZm9udC1zaXplOiAxM3B4OyBjb2xvcjogcmdiKDEwMiwgMTAyLCAxMDIpOyBsaW5lLWhlaWdodDogMjVweDsgdGV4dC1pbmRlbnQ6IDIwcHg7IHdoaXRlLXNwYWNlOiBub3JtYWw7Ij7orqHnrpfmnLrlt6XnqIvns7vnjrDmnInigJzorqHnrpfmnLrnp5HlrabkuI7mioDmnK/igJ3jgIHigJznvZHnu5zlt6XnqIvigJ3lkozigJzova/ku7blt6XnqIvigJ3kuInkuKrmnKznp5HkuJPkuJrvvIzlhbbkuK3igJzorqHnrpfmnLrnp5HlrabkuI7mioDmnK/igJ3kuJPkuJoyMDEz5bm06KKr6K+E5Li65bGx6KW/55yB6auY562J5a2m5qCh54m56Imy5LiT5Lia5bu66K6+54K577yM5oiQ5Li65paw5LiA6L2u55qE5bGx6KW/55yB54m56Imy5LiT5Lia5bu66K6+54K577yb6K6h566X5py65bel56iL5a6e6aqM5pWZ5a2m5Lit5b+D6KKr6K+E5Li64oCc5Y2B5LqM5LqU5bGx6KW/55yB6auY562J5a2m5qCh5a6e6aqM5pWZ5a2m56S66IyD5Lit5b+D44CCMjAxM+W5tOiuoeeul+acuuW3peeoi+ezu+WcqOWHnee7g+WkmuW5tOWKnuWtpueJueiJsueahOWfuuehgOS4iu+8jOeUs+aKpeS6huKAnOaVsOWtl+WqkuS9k+KAneS4k+S4mu+8jOS4uuaJi+acuua4uOaIj+eahOW8gOWPkeaPkOS+m+S6huaWsOeahOaUr+aSkeW5s+WPsOOAgjwvcD48cCBzdHlsZT0iZm9udC1mYW1pbHk6IOW+rui9r+mbhem7kTsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAwcHg7IHBhZGRpbmc6IDBweDsgZm9udC1zaXplOiBtZWRpdW07IHdoaXRlLXNwYWNlOiBub3JtYWw7Ij48aW1nIHNyYz0iaHR0cDovL2xvY2FsaG9zdC9leHBtZW50L2hvbWUvcHVibGljL2ltZy8lRTUlOUYlQkElRTUlOUMlQjAlRTQlQkIlOEIlRTclQkIlOERpbWcvJUU1JTlGJUJBJUU1JTlDJUIwJUU3JUFFJTgwJUU0JUJCJThCXzAxLnBuZyIgYWx0PSIiIHdpZHRoPSIxMDAlIiBjbGFzcz0icGhvdG8wMSIvPjwvcD48cCBjbGFzcz0icnRfZm9udCIgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogMTNweDsgY29sb3I6IHJnYigxMDIsIDEwMiwgMTAyKTsgbGluZS1oZWlnaHQ6IDI1cHg7IHRleHQtaW5kZW50OiAyMHB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+MjAxM+W5tDbmnIjmiJDnq4vkuoborqHnrpfmnLrlt6XnqIvnoJTnqbbmiYDvvIznoa7lrprkuobomZrmi5/njrDlrp7lkozmlbDmja7lupPlu7rmqKHkuKTkuKrkuLvopoHnoJTnqbbmlrnlkJHvvIzmiJDnq4vkuobnu5PmnoTlkIjnkIbnmoTnp5HnoJTmoq/pmJ/vvIzkuLrlhajmoKHmlZnluIjnmoTnp5HnoJTlt6XkvZzmj5Dkvpvkuobln7rnoYDlkozkv53pmpzjgII8L3A+PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvZXhwbWVudC9ob21lL3B1YmxpYy9pbWcvJUU1JTlGJUJBJUU1JTlDJUIwJUU0JUJCJThCJUU3JUJCJThEaW1nLyVFNSU5RiVCQSVFNSU5QyVCMCVFNyVBRSU4MCVFNCVCQiU4Ql8wMi5wbmciIGFsdD0iIiBjbGFzcz0icGhvdG8wMiIvPjwvcD48cCBjbGFzcz0icnRfZm9udCIgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogMTNweDsgY29sb3I6IHJnYigxMDIsIDEwMiwgMTAyKTsgbGluZS1oZWlnaHQ6IDI1cHg7IHRleHQtaW5kZW50OiAyMHB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+6K6h566X5py65bel56iL57O7546w5pyJ5LiT6IGM5pWZ5biINDPlkI3vvIzlhbbkuK3pq5jnuqfogYznp7Dku6XkuIo55Lq677yM6K6y5biIMTfkurrvvIzljZrlo6vlkoznoZXlo6vlrabljobljaDliLA4NiXjgILlhajns7vlhbHojrflvpfnnIHnuqfku6XkuIrmlZnlrabmiJDmnpw06aG577yM5YW25Lit5LqM562J5aWWM+mhue+8jOS4gOetieWlluS4gOmhueOAgjHkurrojrflvpflsbHopb/nnIEmcXVvdDvluIjlvrfmoIflhbUmcXVvdDvnp7Dlj7fvvIwx5Lq65Zyo5bGx6KW/55yB6auY562J6Zmi5qCh5Lit6Z2S5bm05pWZ5biI5pWZ5a2m5Z+65pys5Yqf56ue6LWb5Lit5Y+W5b6X5LqM562J5aWW5bm26K6w5bGx6KW/55yB56S+5Lya5Li75LmJ5Yqz5Yqo56ue6LWb5LiA562J5Yqf5LiA5qyh44CCMeS6uuWcqDIwMTDlubTnrKzljYHlsYrlhajlm73lpJrlqpLkvZPor77ku7blpKfotZstLS0t6auY5pWZ5bel56eR57uE6I635LiJ562J5aWWPC9wPjxwPjxici8+PC9wPg==', 'PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+5oiR5Lus6ZyA6KaB6YG15a6I5LuA5LmI77yfPC9wPjxwIGNsYXNzPSJydF9ydWxlIiBzdHlsZT0iZm9udC1mYW1pbHk6IOW+rui9r+mbhem7kTsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAwcHg7IHBhZGRpbmc6IDBweDsgZm9udC1zaXplOiAxNHB4OyBjb2xvcjogcmdiKDEwMiwgMTAyLCAxMDIpOyBsaW5lLWhlaWdodDogMzVweDsgd2hpdGUtc3BhY2U6IG5vcm1hbDsiPuS4gOOAgSDpgbXlrojlrabpmaLlj4rorqHnrpfmnLrns7vnmoTlkITpobnop4Tnq6DliLbluqbjgII8YnIvPuS6jOOAgSDmjInml7bliLDlspfvvIzlsL3ogYzlsL3otKPvvIzkuI3lvpfnp4Hoh6rkuLLlspfjgIHnprvogYzjgIHnvLrlspfjgII8YnIvPuS4ieOAgSDotJ/otKPlrp7pqozlrqTljavnlJ/muIXmiavjgII8YnIvPuWbm+OAgSDlt6XkvZzorqTnnJ/vvIzkuLvliqjluK7liqnlrabpmaLop6PlhrPlkITnp43pl67popjjgII8YnIvPuS6lOOAgSDkv53or4Horr7lpIfnmoTmraPluLjov5DooYznirbmgIHjgILlpoLmnInpl67popjlupTlj4rml7bnu7Tkv67kuK3lv4PogZTns7vvvIzkuI3lvpfmk4Xoh6rlrZDmi4bljbjmnLrlmajlkoznp7vliqjorr7lpIfjgIImbmJzcDs8YnIvPuWFreOAgSDlrp7pqozlrqTkuI3lh4bmtY/op4jmmrTlipvlkozoibLmg4XnvZHpobXjgIHkuI3lhYHorrjkuIrkvKDlj43liqjoqIDorrrvvIzlpoLmnInlj5HnjrDlupTlj4rml7bliLbmraLlubbpgJrnn6XmnInlhbPkurrlkZjjgII8YnIvPuS4g+OAgSDkv53or4HmraPluLjnmoTkuIrnuqfnqIvluo/vvIznnIvnrqHlpb3lrp7pqozlrqTnmoTmiYDmnInnianlk4HvvIzlpoLlj5HnlJ/orr7lpIforr7mlr3nmoTkuKLlpLHmiJbmjZ/lnY/vvIzlupTmjInljp/ku7fotZTlgb/jgIImbmJzcDs8YnIvPuWFq+OAgSDkuIrnuqfnu5PmnZ/lkI7vvIzmoLjlr7nlpb3nianlk4HlkI7mlrnlj6/nprvlvIDjgII8YnIvPuS5neOAgSDkuIrnuqfmnJ/pl7TvvIzkuI3lh4bnp4Hoh6rluKbku5bkurrov5vlhaXlrp7pqozlrqTjgII8YnIvPuWNgeOAgSDlt6XkvZzmnJ/pl7TvvIzlupTor6Xnp6/mnoHphY3lkIjmlZnluIjlrozmiJDlhbbku5blt6XkvZzjgII8L3A+PHAgc3R5bGU9ImZvbnQtZmFtaWx5OiDlvq7ova/pm4Xpu5E7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyBwYWRkaW5nOiAwcHg7IGZvbnQtc2l6ZTogbWVkaXVtOyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvZXhwbWVudC9ob21lL3B1YmxpYy9pbWcvJUU1JTlGJUJBJUU1JTlDJUIwJUU0JUJCJThCJUU3JUJCJThEaW1nL2h1YW5qaW5nMDMuanBnIiBhbHQ9IiIgY2xhc3M9InJ1bGUtcGhvdG8iLz48L3A+PHA+PGJyLz48L3A+', '实验室学习环境', 'PHAgY2xhc3M9InJ0X3J1bGUiIHN0eWxlPSJmb250LWZhbWlseTog5b6u6L2v6ZuF6buROyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDBweDsgcGFkZGluZzogMHB4OyBmb250LXNpemU6IDE0cHg7IGNvbG9yOiByZ2IoMTAyLCAxMDIsIDEwMik7IGxpbmUtaGVpZ2h0OiAzNXB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+56ys5LiA5p2hIOaAuyDliJnkuLrliqDlvLrorqHnrpfmnLrlrp7pqozlrqTnmoTnrqHnkIbvvIzlhYXliIblj5HmjKXorqHnrpfmnLrlrp7pqozlrqTnmoTovoXliqnmlZnlrabkvZznlKjvvIzlu7bplb/orqHnrpfmnLrlrp7pqozlrqTorr7lpIfkvb/nlKjlr7/lkb3vvIznoa7kv53mlZnlrabnp6nluo/nmoTmraPluLjov5vooYzvvIznibnliLblrprmnKzliLbluqbjgII8YnIvPuesrOS6jOadoSDkvZMg5Yi26K6h566X5py65a6e6aqM5a6k55qE5L2/55So5LiO566h55CG5a6e6KGM57uf56256KeE5YiS44CB57uf5LiA5qCH5YeG44CB57uf5LiA566h55CG44CB5YiG5bGC6LSf6LSj44CCPC9wPjxwIHN0eWxlPSJmb250LWZhbWlseTog5b6u6L2v6ZuF6buROyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDBweDsgcGFkZGluZzogMHB4OyBmb250LXNpemU6IG1lZGl1bTsgd2hpdGUtc3BhY2U6IG5vcm1hbDsiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L2V4cG1lbnQvaG9tZS9wdWJsaWMvaW1nLyVFNSU5RiVCQSVFNSU5QyVCMCVFNCVCQiU4QiVFNyVCQiU4RGltZy8lRTUlOUYlQkElRTUlOUMlQjAlRTclQUUlODAlRTQlQkIlOEJfMDIucG5nIiBhbHQ9IiIgY2xhc3M9InBob3RvMDIiLz48L3A+PHAgY2xhc3M9InJ0X3J1bGUiIHN0eWxlPSJmb250LWZhbWlseTog5b6u6L2v6ZuF6buROyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDBweDsgcGFkZGluZzogMHB4OyBmb250LXNpemU6IDE0cHg7IGNvbG9yOiByZ2IoMTAyLCAxMDIsIDEwMik7IGxpbmUtaGVpZ2h0OiAzNXB4OyB3aGl0ZS1zcGFjZTogbm9ybWFsOyI+56ys5LiJ5p2hIOiBjCDotKMg6K6h566X5py65a6e6aqM5a6k5pel5bi45L2/55So5LiO566h55CG77yM55Sx5ZCE6K6h566X5py65a6e6aqM5a6k566h55CG5ZGY5YW35L2T6LSf6LSj77yM5Li76KaB6IGM6LSj5YyF5ous77yaPGJyLz4x44CB6LSf6LSj6K6h566X5py65a6e6aqM5a6k5YaF5omA5pyJ6K6h566X5py65ZKM5YW25a6D6K6+5aSH55qE5L2/55So44CB57u05oqk44CB5L+d5YW744CB57u05L+u5bel5L2c77ybPGJyLz4y44CB6K6k55yf5L+d566h5aW96K6h566X5py65a6e6aqM5a6k5YaF6K6+5aSH77yM6K6k55yf5aGr5YaZ5L2/55So6K6w5b2V77ybPGJyLz4z44CB6LSf6LSj57u05oqk572R57uc5a6J5YWo5ZKM5L+h5oGv5a6J5YWo5bel5L2c77yM5a6a5pyf5YGa5aW96Ziy55eF5q+S6L2v5Lu255qE5Y2H57qn44CB5p+l5q+S5bel5L2c77ybPGJyLz4044CB6LSf6LSj5L+d5a2Y6K6h566X5py65a6e6aqM5a6k5L2/55So55qE5pyJ5YWz6K6w5b2V5bm25o6l5Y+X5LiK5LiA57qn6YOo6Zeo55qE55uR552j5ZKM5qOA5p+l77ybPGJyLz4144CB5LiO5YW25a6D5aSE77yI5a6k77yJ5a+G5YiH6YWN5ZCI77yM5YGa5aW96K6h566X5py65Z+56K6t5bel5L2c77ybPGJyLz4244CB6LSf6LSj6K6h566X5py65a6e6aqM5a6k55qE6Ziy55uX44CB6Ziy54Gr44CB5a6J5YWo6Zeu6aKY5Y+K5Y2r55Sf6Zeu6aKY77ybPGJyLz4344CB6LSf6LSj5a6J6KOF5ZKM5Y246L295ZCE56eN5bqU55So6L2v5Lu277ybPGJyLz4444CB5Y+K5pe244CB5YeG56Gu5YGa5aW96K6h566X5py65a6e6aqM5a6k5pWw5o2u5aSH5Lu977yM5Lul5L6/5Ye6546w6Zeu6aKY5pe25Y+K5pe25oGi5aSN77ybPGJyLz4544CB57u05oyB5LiK5py656ep5bqP77yM6LSf6LSj6K++5YmN5YeG5aSH77yM5Lul5L+d6K+B5q2j5bi455qE5pWZ5a2m5rS75Yqo77ybPC9wPjxwPjxici8+PC9wPg==', '/Uploads/2016-09-18/small_57de54eb49a73.jpg', '/Uploads/2016-09-18/small_57de537bbb1f3.jpg', '/Uploads/2016-09-18/small_57de52d32f5ba.jpg', '/Uploads/2016-09-18/small_57de52d33049d.jpg');

-- ----------------------------
-- Table structure for `tp_adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `tp_adminuser`;
CREATE TABLE `tp_adminuser` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_limit_id` int(10) NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `is_online` int(10) DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `true_name` varchar(20) DEFAULT NULL,
  `is_first_login` int(10) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_adminuser
-- ----------------------------
INSERT INTO `tp_adminuser` VALUES ('4', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', null, '1', '826768342@qq.com', '黄建琪', '1');
INSERT INTO `tp_adminuser` VALUES ('5', 'bruce', 'e8315caa4eb8c2a2625d4e97dbba100a', '1', null, '0', '826768342@qq.com', '孔子', '1');

-- ----------------------------
-- Table structure for `tp_admin_limit`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_limit`;
CREATE TABLE `tp_admin_limit` (
  `user_limit_id` int(10) NOT NULL,
  `value` varchar(10) NOT NULL,
  `role_auth_id` varchar(255) DEFAULT NULL,
  `role_auth_ac` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin_limit
-- ----------------------------
INSERT INTO `tp_admin_limit` VALUES ('0', '最高权限管理员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37', null);
INSERT INTO `tp_admin_limit` VALUES ('1', '普通管理员', '2,3,4,5,6,7,8,9,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,34,35,36,37', null);

-- ----------------------------
-- Table structure for `tp_auth`
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth`;
CREATE TABLE `tp_auth` (
  `auth_id` int(10) NOT NULL,
  `auth_name` varchar(20) DEFAULT NULL,
  `auth_pid` int(10) DEFAULT NULL,
  `auth_c` varchar(20) DEFAULT NULL,
  `auth_a` varchar(20) DEFAULT NULL,
  `auth_path` varchar(20) DEFAULT NULL,
  `auth_level` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_auth
-- ----------------------------
INSERT INTO `tp_auth` VALUES ('1', '管理员管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('2', '关于实验室管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('3', '项目管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('4', '成员管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('5', '达人秀管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('7', '设备管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('8', '实验室动态管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('9', '学习资源管理', '0', null, null, null, '0');
INSERT INTO `tp_auth` VALUES ('10', '添加管理员', '1', 'User', 'addadmin', '1-10', '1');
INSERT INTO `tp_auth` VALUES ('11', '管理员列表', '1', 'User', 'getalladmin', '1-11', '1');
INSERT INTO `tp_auth` VALUES ('12', '实验室信息修改', '2', 'AboutExp', 'getmes', '2-12', '1');
INSERT INTO `tp_auth` VALUES ('13', '即将开始的项目', '3', 'Pro', 'getnodoingpro', '3-13', '1');
INSERT INTO `tp_auth` VALUES ('14', '正在进行的项目', '3', 'Pro', 'getundoingpro', '3-14', '1');
INSERT INTO `tp_auth` VALUES ('15', '已经完成的项目', '3', 'Pro', 'gethavedonepro', '3-15', '1');
INSERT INTO `tp_auth` VALUES ('16', '新成员', '4', 'Member', 'getnewmember', '4-16', '1');
INSERT INTO `tp_auth` VALUES ('17', '实习组成员', '4', 'Member', 'gettrainmember', '4-17', '1');
INSERT INTO `tp_auth` VALUES ('18', '测试组成员', '4', 'Member', 'gettestmember', '4-18', '1');
INSERT INTO `tp_auth` VALUES ('19', '研发组成员', '4', 'Member', 'getresearchmember', '4-19', '1');
INSERT INTO `tp_auth` VALUES ('20', '项目经理', '4', 'Member', 'getmanagemember', '4-20', '1');
INSERT INTO `tp_auth` VALUES ('21', '总负责人', '4', 'Member', 'getchargemember', '4-21', '1');
INSERT INTO `tp_auth` VALUES ('22', '指导老师', '4', 'Member', 'getteachermember', '4-22', '1');
INSERT INTO `tp_auth` VALUES ('23', '已毕业成员', '4', 'Member', 'getgraduatemember', '4-23', '1');
INSERT INTO `tp_auth` VALUES ('24', '设备查看', '7', 'Equipment', 'getallequip', '7-24', '1');
INSERT INTO `tp_auth` VALUES ('25', '公告查看', '8', 'Notice', 'getallmes', '8-25', '1');
INSERT INTO `tp_auth` VALUES ('26', 'PHP', '9', 'Resource', 'getphpmes', '9-26', '1');
INSERT INTO `tp_auth` VALUES ('29', '前端', '9', 'Resource', 'getqianduanmes', '9-29', '1');
INSERT INTO `tp_auth` VALUES ('30', 'JAVA', '9', 'Resource', 'getjavames', '9-30', '1');
INSERT INTO `tp_auth` VALUES ('31', '美工', '9', 'Resource', 'getmeigongmes', '9-31', '1');
INSERT INTO `tp_auth` VALUES ('32', '虚拟现实', '9', 'Resource', 'getxunimes', '9-32', '1');
INSERT INTO `tp_auth` VALUES ('27', 'IOS', '9', 'Resource', 'getiosmes', '9-27', '1');
INSERT INTO `tp_auth` VALUES ('28', 'Android', '9', 'Resource', 'getandroidmes', '9-28', '1');
INSERT INTO `tp_auth` VALUES ('34', '明星成员管理', '5', 'Star', 'getallstarmem', '5-34', '1');
INSERT INTO `tp_auth` VALUES ('35', '.Net', '9', 'Resource', 'getnetmes', '9-35', '1');
INSERT INTO `tp_auth` VALUES ('36', 'C/C++', '9', 'Resource', 'getcorcppmes', '9-36', '1');
INSERT INTO `tp_auth` VALUES ('37', '其他', '9', 'Resource', 'getothermes', '9-39', '1');
INSERT INTO `tp_auth` VALUES ('33', '资源审核', '9', 'Resource', 'getnopassmes', '9-39', '1');

-- ----------------------------
-- Table structure for `tp_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `tp_equipment`;
CREATE TABLE `tp_equipment` (
  `equip_id` int(10) NOT NULL AUTO_INCREMENT,
  `equip_no` varchar(50) DEFAULT NULL,
  `equip_name` varchar(50) DEFAULT NULL,
  `equip_describe` text,
  `equip_num` int(10) DEFAULT NULL,
  PRIMARY KEY (`equip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_equipment
-- ----------------------------
INSERT INTO `tp_equipment` VALUES ('3', '003', '偏光眼镜', '3D（C+D3PG）,3D（C+D3PG）', '1');
INSERT INTO `tp_equipment` VALUES ('4', '004', '光笔', 'CTH-680,CTH-680', '1');
INSERT INTO `tp_equipment` VALUES ('5', '005', '数据手套', 'Data Glove,Data Glove', '1');
INSERT INTO `tp_equipment` VALUES ('6', '006', 'Zigbee数据接入模块Zigbee数据接入模块', 'EBDCC2530-,EBDCC2530-', '1');
INSERT INTO `tp_equipment` VALUES ('7', '007', 'Zigbee模块下载仿真器', 'EBD-CCDebu,EBD-CCDebu', '1');
INSERT INTO `tp_equipment` VALUES ('8', '008', '人体红外传感器模块', 'EBD-Infrar,EBD-Infrar', '1');
INSERT INTO `tp_equipment` VALUES ('9', '009', '车辆控制应用系统', 'EBD-IOV,EBD-IOV', '1');
INSERT INTO `tp_equipment` VALUES ('10', '010', '雨滴传感器模块', 'EBD-Raindr,EBD-Raindr', '1');
INSERT INTO `tp_equipment` VALUES ('11', '011', '智能灯光控制模块', 'EBD-Rlay,EBD-Rlay', null);
INSERT INTO `tp_equipment` VALUES ('12', '012', '温湿度、光照强度环境检测开发模块', 'EBD-SHL,EBD-SHL', null);
INSERT INTO `tp_equipment` VALUES ('13', '013', '无线压力检测开发平台', 'EBD-WP,EBD-WP', null);
INSERT INTO `tp_equipment` VALUES ('14', '014', '无线车辆跟踪定位开发平台', 'EBD-WVTrac,EBD-WVTrac', null);
INSERT INTO `tp_equipment` VALUES ('15', '015', 'ARM9 Realview MDK开发实', 'EMSBC2410,EMSBC2410', null);
INSERT INTO `tp_equipment` VALUES ('16', '016', '无线网卡', 'ET302,ET302', null);
INSERT INTO `tp_equipment` VALUES ('17', '017', '双镜头3D数码相机', 'HC-X920MGK,HC-X920MGK', null);
INSERT INTO `tp_equipment` VALUES ('18', '018', '操作杆', 'NV8R-01,NV8R-01', null);
INSERT INTO `tp_equipment` VALUES ('19', '019', '数字化仪', 'PTH-651,PTH-651', null);
INSERT INTO `tp_equipment` VALUES ('20', '020', '数码相机', 'RX10,RX10', null);
INSERT INTO `tp_equipment` VALUES ('21', '021', '跟踪球', 'XACZN-HP18,XACZN-HP18', null);
INSERT INTO `tp_equipment` VALUES ('22', '022', '体感设备', 'Xbox360,Xbox360', null);
INSERT INTO `tp_equipment` VALUES ('23', '023', '图形工作站', 'XPS8700-D3,XPS8700-D3', null);
INSERT INTO `tp_equipment` VALUES ('24', '024', '视频头盔', 'Z800,Z800', null);
INSERT INTO `tp_equipment` VALUES ('25', '025', '蓝牙模块', 'EBD-BT,EBD-BT', null);
INSERT INTO `tp_equipment` VALUES ('26', '026', '摄像头模块', 'EBD-Cam,EBD-Cam', null);
INSERT INTO `tp_equipment` VALUES ('27', '027', 'GPS模块', 'EBD-GPS,EBD-GPS', null);
INSERT INTO `tp_equipment` VALUES ('28', '028', '3G移动互联网开发实验平台', 'EBDS5PV210,EBDS5PV210', null);
INSERT INTO `tp_equipment` VALUES ('29', '029', '重力感应传感器模块', 'EBD-SENSOR,EBD-SENSOR', null);
INSERT INTO `tp_equipment` VALUES ('30', '030', 'WCDMA 3G模块', 'EBD-WCDMA,EBD-WCDMA', null);
INSERT INTO `tp_equipment` VALUES ('31', '031', 'WIFI模块', 'EBD-WIFI,EBD-WIFI', null);
INSERT INTO `tp_equipment` VALUES ('32', '032', '图形工作站', 'XPS8700-D3,XPS8700-D3', null);

-- ----------------------------
-- Table structure for `tp_member`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member`;
CREATE TABLE `tp_member` (
  `mem_id` int(10) NOT NULL AUTO_INCREMENT,
  `mem_name` varchar(20) DEFAULT NULL,
  `sex` int(10) DEFAULT NULL,
  `student_no` char(9) DEFAULT NULL,
  `study_direction_id` int(10) DEFAULT NULL,
  `member_type_id` int(10) DEFAULT '0',
  `image` varchar(50) DEFAULT NULL,
  `phone_num` varchar(11) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `qq` int(10) DEFAULT NULL,
  `have_study_direction` varchar(50) DEFAULT NULL,
  `is_new` int(10) NOT NULL DEFAULT '1',
  `detail_info` text,
  `working_place` text,
  `working_job` varchar(50) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `grade` text,
  `after_project` text,
  `is_star` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member
-- ----------------------------
INSERT INTO `tp_member` VALUES ('80', '张政', '0', '142054105', '6', '3', '/Uploads/2016-12-30/small_586661318ccee.jpg', '18534009335', '', '384470140', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('1', '张三', '0', '142054101', '1', '0', null, '15364964793', '826768342@qq.com', '826768342', '0', '0', null, null, null, null, null, null, '0');
INSERT INTO `tp_member` VALUES ('88', '汪翔', '0', '132056228', '7', '3', '/Uploads/2016-12-30/small_5866660a61199.jpg', '15656212019', '', '1547032917', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('89', '王彦青', '0', '132056213', '7', '3', '/Uploads/2016-12-30/small_5866669ed7a0e.jpg', '13383434134', '', '957144086', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('83', '栗童童', '1', '142056204', '3', '2', '/Uploads/2017-06-10/small_593bb7765c9b3.jpg', '18434367181', '', '1240062768', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('84', '黄涛', '0', '132054204', '0', '0', '/Uploads/2016-12-30/small_586663bdac21a.jpg', '13383433207', '', '1240973809', '', '1', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('85', '刘正海', '0', '132056240', '2', '3', '/Uploads/2016-12-30/small_5866651339840.jpg', '18835172573', '', '1439387809', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('86', '杨松宁', '0', '132056235', '2', '3', '/Uploads/2016-12-30/small_5866655357b54.jpg', '15935130076', '', '0', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('87', '李明伟', '0', '142056129', '4', '2', '/Uploads/2016-12-30/small_5866658f18555.jpg', '18434366326', '', '759054083', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('38', '小黄', '0', '142065412', '0', '0', '/Uploads/2016-09-28/small_57eb8b65ad62b.jpg', '142054123', '826768342@qq.com', '826768342', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('94', '王儒', '0', '142054107', '0', '2', '/Uploads/2016-12-30/small_586667d988484.jpg', '15703418799', '', '0', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('90', '夏常明', '0', '132056225', '7', '3', '/Uploads/2016-12-30/small_586666ed0f0f5.jpg', '13383434161', '', '1299969883', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('91', '张奇斌', '0', '132056234', '7', '3', '/Uploads/2016-12-30/small_5866673444c9f.jpg', '15197761308', '', '574777018', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('92', '许宝林', '0', '132056208', '7', '3', '/Uploads/2016-12-30/small_5866678be4374.jpg', '18334788868', '', '764832995', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('93', '黄建琪', '0', '142054123', '0', '2', '/Uploads/2016-12-30/small_586667b669463.jpg', '15364964793', '', '0', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('75', '荆慧龙', '0', '132054209', '2', '3', '/Uploads/2016-12-30/small_58665e2440395.jpg', '15383462007', '', '425575184', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('76', '展昭风', '1', '142056140', '2', '2', '/Uploads/2016-12-30/small_58665e7457cdb.jpg', '15034149227', '', '2147483647', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('78', '孙炳', '0', '132055205', '1', '2', '/Uploads/2016-12-30/small_58665f7d8ec6d.jpg', '15803469083', '', '0', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('81', '王首德', '0', '132056210', '0', '3', '/Uploads/2016-12-30/small_586662012c190.jpg', '18835173887', '', '810639594', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('82', '白治军', '0', '132055440', '3', '3', '/Uploads/2016-12-30/small_586662466093f.png', '18334788808', '', '1598730942', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('72', '任雄伟', '0', '132056209', '0', '7', '/Uploads/2016-12-30/small_58665b7b8f961.png', '15903466276', '', '0', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('73', '何昌辉', '0', '132054424', '2', '4', '/Uploads/2016-12-30/small_58665c054e5ef.png', '15383462318', '', '1521669531', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('74', '徐飞', '0', '142056137', '2', '3', '/Uploads/2016-12-30/small_58665d7b05385.jpg', '15383467286', '', '1782349108', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('99', '秦杰', '0', '142054204', '5', '2', '/Uploads/2016-12-30/small_58666a150940b.jpg', '18434368917', '', '2147483647', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('98', '刘传孝', '0', '132056132', '4', '2', '/Uploads/2016-12-30/small_586669d2cba40.jpg', '13383434097', '', '634824404', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('95', '杨益如', '0', '132056128', '4', '2', '/Uploads/2016-12-30/small_5866683246237.jpg', '13934239628', '', '1287865814', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('96', '秦志辉 ', '0', '132056140', '7', '0', '/Uploads/2016-12-30/small_5866687b13273.jpg', '13383434110', '', '740553120', '', '1', '', '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('97', '黄显波', '0', '132056135', '4', '2', '/Uploads/2016-12-30/small_5866694b75c43.jpg', '13383434102', '', '582555682', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('100', '吴易璋', '0', '132054234', '2', '3', '/Uploads/2016-12-30/small_58666a609d867.jpg', '15234191828', '', '81780135', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('101', '董珂', '0', '142056116', '3', '2', '/Uploads/2016-12-30/small_58666a8e7082c.jpg', '18434366649', '', '534106940', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('102', '郑慧慧', '1', '142056126', '4', '2', '/Uploads/2016-12-30/small_58666ac5b2f4d.jpg', '18434369411', '', '153624060', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('103', '李佳鑫', '1', '142056103', '4', '2', '/Uploads/2016-12-30/small_58666b18634ce.jpg', '15364966848', '', '2147483647', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('104', '王晶', '1', '142056128', '4', '2', '/Uploads/2016-12-30/small_58666b41a6487.jpg', '18634414992', '', '1533448022', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('105', '周虹', '1', '142056132', '3', '2', '/Uploads/2016-12-30/small_58666b6d8860c.jpg', '15870077929', '', '2147483647', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('106', '余蕾', '1', '142056236', '2', '2', '/Uploads/2016-12-30/small_58666b9a0817c.jpg', '18636928636', '', '673482245', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('107', '朱钧怡', '1', '142056221', '0', '2', '/Uploads/2016-12-30/small_58666bc35ce61.jpg', '15035171019', '', '1059917125', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('108', '吴海飞', '0', '132054401', '4', '3', '/Uploads/2016-12-30/small_58666bf99c669.jpg', '15003466461', '', '1253242444', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('109', '白雪亮', '0', '132056133', '4', '1', '/Uploads/2016-12-30/small_58666c36d0c4e.jpg', '18634308542', '', '1009403423', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('110', '卫哲', '0', '142054113', '6', '1', '/Uploads/2016-12-30/small_58666c64a6323.jpg', '15364966510', '', '1176439232', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('111', '梁晓伟', '0', '132056223', '0', '3', '/Uploads/2016-12-30/small_58666c837d5df.jpg', '13383434157', '', '1063446909', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('112', '周鑫', '0', '142056102', '4', '1', '/Uploads/2016-12-30/small_58666cbd5bfec.jpg', '15383469681', '', '815415824', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('113', '温在龙', '0', '132056229', '4', '1', '/Uploads/2016-12-30/small_58666ce908dd5.jpg', '13383434165', '', '994108345', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('114', '张鑫鹏', '0', '142055109', '6', '0', '/Uploads/2016-12-30/small_58666d2373264.jpg', '18235153245', '', '2147483647', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('115', '潘佳佳', '1', '142055121', '2', '1', '/Uploads/2016-12-30/small_58666d54702be.jpg', '18135471208', '', '2147483647', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('116', '张文浩', '0', '152055102', '2', '1', '/Uploads/2016-12-30/small_58666d8f7c39f.jpg', '18135107971', '', '1169628043', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('117', '李颖', '0', '152055103', '2', '1', '/Uploads/2016-12-30/small_58666dc38c171.jpg', '18103410480', '', '2147483647', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('118', '田书旭', '0', '142056210', '7', '3', '/Uploads/2016-12-30/small_58666e090fd10.jpg', '15135432842', '', '994963222', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('119', '崔东辉', '0', '142056241', '7', '3', '/Uploads/2016-12-30/small_58666e44d9175.jpg', '15383467268', '', '1358711479', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('120', '崔东辉', '0', '142056241', '7', '3', '/Uploads/2016-12-30/small_58666e4509546.jpg', '15383467268', '', '1358711479', '', '0', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('122', '刘音', '0', '152056140', '4', '1', '/Uploads/2017-06-10/small_593bb3725b30c.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '0');
INSERT INTO `tp_member` VALUES ('123', '黄浩然', '0', '152056138', '4', '0', '/Uploads/2017-06-10/small_593bb3942d082.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('124', '成振甲', '0', '152056123', '4', '1', '/Uploads/2017-06-10/small_593bb3c1222f5.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('125', '江学才', '0', '152056134', '1', '1', '/Uploads/2017-06-10/small_593bb3e84d366.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('126', '李明', '0', '李明', '4', '1', '/Uploads/2017-06-10/small_593bb403cc4e4.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('127', '卫俊宏', '0', '152054125', '4', '1', '/Uploads/2017-06-10/small_593bb417b0435.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('128', '张昊冬', '0', '152054123', '4', '1', '/Uploads/2017-06-10/small_593bb42fade9a.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('129', '王金', '0', '152056107', '4', '1', '/Uploads/2017-06-10/small_593bb52508261.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('130', '王伟', '0', '152056111', '2', '1', '/Uploads/2017-06-10/small_593bb53c2a685.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('131', '杜意权', '0', '152056105', '4', '1', '/Uploads/2017-06-10/small_593bb55a600d5.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('132', '杨旭', '0', '杨旭', '0', '1', '/Uploads/2017-06-10/small_593bb5764ce92.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('133', '杨天祥', '0', '152056130', '3', '1', '/Uploads/2017-06-10/small_593bb58feb3a5.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('134', '袁通', '0', '152056136', '4', '1', '/Uploads/2017-06-10/small_593bb5b897913.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');
INSERT INTO `tp_member` VALUES ('135', '路艺锋', '0', '162054235', '9', '0', '/Uploads/2017-06-10/small_593bb5d359af5.gif', '', '', '0', '', '1', null, '', null, '0', '', '', '1');

-- ----------------------------
-- Table structure for `tp_member_type`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_type`;
CREATE TABLE `tp_member_type` (
  `member_type_id` int(10) NOT NULL,
  `member_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_type
-- ----------------------------
INSERT INTO `tp_member_type` VALUES ('0', '新成员');
INSERT INTO `tp_member_type` VALUES ('0', '实习组成员');
INSERT INTO `tp_member_type` VALUES ('2', '测试组成员');
INSERT INTO `tp_member_type` VALUES ('3', '研发组成员');
INSERT INTO `tp_member_type` VALUES ('4', '项目经理');
INSERT INTO `tp_member_type` VALUES ('5', '总负责人');
INSERT INTO `tp_member_type` VALUES ('6', '指导老师');
INSERT INTO `tp_member_type` VALUES ('7', '已毕业成员');

-- ----------------------------
-- Table structure for `tp_notice`
-- ----------------------------
DROP TABLE IF EXISTS `tp_notice`;
CREATE TABLE `tp_notice` (
  `notice_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` text,
  `mem_id` varchar(50) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_notice
-- ----------------------------
INSERT INTO `tp_notice` VALUES ('10', '实验室信息管理系统', '对实验室人员进行管理实验室项目进行管理', 'Bruce', '2016-12-21');
INSERT INTO `tp_notice` VALUES ('2', '3213', '2132', '312', '2016-09-17');
INSERT INTO `tp_notice` VALUES ('3', '理论学习的重要性', '好好学习', 'test', '2016-10-25');
INSERT INTO `tp_notice` VALUES ('7', 'test', 'test', 'test', '2016-10-25');
INSERT INTO `tp_notice` VALUES ('9', '明天下午五点开会', '鉴于对大家的学习情况的了解,本周决定对大家进行培训,所以召开此次会议,网周知.', '杨老师', '2016-10-25');

-- ----------------------------
-- Table structure for `tp_pro`
-- ----------------------------
DROP TABLE IF EXISTS `tp_pro`;
CREATE TABLE `tp_pro` (
  `pro_id` int(10) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(100) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `manage` varchar(50) DEFAULT NULL,
  `teacher_id` varchar(10) DEFAULT NULL,
  `pro_sources` varchar(255) DEFAULT NULL,
  `mem_id` varchar(50) DEFAULT NULL,
  `pro_type` int(10) DEFAULT NULL,
  `pro_introduce` text,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_pro
-- ----------------------------
INSERT INTO `tp_pro` VALUES ('2', '教学平台管理', '2016-09-12', '2016-09-21', '张老师', null, '外包', null, '1', '教学平台信息管理', null);
INSERT INTO `tp_pro` VALUES ('3', '停车管理系统', '2016-09-12', '2016-09-30', '黄老师', null, '外包', null, '2', '停车管理系统信息', null);
INSERT INTO `tp_pro` VALUES ('4', '432', '0000-00-00', '0000-00-00', '44', '43243', '324', '42', '432', '32', null);
INSERT INTO `tp_pro` VALUES ('5', '888', '0000-00-00', '0000-00-00', '88', '88', '88', '40', '88', '88', null);
INSERT INTO `tp_pro` VALUES ('6', '888', '0000-00-00', '0000-00-00', '88', '88', '88', '1', '88', '88', null);
INSERT INTO `tp_pro` VALUES ('7', '888', '0000-00-00', '0000-00-00', '88', '88', '88', '2', '88', '88', null);
INSERT INTO `tp_pro` VALUES ('8', '888', '0000-00-00', '0000-00-00', '88', '88', '88', '2', '88', '88', null);
INSERT INTO `tp_pro` VALUES ('9', '1231', '0000-00-00', '0000-00-00', '123', '123', '123', null, '123', '123', null);
INSERT INTO `tp_pro` VALUES ('15', '1231', '2016-06-06', '2016-08-05', '黄建琪', '杨慧炯', '实验室', '37,38,39,40,', '1', '实验室创新网站', null);
INSERT INTO `tp_pro` VALUES ('18', '而我却二无群', '2016-10-11', '2016-10-05', '热热 ', '   而温柔', '捂热无若', '\'1\',\'2\',\'9\'', '1', '  而温柔', null);
INSERT INTO `tp_pro` VALUES ('19', '111111', '2016-10-04', '2016-10-13', '1111', '11', '11', '2,9,27', '1', '11', null);
INSERT INTO `tp_pro` VALUES ('20', '数据库实验', '2016-10-13', '2016-10-29', '黄建琪', '张立凡', '外包', '1,2,9', '1', '联系sql语句并学会应用sqlserver', '/Uploads/2016-10-28/small_5813077566463.jpg');
INSERT INTO `tp_pro` VALUES ('23', '停车管理系统', '2016-10-13', '2016-10-28', '张老师', '李老师', '外包', '2,9,27', '2', '对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,对于停车场的管理,', '/Uploads/2016-10-28/small_58134e8361078.jpg');
INSERT INTO `tp_pro` VALUES ('33', '分布式爬虫系统', '2017-06-07', '2017-06-17', 'das', 'asd', 'asd', '徐飞、周鑫', '0', 'dqwe', null);

-- ----------------------------
-- Table structure for `tp_resource`
-- ----------------------------
DROP TABLE IF EXISTS `tp_resource`;
CREATE TABLE `tp_resource` (
  `res_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `res_name` varchar(255) DEFAULT NULL,
  `study_direction_id` int(10) DEFAULT NULL,
  `upload_user` varchar(50) DEFAULT NULL,
  `is_approve` int(10) DEFAULT '0',
  `resource` varchar(255) DEFAULT NULL,
  `xiazai` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`res_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_resource
-- ----------------------------
INSERT INTO `tp_resource` VALUES ('52', '在tp基础修改的框架', '0', 'yhj', '1', '/Uploads/Resource/2016-12-30/58662ddc1bdb5.zip', '2');
INSERT INTO `tp_resource` VALUES ('53', '地铁售票系统源码', '0', 'yhj', '1', '/Uploads/Resource/2016-12-30/58662e751284a.rar', '1');
INSERT INTO `tp_resource` VALUES ('36', '前端视频', '3', 'uploader', '1', '/Uploads/Resource/2016-09-28/57eb8c2fd2357.txt', '1');
INSERT INTO `tp_resource` VALUES ('54', '汾酒源码', '0', 'yhj', '1', '/Uploads/Resource/2016-12-30/58662ec3869ab.rar', '3');
INSERT INTO `tp_resource` VALUES ('56', '南寨派出所视频监控导侦系统', '7', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663429600a0.zip', '0');
INSERT INTO `tp_resource` VALUES ('51', '常用库', '0', 'yhj', '1', '/Uploads/Resource/2016-12-30/586629ffe8136.rar', '24');
INSERT INTO `tp_resource` VALUES ('57', '实践教学管理平台', '7', 'yhj', '1', '/Uploads/Resource/2016-12-30/586635a4bd78b.zip', '0');
INSERT INTO `tp_resource` VALUES ('58', '科技成果转化平台', '7', 'yhj', '1', '/Uploads/Resource/2016-12-30/586635d5ac93a.rar', '0');
INSERT INTO `tp_resource` VALUES ('59', '教学质量保障平台', '7', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663603b5c3b.rar', '0');
INSERT INTO `tp_resource` VALUES ('60', '系统说明', '7', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663622832b4.txt', '0');
INSERT INTO `tp_resource` VALUES ('61', 'qt网络音乐播放器', '8', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663e228e6f2.rar', '1');
INSERT INTO `tp_resource` VALUES ('55', '教学质量保障平台实验室指纹签到统计系统', '7', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663012418c4.zip', '1');
INSERT INTO `tp_resource` VALUES ('62', '快捷备份', '8', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663e868ca81.rar', '0');
INSERT INTO `tp_resource` VALUES ('63', '密码管理软件', '8', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663fa6a6a70.rar', '0');
INSERT INTO `tp_resource` VALUES ('64', '文件查找，文件内容定位', '8', 'yhj', '1', '/Uploads/Resource/2016-12-30/58663fe076632.rar', '0');
INSERT INTO `tp_resource` VALUES ('65', '携传源码', '8', 'yhj', '1', '/Uploads/Resource/2016-12-30/586640249ea55.rar', '1');
INSERT INTO `tp_resource` VALUES ('67', '小手牵大家源码', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/586642d959f32.zip', '0');
INSERT INTO `tp_resource` VALUES ('68', '智能家居源码', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/586643107c2ac.rar', '0');
INSERT INTO `tp_resource` VALUES ('69', '开发认知潜能的九堂课', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664917cb945.pdf', '1');
INSERT INTO `tp_resource` VALUES ('70', 'android 学习书签', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664a3905782.html', '1');
INSERT INTO `tp_resource` VALUES ('71', 'CloundUsb', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664a7a08d18.zip', '0');
INSERT INTO `tp_resource` VALUES ('72', 'CStu_Community', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664aa20e811.zip', '0');
INSERT INTO `tp_resource` VALUES ('73', 'Delicious', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664ac5f20e9.zip', '0');
INSERT INTO `tp_resource` VALUES ('74', 'hard', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664aebf063e.zip', '0');
INSERT INTO `tp_resource` VALUES ('75', '大话数据结构', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664b05e585a.pdf', '0');
INSERT INTO `tp_resource` VALUES ('76', '疯狂Android讲义(第2版)', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664b28b79f1.pdf', '0');
INSERT INTO `tp_resource` VALUES ('77', '高效程序员的45个习惯：敏捷开发修炼之道', '2', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664b4a61e8e.pdf', '0');
INSERT INTO `tp_resource` VALUES ('78', 'Send_Hand', '0', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664bfa99596.rar', '0');
INSERT INTO `tp_resource` VALUES ('79', 'UPLOAD', '0', 'yhj', '1', '/Uploads/Resource/2016-12-30/58664c1dd6636.rar', '1');

-- ----------------------------
-- Table structure for `tp_study_direction`
-- ----------------------------
DROP TABLE IF EXISTS `tp_study_direction`;
CREATE TABLE `tp_study_direction` (
  `study_direction_id` int(10) NOT NULL,
  `study_direction` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_study_direction
-- ----------------------------
INSERT INTO `tp_study_direction` VALUES ('0', 'PHP');
INSERT INTO `tp_study_direction` VALUES ('1', 'IOS');
INSERT INTO `tp_study_direction` VALUES ('2', 'Android');
INSERT INTO `tp_study_direction` VALUES ('3', '前端');
INSERT INTO `tp_study_direction` VALUES ('4', 'Java');
INSERT INTO `tp_study_direction` VALUES ('5', '美工');
INSERT INTO `tp_study_direction` VALUES ('6', '虚拟现实');
INSERT INTO `tp_study_direction` VALUES ('7', '.Net');
INSERT INTO `tp_study_direction` VALUES ('8', 'C/C++');
INSERT INTO `tp_study_direction` VALUES ('9', '其他');
