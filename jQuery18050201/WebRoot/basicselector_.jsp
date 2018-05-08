<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'basicselector_.jsp' starting page</title>
    <style type="text/css">
		div, span, p {
			    width: 140px;
			    height: 140px;
			    margin: 5px;
			    background: #aaa;
			    border: #000 1px solid;
			    float: left;
			    font-size: 17px;
			    font-family: Verdana;
		}
			
		div.mini {
			    width: 55px;
			    height: 55px;
			    background-color: #aaa;
			    font-size: 12px;
		}
			
		div.hide {
			    display: none;
		}			
		</style>
		 <!-- 导入 jQuery 库 -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
  <script type="text/javascript">
    $(function(){

    	//1. 使用 id 选择器选择 id=btn1 的元素: $("#btn1")
		//2. 为选择的 jQuery 对象添加 onclick 响应函数: 
		// $("#btn1").click(function(){}), 响应函数的代码
		//写在 function(){} 的中括号中.
		$("#btn1").click(function(){
            $("#one").css("background","#ffbbaa");
	    });
		$("#btn2").click(function(){
            $(".mini").css("background","#ffbbaa");
	    });
		$("#btn3").click(function(){
            $("div").css("background","#ffbbaa");
	    });
		$("#btn4").click(function(){
            $("*").css("background","#ffbbaa");
	    });
		$("#btn5").click(function(){
            $("span,#two").css("background","#ffbbaa");
	    });

    })
  
  </script>
  </head>
  <body>
  		<input type="button" value="选择 id 为 one 的元素" id="btn1" />
		<input type="button" value="选择 class 为 mini 的所有元素" id="btn2" />
		<input type="button" value="选择 元素名是 div 的所有元素" id="btn3" />
		<input type="button" value="选择 所有的元素" id="btn4" />
		<input type="button" value="选择 所有的 span 元素和id为two的元素" id="btn5" />
		
		<br><br>
		<div class="one" id="one">
			id 为 one,class 为 one 的div
			<div class="mini">class为mini</div>
		</div>
		<div class="one" id="two" title="test">
			id为two,class为one,title为test的div
			<div class="mini" title="other">class为mini,title为other</div>
			<div class="mini" title="test">class为mini,title为test</div>
		</div>
		<div class="one">
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini"></div>
		</div>
		<div class="one">
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini" title="tesst">class为mini,title为tesst</div>
		</div>
		<div style="display:none;" class="none">style的display为"none"的div</div>
		<div class="hide">class为"hide"的div</div>
		<div>包含input的type为"hidden"的div
		     <input type="hidden" size="8">
		</div>
		<span id="span">^^span元素^^</span>
  </body>
</html>
