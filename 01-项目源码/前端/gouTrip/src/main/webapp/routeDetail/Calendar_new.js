Array.prototype.remove=function(dx){if(isNaN(dx)||dx>this.length){return false;}for(var i=0,n=0;i<this.length;i++){if(this[i]!=this[dx]){this[n++]=this[i];}}this.length-=1;};

var max = 999;
var childMax = 999;
function Map() {     
    /** 存放键的数组(遍历用到) */    
    this.keys = new Array();     
    /** 存放数据 */    
    this.data = new Object();     
         
    /**   
     * 放入一个键值对   
     * @param {String} key   
     * @param {Object} value   
     */    
    this.put = function(key, value) {     
        if(this.data[key] == null){     
            this.keys.push(key);     
        }     
        this.data[key] = value;     
    };     
         
    /**   
     * 获取某键对应的值   
     * @param {String} key   
     * @return {Object} value   
     */    
    this.get = function(key) {     
        return this.data[key];     
    };     
         
    /**   
     * 删除一个键值对   
     * @param {String} key   
     */    
    this.remove = function(key) {     
        this.keys.remove(key);     
        this.data[key] = null;     
    };     
         
    /**   
     * 遍历Map,执行处理函数   
     *    
     * @param {Function} 回调函数 function(key,value,index){..}   
     */    
    this.each = function(fn){     
        if(typeof fn != 'function'){     
            return;     
        }     
        var len = this.keys.length;     
        for(var i=0;i<len;i++){     
            var k = this.keys[i];     
            fn(k,this.data[k],i);     
        }     
    };     
         
    /**   
     * 获取键值数组(类似Java的entrySet())   
     * @return 键值对象{key,value}的数组   
     */    
    this.entrys = function() {     
        var len = this.keys.length;     
        var entrys = new Array(len);     
        for (var i = 0; i < len; i++) {     
            entrys[i] = {     
                key : this.keys[i],     
                value : this.data[i]     
            };     
        }     
        return entrys;     
    };     
         
    /**   
     * 判断Map是否为空   
     */    
    this.isEmpty = function() {     
        return this.keys.length == 0;     
    };     
         
    /**   
     * 获取键值对数量   
     */    
    this.size = function(){     
        return this.keys.length;     
    };     
         
    /**   
     * 重写toString    
     */    
    this.toString = function(){     
        var s = "{";     
        for(var i=0;i<this.keys.length;i++,s+=','){     
            var k = this.keys[i];     
            s += k+"="+this.data[k];     
        }     
        s+="}";     
        return s;     
    };     
}
// JavaScript Document
var Calendar = {
	dataMap:null,
	_data:null,
	_price:99999,
    _today: new Date(),
    _date: new Date().getDate(),
    _day: new Date().getDay(),
    _month: new Date().getMonth() + 1,
    _year: new Date().getFullYear(),
    _C_year: new Date().getFullYear(),
    _C_month: new Date().getMonth() + 1,
    isLeap: function () {
    	var year = this._C_year;
    	if (year % 4 == 0 && year % 100 > 0)return true;
    	if (year % 400 == 0 && year % 3200 > 0)return true;
    	return false;
    },
    isLeap: function () {
        var year = this._C_year;
        if (year % 4 == 0 && year % 100 > 0)return true;
        if (year % 400 == 0 && year % 3200 > 0)return true;
        return false;
    },
    getLen: function () {
        if (this._C_month == 2) {
            if (this.isLeap())return 29;
            return 28;
        }
        if (this._C_month < 8) {
            if (this._C_month % 2 > 0)return 31;
            return 30;
        }
        if (this._C_month % 2 > 0)return 30;
        return 31;
    },
    getCalendar: function () {
        var len = this.getLen();
        var d = new Date(this._C_year, this._C_month - 1, 1);
        var dfw = d.getDay();
        var arr = new Array();
        var tem = 0;
        var str = "";
        for (var i = 0; i < 6; i++) {
            arr[i] = new Array();
            for (var j = 0; j < 7; j++) {
                tem++;
                if (tem - dfw > 0 && tem - dfw <= len)arr[i][j] = tem - dfw;
                else arr[i][j] = "&nbsp;";
            }
        }
        str += '<table class="lineDate" width="568" border="0" cellpadding="0" cellspacing="1">';
        str += '<tr><th colspan="7" scope="row" style="height:22px;line-height:22px;padding:5px 0 4px 0;"><a href="javascript:void(0);" onclick="CreateCalendar(2014,9);"> &lt; </a> <select id="selectYear" onchange="CreateCalendar(parseInt(this.value),parseInt($(\'#selectMonth\').val()));"><option value="2014" selected="selected">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option></select>年 <select id="selectMonth" onchange="CreateCalendar(parseInt($(\'#selectYear\').val()),parseInt(this.value));"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10" selected="selected">10</option><option value="11">11</option><option value="12">12</option></select>月<a href="javascript:void(0);" onclick="CreateCalendar(2014,11);"> &gt; </a></th></tr>';
        str += '<tr class="title"><td>星期日</td><td>星期一</td><td>星期二</td><td>星期三</td><td>星期四</td><td>星期五</td><td>星期六</td></tr>';
        for (var k = 0; k < 6; k++) {
            str += '<tr  class="text"><td>';
            str += arr[k].join('</td><td>');
            str += '</td></tr>';
        }
        str += '</table>';
        return str;
    },
    nextMonth: function () {
        if (this._C_month == 12) {
            this._C_year++;
            this._C_month = 0;
        }
        this._C_month++;
    },
    nextYear: function () {
        this._C_year++;
    },
    previousMonth: function () {
        if (this._C_month == 1) {
            this._C_year--;
            this._C_month = 13;
        }
        this._C_month--;
    },
    previousYear: function () {
        this._C_year--;
    },
    compareDate: function(start, end) {
        if (end.getFullYear() > start.getFullYear()) {
            return 1;
        } else if (end.getFullYear() == start.getFullYear()) {
            if (end.getMonth() > start.getMonth()) {
                return 1;
            } else if (end.getMonth() == start.getMonth()) {
                if (end.getDate() > start.getDate()) {
                    return 1;
                } else if (end.getDate() == start.getDate()) {
                    return 0;
                } else if (end.getDate() < start.getDate()) {
                    return -1;
                }
            } else if (end.getMonth() < start.getMonth()) {
                return -1;
            }
        } else if (end.getFullYear() < start.getFullYear()) {
            return -1;
        }
    },
    getDateByFormat: function(dateStr) {
        var pattern = new RegExp('([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-((([13578]|0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|(([469]|0[469]|11)-(0[1-9]|[12][0-9]|30))|(2|02-(0[1-9]|[1][0-9]|2[0-9])))');

        if (!pattern.test(dateStr)) {
            return;
        }
        var yyyy = dateStr.substring(0, dateStr.indexOf('-'));
        var MM = dateStr.substring(dateStr.indexOf('-') + 1, dateStr.lastIndexOf('-'));
        var dd = dateStr.substring(dateStr.lastIndexOf('-') + 1, dateStr.length);
        var d = new Date();
        d.setFullYear(yyyy, parseInt(MM) - 1, dd);
        return d;
    },
    getPriceDaily: function (year, month) {
        var today = new Date();
        var thisYear = today.getFullYear();
        var thisMonth = today.getMonth() + 1;
        if (undefined == year || month == undefined || (year < thisYear && month < thisMonth)) {
            year = thisYear;
            month = thisMonth;
        }
        this._C_month = month;
        this._C_year = year;
        this.dataMap=new Map();
        var routeId = $("#routeId").val();
        var priceTypeId = $("#priceTypeId").val();
        var priceTypeIdInit = $('.selectTag_selected').attr('priceTypeId');
        var startDateInit = $('.selectTag_selected').attr('startDate');
		var endDateInit = $('.selectTag_selected').attr('endDate');
        var that = this;
        
        var year2 = this._C_year;
        var month2 = this._C_month;
        
        $.get("/route/getPriceDailyListNew.json",
                {routeId: routeId,priceTypeId: priceTypeId,year: this._C_year, month: this._C_month,
   	     		priceTypeIdInit:priceTypeIdInit,startDateInit:startDateInit,endDateInit:endDateInit},
                function (o) {
                	that._data= o;
                	if(($("#selectYear").val() && $("#selectMonth").val())){
                        var arrayStr = makeTable1(that);
                        
                        $('#selectYear').val(year2);
                        $('#selectMonth').val(month2);
                        $('#selectYear2').html(year2);
        		        $('#selectMonth2').html(month2);
                        $("#priceDailyTbody").html(arrayStr[0]);
                        
                        //控制左右选月份
                		var startD = new Date(o.priceType.startDate).pattern('yyyy-MM-dd');
                		var endD = new Date(o.priceType.endDate).pattern('yyyy-MM-dd');
                        
                        var mindate = startD;
                		var date = $('#selectYear').val() + '-' + $('#selectMonth').val();
                		var date1 = startD;
                		var date2 = date;
                		var date3 = endD;
                		// 拆分年月日
                		date1 = date1.split('-');
                		// 得到月数
                		date1 = parseInt(date1[0]) * 12 + parseInt(date1[1]);
                		date2 = date2.split('-');
                		date2 = parseInt(date2[0]) * 12 + parseInt(date2[1]);
                		date3 = endD.split('-');
                		date3 = parseInt(date3[0]) * 12 + parseInt(date3[1]);
                		var m = Math.abs(date1 - date2);
                		var n = Math.abs(date3 - date2);
                		if(mindate!='0'){
                			if(m == 0){
                				$("#leftSwitch").hide();
                			}else{
                				$("#leftSwitch").show();
                			}
                			if(n == 0){
                				$("#rightSwitch").hide();
                			}else{
                				$("#rightSwitch").show();
                			}
                		}else{
                			if(s == date){
                				$("#leftSwitch").hide();
                			}else{
                				$("#leftSwitch").show();
                			}
                		}
                        
                	}
                },
                'json');
        
        
    },
    getNextMonthPriceDaily: function () {
        this.nextMonth();
        this.getPriceDaily(this._C_year, this._C_month);
    },
    getPreviousMonthPriceDaily: function () {
        this.previousMonth();
        this.getPriceDaily(this._C_year, this._C_month);
    },
    getHolidayName:function (year,month,day) {
    	var today = new Date();
        var thisYear = today.getFullYear();
        var thisMonth = today.getMonth() + 1;
        var thisDay = today.getDate();
        var thisDate = thisYear + '-' + thisMonth + '-' + thisDay;
        var dateStr = year + '-' + month + '-' + day;
    	var dateMap = new Map();
	    	dateMap.put("2016-1-1","元旦");
	    	dateMap.put("2016-2-8","春节");
	    	dateMap.put("2016-4-4","清明节");
	    	dateMap.put("2016-5-1","劳动节");
	    	dateMap.put("2016-6-9","端午节");
	    	dateMap.put("2016-9-15","中秋节");
	    	dateMap.put("2016-10-1","国庆节");
    	var date= dateMap.get(dateStr);
    	if(dateStr==thisDate){
    		return '<font color="#F00">今天</font>';
    	}else if(date){
    		return date;
    	}else{
    		return day;
    	}
    }
};

/**
 * 获取tbody里的日期数据
 * @that 指 Calendar对象
 */
function makeTable1(that){
	var o= that._data;
	var startDayStr ="";
	var endDayStr ="";
	try{
		startDayStr = new Date(o.priceType.startDate);
		endDayStr= new Date(o.priceType.endDate);
	}catch (e) {}
	var priceDailies; 
    try{
    	priceDailies = o.priceDailies;
    }catch (e) {}
    //第一个日历表
	var str = getPriceDailyTbody(that,startDayStr,endDayStr,priceDailies);
	
	var arrayStr = new Array(str);
	return arrayStr;
}
/**
 * 获取每日价格的日历Tbody
 */
function getPriceDailyTbody(that,startDayStr,endDayStr,priceDailies){
	var today = new Date();
    var thisYear = today.getFullYear();
    var thisMonth = today.getMonth() + 1;
    var thisDay = today.getDate();
	
	var str="";
    var len = Calendar.getLen();
    var d = new Date(Calendar._C_year, Calendar._C_month - 1, 1);
    var dfw = d.getDay();//这个月的第一天
    var arr = new Array();
    var tem = 0;//第几个格子
    for (var i = 0; i < 6; i++) {
        arr[i] = new Array();
        for (var j = 0; j < 7; j++) {
            tem++;
            if (tem - dfw > 0 && tem - dfw <= len)arr[i][j] = tem - dfw;
            else arr[i][j] = "&nbsp;";
        }
    }

	for (var k = 0; k < 6; k++) {
        str += '<tr class="text">';
        for (var j = 0; j < 7; j++) {
            var dateStr = Calendar._C_year + '-' + Calendar._C_month + '-';
            dateStr += arr[k][j];
            if ((Calendar._C_year < thisYear) 
            		|| (Calendar._C_year == thisYear && Calendar._C_month < thisMonth) 
            		|| (Calendar._C_year == thisYear && Calendar._C_month == thisMonth && arr[k][j] < thisDay))
            	str += '<td valign="top"><div style="text-align:center;"><font color="#999999">' + arr[k][j] + '</font></div></td>';
            else if (/\d+/.test(arr[k][j])) {
                var calendarDate = new Date();
                calendarDate.setFullYear(Calendar._C_year, Calendar._C_month - 1, arr[k][j]);
                if ((!startDayStr && !endDayStr) || that.compareDate(startDayStr, calendarDate) == -1 || that.compareDate(calendarDate, endDayStr) == -1) {
                	str += '<td  id="calendar_' + dateStr + '" valign="top"><div style="text-align:center;"><font color="#000">' + arr[k][j] + '</font></div></td>';
                    continue;
                }
                var flag = true;
                for (var index in priceDailies) {
                    if (priceDailies[index].day == arr[k][j]) {
                        flag = false;
                        //限制每日价格至少提前多少天才能购买
                        var mydate = new Date(priceDailies[index].date); 
                		mydate.setDate(mydate.getDate() - priceDailies[index].minDay);
                        if (0 <= priceDailies[index].adultRemain && that.compareDate(today,mydate)!=-1) {
                        	if (0 == priceDailies[index].adultRemain) {
                        		str += '<td  id="calendar_' + dateStr + '" valign="top">';
                        		str += '<div style="cursor:pointer;vertical-align:top;text-align:center;">';
                        	} else {
                        		str += '<td  style="cursor:pointer;" id="calendar_' + dateStr + '" data-date="' + arr[k][j] + '" class="tdSelected" valign="top">';
                                str += '<div style="cursor:pointer;vertical-align:top;text-align:center;">';
                        	}
                         	//str += that.getHolidayName(Calendar._C_year,Calendar._C_month,arr[k][j]);
                         	str += arr[k][j];
                         	str += '</div>';
                         	if (0 == priceDailies[index].adultRemain) {
                        		str += '<span style="text-align:center;font-size:12px;width:100%; display:block;">售罄</span>';
                        		str += '<div style="text-align:center;font-size:12px;">￥' + priceDailies[index].adultPrice + '</div>';
                        	} else {
                                str += '<div style="text-align:center;font-size:12px;">余:' + priceDailies[index].adultRemain + '</div>';
                                str += '<div style="text-align:center;font-size:12px;">￥' + priceDailies[index].adultPrice + '</div>';
                        	}
                            str += '</td>';
                            that.dataMap.put(dateStr, priceDailies[index]);
                        }else{
                        	str += '<td id="calendar_' + dateStr + '" valign="top"><div style="position:relative;text-align:center;color:#000000;">' + arr[k][j] + '</div></td>';
                         }
                        break;
                    }
                }
                if (flag) {
                	str += '<td id="calendar_' + dateStr + '" valign="top"><div style="position:relative;text-align:center;color:#000000;">' + arr[k][j] + '</div></td>';
                }
            } else
                str += '<td></td>';
        }
        str += '</tr>'; 
    }
	
	return str;
}

$(function(){
    $('#priceDailyTbody').on('click', 'td', function () {
        if ($(this).data('date')) {
        	$(".time").hide(); //日历隐藏
        	$('#amount').show();//显示选择人数
        	//初始化数量
        	$('#adultAmount').val(2);
            $('#childAmount').val(0);
            $('#roomAmount').val(1);
            
        	$("#priceDailyTbody td").removeClass("tdSelected_new");
        	var data = $('#selectYear').val() + '-' + $('#selectMonth').val() + '-' + $(this).data('date');
        	$('#startDate').val(data);
            $(this).addClass("tdSelected_new");
            var data2 = data.replace(/-/g,'/');//解决苹果浏览器不兼容问题
            data2 = new Date(data2).pattern('yyyy-MM-dd');
        	$("#selectTime").val(data2);//设置团期：设置value为data的项选中
            
            var  one = Calendar.dataMap.get(data);
            var priceDailyId = one.id;
            $('#priceDailyId').val(priceDailyId);
            //是否需要二次确认
            var secondCheck = one.secondCheck;
            if(secondCheck==1){$('#secondCheck').show();$('#noSecondCheck').hide();}
            else{$('#noSecondCheck').show();$('#secondCheck').hide();}
            //最大的数量
            max = one.adultRemain;
            if(max==1){$('#adultAmount').val(1);}//初始化数量
            childMax = one.childRemain;
            //选中价格
            var adultPrice = one.adultPrice;
            var childPrice = one.childPrice;
            var roomPrice = one.roomPrice;
            $('#adultPrice').html(adultPrice);
            $('#childPrice').html(childPrice);
            $('#roomPrice').html(roomPrice);
            
            if(childPrice && childMax){$('#childInfo,#childInfo2').show();}
            else{$('#childInfo,#childInfo2').hide();}
            //当前的数量
            var adultNum = $('#adultAmount').val();
            var childNum = $('#childAmount').val();
            var roomNum = $('#roomAmount').val();
            if(adultNum<=0){
            	$('#adultAmount').val(1);
            	adultNum  = 1;
            }
            //设置价格
            var roomMin = adultNum/2;
    		var roomCha = (roomNum - roomMin)*2;
    		var roomChaPrice = roomCha * parseFloat(roomPrice);
    		$('#roomPrice').html(roomChaPrice);
    		$('#totalPrice').text(eval(adultPrice*adultNum + childPrice*childNum + roomChaPrice));
    		
            //捆绑隐藏数据 绑定事件
            $('#adultAmount').data('price', adultPrice);
            $('#childAmount').data('price', childPrice);
            $('#roomAmount').data('price', roomPrice);
            
            //2015-12-16
            //成人加减
            $('#adultMinus').unbind().bind('click', function() {
            	var adultNumPrice = changeNumPrice('minus' , 'adultAmount');
            	$('#totalPrice').text(eval(adultNumPrice + childPrice*$('#childAmount').val() + parseFloat($('#roomPrice').html())));
            });
            $('#adultPlus').unbind().bind('click', function() {
            	var adultNumPrice = changeNumPrice('plus' , 'adultAmount');
            	$('#totalPrice').text(eval(adultNumPrice + childPrice*$('#childAmount').val() + parseFloat($('#roomPrice').html()) ));
            });
            //儿童加减
            $('#childMinus').unbind().bind('click', function() {
            	var childNumPrice = changeNumPrice('minus' , 'childAmount');
            	$('#totalPrice').text(eval(adultPrice*$('#adultAmount').val() + childNumPrice + parseFloat($('#roomPrice').html())));
            });
            $('#childPlus').unbind().bind('click', function() {
            	var childNumPrice = changeNumPrice('plus' , 'childAmount');
            	$('#totalPrice').text(eval(adultPrice*$('#adultAmount').val() + childNumPrice + parseFloat($('#roomPrice').html())));
            });
            //房间加减
            $('#roomMinus').unbind().bind('click', function() {
            	var roomNumPrice = changeNumPrice('minus' , 'roomAmount' ,roomPrice);
            	$('#totalPrice').text(eval(adultPrice*$('#adultAmount').val() + childPrice*$('#childAmount').val() + roomNumPrice));
            });
            $('#roomPlus').unbind().bind('click', function() {
            	var roomNumPrice = changeNumPrice('plus' , 'roomAmount' ,roomPrice);
            	$('#totalPrice').text(eval(adultPrice*$('#adultAmount').val() + childPrice*$('#childAmount').val() + roomNumPrice));
            });
        }
    });
    
});

/**
 * 调整数量并改变价格
 * @param method
 * @param amountId
 * @returns Number
 */
function changeNumPrice(method ,amountId) {
	var target1 = amountId;
	var amount = Utils2.amount(target1);
	var adultAmount = $('#adultAmount').val();
	var roomChaNum = 0;
	var price = parseFloat($('#' + target1).data('price'));
	var roomChaPrice = parseFloat($('#roomAmount').data('price'));
    if (method === 'plus') {
        if(target1 == 'childAmount'){
        	var maxNum = 0;
        	if(parseInt(adultAmount) < parseInt(childMax)){
        		Utils2.plus(target1,adultAmount);
        		maxNum = adultAmount;
        	}else{
        		Utils2.plus(target1,childMax);//不能超过后台儿童设定的界限
        		maxNum = childMax;
        	}
        	var childNum = Utils2.amount(target1);
        	checkMax(target1,childNum,maxNum);
        }else if(target1 == 'adultAmount'){
        	Utils2.plus(target1,max);
        	var adultNum = Utils2.amount(target1);
        	getRoomInfoByAdultNum(adultNum,roomChaPrice);
        	checkMax(target1,adultNum,max);
        }else{
        	Utils2.plus(target1,max);
        }
    }else if (method === 'minus') {
    	if(target1 == 'childAmount'){
    		Utils2.minus(target1,0);
    	}else if(target1 == 'adultAmount'){
    		Utils2.minus(target1,1);
    		var adultNum = Utils2.amount(target1);
    		if($('#childAmount').val() > adultNum){
    			$('#childAmount').val(adultNum);
    		}
    		getRoomInfoByAdultNum(adultNum,roomChaPrice);
        }else{
        	Utils2.minus(target1,1);
    	}
    }
    if(target1 == 'roomAmount'){
    	price = roomChaNum * price;
		$('#roomPrice').html(price);
		return price;
    }
    var num = Utils2.amount(target1);
    price = num * price;
    return price;
}
//通过成人数获取房间数和房间差等信息
function getRoomInfoByAdultNum(adultNum,roomPrice){
	if(adultNum%2 == 0){
		$('#roomAmount').val(adultNum/2);
		$('#roomPrice').html(0);
	}else{
		$('#roomAmount').val(eval(adultNum + '+' + 1)/2);
		$('#roomPrice').html(roomPrice);
	}
}
//检测是否显示提示
function checkMax(target1,num,max){
	if(num==max){
    	var info = '限购'+max+'人';
    	layer.tips(info,$("#" + target1));
    }
}
function checkMin(target1,num,min){
	if(num==min){
    	var info = '最少'+min+'间';
    	layer.tips(info,$("#" + target1));
    }
}

//添加与减少数量
var Utils2 = {
    plus:function(obj,max) {
        if (parseInt($("#" + obj).val()) < parseInt(max)){
        	$("#"+obj).val(eval($("#"+obj).val() + '+' + 1));
        }
    },
    minus:function(obj,min){
        if(parseInt(min) < parseInt($("#" + obj).val())){
            $("#"+obj).val(eval($("#"+obj).val() - 1));
        }
    },
    changeClass:function(oldClass,newClass,note){
        $(note).toggleClass(newClass);
        $(note).siblings().removeClass(oldClass);
    },
    //数量参数
    amount:function(obj) {
    	return parseInt($("#" + obj).val());
    }
};


//日期加上天数得到新的日期  
//dateTemp 需要参加计算的日期，days要添加的天数，返回新的日期，日期格式：YYYY-MM-DD  
function getNewDay(dateTemp, days) {  
  var dateTemp = dateTemp.split("-");  
  var nDate = new Date(dateTemp[1] + '/' + dateTemp[2] + '/' + dateTemp[0]); //转换为MM/DD/YYYY格式  可以兼容ie和火狐浏览器  
  var millSeconds = Math.abs(nDate) + (days * 24 * 60 * 60 * 1000);  
  var rDate = new Date(millSeconds);  
  var year = rDate.getFullYear();  
  var month = rDate.getMonth() + 1;  
  //if (month < 10) month = "0" + month;  
  var date = rDate.getDate();  
  //if (date < 10) date = "0" + date;  
  return (year + "-" + month + "-" + date);  
} 

