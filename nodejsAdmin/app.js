const pool =require("./pool");
const http=require("http");
const express = require("express");
const bodyParser = require("body-parser");        //处理post请求
const cookieParser = require("cookie-parser");    //session
const expressSession = require("express-session");//session
const cors = require("cors");                      //cors
let app=express();
var server = http.createServer(app);
server.listen(3000);
//指定静态目录  public
app.use(express.static("public"));

//4:配置第三方模块
  //4.1:配置跨域模块
  //origin 允许来自哪个域名下跨域访问
app.use(cors({
    origin:["http://127.0.0.1:8081"],
    credentials:true
}));
 //4.2:post  req.body.uname
 app.use(bodyParser.urlencoded({extended:false}));
 //4.3:cookie/session
app.use(cookieParser());
app.use(expressSession({
   resave:false,           //每次请求是否重新设置session
   saveUninitialized:true,//每次请求是否设置cookie
   secret:"teducn",       //https加密码传输，密钥
}));
//宠物问题类型
app.use("/careType",(req,res)=>{
    pool.getConnection((err,conn)=>{
        if(err)throw err;
        let sql="SELECT tid,tname FROM wxr_care_type";
        conn.query(sql,(err,result)=>{
            if(err)throw err;
            res.json(result);
            conn.release();     //归还连接
        });
    });
});
//宠物类型详情
app.use("/careDetail",(req,res)=>{
    let tid=req.query.tid;
    let type=req.query.type;
    pool.getConnection((err,conn)=>{
        if(err)throw err;
        let sql="SELECT did,dname,dtext,url FROM wxr_care_detail WHERE tid=? AND type=?";
        conn.query(sql,[tid,type],(err,result)=>{
            if(err)throw err;
            res.json(result);
            conn.release();     //归还连接
        });
    });
});
//商品列表
app.use("/shopList",(req,res)=>{
    let pno=parseInt(req.query.pno);
    let pageSize=parseInt(req.query.pageSize);
    let pid=parseInt(req.query.pid);
    let reg=/^[0-9]{1,}$/;
    let process=0;
    if(!pid)
        pid=1;
    if(!pno)
        pno=1;
    if(!pageSize)
        pageSize=8;
    let output={pno,pageSize};
    if(!reg.test(pno)){
        res.json({code:-1,msg:"页码参数不正确"});
        return;
    }
    if(!reg.test(pageSize)){
        res.json({code:-2,msg:"页大小值不正确"});
        return;
    }
    //获取总记录数
    pool.getConnection((err,conn)=>{
        if(err)throw  err;
        let sql="SELECT COUNT(did) as c FROM wxr_product_detail WHERE pid=?";
        conn.query(sql,[pid],(err,result)=>{
            if(err)throw err;
            output.pageCount=Math.ceil(result[0].c/pageSize);
            process+=50;
            if(process==100){
                res.json(output);
            }
            conn.release();
        });
    });
    //当前页内容
    pool.getConnection((err,conn)=>{
        if(err)throw  err;
        let offset = parseInt((pno-1)*pageSize);
        pageSize = parseInt(pageSize );
        let sql = " (SELECT d.did as did ,d.dname as dname,d.dtext as dtext,p.title FROM wxr_product_detail d LEFT  JOIN  wxr_product_pic p ON  d.did=p.did WHERE d.pid=? LIMIT ?,?)";
        sql+=" UNION";
        sql+=" (SELECT d.did as did ,d.dname as dname,d.dtext as dtext,p.title FROM wxr_product_detail d RIGHT  JOIN  wxr_product_pic p ON  d.did=p.did WHERE d.pid=? LIMIT ?,?)";
        conn.query(sql,[pid,offset,pageSize,pid,offset,pageSize],(err,result)=>{
            if(err)throw err;
            output.data = result;  //当前页内容
            process += 50;         //当前进度+50
            if(process==100){
                res.json(output);  //发送
            }
            conn.release();        //归还连接
        });
    });
});
//商品详情
app.use("/shopDetail",(req,res)=>{
    let did=req.query.did;
    let reg=/^[0-9]{1,}$/;
    if(!reg.test(did)){
        res.json({code:-1,msg:"参数不正确"});
        return;
    }
    pool.getConnection((err,conn)=>{
        if(err) throw err;
        let sql = " (SELECT d.did as did ,d.dname as dname,d.dspecs as dspecs,d.dage as dage,d.dobject as dobject,d.dtext as dtext,p.title as title ,p.md as md,p.infoImg as infoImg FROM wxr_product_detail d LEFT  JOIN  wxr_product_pic p ON  d.did=p.did  WHERE d.did=?)";
        sql+=" UNION";
        sql+=" (SELECT d.did as did ,d.dname as dname,d.dspecs as dspecs,d.dage as dage,d.dobject as dobject,d.dtext as dtext,p.title as title ,p.md as md,p.infoImg as infoImg FROM wxr_product_detail d RIGHT  JOIN  wxr_product_pic p ON  d.did=p.did WHERE d.did=?)";
        conn.query(sql,[did,did],(err,result)=>{
            if(err) throw err;
            res.json(result);
            conn.release();
        });
    });
});
