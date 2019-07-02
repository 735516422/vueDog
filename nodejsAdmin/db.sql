SET NAMES UTF8;
DROP DATABASE IF EXISTS wxr;
CREATE DATABASE wxr CHARSET=UTF8;
USE wxr;
#宠物用品
CREATE TABLE wxr_product(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pname VARCHAR(32)
);
INSERT INTO wxr_product VALUES(null,"宠物食品");
INSERT INTO wxr_product VALUES(null,"宠物用品");
INSERT INTO wxr_product VALUES(null,"宠物药品");
INSERT INTO wxr_product VALUES(null,"宠物玩具");
#宠物用品详情
CREATE TABLE wxr_product_detail(
    did INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    dname VARCHAR(64),
    dspecs VARCHAR(64),
    dage VARCHAR(64),
    dobject VARCHAR(64),
    dtext VARCHAR(64),
    FOREIGN KEY(pid) REFERENCES wxr_product(pid)
);

INSERT INTO wxr_product_detail VALUES(null,1,"皇家小型犬奶糕/MIS30","3KG/1KG","≤2月龄","小型犬幼犬（成年体重≤10kg）/怀孕后期，哺乳期母犬","定制颗粒，离乳必备<br>支持幼犬抵抗力  ");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家小型犬幼犬粮/MIJ31","0.8KG/2KG/8KG","2-10月龄","小型犬幼犬（成年体重≤10kg）/怀孕后期，哺乳期母犬","支持幼犬抵抗力<br>呵护消化系统健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家小型犬成犬粮/PR27","0.8KG/2KG/8KG","≥10月龄","小型犬成犬（成年体重≤10kg）","呵护口腔健康<br>呵护消化系统健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家小型犬绝育成犬粮/MSA30","2KG","≥10月龄","小型犬成犬（成年体重≤10kg）","维持理想体重<br>呵护消化系统健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家小型犬老年犬粮/SPR27","0.8KG/2KG","8岁以上","小型犬老年犬（成年体重≤10kg）","保持健康活力<br>呵护口腔健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家居家小型犬幼犬粮/APR27","0.8KG/2KG/8KG","2-10月龄","居家小型犬幼犬（成年体重≤10kg）/怀孕后期，哺乳期母犬","支持幼犬抵抗力<br>呵护消化系统健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家居家小型犬成犬粮/PR21","1.5KG","≥10月龄","居家小型犬成犬（成年体重≤10kg）","保持健康活力<br>呵护口腔健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家居家小型犬老年犬粮/SPR24","1.5KG","8岁以上","居家小型犬老年犬（成年体重≤10kg）","保持健康活力<br>呵护口腔健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家小奶罐（皇家小型犬奶糕精装礼盒）","1kg/50g","≤12月龄","12月龄以下小型犬幼犬（成年体重≤10kg）/怀孕后期，哺乳期母犬","易水合，更软糯，适合幼犬咀嚼，呵护消化系统，支持抵抗力。定制量杯与小奶罐，方便取食与存储。");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家中型犬奶糕/MES30","4KG/10KG","≤2月龄","中型犬幼犬（成年体重10-25kg）/怀孕后期，哺乳期母犬","定制颗粒，离乳必备<br>支持幼犬抵抗力");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家中型犬幼犬粮/MEJ32","4KG/15KG","2-12月龄","中型犬幼犬（成年体重10-25kg）/怀孕后期，哺乳期母犬","支持幼犬抵抗力<br>呵护消化系统健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家中型犬成犬粮M25","4KG/15KG","≥12月龄","中型犬成犬（成年体重10-25kg）","维持理想体重<br>呵护消化系统健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家大型犬奶糕/MAS30","4KG/15KG","≤2月龄","大型犬幼犬（成年体重≥25kg）/怀孕后期，哺乳期母犬","定制颗粒，离乳必备<br>支持幼犬抵抗力");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家大型犬幼犬粮/MAJ30","4KG/15KG","2-15月龄","大型犬幼犬（成年体重≥25kg）/怀孕后期，哺乳期母犬","支持幼犬抵抗力<br>呵护消化系统健康");
INSERT INTO wxr_product_detail VALUES(null,1,"皇家大型犬成犬粮/GR26","4KG/15KG","≥15月龄","大型犬成犬（成年体重≥25kg）","呵护消化系统健康<br>健康骨骼和关节");
INSERT INTO wxr_product_detail VALUES(null,2,"宠物消毒液狗狗除臭剂","1000ML大容量","所有","犬类","环境除臭<br>自然香型");
INSERT INTO wxr_product_detail VALUES(null,2,"狗狗尿垫卫生除臭加厚尿片","100片","S-小型 M-中型 L-大型 XL-超大型","犬类","除臭锁异味<br>室内清爽养狗");
INSERT INTO wxr_product_detail VALUES(null,2,"狗狗猫咪口气清新剂","254g","所有","通用","清洁口腔<br>除味抑菌");
INSERT INTO wxr_product_detail VALUES(null,2,"超伦宠物吹水机","700w-2000w","所有","通用","清洁口腔<br>除味抑菌");
INSERT INTO wxr_product_detail VALUES(null,3,"福来恩体外驱虫药","3支","所有","通用","防治跳蚤成虫<br>防止瘙痒");
INSERT INTO wxr_product_detail VALUES(null,3,"狗狗眼药水","1支","所有","通用","缓解泪痕<br>温和无刺激");
INSERT INTO wxr_product_detail VALUES(null,4,"狗狗玩具发声玩具球","1个","所有","通用","缓解泪痕<br>温和无刺激");

CREATE TABLE wxr_product_pic(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    did INT,
    title VARCHAR(128),
    sm VARCHAR(128),
    md VARCHAR(128),
    lg VARCHAR(128),
    infoImg VARCHAR(128),
    FOREIGN KEY(did) REFERENCES wxr_product_detail(did)
);

INSERT INTO wxr_product_pic VALUES(null,1,"/img/foodImg/02-1200px.jpg","","/img/foodImg/01-1200px.jpg","","/img/foodImg/03-1200px.jpg");
INSERT INTO wxr_product_pic VALUES(null,2,"/img/foodImg/02-1300px.jpg","","/img/foodImg/01-1300px.jpg","","/img/foodImg/03-1300px.jpg");
INSERT INTO wxr_product_pic VALUES(null,3,"/img/foodImg/02-1400px.jpg","","/img/foodImg/01-1400px.jpg","","/img/foodImg/03-1400px.jpg");
INSERT INTO wxr_product_pic VALUES(null,4,"/img/foodImg/02-1500px.jpg","","/img/foodImg/01-1500px.jpg","","/img/foodImg/03-1500px.jpg");
INSERT INTO wxr_product_pic VALUES(null,5,"/img/foodImg/02-1600px.jpg","","/img/foodImg/01-1600px.jpg","","/img/foodImg/03-1600px.jpg");
INSERT INTO wxr_product_pic VALUES(null,6,"/img/foodImg/02-1700px.jpg","","/img/foodImg/01-1700px.jpg","","/img/foodImg/03-1700px.jpg");
INSERT INTO wxr_product_pic VALUES(null,7,"/img/foodImg/02-1800px.jpg","","/img/foodImg/01-1800px.jpg","","/img/foodImg/03-1800px.jpg");
INSERT INTO wxr_product_pic VALUES(null,8,"/img/foodImg/02-1900px.jpg","","/img/foodImg/01-1900px.jpg","","/img/foodImg/03-1900px.jpg");
INSERT INTO wxr_product_pic VALUES(null,9,"/img/foodImg/02-2000px.jpg","","/img/foodImg/01-2000px.jpg","","/img/foodImg/03-2100px.jpg");
INSERT INTO wxr_product_pic VALUES(null,10,"/img/foodImg/02-2000px.jpg","","/img/foodImg/01-2100px.jpg","","/img/foodImg/03-2100px.jpg");
INSERT INTO wxr_product_pic VALUES(null,11,"/img/foodImg/02-2200px.jpg","","/img/foodImg/01-2200px.jpg","","/img/foodImg/03-2200px.jpg");
INSERT INTO wxr_product_pic VALUES(null,12,"/img/foodImg/02-2300px.jpg","","/img/foodImg/01-2300px.jpg","","/img/foodImg/03-2300px.jpg");
INSERT INTO wxr_product_pic VALUES(null,13,"/img/foodImg/02-2400px.jpg","","/img/foodImg/01-2400px.jpg","","/img/foodImg/03-2400px.jpg");
INSERT INTO wxr_product_pic VALUES(null,14,"/img/foodImg/02-2500px.jpg","","/img/foodImg/01-2500px.jpg","","/img/foodImg/03-2500px.jpg");
INSERT INTO wxr_product_pic VALUES(null,15,"/img/foodImg/02-2600px.jpg","","/img/foodImg/01-2600px.jpg","","/img/foodImg/03-2600px.jpg");
INSERT INTO wxr_product_pic VALUES(null,16,"/img/ypImg/02-1000px.jpg","","/img/ypImg/01-1000px.jpg","","/img/ypImg/03-1000px.jpg");
INSERT INTO wxr_product_pic VALUES(null,17,"/img/ypImg/02-1100px.jpg","","/img/ypImg/01-1100px.jpg","","/img/ypImg/03-1100px.jpg");
INSERT INTO wxr_product_pic VALUES(null,18,"/img/ypImg/02-1200px.jpg","","/img/ypImg/01-1200px.jpg","","/img/ypImg/03-1200px.jpg");
INSERT INTO wxr_product_pic VALUES(null,19,"/img/ypImg/02-1300px.jpg","","/img/ypImg/01-1300px.jpg","","/img/ypImg/03-1300px.jpg");
INSERT INTO wxr_product_pic VALUES(null,20,"/img/drugImg/02-1000px.jpg","","/img/drugImg/01-1000px.jpg","","/img/drugImg/03-1000px.jpg");
INSERT INTO wxr_product_pic VALUES(null,21,"/img/drugImg/02-1100px.jpg","","/img/drugImg/01-1100px.jpg","","/img/drugImg/03-1100px.jpg");
INSERT INTO wxr_product_pic VALUES(null,22,"/img/toysImg/02-1000px.jpg","","/img/toysImg/01-1000px.jpg","","/img/toysImg/03-1000px.jpg");

#宠物分类
CREATE TABLE wxr_dogs_type(
    tid INT PRIMARY KEY AUTO_INCREMENT,
    tname VARCHAR(64)
);
INSERT INTO wxr_dogs_type VALUES(null,"萨摩耶");
INSERT INTO wxr_dogs_type  VALUES(null,"阿拉斯加");
INSERT INTO wxr_dogs_type VALUES(null,"拉布拉多");
INSERT INTO wxr_dogs_type VALUES(null,"比熊");
INSERT INTO wxr_dogs_type VALUES(null,"柯基");

#宠物详情
CREATE TABLE wxr_dogs_detail(
    did INT PRIMARY KEY AUTO_INCREMENT,
    tid INT,
    dname VARCHAR(64),
    dtext TEXT,
    FOREIGN KEY(tid) REFERENCES wxr_dogs_type(tid)
);
#宠物健康
CREATE TABLE wxr_care_type(
    tid INT PRIMARY KEY AUTO_INCREMENT,
    tname VARCHAR(64)
);
INSERT INTO wxr_care_type VALUES(null,"健康问题");
INSERT INTO wxr_care_type VALUES(null,"皮肤问题");
INSERT INTO wxr_care_type VALUES(null,"泌尿问题");
INSERT INTO wxr_care_type VALUES(null,"肠道问题");

#健康详情
CREATE TABLE wxr_care_detail(
    did INT PRIMARY KEY AUTO_INCREMENT,
    tid INT,
    dname VARCHAR(64),
    dtext TEXT,
    type INT,
    url VARCHAR(128),
    FOREIGN KEY(tid) REFERENCES wxr_care_type(tid)
);
#猫健康
INSERT INTO wxr_care_detail VALUES(null,1,"小猫什么时候打疫苗?","猫咪出生后七到八周开始打疫苗,建议2个月大开始打，每年需加强一次，这样才能让疫苗能够持续作用。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"猫咪的疫苗包含哪几种呢?","猫咪疫苗目前常见的有三合一疫苗(猫三联)与五合一疫苗(猫五联)，另外每年需注射狂犬疫苗一次。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"疫苗多久打一次?","第一年需要接种三次疫苗，每15-21天接种一次，从第二年起每年只需要接种一次。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物店可以打疫苗吗？","宠物店是没有接种疫苗的资质的，不能去打噢，建议去宠物医院接种疫苗。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物疾病与日常健康？","随着人们生活水平的提高．越来越多的人们喜欢养宠物，甚至把宠物当作家庭成员一样对待。但是大多数人缺乏一定的宠物饲养知识．很少注意宠物的日常保健。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"猫咪健康指南？","对于猫的健康来说，健康护理是很重要的，简而言之，健康护理意味着定期和及时的检查，以保证猫咪的健康和良好的状态。我们应该多久给猫咪来一次保健护理？这取决于您的猫的年龄，生活方式和整体健康状况。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物健康食品？","猫咪狗狗主食还是要吃猫粮狗粮，因为猫粮狗粮营养均衡全面，适合猫狗的所需营养，保证猫咪狗狗营养全面。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"猫咪体检？","小猫日常检查通常包括体表外观检查、心率血压体温检查、血常规检查、粪便镜检和尿液检查。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"体检多少钱一次？","狗狗和猫咪的体检的项目不同，其价格通常会有差异，相对普遍的体检，价格在300-800之间。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"体检项目和费用？","狗狗和猫咪的体检套餐常包括有：耳检 便检 口腔、眼睑、生殖器、肛门腺检查，脏器听诊，体表触诊，血常规 体温 体重测量。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物体检有什么用？","可以去宠物医院进行体检，我们可以从体检报告中了解到它们的变化，提示你该如何为宠物调整饮食、环境、生活作息和采取特殊护理措施等，对致命疾病具有非常重要的预警和防控作用。在微宠医APP主页，可查找附近动物医院在线预约体检。",0,"");
INSERT INTO wxr_care_detail VALUES(null,1,"体检多少钱一次？","作为一名合格的铲屎官，我们一定要知道平常猫猫和狗狗是怎样的状态，并且要留意它们的变化。一个很好的方式是定期去动物医院为它进行体检。根据检查项目不同，医院收费不同，费用会有所不同。",0,"");
#狗健康
INSERT INTO wxr_care_detail VALUES(null,1,"狗狗每年要打什么针？","狗狗的针，一针是狂犬疫苗,一针是4联、6联或8联疫苗(用于预防各种传染性疾病）。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"疫苗多久打一次?","第一年需要接种三次疫苗，每15-21天接种一次，从第二年起每年只需要接种一次。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"狗狗什么时候打疫苗?","一般建议45天大的时候开始接种第一针疫苗呢, 疫苗有三针,每针间隔15-21天, 以后每年一针巩固。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"狗要打几次疫苗？","一般建议45天大的时候开始接种第一针疫苗呢, 疫苗有三针,每针间隔15-21天, 以后每年一针巩固。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"狗狂犬疫苗怎么打？","狗狗的狂犬疫苗需要一年打一次，可去宠物医院进行接种。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"狗每年都要打疫苗吗？","是的，狗狗每年都需要接种一次疫苗，加强疫苗的免疫效果，因为疫苗在体内的作用时间是有一个期限的。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物店可以打疫苗吗？","宠物店是没有接种疫苗的资质的，不能去打噢，建议去宠物医院接种疫苗。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物疾病与日常健康？","随着人们生活水平的提高．越来越多的人们喜欢养宠物，甚至把宠物当作家庭成员一样对待。但是大多数人缺乏一定的宠物饲养知识．很少注意宠物的日常保健。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"狗狗日常健康检查？","狗狗日常检查通常包括体表外观检查、心率血压体温检查、血常规检查、粪便镜检和尿液检查呢。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物健康食品？","猫咪狗狗主食还是要吃猫粮狗粮，因为猫粮狗粮营养均衡全面，适合猫狗的所需营养，保证猫咪狗狗营养全面。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"体检多少钱一次？","狗狗和猫咪的体检的项目不同，其价格通常会有差异，相对普遍的体检，价格在300-800之间。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"体检项目和费用？","狗狗和猫咪的体检套餐常包括有：耳检 便检 口腔、眼睑、生殖器、肛门腺检查，脏器听诊，体表触诊，血常规 体温 体重测量。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"宠物体检有什么用？","可以去宠物医院进行体检，我们可以从体检报告中了解到它们的变化，提示你该如何为宠物调整饮食、环境、生活作息和采取特殊护理措施等，对致命疾病具有非常重要的预警和防控作用。在微宠医APP主页，可查找附近动物医院在线预约体检。",1,"");
INSERT INTO wxr_care_detail VALUES(null,1,"体检多少钱一次？","作为一名合格的铲屎官，我们一定要知道平常猫猫和狗狗是怎样的状态，并且要留意它们的变化。一个很好的方式是定期去动物医院为它进行体检。根据检查项目不同，医院收费不同，费用会有所不同。",1,"");
INSERT INTO wxr_care_detail VALUES(null,2,"","",0,"/img/RC_PC_cat_skin.f338a792.png");
INSERT INTO wxr_care_detail VALUES(null,3,"","",0,"/img/RC_PC_cat_urinary.4a31eccd.png");
INSERT INTO wxr_care_detail VALUES(null,4,"","",0,"/img/RC_PC_cat_Intestine.c2357799.png");
INSERT INTO wxr_care_detail VALUES(null,2,"","",1,"/img/RC_PC_dog_skin.74e3c251.png");
INSERT INTO wxr_care_detail VALUES(null,3,"","",1,"/img/RC_PC_dog_urinary.4442f234.png");
INSERT INTO wxr_care_detail VALUES(null,4,"","",1,"/img/RC_PC_dog_intestine.5f334790.png");
