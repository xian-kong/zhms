//功能：服务器端程序
//1:下载四个模块
//  express			web服务器
//  mysql				mysql驱动
//  cors				处理跨域
//  express-session	会话session对象
//2:vue_server_000/进入命令行
//  npm i mysql express express-session cors
//3:加载四个第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
const bodyParser=require('body-parser');

//4:配置数据库连接池:基本效率高保证
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   database:"zhms",
   port:3306,
   connectionLimit:20
})
//5:创建web服务器
var server = express();
//6:配置跨域  允许程序列表
//  http://127.0.0.1:8080
//  http://localhost:8080
server.use(cors({
   origin:["http://127.0.0.1:8080","http://localhost:8080"],
   credentials:true  //每次请求验证
}))
//7:配置session环境
server.use(session({
   secret:"128位安全字符串",
   resave:true,         //请求更新数据 
   saveUninitialized:true//保存初始数据
}));
//8:配置静态目录 pubic
//8.1:创建public
server.use(express.static("public"))
//使用body-parser中间件
server.use( bodyParser.urlencoded({
   extended:false
 }) );
//9:启动监听端口  5050
server.listen(5050);

//功能一:用户注册
server.post('/reg',function(req,res){
   //1.1获取数据
   var obj=req.body;
   //1.3执行SQL语句 
   var sql="INSERT INTO zhms_user SET ?";
   pool.query(sql,[obj],(err,result)=>{
     if(err) throw err;
    console.log(result);
    //插入成功
    res.send({code:200,msg:'注册成功'});
   })
 });


//功能二:用户登录
server.get("/login",(req,res)=>{
   //1:获取参数upwd/phone
   //脚手架传数 
   // http://127.0.0.1:5050?phone=13524427761&upwd=123456 
   var phone = req.query.phone;
   var upwd =  req.query.upwd;
   console.log(1+":"+phone+":"+upwd);
   //2:创建sql语句
   var sql = "SELECT uid FROM zhms_user WHERE phone = ? AND upwd = ?";
   //3:执行sql语句
   pool.query(sql,[phone,upwd],(err,result)=>{
     //err 严重错误，程序停止
     if(err)throw err;
    //4:判断执行是否成功
    console.log(result);
     if(result.length==0){
       res.send({code:-1,msg:"用户名或密码有误"});
     }else{
       //4.1:登录成功后将
       //    登录凭证id保存session对象
       //4.2:获取当前登录用户id
       //result[{id:3}]
       var uid = result[0].id;
       //4.3:将用户id保存session对象
       req.session.uid = uid;
       console.log(req.session);
       res.send({code:1,msg:"登录成功"});
     }
    //5:将结果发送脚手架  
   })
  })













