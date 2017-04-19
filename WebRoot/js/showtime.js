/**
 * 动态显示时间
 */
function disptime( ) 
{ 

var time = new Date( ); //获得当前时间
var year = time.getYear( );//获得年、月、日
var month = time.getMonth( );
var day = time.getDay( ); 
var hour = time.getHours( ); //获得小时、分钟、秒 
var minute = time.getMinutes( ); 
var second = time.getSeconds( ); 
var apm="AM"; //默认显示上午: AM 

if (hour>12) //按12小时制显示 
{ 
hour=hour-12; 
apm="PM" ; 
} 
if (minute < 10) //如果分钟只有1位，补0显示 
minute="0"+minute; 
if (second < 10) //如果秒数只有1位，补0显示 
second="0"+second; 
/*设置文本框的内容为当前时间*/ 
document.myform.myclock.value =year+"年"+month+"月"+day+"日 "+hour+":"+minute+":"+second+" "+apm; 
/*设置定时器每隔1秒（1000毫秒），调用函数disptime()执行，刷新时钟显示*/ 
var myTime = setTimeout("disptime()",1000); 

} 
/*
 function showtime()   
{   
var today;  
var hour;  
var second;  
var minute;  
var year;  
var month;  
var date;  
var strDate;   
today=new Date();   
var n_day = today.getDay();   
switch (n_day)   
{   
case 0:{   
strDate = "星期日"   
}break;   
case 1:{   
strDate = "星期一"   
}break;   
case 2:{   
strDate ="星期二"   
}break;   
case 3:{   
strDate = "星期三"   
}break;   
case 4:{   
strDate = "星期四"   
}break;   
case 5:{   
strDate = "星期五"   
}break;   
case 6:{   
strDate = "星期六"   
}break;   
case 7:{   
strDate = "星期日"   
}break;   
}   
year = today.getYear();   
month = today.getMonth()+1;   
date = today.getDate();   
hour = today.getHours();   
minute =today.getMinutes();   
second = today.getSeconds();   
if(month<10) month="0"+month;   
if(date<10) date="0"+date;   
if(hour<10) hour="0"+hour;   
if(minute<10) minute="0"+minute;   
if(second<10) second="0"+second;   
document.getElementById('clock').innerHTML = year + "年" + month + "月" + date + "日 " + strDate +" " + hour + ":" + minute + ":" + second;   
setTimeout("showtime();", 1000);   
}  
 */