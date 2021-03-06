<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ScreamPay API支付测试</title>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	Date date = new Date();
	String requestDate = sdf.format(date);
	String orderNo = "ScreamPay"+date.getTime();
%>
<style type="text/css">
		tr.closeAll {
			display: none;
		}
</style>
</head>
<body>
<form action="/ScreamPayDemo/PayServlet" target="_blank">
	<table align="center" style="border:solid 1px #107929; margin-top: 40px;">
		<tr>
		  	<th align="center" height="30" colspan="5" bgcolor="#6BBE18">
				订单创建接口
			</th>
		</tr>
		<tr height="50">
			<td width="15%" align="center">商户号&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="merchNo" value="JFSH4409" required></td>
			<td width="20%">--merchNo<span style="color:red" required>&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">商户订单号&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="orderNo" value="<%=orderNo %>" required></td>
			<td width="20%">--orderNo<span style="color:red" required>&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">订单金额&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="amount" required></td>
			<td width="20%">--amount<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">交易币种&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="currency" readonly="readonly" value="CNY"></td>
			<td width="20%">--currency<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">支付方式&nbsp;:</td>
			<td width="70%" align="center">		
				<select name="outChannel">
  					<option value ="wx">微信扫码</option>
 					<option value="ali">支付宝扫码</option>
				</select>
			</td>
			<td width="20%">--outChannel<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">主题&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="title" value="测试" required></td>
			<td width="20%">--title<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">产品&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="product" value="苹果" required></td>
			<td width="20%">--product<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">备注&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="memo" value="备注" required></td>
			<td width="20%">--memo<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">请求时间&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="reqTime" value="<%=requestDate%>"></td>
			<td width="20%">--reqTime<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">页面同步回调地址&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="returnUrl" value="http://localhost:8080/ScreamPay/jsp/fcallback.jsp"></td>
			<td width="20%">--returnUrl<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">服务器异步回调地址&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="notifyUrl" value="http://localhost:8080/ScreamPay/NotifyServlet" required></td>
			<td width="20%">--notifyUrl<span style="color:red" >&nbsp;*</span></td>
		</tr>
		<tr height="50">
			<td width="15%" align="center">用户标识&nbsp;:</td>
			<td width="70%" align="center"><input type="text" size="80" name="userId" required></td>
			<td width="20%">--userId<span style="color:red" >&nbsp;*</span></td>
		</tr>

		<tr height="50">
			<td></td>
			<td style="padding-left: 250px"><input type="submit" value="单击支付"></td>
		</tr>
	</table>
</form>
</body>
</html>