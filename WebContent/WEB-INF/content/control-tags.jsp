<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>control tags</title>
<style type="text/css">
  div{border-radius:5px;border:3px solid;border-color:#00ffff}
  #frame{width:500px;max-height:400px;overflow-x:auto;overflow-y:auto}
</style>
</head>
<body>
<h3>控制标签</h3>
<div id="frame">
  <h4>if/elseif/else标签</h4>
  <s:bean name="com.zzw.bean.Person" var="person">
    <s:param name="age">20</s:param>
  </s:bean>
  <s:if test="#person.age>60">"老年人"</s:if>
  <s:elseif test="#person.age>35">"中年人"</s:elseif>
  <s:else>"少年人"</s:else>
</div>

<p/><br>
<div id="frame">
  <h4>iterator标签</h4>
  <table border="1px" width="300px">
    <s:iterator value="{'item0', 'item1', 'item2', 'item3', 'item4', 'item5', 'item6', 'item7', 'item8', 'item9'}" begin="1" end="7" step="2" status="st" var="item">
      <s:if test="#st.odd"><tr style="background-color:#bbbbbb"></s:if>
      <s:else><tr></s:else>
        <td><s:property value="#st.count"/></td>
        <td><s:property value="#item"/></td>
      </tr>
    </s:iterator>
  </table>
  <table border="1px" width="300px">
  <tr><th>键</th><th>值</th></tr>
  <s:iterator value="#{'key1':'value1', 'key2':'value2', 'key3':'value3'}">
    <tr>
      <td><s:property value="key"/></td>
      <td><s:property value="value"/></td>
    </tr>
  </s:iterator>
  </table>
</div>

<p/><br>
<div id="frame">
  <h4>append标签</h4>
  <s:append var="append">
    <s:param value="{'item1', 'item2', 'item3'}"/>
    <s:param value="#{'key1':'value1', 'key2':'value2', 'key3':'value3'}"/>
  </s:append>
  <table border="1px" width="300px">
    <s:iterator value="#append" status="st">
      <tr>
        <td><s:property value="#st.count"/></td>
        <s:if test="#st.index<3">
          <td><s:property/></td>
        </s:if>
        <s:else>
          <td><s:property value="key"/></td>
          <td><s:property value="value"/></td>
        </s:else>
      </tr>
    </s:iterator>
  </table>
</div>

<p/><br>
<div id="frame">
  <h4>merge标签</h4>
  <s:merge var="merge">
    <s:param value="{'item1', 'item2', 'item3'}"/>
    <s:param value="#{'key1':'value1', 'key2':'value2', 'key3':'value3'}"/>
  </s:merge>
  <table border="1px" width="300px">
    <s:iterator value="#merge" status="st">
      <tr>
        <td><s:property value="#st.count"/></td>
        <s:if test="#st.odd">
          <td><s:property/></td>
        </s:if>
        <s:else>
          <td><s:property value="key"/></td>
          <td><s:property value="value"/></td>
        </s:else>
      </tr>
    </s:iterator>
  </table>
</div>

<p/><br>
<div id="frame">
  <h4>generator标签</h4>
  <s:generator val="'key1:value1,key2:value2,key3:value3'" separator="," count="2" var="kv"/>
  <table border="1px" width="300px">
    <s:iterator value="#kv" var="item1">
      <tr>
        <s:generator separator=":" val="#item1" var="item2"/>
        <s:iterator value="#item2">
          <td><s:property/></td>
        </s:iterator>
      </tr>
    </s:iterator>
  </table>
</div>

<p/><br>
<div id="frame">
  <h4>subset标签</h4>
  <s:bean name="com.zzw.bean.MyDecider" var="decider"/>
  <s:subset source="{1, 2, 3, 4, 5, 6, 7, 8, 9}" start="1" count="3" decider="#decider">
    <s:iterator>
      <s:property/>
    </s:iterator>
  </s:subset>
</div>

<p/><br>
<div id="frame">
  <h4>sort标签</h4>
  <s:bean name="com.zzw.bean.MyComparator" var="comparator"/>
  <s:sort source="{9, 8, 7, 6, 5, 4, 3, 2, 1, 0}" comparator="#comparator">
    <s:iterator>
      <s:property/>&nbsp;&nbsp;
    </s:iterator>
  </s:sort>
</div>
</body>
</html>