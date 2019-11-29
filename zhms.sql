#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS zhms;
#创建数据库，设置编码
CREATE DATABASE zhms CHARSET=UTF8;
#进入数据库
USE zhms;
#创建用户信息表
CREATE TABLE zhms_user(
  uid	INT	PRIMARY KEY NOT NULL AUTO_INCREMENT,
  uname	VARCHAR(32),
  upwd VARCHAR(32),	
  phone	VARCHAR(16)	NOT NULL UNIQUE,
  email VARCHAR(32),
  avatar VARCHAR(128),	
  gender BOOL  	
);

INSERT INTO zhms_user VALUES(1,'中华小当家','123456','13832336666','666@qq.com','public/imgs/avatar/01.png','1');


#创建用户收藏表
CREATE TABLE user_collection(
  cid	INT PRIMARY KEY AUTO_INCREMENT,
  ctitle VARCHAR(32),	
  ctime	DATE	
);


#创建美食所属地名表
CREATE TABLE placename(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pname VARCHAR(32)	
);

INSERT INTO placename VALUES(1,'北京');
INSERT INTO placename VALUES(2,'天津');
INSERT INTO placename VALUES(3,'河北');
INSERT INTO placename VALUES(4,'山西');
INSERT INTO placename VALUES(5,'内蒙古');
INSERT INTO placename VALUES(6,'辽宁');
INSERT INTO placename VALUES(7,'吉林');
INSERT INTO placename VALUES(8,'黑龙江');
INSERT INTO placename VALUES(9,'上海');
INSERT INTO placename VALUES(10,'江苏');
INSERT INTO placename VALUES(11,'浙江省');
INSERT INTO placename VALUES(12,'安徽');
INSERT INTO placename VALUES(13,'福建');
INSERT INTO placename VALUES(14,'江西');
INSERT INTO placename VALUES(15,'山东');
INSERT INTO placename VALUES(16,'河南');
INSERT INTO placename VALUES(17,'湖北');
INSERT INTO placename VALUES(18,'湖南');
INSERT INTO placename VALUES(19,'广东');
INSERT INTO placename VALUES(20,'广西');
INSERT INTO placename VALUES(21,'海南');
INSERT INTO placename VALUES(22,'重庆');
INSERT INTO placename VALUES(23,'四川');
INSERT INTO placename VALUES(24,'贵州');
INSERT INTO placename VALUES(25,'云南');
INSERT INTO placename VALUES(26,'西藏');
INSERT INTO placename VALUES(27,'陕西');
INSERT INTO placename VALUES(28,'甘肃');
INSERT INTO placename VALUES(29,'青海');
INSERT INTO placename VALUES(30,'宁夏');
INSERT INTO placename VALUES(31,'新疆');
INSERT INTO placename VALUES(32,'台湾');
INSERT INTO placename VALUES(33,'香港');
INSERT INTO placename VALUES(34,'澳门');


#创建美食类别表
CREATE TABLE foodsort(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  sname VARCHAR(32)	
);

INSERT INTO foodsort VALUES(1,'粤菜');
INSERT INTO foodsort VALUES(2,'川菜');
INSERT INTO foodsort VALUES(3,'鲁菜');
INSERT INTO foodsort VALUES(4,'淮扬菜');
INSERT INTO foodsort VALUES(5,'浙菜');
INSERT INTO foodsort VALUES(6,'闽菜');
INSERT INTO foodsort VALUES(7,'湘菜');
INSERT INTO foodsort VALUES(8,'徽菜');


#创建美食名表
CREATE TABLE foodname(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32),	
  fsort VARCHAR(32)		
);

INSERT INTO foodname VALUES(1,'八宝冬瓜蛊','粤菜');
INSERT INTO foodname VALUES(2,'白切鸡','粤菜');
INSERT INTO foodname VALUES(3,'东江酿豆腐','粤菜');
INSERT INTO foodname VALUES(4,'广州文昌鸡','粤菜');
INSERT INTO foodname VALUES(5,'红烧乳鸽','粤菜');
INSERT INTO foodname VALUES(6,'老火靓汤','粤菜');
INSERT INTO foodname VALUES(7,'秘汁叉烧','粤菜');
INSERT INTO foodname VALUES(8,'糖醋咕噜肉','粤菜');
INSERT INTO foodname VALUES(9,'上汤焗龙虾','粤菜');
INSERT INTO foodname VALUES(10,'明炉烤乳猪','粤菜');
INSERT INTO foodname VALUES(11,'东坡肘子','川菜');
INSERT INTO foodname VALUES(12,'夫妻肺片','川菜');
INSERT INTO foodname VALUES(13,'宫保鸡丁','川菜');
INSERT INTO foodname VALUES(14,'回锅肉','川菜');
INSERT INTO foodname VALUES(15,'麻婆豆腐','川菜');
INSERT INTO foodname VALUES(16,'毛血旺','川菜');
INSERT INTO foodname VALUES(17,'鱼香肉丝','川菜');
INSERT INTO foodname VALUES(18,'酸菜鱼','川菜');
INSERT INTO foodname VALUES(19,'水煮鱼','川菜');
INSERT INTO foodname VALUES(20,'爆炒腰花','鲁菜');
INSERT INTO foodname VALUES(21,'葱烧海参','鲁菜');
INSERT INTO foodname VALUES(22,'德州扒鸡','鲁菜');
INSERT INTO foodname VALUES(23,'九转大肠','鲁菜');
INSERT INTO foodname VALUES(24,'四喜丸子','鲁菜');
INSERT INTO foodname VALUES(25,'坛子肉','鲁菜');
INSERT INTO foodname VALUES(26,'糖醋鲤鱼','鲁菜');
INSERT INTO foodname VALUES(27,'一品豆腐','鲁菜');
INSERT INTO foodname VALUES(28,'油爆双脆','鲁菜');
INSERT INTO foodname VALUES(29,'糟溜鱼片','鲁菜');
INSERT INTO foodname VALUES(30,'白袍虾仁','淮扬菜');
INSERT INTO foodname VALUES(31,'拆烩鲢鱼头','淮扬菜');
INSERT INTO foodname VALUES(32,'开洋蒲菜','淮扬菜');
INSERT INTO foodname VALUES(33,'平桥豆腐','淮扬菜');
INSERT INTO foodname VALUES(34,'三套鸭','淮扬菜');
INSERT INTO foodname VALUES(35,'水晶肴肉','淮扬菜');
INSERT INTO foodname VALUES(36,'文思豆腐','淮扬菜');
INSERT INTO foodname VALUES(37,'蟹粉狮子头','淮扬菜');
INSERT INTO foodname VALUES(38,'冰糖甲鱼','浙菜');
INSERT INTO foodname VALUES(39,'彩熘全黄鱼','浙菜');
INSERT INTO foodname VALUES(40,'东坡肉','浙菜');
INSERT INTO foodname VALUES(41,'干炸响铃','浙菜');
INSERT INTO foodname VALUES(42,'锅烧河鳗','浙菜');
INSERT INTO foodname VALUES(43,'八宝红蟳饭','闽菜');
INSERT INTO foodname VALUES(44,'翡翠珍珠鲍','闽菜');
INSERT INTO foodname VALUES(45,'佛跳墙','闽菜');
INSERT INTO foodname VALUES(46,'鸡丝燕窝','闽菜');
INSERT INTO foodname VALUES(47,'大漠羊肉','湘菜');
INSERT INTO foodname VALUES(48,'干锅花猪肉烧鸡','湘菜');
INSERT INTO foodname VALUES(49,'金牌乾隆鸭','湘菜');
INSERT INTO foodname VALUES(50,'飘香鲫鱼','湘菜');
INSERT INTO foodname VALUES(51,'平锅干煎虾','湘菜');
INSERT INTO foodname VALUES(52,'臭鳜鱼','徽菜');
INSERT INTO foodname VALUES(53,'符离集烧鸡','徽菜');
INSERT INTO foodname VALUES(54,'红烧果子狸','徽菜');
INSERT INTO foodname VALUES(55,'虎皮毛豆腐','徽菜');
INSERT INTO foodname VALUES(56,'黄山炖鸽','徽菜');


#创建美食详情介绍表
CREATE TABLE fooddetail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  dmake VARCHAR(256),	
  dhistory VARCHAR(256)			
);



#创建首页轮播图表
CREATE TABLE zhms_index_carousel(
  lid INT	PRIMARY KEY AUTO_INCREMENT,
  limg VARCHAR(128)
  -- ltitle VARCHAR(64),            	
  -- lhref VARCHAR(128)         		
);

INSERT INTO zhms_index_carousel VALUES(1,'public/imgs/carousel1');
INSERT INTO zhms_index_carousel VALUES(2,'public/imgs/carousel2');
INSERT INTO zhms_index_carousel VALUES(3,'public/imgs/carousel3');
INSERT INTO zhms_index_carousel VALUES(4,'public/imgs/carousel4');


#创建美食图表
CREATE TABLE foodpic(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  timg VARCHAR(128),
  ttitle VARCHAR(64)           	
  -- thref VARCHAR(128)          	
);

INSERT INTO foodpic VALUES(1,'public/imgs/foodpic/01.jpg','八宝冬瓜蛊');
INSERT INTO foodpic VALUES(2,'public/imgs/foodpic/02.jpg','白切鸡');
INSERT INTO foodpic VALUES(3,'public/imgs/foodpic/03.jpg','东江酿豆腐');
INSERT INTO foodpic VALUES(4,'public/imgs/foodpic/04.jpg','广州文昌鸡');
INSERT INTO foodpic VALUES(5,'public/imgs/foodpic/05.jpg','红烧乳鸽');
INSERT INTO foodpic VALUES(6,'public/imgs/foodpic/06.jpg','老火靓汤');
INSERT INTO foodpic VALUES(7,'public/imgs/foodpic/07.jpg','秘汁叉烧');
INSERT INTO foodpic VALUES(8,'public/imgs/foodpic/08.jpg','糖醋咕噜肉');
INSERT INTO foodpic VALUES(9,'public/imgs/foodpic/09.jpg','上汤焗龙虾');
INSERT INTO foodpic VALUES(10,'public/imgs/foodpic/10.jpg','明炉烤乳猪');
INSERT INTO foodpic VALUES(11,'public/imgs/foodpic/11.jpg','东坡肘子');
INSERT INTO foodpic VALUES(12,'public/imgs/foodpic/12.jpg','夫妻肺片');
INSERT INTO foodpic VALUES(13,'public/imgs/foodpic/13.jpg','宫保鸡丁');
INSERT INTO foodpic VALUES(14,'public/imgs/foodpic/14.jpg','回锅肉');
INSERT INTO foodpic VALUES(15,'public/imgs/foodpic/15.jpg','麻婆豆腐');
INSERT INTO foodpic VALUES(16,'public/imgs/foodpic/16.jpg','毛血旺');
INSERT INTO foodpic VALUES(17,'public/imgs/foodpic/17.jpg','鱼香肉丝');
INSERT INTO foodpic VALUES(18,'public/imgs/foodpic/18.jpg','酸菜鱼');
INSERT INTO foodpic VALUES(19,'public/imgs/foodpic/19.jpg','水煮鱼');
INSERT INTO foodpic VALUES(20,'public/imgs/foodpic/20.jpg','爆炒腰花');
INSERT INTO foodpic VALUES(21,'public/imgs/foodpic/21.jpg','葱烧海参');
INSERT INTO foodpic VALUES(22,'public/imgs/foodpic/22.jpg','德州扒鸡');
INSERT INTO foodpic VALUES(23,'public/imgs/foodpic/23.jpg','九转大肠');
INSERT INTO foodpic VALUES(24,'public/imgs/foodpic/24.jpg','四喜丸子');
INSERT INTO foodpic VALUES(25,'public/imgs/foodpic/25.jpg','坛子肉');
INSERT INTO foodpic VALUES(26,'public/imgs/foodpic/26.jpg','糖醋鲤鱼');
INSERT INTO foodpic VALUES(27,'public/imgs/foodpic/27.jpg','一品豆腐');
INSERT INTO foodpic VALUES(28,'public/imgs/foodpic/28.jpg','油爆双脆');
INSERT INTO foodpic VALUES(29,'public/imgs/foodpic/29.jpg','糟熘鱼片');
INSERT INTO foodpic VALUES(30,'public/imgs/foodpic/30.jpg','白袍虾仁');
INSERT INTO foodpic VALUES(31,'public/imgs/foodpic/31.jpg','拆烩鲢鱼头');
INSERT INTO foodpic VALUES(32,'public/imgs/foodpic/32.jpg','开洋蒲菜');
INSERT INTO foodpic VALUES(33,'public/imgs/foodpic/33.jpg','平桥豆腐');
INSERT INTO foodpic VALUES(34,'public/imgs/foodpic/34.jpg','三套鸭');
INSERT INTO foodpic VALUES(35,'public/imgs/foodpic/35.jpg','水晶肴肉');
INSERT INTO foodpic VALUES(36,'public/imgs/foodpic/36.jpg','文思豆腐');
INSERT INTO foodpic VALUES(37,'public/imgs/foodpic/37.jpg','蟹粉狮子头');
INSERT INTO foodpic VALUES(38,'public/imgs/foodpic/38.jpg','冰糖甲鱼');
INSERT INTO foodpic VALUES(39,'public/imgs/foodpic/39.jpg','彩熘全黄鱼');
INSERT INTO foodpic VALUES(40,'public/imgs/foodpic/40.jpg','东坡肉');
INSERT INTO foodpic VALUES(41,'public/imgs/foodpic/41.jpg','干炸响铃');
INSERT INTO foodpic VALUES(42,'public/imgs/foodpic/42.jpg','锅烧河鳗');
INSERT INTO foodpic VALUES(43,'public/imgs/foodpic/43.jpg','八宝红蟳饭');
INSERT INTO foodpic VALUES(44,'public/imgs/foodpic/44.jpg','翡翠珍珠鲍');
INSERT INTO foodpic VALUES(45,'public/imgs/foodpic/45.jpg','佛跳墙');
INSERT INTO foodpic VALUES(46,'public/imgs/foodpic/46.jpg','鸡丝燕窝');
INSERT INTO foodpic VALUES(47,'public/imgs/foodpic/47.jpg','大漠羊肉');
INSERT INTO foodpic VALUES(48,'public/imgs/foodpic/48.jpg','干锅花猪肉烧鸡');
INSERT INTO foodpic VALUES(49,'public/imgs/foodpic/49.jpg','金牌乾隆鸭');
INSERT INTO foodpic VALUES(50,'public/imgs/foodpic/50.jpg','飘香鲫鱼');
INSERT INTO foodpic VALUES(51,'public/imgs/foodpic/51.jpg','平锅干煎虾');
INSERT INTO foodpic VALUES(52,'public/imgs/foodpic/52.jpg','臭鳜鱼');
INSERT INTO foodpic VALUES(53,'public/imgs/foodpic/53.jpg','符离集烧鸡');
INSERT INTO foodpic VALUES(54,'public/imgs/foodpic/54.jpg','红烧果子狸');
INSERT INTO foodpic VALUES(55,'public/imgs/foodpic/55.jpg','虎皮毛豆腐');
INSERT INTO foodpic VALUES(56,'public/imgs/foodpic/56.jpg','黄山炖鸽');
