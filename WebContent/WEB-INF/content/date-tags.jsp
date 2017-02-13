<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>date tags</title>
<style type="text/css">
  div{border-radius:5px;border:3px solid;border-color:#00ffff}
  #frame{width:500px;max-height:400px;overflow-x:auto;overflow-y:auto}
</style>
</head>
<body>
<h3>数据标签</h3>
<div id="frame">
  <h4>action标签</h4>
  1. 默认action调用：<s:action name="first" namespace="/zzw"/><br>
  2. 包含action的结果页面：<s:action name="first" namespace="/zzw" executeResult="true"/><br>
  3. 不向action传入请求参数：<s:action name="first" namespace="/zzw" ignoreContextParams="true" executeResult="true"/><br>
  4. 将action放入Stack Context后：<s:action name="first" namespace="/zzw" var="fa"/><br>
  a) action是否在Value Stack中：<s:property value="fa==null?'false':'true'"/><br>
  b) action是否在request中：<s:property value="#request.fa==null?'false':'true'"/><br>
  c) action是否在session中：<s:property value="#session.fa==null?'false':'true'"/><br>
  d) action是否在application中：<s:property value="#application.fa==null?'false':'true'"/><br>
</div>
<p/><br>
<div id="frame">
  <h4>bean标签</h4>
  1. 创建JavaBean对象：<s:bean name="com.zzw.bean.Person" var="person">
                       <s:param name="name">张三</s:param>
                       <s:param name="sex" value="'男'"/>
                       <s:param name="age">21</s:param>
                     </s:bean><br>
  2. 获取bean属性：姓名=<s:property value="#person.name"/>，性别=<s:property value="#person.sex"/>，年龄=<s:property value="#person.age"/><br>
  3. 设置"var"属性后：<br>
  a) bean是否在Value Stack中：<s:property value="person==null?'false':'true'"/><br>
  b) bean是否在request中：<s:property value="#request.person==null?'false':'true'"/><br>
  c) bean是否在session中：<s:property value="#session.person==null?'false':'true'"/><br>
  d) bean是否在application中：<s:property value="#application.person==null?'false':'true'"/><br>
</div>

<p/><br>
<div id="frame">
  <h4>date标签</h4>
  <s:bean name="java.util.Date" var="now"/>
  1. 当前时间：<s:date name="#now" format="yyyy-MM-dd HH:mm:ss"/><br>
  2. 当前时差：<s:date name="#now" nice="true"/><br>
  3. 时间or时差优先：<s:date name="#now" format="yyyy-MM-dd HH:mm:ss" nice="true"/><br>
  4. 将date放入Stack Context后：<s:date name="#now" var="date"/><s:property value="#date"/><br>
  a) date是否在Value Stack中：<s:property value="date==null?'false':'true'"/><br>
  b) date是否在request中：<s:property value="#request.date==null?'false':'true'"/><br>
  c) date是否在session中：<s:property value="#session.date==null?'false':'true'"/><br>
  d) date是否在application中：<s:property value="#application.date==null?'false':'true'"/><br>
</div>

<p/><br>
<div style="border-radius:5px;border:3px solid;border-color:#00ffff;max-width:800px;max-height:400px;overflow-x:auto;overflow-y:auto">
  <h4>debug标签</h4>
  <s:debug/>
</div>

<p/><br>
<div id="frame">
  <h4>include标签</h4>
  <s:include value="zzw/second.jsp">
    <s:param name="message">include</s:param>
  </s:include>
</div>

<p/><br>
<div id="frame">
  <h4>push标签</h4>
  <s:push value="#person">
    in push tag scope: <br>
    Value Stack栈顶对象的name：<s:property value="name"/><br>
    Value Stack栈顶对象的sex：<s:property value="sex"/><br>
    Value Stack栈顶对象的age：<s:property value="age"/><br>
  </s:push>
  out push tag scope: <br>
    Value Stack栈顶对象的name：<s:property value="name"/><br>
    Value Stack栈顶对象的sex：<s:property value="sex"/><br>
    Value Stack栈顶对象的age：<s:property value="age"/><br>
</div>

<p/><br>
<div id="frame">
  <h4>set标签</h4>
  1. 为name设置"var"属性后：<s:set value="#person.name" var="name"/>name=<s:property value="#name"/><br>
  a) name是否在Value Stack中：<s:property value="name==null?'false':'true'"/><br>
  b) name是否在request中：<s:property value="#request.name==null?'false':'true'"/><br>
  c) name是否在session中：<s:property value="#session.name==null?'false':'true'"/><br>
  d) name是否在application中：<s:property value="#application.name==null?'false':'true'"/><br>
  2. 将sex放入page范围后：<s:set value="#person.sex" var="sex" scope="page"/>sex=<s:property value="#attr.sex"/><br>
  a) sex是否在Value Stack中：<s:property value="sex==null?'false':'true'"/><br>
  b) sex是否在request中：<s:property value="#request.sex==null?'false':'true'"/><br>
  c) sex是否在session中：<s:property value="#session.sex==null?'false':'true'"/><br>
  d) sex是否在application中：<s:property value="#application.sex==null?'false':'true'"/><br>
  3. 将age放入action范围后：<s:set value="#person.age" var="age" scope="action"/>age=<s:property value="#age"/><br>
  a) age是否在Value Stack中：<s:property value="age==null?'false':'true'"/><br>
  b) age是否在request中：<s:property value="#request.age==null?'false':'true'"/><br>
  c) age是否在session中：<s:property value="#session.age==null?'false':'true'"/><br>
  d) age是否在application中：<s:property value="#application.age==null?'false':'true'"/><br>
</div>

<p/><br>
<div id="frame">
  <h4>url标签</h4>
  1. 不指定action和value：<s:url includeParams="get"/><br>
  2. 指定action：<s:url action="first" namespace="/zzw">
                  <s:param name="message">url-tag</s:param>
                </s:url><br>
  3. 指定value：<s:url value="struts-tags.action" forceAddSchemeHostAndPort="true"/><br>
  4. 指定action和value：<s:url action="first" value="struts-tags.action"/>
</div>
</body>
</html>