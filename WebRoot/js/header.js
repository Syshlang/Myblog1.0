/*闪烁字体*/
function changeColor(){
	var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray|aqua|black|blue|fuchsia|lime|orange";
	color=color.split("|");
	document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)];
	}
	setInterval("changeColor()",100);
	
	/**图片滚动显示
	 * innerHTML:     设置或获取位于对象起始和结束标签内的 HTML
       scrollHeight:     获取对象的滚动高度。
       scrollLeft:       设置或获取位于对象左边界和窗口中目前可见内容的最左端之间的距离
       scrollTop:       设置或获取位于对象最顶端和窗口中可见内容的最顶端之间的距离
       scrollWidth:      获取对象的滚动宽度
       offsetHeight:    获取对象相对于版面或由父坐标 offsetParent 属性指定的父坐标的高度
       offsetLeft:       获取对象相对于版面或由 offsetParent 属性指定的父坐标的计算左侧位置
       offsetTop:       获取对象相对于版面或由 offsetTop 属性指定的父坐标的计算顶端位置
       offsetWidth:     获取对象相对于版面或由父坐标 offsetParent 属性指定的父坐标的宽度
	
	function getImage(){
		alert("----------------------------------");
		var rows = $("<img src='images/scene/1.jpg' border='0'  alt=''/>");
		for(var i=2;i<=10;i++){
			rows.('<img src="images/scene/'+i+'.jpg" border="0"  alt=""/>');
		}
	}
	
	
	for(var i=2;i<=10;i++){
		var qjsx = document.getElementById("qjsx"+i).value;
		qjxxcell = '<td><input type="text" id="qjxx' + tNum + '" name="qjxx' + tNum + '" value="' + lastQjsx+'" class="required number decimal " style="width:120px;" maxlength="17" /></td>';
		rows.append(qjxxcell);
		
	}*/
