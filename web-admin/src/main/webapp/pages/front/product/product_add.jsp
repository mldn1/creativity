<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Commodity_commoditys&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">添加产品详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="131"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>商品唯一码</td>
        <td><div class="col-sm-5"><input name="item_key" type="text" id="item_key" size="50"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>产品名称</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50"  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>产品短名称</td>
        <td><div class="col-sm-5"><input name="short_title" type="text" id="short_title" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>产品外链</td>
        <td><div class="col-sm-5"><input name="link_url" type="url" id="link_url" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>产品货号</td>
        <td><div class="col-sm-5"><input name="item_no" type="text" id="item_no" size="50"  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>产品简述</td>
        <td><div class="col-sm-5"><input name="description" type="text" id="description" size="50"  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>产品标签</td>
        <td><div class="col-sm-5"><input name="tag" type="text" id="tag" size="50" value="丝|真丝|丝巾|手工印花|手工丝巾|宫廷风|送妈妈|送女友|荷意年年|方巾|蓝色|红色|灰色|淡绿|故宫元素|手做|送礼|女王|女神|桑蚕丝"  class="form-control"   />
</div>例：红|黄|蓝</td>
      </tr>
            <tr>
        <td>产品推广图</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>产品图</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>产品原价格</td>
        <td><div class="col-sm-5"><input name="soc_price" type="text" id="soc_price" size="50" value="1380.00"  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>产品销售价格</td>
        <td><div class="col-sm-5"><input name="price" type="text" id="price" size="50" value="1380.00"  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>产品规格</td>
        <td><div class="col-sm-5"><input name="size" type="text" id="size" size="50" value="真丝"  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>产品颜色</td>
        <td><div class="col-sm-5"><input name="colors" type="text" id="colors" size="50" value="青花瓷"  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>产品材质</td>
        <td><div class="col-sm-5"><input name="use" type="text" id="use" size="50" value=""  class="form-control"   />
</div>例：红|黄|蓝</td>
      </tr>
            <tr>
        <td>产品用途</td>
        <td><div class="col-sm-5"><input name="materials" type="text" id="materials" size="50" value=""  class="form-control"   />
</div>例：红|黄|蓝</td>
      </tr>
            <tr>
        <td>产品容量</td>
        <td><div class="col-sm-5"><input name="capacity" type="text" id="capacity" size="50" value=""  class="form-control"   />
</div>ml</td>
      </tr>
            <tr>
        <td>产品包装</td>
        <td><div class="col-sm-5"><input name="package" type="text" id="package" size="50" value="独立包装"  class="form-control"   required="required" />
</div>例：套装</td>
      </tr>
            <tr>
        <td>产品重量</td>
        <td><div class="col-sm-5"><input name="weight" type="text" id="weight" size="50" value="0.3500"  class="form-control"   required="required" />
</div>kg</td>
      </tr>
            <tr>
        <td>产品分类</td>
        <td><div style="width: 100%;float: left;"><strong>新品</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="28"  />综合</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="7"  />茶具</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="13"  />茶碟</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="14"  />其他</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="26"  />枕套</li></ul></div><div style="width: 100%;float: left;"><strong>故宫美妆</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="23"  />纸巾盒及糖果盒</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="24"  />其他</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="25"  />包包</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="15"  />化妆包</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="11"  />丝巾</li></ul></div><div style="width: 100%;float: left;"><strong>国礼</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="16"  />拉杆箱</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="19"  />综合</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="8"  />雨伞</li></ul></div><div style="width: 100%;float: left;"><strong>茶器香器</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="10"  />茶具</li></ul></div><div style="width: 100%;float: left;"><strong>潮物空间</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="12" checked />木艺</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="18"  />车挂</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="30"  />综合</li></ul></div><div style="width: 100%;float: left;"><strong>综合馆</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="21"  />雨伞</li><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="22"  />皮具</li></ul></div><div style="width: 100%;float: left;"><strong>皮具</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="cls[]" type="checkbox" id="cls[]" value="27"  />纯真皮</li></ul></div></td>
      </tr>
            <tr>
        <td>产品焦点小图</td>
        <td><script id="synopsis" name="synopsis" type="text/plain" style="width:100%;height:160px;"></script></td>
      </tr>
            <tr>
        <td>产品详情</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>产品排序</td>
        <td><div class="col-sm-5"><input name="level" type="text" id="level" size="50" value="0"  class="form-control"   />
</div>0最靠前排列显示</td>
      </tr>
            <tr>
        <td>产品单次购买最大数量</td>
        <td><div class="col-sm-5"><input name="one_max_buy" type="text" id="one_max_buy" size="50" value="0"  class="form-control"   />
</div>0为不限制</td>
      </tr>
            <tr>
        <td>产品推荐位置</td>
        <td><div id="loc_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="1"  checked />首页(1)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="2"  checked />分类页(2)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="3"  />最终页(3)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="4"  />活动页(4)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="5"  checked />猜你喜欢(5)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>产品归属渠道</td>
        <td><div id="belong_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="belong[]" type="checkbox" id="belong[]" value="B1001"  checked />官方H5(B1001)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="belong[]" type="checkbox" id="belong[]" value="B1002"  />微信小程序(B1002)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>产品渠道库存</td>
        <td>官方H5(B1001)=<input name="B1001" type="text" id="B1001" size="3" value="0" />&nbsp; 微信小程序(B1002)=<input name="B1002" type="text" id="B1002" size="3" value="0" />&nbsp;</td>
      </tr>
            <tr>
        <td>产品状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">下架</option>
<option value="1" selected>上架</option>
<option value="7">热销</option>
<option value="8">推荐</option>
<option value="9">置顶</option>
<option value="21">预售</option>
<option value="22">秒杀</option>
<option value="31">草稿</option>
<option value="41">已售空</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>产品展示状态</td>
        <td><div id="show_state_div" class="col-sm-3"><select name="show_state" id="show_state" class="form-control" >
<option value="">请选择</option>
<option value="0">不展示</option>
<option value="1" selected>展示</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>产品创意</td>
        <td><div id="source_div" class="col-sm-3"><select name="source" id="source" class="form-control" >
<option value="">请选择</option>
<option value="6001">故宫经典纹饰“海水江崖”</option>
<option value="6002">故宫博物院藏《乾隆皇帝大阅图》</option>
<option value="6003">故宫经典纹饰“如意云纹”</option>
<option value="6004">七彩凤凰配海水江崖，故宫经典图案</option>
<option value="6005">明清最有代表性的四款椅子</option>
<option value="6006">故宫博物院藏“明成化斗彩鸡缸杯”</option>
<option value="6007">故宫博物院藏《秋林群鹿图》</option>
<option value="6008">故宫乾隆福字</option>
<option value="6009">故宫博物院藏“青釉斗笠碗”</option>
<option value="6010">故宫博物院藏“祭蓝釉描金龙纹双耳尊”</option>
<option value="6011">宫廷代表珠宝</option>
<option value="6012">木质如意摆件</option>
<option value="6013">故宫馆藏甜白釉暗花缠枝莲托八吉祥纹碗</option>
<option value="6014">故宫博物院太和殿的藻井样式</option>
<option value="6015">故宫博物院院藏清乾隆“宜兴窑紫砂绿地描金瓜棱壶”</option>
<option value="6016">取材“青花缠枝花纹天球瓶“上的缠枝莲纹样</option>
<option value="6017">故宫博物院院藏清代恽寿平《蓼汀鱼藻图》</option>
<option value="6018">如意纹样琉璃装饰</option>
<option value="6019">故宫博物院院藏郎世宁《采芝图》轴中的梅花鹿形象</option>
<option value="6020">宫门形象</option>
<option value="6021">浮雕《洛神图》中洛神手持莲华形象</option>
<option value="6022">鸡缸杯</option>
</select></div>
<div class="col-sm-5"><input name="source_tmp" type="text" id="source_tmp" size="50" value=""  class="form-control"   />
</div><input type="botton" value="增加" class="btn btn-primary" onClick="javascript:addSource();"></td>
      </tr>
            <tr>
        <td>产品寓意</td>
        <td><div id="meaning_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7001" class="meaning" checked />福山寿海(7001)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7002" class="meaning" />财富恒久(7002)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7003" class="meaning" />事业恒久(7003)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7004" class="meaning" />前程似锦(7004)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7005" class="meaning" />马到成功(7005)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7006" class="meaning" />步步青云(7006)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7007" class="meaning" />万事如意(7007)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7008" class="meaning" />雍容华贵(7008)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7009" class="meaning" />礼仪天下(7009)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7010" class="meaning" />金饭碗(7010)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7011" class="meaning" checked />吉祥如意(7011)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7012" class="meaning" />福禄寿(7012)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7013" class="meaning" />生意兴隆(7013)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7014" class="meaning" />福禄双至(7014)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7015" class="meaning" />鸿福一辈子(7015)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7016" class="meaning" />清心远志(7016)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7017" class="meaning" />古朴文雅(7017)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7018" class="meaning" />尊贵如君(7018)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7019" class="meaning" />山盟海誓(7019)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7020" class="meaning" />马力恒久(7020)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="meaning[]" type="checkbox" id="meaning[]" value="7021" class="meaning" />事业昌盛(7021)&nbsp;</li></ul></div><div class="col-sm-5"><input name="meaning_tmp" type="text" id="meaning_tmp" size="50" value=""  class="form-control"   />
</div><div class="col-sm-5"><input name="meaning" type="hidden" id="meaning" size="50" value="7001|7011"  class="form-control"   />
</div><input type="botton" value="增加" class="btn btn-primary" onClick="javascript:addMeaning();"></td>
      </tr>
            <tr>
        <td>产品场景</td>
        <td>办公环境<br /><div id="attribute_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="1001"  />前台(1001)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="1002"  />办公室(1002)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="1003"  />会议室(1003)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="1004"  />休息区(1004)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="1005"  />公共空间(1005)&nbsp;</li></ul></div><br />居家环境<br /><div id="attribute_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2001"  />卧室(2001)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2002"  />餐厅(2002)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2003"  />客厅(2003)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2004"  />书房(2004)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2005"  />茶室(2005)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2006"  />厨房(2006)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2007"  />门厅(2007)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2008"  />卫生间(2008)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="2009"  />走廊(2009)&nbsp;</li></ul></div><br />适用人群<br /><div id="attribute_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3001" />
        长辈(3001)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3002" />
        朋友(3002)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3003"  />新婚(3003)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3004"  />生子(3004)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3005"  />孩子(3005)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3006"  />本命年(3006)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3007" />
        外国人(3007)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="3008" />
        男性女性(3008)&nbsp;</li></ul></div><br />适合节日<br /><div id="attribute_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4001"  />元旦(4001)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4002"  />春节(4002)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4003"  />母亲节(4003)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4004"  />父亲节(4004)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4005"  />端午节(4005)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4006"  />七夕节(4006)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4007"  />教师节(4007)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4008"  />中秋节(4008)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="attribute[]" type="checkbox" id="attribute[]" value="4009"  />重阳节(4009)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>国礼</td>
        <td><div id="nc_div" class="col-sm-3"><select name="nc" id="nc" class="form-control" >
<option value="">请选择</option>
<option value="0" selected>非国礼</option>
<option value="1">国礼</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>点击量</td>
        <td><div class="col-sm-5"><input name="hits" type="text" id="hits" size="50" value="0"  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>创建时间</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td>修改时间</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" id="Submit" value="复制" class="btn btn-info" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="预览" onClick="javascript:showViewPreview();" class="btn btn-warning" /></td>
      </tr>
    </tbody>
  </table>
</form>

<script>
	UE.getEditor('promotion_img',{scaleEnabled:true}); UE.getEditor('img',{scaleEnabled:true,initialFrameHeight:300}); UE.getEditor('synopsis',{scaleEnabled:true}); UE.getEditor('specifications',{scaleEnabled:true}); UE.getEditor('content',{scaleEnabled:true,initialFrameHeight:400});</script> 
<script>
var meaning = $("#meaning");
var _tmp_meaning;
$(function(){
	$(".meaning").change(function(){
		var ch_val = $(this);
		if(meaning.val().length==0){
			_tmp_meaning = new Array();
		}else{
			_tmp_meaning = meaning.val().split("|");
		}
		if($(this).is(":checked")){
			if($.inArray(ch_val.val(),_tmp_meaning)>0){
				
			}else{
				_tmp_meaning.push(ch_val.val());
				meaning.val(_tmp_meaning.join("|"));
			}
		}else{
				var _tmp = new Array();
				for (var i = 0; i < _tmp_meaning.length; i++) {
					if (_tmp_meaning[i] != ch_val.val()) _tmp.push(_tmp_meaning[i]);
				}
				meaning.val(_tmp.join("|"));
		}
	});
});

function addSource(){
	var source_tmp = $("#source_tmp");
	var sendUrl = "/ajax.jsp?action=manage_getCommoditys";
        if (source_tmp.val()) {
            console.log("source_tmp=" + source_tmp.val());
            $.ajax({
                url: sendUrl+"&exec=source_tmp&txt="+source_tmp.val(),
                type: "get",
                beforeSend: function(XMLHttpRequest) {
                },
                success: function(res) {
                    if (res) {
                        $("#source").append(res);
                    }
                },
                complete: function(XMLHttpRequest, textStatus) {
                }
            });
        }
}
function addMeaning(){
    var meaning_tmp = $("#meaning_tmp");
	var sendUrl = "/ajax.jsp?action=manage_getCommoditys";
        if (meaning_tmp.val()) {
            console.log("meaning_tmp=" + meaning_tmp.val());
            $.ajax({
                url: sendUrl+"&exec=meaning_tmp&txt="+meaning_tmp.val(),
                type: "get",
						dataType: "json",
                beforeSend: function(XMLHttpRequest) {
                },
                success: function(res) {
                    if (res) {
                        $("#meaning_div ul").append(res['html']);
									if(meaning.val().length==0){
										_tmp_meaning = new Array();
									}else{
										_tmp_meaning = meaning.val().split("|");
									}
									_tmp_meaning.push(res['id']);
									meaning.val(_tmp_meaning.join("|"));
                    }
                },
                complete: function(XMLHttpRequest, textStatus) {
                }
            });
        }
}
function showViewPreview(){
            $.ajax({
                url: "/ajax.jsp?action=manage_getCommoditys&exec=preview_tmp",
                type: "POST",
						dataType: "html",
						data: $("#viewEdit").serialize(),
                beforeSend: function(XMLHttpRequest) {
                },
                success: function(res) {
            		console.log("showViewPreview=" + res);
                    if (res) {
								window.open('http://test.gugong-palace.com/detail.jsp?preview=1&id='+res);
                    }
                },
                complete: function(XMLHttpRequest, textStatus) {
                }
            });
}
</script> 
</div>
</div>
</body>
<script>
$(function(){
	$('#Commodity').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>