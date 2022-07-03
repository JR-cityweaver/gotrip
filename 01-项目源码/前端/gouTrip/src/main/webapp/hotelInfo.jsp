<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0038)http://www.goutrip.com/hotel/1248.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>${hotelInfo.hotel_name} 预订价格_房型推荐_位置点评-够旅游</title>
    <meta name="description" content="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）预定、价格查询、房型推荐、位置电话、客户点评就到够旅游网，为你提供有品质有深度有主题的三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）预订服务。">
	<meta name="keywords" content="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）预订价格 房型推荐 位置点评，够旅游">
    <link href="./hotelInfo_files/public.css" rel="stylesheet">
    <link href="./hotelInfo_files/common.css" rel="stylesheet">
    <link href="./hotelInfo_files/hotelDetail.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    
    <script src="./hotelInfo_files/hm.js.下载"></script><script src="./hotelInfo_files/jquery-1.11.3.js.下载"></script>
	<script type="text/javascript" src="./hotelInfo_files/laydate.js.下载"></script><link type="text/css" rel="stylesheet" href="./hotelInfo_files/laydate.css"><link type="text/css" rel="stylesheet" href="./hotelInfo_files/laydate(1).css" id="LayDateSkin">
	<script src="./hotelInfo_files/room.js.下载"></script>
	<script src="./hotelInfo_files/layer.js.下载"></script><link rel="stylesheet" href="./hotelInfo_files/layer.css" id="layui_layer_skinlayercss">
	<script src="./hotelInfo_files/jquery.slider.js.下载"></script>
	<script type="text/javascript" src="./hotelInfo_files/api"></script><script type="text/javascript" src="./hotelInfo_files/getscript"></script>
	<script src="./hotelInfo_files/DateFormat.js.下载"></script>
	<script src="./hotelInfo_files/echo.js.下载"></script><!--图片延迟加载-->
<style type="text/css">.BMap_mask{background:transparent url(http://api0.map.bdimg.com/images/blank.gif);}.BMap_noscreen{display:none;}.BMap_button{cursor:pointer;}.BMap_zoomer{background-image:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);background-repeat:no-repeat;overflow:hidden;font-size:1px;position:absolute;width:7px;height:7px;}.BMap_stdMpCtrl div{position:absolute;}.BMap_stdMpPan{width:44px;height:44px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat;}.BMap_ie6 .BMap_stdMpPan{background:none;}.BMap_ie6 .BMap_smcbg{left:0;width:44px;height:464px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://api0.map.bdimg.com/images/mapctrls2d0.png");}.BMap_ie6 .BMap_stdMpPanBg{z-index:-1;}.BMap_stdMpPan .BMap_button{height:15px;width:15px;}.BMap_panN,.BMap_panW,.BMap_panE,.BMap_panS{overflow:hidden;}.BMap_panN{left:14px;top:0;}.BMap_panW{left:1px;top:12px;}.BMap_panE{left:27px;top:12px;}.BMap_panS{left:14px;top:25px;}.BMap_stdMpZoom{top:45px;overflow:hidden;}.BMap_stdMpZoom .BMap_button{width:22px;height:21px;left:12px;overflow:hidden;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;z-index:10;}.BMap_ie6 .BMap_stdMpZoom .BMap_button{background:none;}.BMap_stdMpZoomIn{background-position:0 -221px;}.BMap_stdMpZoomOut{background-position:0 -265px;}.BMap_ie6 .BMap_stdMpZoomIn div{left:0;top:-221px;}.BMap_ie6 .BMap_stdMpZoomOut div{left:0;top:-265px;}.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button{left:0;overflow:hidden;background:-webkit-gradient(linear,50% 0,50% 100%,from(rgba(255,255,255,0.85)),to(rgba(217,217,217,0.85)));z-index:10;-webkit-border-radius:22px;width:34px;height:34px;border:1px solid rgba(255,255,255,0.5);-webkit-box-shadow:0 2px 3.6px #CCC;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;-webkit-box-sizing:border-box;}.BMap_stdMpType4 .BMap_smcbg{position:static;background:url(http://api0.map.bdimg.com/images/mapctrls2d0_mb.png) 0 0 no-repeat;-webkit-background-size:24px 32px;}.BMap_stdMpType4 .BMap_stdMpZoomIn{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg{width:24px;height:24px;background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg{width:24px;height:6px;background-position:0 -25px;}.BMap_stdMpSlider{width:37px;top:18px;}.BMap_stdMpSliderBgTop{left:18px;width:10px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -23px -226px;}.BMap_stdMpSliderBgBot{left:19px;height:8px;width:10px;top:124px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -33px bottom;}.BMap_ie6 .BMap_stdMpSliderBgTop,.BMap_ie6 .BMap_stdMpSliderBgBot{background:none;}.BMap_ie6 .BMap_stdMpSliderBgTop div{left:-23px;top:-226px;}.BMap_ie6 .BMap_stdMpSliderBgBot div{left:-33px;bottom:0;}.BMap_stdMpSliderMask{height:100%;width:24px;left:10px;cursor:pointer;}.BMap_stdMpSliderBar{height:11px;width:19px;left:13px;top:80px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -309px;}.BMap_stdMpSliderBar.h{background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -320px;}.BMap_ie6 .BMap_stdMpSliderBar,.BMap_ie6 .BMap_stdMpSliderBar.h{background:none;}.BMap_ie6 .BMap_stdMpSliderBar div{top:-309px;}.BMap_ie6 .BMap_stdMpSliderBar.h div{top:-320px;}.BMap_zlSt,.BMap_zlCity,.BMap_zlProv,.BMap_zlCountry{position:absolute;left:34px;height:21px;width:28px;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;font-size:0;cursor:pointer;}.BMap_ie6 .BMap_zlSt,.BMap_ie6 .BMap_zlCity,.BMap_ie6 .BMap_zlProv,.BMap_ie6 .BMap_zlCountry{background:none;overflow:hidden;}.BMap_zlHolder{display:none;position:absolute;top:0;}.BMap_zlHolder.hvr{display:block;}.BMap_zlSt{background-position:0 -380px;top:21px;}.BMap_zlCity{background-position:0 -401px;top:52px;}.BMap_zlProv{background-position:0 -422px;top:76px;}.BMap_zlCountry{background-position:0 -443px;top:100px;}.BMap_ie6 .BMap_zlSt div{top:-380px;}.BMap_ie6 .BMap_zlCity div{top:-401px;}.BMap_ie6 .BMap_zlProv div{top:-422px;}.BMap_ie6 .BMap_zlCountry div{top:-443px;}.BMap_stdMpType1 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpSlider,.BMap_stdMpType3 .BMap_stdMpSlider,.BMap_stdMpType4 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpZoom,.BMap_stdMpType3 .BMap_stdMpPan,.BMap_stdMpType4 .BMap_stdMpPan{display:none;}.BMap_stdMpType3 .BMap_stdMpZoom{top:0;}.BMap_stdMpType4 .BMap_stdMpZoom{top:0;}.BMap_cpyCtrl a{font-size:11px;color:#7979CC;}.BMap_scaleCtrl{height:23px;overflow:hidden;}.BMap_scaleCtrl div.BMap_scaleTxt{font-size:11px;font-family:Arial,sans-serif;}.BMap_scaleCtrl div{position:absolute;overflow:hidden;}.BMap_scaleHBar img,.BMap_scaleLBar img,.BMap_scaleRBar img{position:absolute;width:37px;height:442px;left:0;}.BMap_scaleHBar{width:100%;height:5px;font-size:0;bottom:0;}.BMap_scaleHBar img{top:-437px;width:100%;}.BMap_scaleLBar,.BMap_scaleRBar{width:3px;height:9px;bottom:0;font-size:0;z-index:1;}.BMap_scaleLBar img{top:-427px;left:0;}.BMap_scaleRBar img{top:-427px;left:-5px;}.BMap_scaleLBar{left:0;}.BMap_scaleRBar{right:0;}.BMap_scaleTxt{text-align:center;width:100%;cursor:default;line-height:18px;}.BMap_omCtrl{background-color:#fff;overflow:hidden;}.BMap_omOutFrame{position:absolute;width:100%;height:100%;left:0;top:0;}.BMap_omInnFrame{position:absolute;border:1px solid #999;background-color:#ccc;overflow:hidden;}.BMap_omMapContainer{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;}.BMap_omViewMv{border-width:1px;border-style:solid;border-left-color:#84b0df;border-top-color:#adcff4;border-right-color:#274b8b;border-bottom-color:#274b8b;position:absolute;z-index:600;}.BMap_omViewInnFrame{border:1px solid #3e6bb8;}.BMap_omViewMask{width:1000px;height:1000px;position:absolute;left:0;top:0;background-color:#68c;opacity:.2;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=20);}.BMap_omBtn{height:13px;width:13px;position:absolute;cursor:pointer;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif) no-repeat;z-index:1210;}.anchorBR .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;}.quad4 .BMap_omBtn{background-position:-26px -27px;}.quad4 .BMap_omBtn.hover{background-position:0 -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed{background-position:-39px -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-13px -27px;}.anchorTR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;}.quad1 .BMap_omBtn{background-position:-39px -41px;}.quad1 .BMap_omBtn.hover{background-position:-13px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed{background-position:-26px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:0 -41px;}.anchorBL .BMap_omOutFrame{border-top:1px solid #999;border-right:1px solid #999;}.quad3 .BMap_omBtn{background-position:-27px -40px;}.quad3 .BMap_omBtn.hover{background-position:-1px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed{background-position:-40px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-14px -40px;}.anchorTL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;}.quad2 .BMap_omBtn{background-position:-40px -28px;}.quad2 .BMap_omBtn.hover{background-position:-14px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed{background-position:-27px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-1px -28px;}.anchorR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;border-top:1px solid #999;}.anchorL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-top:1px solid #999;}.anchorB .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;border-right:1px solid #999;}.anchorT .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-left:1px solid #999;}.anchorNon .BMap_omOutFrame,.withOffset .BMap_omOutFrame{border:1px solid #999;}.BMap_zoomMask0,.BMap_zoomMask1{position:absolute;left:0;top:0;width:100%;height:100%;background:transparent url(http://api0.map.bdimg.com/images/blank.gif);z-index:1000;}.BMap_contextMenu{position:absolute;border-top:1px solid #adbfe4;border-left:1px solid #adbfe4;border-right:1px solid #8ba4d8;border-bottom:1px solid #8ba4d8;padding:0;margin:0;width:auto;visibility:hidden;background:#fff;z-index:10000000;}.BMap_cmShadow{position:absolute;background:#000;opacity:.3;filter:alpha(opacity=30);visibility:hidden;z-index:9000000;}div.BMap_cmDivider{border-bottom:1px solid #adbfe4;font-size:0;padding:1px;margin:0 6px;}div.BMap_cmFstItem{margin-top:2px;}div.BMap_cmLstItem{margin-bottom:2px;}.BMap_shadow img{border:0 none;margin:0;padding:0;height:370px;width:1144px;}.BMap_pop .BMap_top{border-top:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_center{border-left:1px solid #ababab;border-right:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_bottom{border-bottom:1px solid #ababab;background-color:#fff;}.BMap_shadow,.BMap_shadow img,.BMap_shadow div{-moz-user-select:none;-webkit-user-select:none;}.BMap_checkbox{background:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);vertical-align:middle;display:inline-block;width:11px;height:11px;margin-right:4px;background-position:-14px 90px;}.BMap_checkbox.checked{background-position:-2px 90px;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:none;}@media print{.BMap_noprint{display:none;}.BMap_noscreen{display:block;}.BMap_mask{background:none;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:block;}}.BMap_vectex{cursor:pointer;width:11px;height:11px;position:absolute;background-repeat:no-repeat;background-position:0 0;}.BMap_vectex_nodeT{background-image:url(http://api0.map.bdimg.com/images/nodeT.gif);}.BMap_vectex_node{background-image:url(http://api0.map.bdimg.com/images/node.gif);}.iw{width:100%;-webkit-box-sizing:border-box;border:.3em solid transparent;-webkit-background-clip:padding;}.iw_rt{position:relative;height:46px;width:195px;-webkit-box-sizing:border-box;display:-webkit-box;-webkit-box-align:center;margin:2px 5px 0 2px;background-color:rgba(0,0,0,0.8);-webkit-box-shadow:2px 2px 7px rgba(0,0,0,0.3);-webkit-border-radius:2px;color:#fff;}.iw_rt:after{content:"";position:absolute;left:50%;bottom:-8px;width:0;height:0;border-left:5px solid transparent;border-top:8px solid rgba(0,0,0,0.8);border-right:5px solid transparent;margin:0 0 0 -6px;}.iw_s{text-align:center;vertical-align:middle;height:100%;-webkit-box-sizing:border-box;}.iw_rt .iw_s1{color:#cbcbcb;}.iw_rt b{color:#fff;font-weight:bold;}.iw_rt_gr{margin-left:-4px;}.iw_busline{margin:32px 0 0 -3px;}.iw_busline .iw_cc{text-align:center;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;padding:0 6px;}.iw_r{-webkit-box-ordinal-group:3;}.iw_r,.iw_l{height:100%;font-size:4.5em;text-align:center;color:#747474;border:none;-webkit-box-sizing:border-box;-webkit-border-radius:0;line-height:.7em;border:1px solid rgba(255,255,255,0.2);width:41px;}.iw_r{border-style:none none none solid;}.iw_l{border-style:none solid none none;}.iw_search,.iw_l{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREJDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRENDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEOUM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJEQUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PllB9T8AAAKuSURBVHjaxFjRcdpAEAX+mVEqiFxB5AoQ HZAKElcArsBWBSgVQCoAVwCuwEoFlivwGQpI7jKrzGXn7ep0EsPO7BjLp/O73bdv9xifTqdRpCXW c+sz65n1lNy3mvzZemX9aN34C6bTKdx8HAHMgVlaX0QeaGv9J4EcBJgD9EA/hzAH7N4Cq/oAW1tf KX+vKEXP7PlMSLFvhQX32BWY49GBOIRO7FKy57wBlnoUQHu5yJX+g4mymdvgFWzkAM3JtwGgmiJw a2/pvQoEYBQCLKNI8RfuaeNjT245gAUdqgHdmkqUPiOctLdJVYkithkAVO/K5cC+M30KAZVSxboo /ybnn1eIR5r5qUyI7P4GX6nqJHskbQsxQ7wqu6aSn2qrgHLrXjqAat5ZC0WlRuzVE0J3uhtBCjRt a3qjX92JIMiOIqYtYgumzpo+7RRtu/E0zvknokMF5GgdQv4Ze/5DWL8CFVe2aNuedGsLCi1vS+WL F4WKNkL2Dnh414FnO1b1R5vKuRaxjKUF2YKBqjuCGtF6nyL5+XxOJWCcL2/CpjzdRYRuGpDShQQs ARUj9U/OnRh7Yr9/CW1JXU4fYxXoHIMCu+iB+gBLIt/LgShDYCYktGCDfCBgvyRgVQgZwTy/jIzy EnQNMZV1QCT4bJ+3XFCkS81/WijdkiYAdSak04BWtabWEmIbsNZYgU00YE+gjyErQeo31GpShVMH Yc+/dwsEzh97/D6ojT2ZMlM1XwN8WP9Ma7NAbZvbtBoEjE+jBT2TusCu5SIbI7z/wLWN1rdKi0o6 cqwTuAmYyTm5NQW/82atWvlnBbo7apxD98qDJxl7mkC76JQ2Qm0CI1xKF95Gb4oLXHJDwJlxjy/u LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line_s,.iw_r{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAYAAABDClKtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREZDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRTBDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEREM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJERUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqheQ+MAAAEtSURBVHja7JftDYIwEIbB8JeEUXACZQPd oGygE+gGxAnQEZzAOgEdwREIDKBXUgjBIqW5Npj0kvcHpG0erveFX1WVZ8l2oBhEhRoLw/BroW8J KgeR3vMVlI5BrSwAHQZAnngmYxtMe4oIL41ZAp6iNqF4/BQTa0oBxmxAcaAHKFJY+wKtAaw0CRUJ oHjGHiY8VpqCKmYCdRkJUKmJ7Ms1gZqkqOs6w/bUGXRCOGePCcXjaItwDsW8PoZ0zhM70IeeyiZi jH/Isf+CF9MAOdCppDj+LJ6yim6j9802B6VqQa818BFjY6AHakHp9Crj15ctCaiFIi7Q/wCKLRHq vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvc+qfQQYABaiUBxugCsr AAAAAElFTkSuQmCC") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line{height:64px;width:228px;padding:0 11px;line-height:20px;}.iw_bustrans .iw_cc{text-align:center;}.iw_c{color:#FFFFFF;text-decoration:none;overflow:hidden;display:-webkit-box;-webkit-box-align:center;-webkit-box-flex:1;}.iw_cc{-webkit-box-sizing:border-box;width:100%;border:none;}.gray_background{filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity: 0.5} .light_gray_background {filter:alpha(opacity=70);-moz-opacity:0.7;-khtml-opacity:0.7;opacity: 0.7} .panoInfoBox {cursor: pointer; } .panoInfoBox {position: relative; width: 323px; height: 101px; margin-bottom: 4px; cursor: pointer; } .panoInfoBox .panoInfoBoxTitleBg {width: 323px; height: 19px; position: absolute; left: 0; bottom: 0; z-index: 2; background-color: #000; opacity: .7; } .panoInfoBox .panoInfoBoxTitleContent {font-size: 12px; color: #fff; position: absolute; bottom: 2px; left: 5px; z-index: 3; text-decoration: none; } .RouteAddressOuterBkg{position:relative; padding: 32px 4px 4px 3px; background-color:#ffdd99; } .RouteAddressInnerBkg{padding: 3px 5px 8px 8px; background-color:#ffffff; } #RouteAddress_DIV1{margin-top: 5px; } .RouteAddressTip{position:absolute; width:100%; top:0px; text-align:center; height:30px; line-height:30px; color:#994c00; } .route_tip_con {position:absolute;top:145px;} .route_tip_con .route_tip{position:absolute;width:233px;height:29px;color:#803300;text-align:center;line-height:29px;border:#cc967a solid 1px;background:#fff2b2;z-index:100000;} .route_tip_con .route_tip span{position:absolute;top:0;right:0;_right:-1px;width:14px;height:13px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -121px;cursor:pointer;} .route_tip_con .route_tip_shadow{width:233px;height:29px;  position:absolute;left:1px;top:1px;background:#505050;border:1px solid #505050;opacity:0.2;filter:alpha(opacity=20)} .sel_body_body_page{margin:5px 0} .sel_n{margin-top:5px;overflow:hidden;} .sel_n .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_n .sel_body_title{float:left;width:100%;height:31px;} .sel_n .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n .sel_body_name{height: 10px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_n .sel_body_button a{} .sel_n .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_n .sel_body_body{padding:3px 0 0 0} .sel_n1{margin-top:5px;width:329px;overflow:hidden;} .sel_n1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n1 .sel_body_top{height:31px;width:100%;background:url(http://api0.map.bdimg.com/images/sel_body_n_top.gif) repeat-x;} .sel_n1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_n1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_n1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n1 .sel_body_button{float:left;width:20px;height:31px;margin-left:-23px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -253px -382px;overflow:hidden;zoom:1;cursor:pointer;} .sel_n1 .sel_body_button a{display:none;} .sel_n1 .sel_body_body{display:none} .sel_n1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_y{margin-top:5px;overflow:hidden;} .sel_y .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -439px;height:4px;zoom:1;font-size:0px;} .sel_y .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 0} .sel_y .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_y .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -167px -384px;} .sel_y .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#5B7BCB;} .sel_y .sel_body_button{float:left;width:20px;height:31px;margin-left:-20px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -269px -297px;cursor:pointer;} .sel_y .sel_body_button a{display:none;} .sel_y .sel_body_body{display:none;height:0px} .sel_y .sel_body_body_div{} .sel_y .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -436px;height:4px;font-size:0px;} .sel_y .sel_body_body_page{display:none;height:0px;} .sel_x{margin-top:5px;width:329px;overflow:hidden;} .sel_x .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_x .sel_body_title{float:left;width:100%;height:31px;} .sel_x .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -122px -384px;} .sel_x .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_x .sel_body_button a{} .sel_x .sel_body_body{} .sel_x .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_x1{margin-top:5px;width:329px;overflow:hidden;} .sel_x1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_x1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_x1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -122px -384px;} .sel_x1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x1 .sel_body_button{float:left;width:55px;height:31px;margin-left:-55px;} .sel_x1 .sel_body_button a{display:none;} .sel_x1 .sel_body_body{display:none;height:0px;} .sel_x1 .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_body_citylist{height:100px;padding: 0 0 0 5px} .sel_body_resitem{table-layout:fixed;overflow-x:hidden;overflow-y:hidden;} .sel_body_resitem table {margin-right:5px;} .sel_body_resitem tr{cursor:pointer;} .sel_body_resitem th{padding-top:5px;padding-left:5px;text-align:left;vertical-align:top;width:22px;} .sel_body_resitem th div.iconbg{background:url(http://api0.map.bdimg.com/images/markers_new_ie6.png) no-repeat scroll 0 0;height:29px;width:24px;} .sel_body_resitem th div.icon{cursor:pointer} .sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1{background-position:0 -64px} .sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2{background-position:-24px -64px} .sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3{background-position:-48px -64px} .sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4{background-position:-72px -64px} .sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5{background-position:-96px -64px} .sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6{background-position:-120px -64px} .sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7{background-position:-144px -64px} .sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8{background-position:-168px -64px} .sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9{background-position:-192px -64px} .sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10{background-position:-216px -64px} .sel_body_resitem td{line-height:160%;padding:3px 0 3px 3px;vertical-align:top;} .sel_body_resitem div.ra_td_title{float:left;margin-right:40px;} .sel_body_resitem div.ra_td_button{float:right; width:40px;} .sel_body_resitem div.ra_td_button input{height:18px;font-size:12px;width:40px;} .sel_body_resitem div.clear{clear:both;height:0px;width:100%;} .sel_body_resitem td .selBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;visibility:hidden;color:#b35900;display:inline-block;*display:inline;*zoom:1;} .sel_body_resitem td .list_street_view_poi {display:inline-block;float:none;margin-right:6px;position:static;*vertical-align:-3px;_vertical-align:-5px;*display:inline;*zoom:1;} .selInfoWndBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;margin: 0 auto;cursor:pointer;color:#b35900} .sel_body_body td a{text-decoration: none; cursor: auto; } .sel_body_body td a:hover,.sel_body_body td a:focus{text-decoration:underline; }.panoInfoBox{cursor:pointer}.panoInfoBox{position:relative;width:323px;height:101px;margin-bottom:4px;cursor:pointer}.panoInfoBox .panoInfoBoxTitleBg{width:323px;height:19px;position:absolute;left:0;bottom:0;z-index:2;background-color:#000;opacity:.7}.panoInfoBox .panoInfoBoxTitleContent{font-size:12px;color:#fff;position:absolute;bottom:2px;left:5px;z-index:3;text-decoration:none}.pano_switch_left,.pano_switch_right{position:absolute;width:28px;height:38px;cursor:pointer;background-color:#252525;background-color:rgba(37,37,37,.9)}.pano_switch_left{background:url(http://api0.map.bdimg.com/images/panorama/zuojiantou.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_right{background:url(http://api0.map.bdimg.com/images/panorama/youjiantou.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_left:hover{background:url(http://api0.map.bdimg.com/images/panorama/zuojiantou_hover.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_right:hover{background:url(http://api0.map.bdimg.com/images/panorama/youjiantou_hover.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_left.pano_switch_disable,.pano_switch_right.pano_switch_disable{background:0 0;border:none}.pano_poi_1,.pano_poi_2,.pano_poi_4{display:inline-block;width:16px;height:16px;vertical-align:middle;background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons_4b871b2.png) no-repeat;background-position:0 0}.pano_photo_arrow_l,.pano_photo_arrow_r{position:absolute;top:0;width:20px;height:100%;background:#f3eeee}.pano_photo_arrow_l{left:0}.pano_photo_arrow_r{right:0}.pano_arrow_l,.pano_arrow_r{display:inline-block;width:18px;height:18px;background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons_223a291.png) no-repeat}.pano_catlogLi{cursor:pointer;position:relative;line-height:10px;font-size:10px;text-align:center;color:#abb0b2;border:1px solid #53565c;padding:3px 0;margin-top:3px;margin-left:2px;width:90%}.pano_catlogLi:hover{color:#3DAAFC;border:1px solid #3DAAFC}.pano_catlogLiActive{color:#3DAAFC;border:1px solid #3DAAFC}.pano_arrow_l{background-position:0 -36px}.pano_arrow_r{background-position:-54px -36px}.pano_photo_arrow_l:hover .pano_arrow_l{background-position:-18px -36px}.pano_photo_arrow_r:hover .pano_arrow_r{background-position:-72px -36px}.pano_photo_arrow_l.pano_arrow_disable .pano_arrow_l{background-position:-36px -36px}.pano_photo_arrow_r.pano_arrow_disable .pano_arrow_r{background-position:-90px -36px}.pano_photo_item{position:relative;float:left;line-height:0;padding-left:8px}.pano_photo_decs{position:absolute;bottom:1px;left:0;padding:2px 0;text-indent:5px;margin-left:8px;display:inline-block;color:#fff;background:#000;opacity:.5;filter:alpha(opacity=50)9;text-overflow:ellipsis;overflow:hidden;white-space:nowrap}.pano_photo_item img{display:inline-block;border:solid 1px #252525}.pano_photo_item:hover img{border-color:#005efc}.pano_photo_item_seleted{position:absolute;top:0;left:-100000px;border:3px solid #097df3}.pano_close{position:absolute;right:10px;top:10px;width:40px;cursor:pointer;height:40px;line-height:40px;border-radius:3px;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/close.png);background-repeat:no-repeat;background-position:center center;background-size:90%}.pano_close:hover{background-image:url(http://api0.map.bdimg.com/images/panorama/close_hover.png)}.pano_pc_indoor_exit{position:absolute;right:60px;top:10px;width:89px;cursor:pointer;height:40px;line-height:40px;color:#ebedf0;border-radius:3px;background-color:#252525;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit.png);background-repeat:no-repeat;background-position:15px 12px}.pano_pc_indoor_exit:hover{background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit_hover.png);color:#2495ff}.pano_m_indoor_exit{font-size:16px;position:absolute;right:30px;top:10px;width:89px;cursor:pointer;height:40px;line-height:40px;color:#ebedf0;border-radius:3px;background-color:#252525;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit.png);background-repeat:no-repeat;background-position:15px 12px}.navtrans-table tr{color:#666}.navtrans-table tr:hover{color:#333}.navtrans-navlist-icon{float:left;width:18px;height:16px;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_b5c3223.png) no-repeat 0px 0px;_background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_ie6_134841b.png) no-repeat 0px 0px;margin-top:2px;margin-right:5px}.navtrans-navlist-icon.s-1{background-position:0px 0px}.navtrans-navlist-icon.s-2{background-position:-18px 0px}.navtrans-navlist-icon.s-3{background-position:-36px 0px}.navtrans-navlist-icon.s-4{background-position:-54px 0px}.navtrans-navlist-icon.s-5{background-position:-72px 0px}.navtrans-navlist-icon.s-6{background-position:-90px 0px}.navtrans-navlist-icon.s-7{background-position:0px -16px}.navtrans-navlist-icon.s-8{background-position:-18px -16px}.navtrans-navlist-icon.s-9{background-position:-36px -16px}.navtrans-navlist-icon.s-10{background-position:-54px -16px}.navtrans-navlist-icon.s-11{background-position:-72px -16px}.navtrans-navlist-icon.s-12{background-position:-90px -16px}.navtrans-navlist-icon.s-13{background-position:0px -32px}.navtrans-navlist-icon.s-14{background-position:-18px -32px}.navtrans-navlist-icon.s-18{background-position:-36px -32px}.navtrans-navlist-icon.s-19{background-position:-54px -32px}.navtrans-navlist-icon.s-20{background-position:-72px -32px}.navtrans-navlist-icon.s-21{background-position:-90px -32px}.navtrans-navlist-icon.nav-st,.navtrans-navlist-icon.nav-through{background-position:-16px -70px}.navtrans-navlist-icon.nav-ed{background-position:0px -70px}.navtrans-view{border-top:1px solid #e4e6e7;border-left:1px solid #e4e6e7;border-right:1px solid #e4e6e7}.navtrans-view:hover{cursor:pointer}.navtrans-view .navtrans-arrow{position:absolute;top:8px;right:5px;width:7px;height:4px;background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_b5c3223.png);background-repeat:no-repeat;background-position:-40px -70px;margin-top:3px;margin-right:3px;_background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_ie6_134841b.png)}.navtrans-view.expand:hover .navtrans-arrow{background-position:-61px -70px}.navtrans-view.expand .navtrans-arrow{background-position:-54px -70px}.navtrans-view:hover .navtrans-arrow{background-position:-47px -70px}.navtrans-navlist-content{overflow:hidden}.navtrans-res{border-bottom:1px solid #E4E6E7;border-left:1px solid #E4E6E7;border-right:1px solid #E4E6E7}.navtrans-bus-icon{display:inline-block;float:left;background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/ui3/mo_banner_e1aa2e6.png);background-repeat:no-repeat}.navtrans-bus-icon.bus{width:13px;height:16px;background-position:-1px -192px;position:relative;top:4px}.navtrans-bus-icon.walk{width:16px;height:18px;background-position:-63px -189px;position:relative;top:2px;left:-2px}.navtrans-bus-desc{line-height:24px;margin-left:20px}.navtrans-busstation{color:#36c;font-weight:600}.tranroute-plan-list.expand .trans-title{border-bottom:1px solid #e4e6e7;background-color:#ebf1fb}.trans-plan-content tr td:hover .bus{background-position:-15px -192px}.trans-plan-content tr td:hover .walk{background-position:-82px -189px}.suggest-plan{position:absolute;background-color:#0C88E8;padding:0px 15px;line-height:20px;color:#fff;left:0px;top:0px}.suggest-plan-des{text-align:left;padding:29px 0px 0px 25px;font-size:13px;color:#000}.bmap-clearfix{*+height:1%}.bmap-clearfix:after{content:".";display:block;height:0px;clear:both;visibility:hidden}.BMap_CityListCtrl{font-size:12px}.BMap_CityListCtrl a{text-decoration:none!important}.BMap_CityListCtrl a:hover{text-decoration:underline!important}.BMap_CityListCtrl .citylist_popup_main{border:1px solid #cdcdcd;z-index:2;position:relative;width:100%;height:100%;background:#fafafa;overflow:hidden;box-shadow:1px 1px 1px rgba(0,0,0,.1)}.ui_city_change_top .ui_city_change_inner,.ui_city_change_bottom .ui_city_change_inner{display:inline-block;height:24px;line-height:24px;border:1px solid #c4c7cc;background-color:#fff;padding:0 10px 0 10px;color:#000}.ui_city_change_top .ui_city_change_inner i,.ui_city_change_bottom .ui_city_change_inner i{width:8px;height:6px;display:inline-block;position:relative;top:9px;left:5px;-webkit-transition:all ease-in-out .15s;transition:all ease-in-out .15s;display:none9}.ui_city_change_click .ui_city_change_inner i,.ui_city_change_click_close .ui_city_change_inner i{-webkit-transform:rotate(180deg);-moz-transform:rotate(180deg);-o-transform:rotate(180deg);transform:rotate(180deg)}.ui_city_change_top .ui_city_change_inner:hover em{border-top-color:#0C88E8}.ui_city_change_top .ui_city_change_inner em{width:0;height:0;border-color:rgba(255,255,255,0);border-top-color:#D0D4DA;border-style:solid;border-width:4px}.ui_city_change_top .ui_city_change_inner:hover,.ui_city_change_bottom .ui_city_change_inner:hover{text-decoration:none!important;color:#3d6dcc}.ui_city_change_bottom .ui_city_change_inner:hover em{border-bottom-color:#0C88E8}.ui_city_change_bottom .ui_city_change_inner em{width:0;height:0;border-color:rgba(255,255,255,0);border-bottom-color:#D0D4DA;border-style:solid;border-width:4px;position:relative;top:-18px}.citylist_popup_main .citylist_ctr_title{background:#f9f9f9;border-bottom:1px solid #dadada;height:25px;line-height:25px;font-size:12px;color:#4c4c4c;padding-left:7px}.citylist_popup_main .city_content_top{position:relative;height:30px;padding:15px 10px 0px 10px;border-bottom:1px solid #CCC;margin:0px 10px}.citylist_popup_main .city_content_top .cur_city_info{display:inline-block;margin:0;padding:0;}#city_ctrl_form{position:absolute;right:12px;top:10px}#selCityWd{border:1px solid #ccc;height:20px;width:121px;line-height:20px;text-indent:4px;outline:none}#selCitySubmit:hover{background-position:-355px -98px}#selCitySubmit{float:right;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/index_a2f1ac4.png) no-repeat scroll -302px -98px;height:24px;line-height:24px;width:48px;cursor:pointer;margin-left:5px;text-align:center}#sel_city_letter_list{padding-top:10px}#sel_city_letter_list a{white-space:nowrap;margin-right:11px;line-height:18px;font-size:13px;font-family:Arial,Helvetica,SimSun,sans-serif}.city_content_medium{padding:10px 10px 10px 10px;border-bottom:1px solid #CCC;margin:0px 10px}.city_content_bottom{padding:10px 10px 10px 8px;margin:9px 5px 5px 5px;height:218px;overflow-y:auto}#city_detail_table tr td{vertical-align:top}.sel_city_hotcity a{color:#3d6dcc}.sel_city_letter{padding:0 14px 0 3px}.sel_city_letter div{font-size:24px;line-height:24px;font-weight:700;color:#ccc;padding:0;margin:0;font-family:Arial,Helvetica,SimSun,sans-serif}.sel_city_sf{padding-right:8px;font-weight:700}.sel_city_sf a{white-space:nowrap;line-height:18px;color:#3d6dcc}.city_names_wrap{margin-bottom:9px}.sel_city_name{color:#3d6dcc;white-space:nowrap;margin-right:9px;line-height:18px;float:left}#popup_close{outline:none;position:absolute;z-index:50;top:7px;right:6px;width:12px;height:12px;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/popup_close_15d2283.gif) no-repeat;border:0;cursor:pointer}</style></head>
<body>
<header>
<!--顶部导航开始-->
<div class="header">
    <div class="clearfix w1200">
        <ol class="head-nav fl">
            <li class="logo"><a href="<%=path %>/home.jsp"><img src="./hotelInfo_files/logo.png" style="width:62px;height:50px;"></a></li>
            <li class="nav-hov"><a href="<%=path %>/home.jsp">首页</a></li>
            <li class="nav-sub nav-hov"><a class="theme-a" href="<%=path%>/route.jsp" "="">主题旅行<i class="triangle-top"></i></a>
            </li>
            <li class="nav-hov"><a class="hotel-a" href="<%=path%>/hotel.do">主题酒店</a></li>
            <li class="nav-hov"><a class="person-a" href="<%=path%>/personal.jsp">私人定制</a></li>
            <li class="nav-hov"><a href="<%=path%>/inspiration.jsp">灵感触发</a></li>
        </ol>
        <!--未登录-->
        <c:if test="${userSession.user_phone == null}">
	        <div class="signOut">
	            <img src="customizeParis/personal.png">
	            <span>
	                <a class="user" href="<%=path%>/register.jsp">注册 /</a>
	                <a class="user" href="<%=path%>/loginRegister.jsp">登录</a>
	            </span>
	        </div>
       	</c:if>
        <!-- 已登录之后 -->
        <c:if test="${userSession.user_phone != null}">
	        <div class="signIn-sec fr">
	            <img class="signIn-img userInfo_headImg" src="<%=path%>/hotel/1c1073e4f135e0818ceb616b5b2d71.jpg" alt="头像">
	            <span>账号</span>
	            <ul>
	                <li><a href="<%=path%>/myself.jsp">我的订单</a></li>
	                <li><a href="<%=path%>/myself.jsp">我的收藏</a></li>
	                <li><a href="<%=path%>/myself.jsp">个人中心</a></li>
	                <li><a href="javascript:;" id="yijian_1">遇到问题</a></li>
	                <li><a id="logout" href="<%=path%>/user/singout.do">退出</a></li>
	            </ul>
	        </div>
       	</c:if>
    </div>
</div>
<!--顶部导航结束-->
<!--意见反馈开始-->
		<div id="feedback" style="display:none">
		    <div class="modal_body">
		    	<dl>
		        	<dt>QQ</dt>
		            <dd><input id="qq" name="qq" type="text" placeholder="请输入QQ号码">
		            </dd>
		        </dl>
		    	<dl>
		        	<dt>邮箱</dt>
		            <dd><input id="email" name="email" type="text" placeholder="请输入常用邮箱">
		            </dd>
		        </dl>
		    	<dl>
		        	<dt>问题说明</dt>
		            <dd> 
		            	<textarea id="yijian" name="yijian" placeholder="产品Bug、建议意见、使用帮助、吐（biao）槽（yang）等"></textarea>
		            </dd>
		        </dl>
		    </div>
		    <div class="modal_footer">
		    	<button id="ok" class="btn_confirm" type="button">提交</button>
		    	<button id="cancel" class="btn_default" type="button">取消</button>
		    </div>
		</div>
		<!--意见反馈结束-->
<script src="./hotelInfo_files/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
<script type="text/javascript">
	//图片懒加载
	$(function() {
	      $("img").lazyload({ effect: "fadeIn"});
	});
	//登录
    $(function(){
		var pathname = window.location.pathname;
	    var query = window.location.search;
	    var returnUrl = encodeURIComponent('/');
	    var flag = false;
	    if (query.length > 0) {
	        query = query.substring(1, query.length);
	    }
	    var attr = query.split('&');
	    for (var i = 0; i < attr.length; i++) {
	        if (attr[i].indexOf('returnUrl=') === 0) {
	            returnUrl = attr[i].split('=')[1];
	        }
	    }
	
	    $('.user').each(function () {
	        if (pathname === $(this).attr('href')) {
	            flag = true;
	            return false;
	        }
	    });
	    $('.user').each(function () {
	        if (flag) {
	            $(this).attr('href', $(this).attr('href') + '?returnUrl=' + returnUrl);
	        } else {
	            $(this).attr('href', $(this).attr('href') + '?returnUrl=' + encodeURIComponent(window.location.href));
	        }
	    });
	});
	//退出
	function logout(){
		if(confirm("你确定退出吗?")){
			window.location.href="/member/logout.html";
		}
	}
	//意见反馈开始
		    var count=0;
			layer.config({tipsMore: true});
			$("#yijian_1").click(function(){
				
				var html = $("#feedback").html();
				layer.open({
					title: "遇到了什么问题？",
				    type: 0,
				    area: ['652px'],
				    btn:false,
				    content: html,
				    success: function(layero, index){
				    
				    	$(layero).find("#cancel").click(function(){
							layer.closeAll();
						});
				    	$(layero).find("#ok").click(function(){
				    		if(count==3){
								layer.closeAll();
			 				}
						 	sendEmail(this);
						});
				    	$(layero).find("#qq").blur(function(){
						 	checkQq(this);
						});
				    	$(layero).find("#email").blur(function(){
						 	checkEmail(this);
						});
				    	$(layero).find("#yijian").change(function(){
						 	checkYijian(this);
						});
			   		}
				});
			});
			function sendEmail(obj){
				var check1 = checkQq($(obj).parent().parent().find("#qq"));
				var check2 = checkEmail($(obj).parent().parent().find("#email"));
				var check3 = checkYijian($(obj).parent().parent().find("#yijian"));
		 		if(check1 && check2 && check3) {
			 		count=count+1;
					var qq = $(obj).parent().parent().find("#qq").val();
					var email = $(obj).parent().parent().find("#email").val();
					var yijian = $(obj).parent().parent().find("#yijian").val();
					var url = "/index/yijian_email.html";
					var params ={"qq" : qq, "email" : email, "yijian" : yijian};
					$.post(url,params,function(data){ 
						alert(data.message);
						layer.closeAll();
					});
		 		}
			}
			function checkQq(obj){
				var text = $(obj).val();
		        if (text == "") {  
		            layer.tips('qq号不能为空!', obj);
		            return false;
		        }  
		        if (!text.match(/^\d+$/g)) {
		        	layer.tips('请输入正确的qq号码!', obj);
		            return false;
		        }
		        return true;
			}
			function checkEmail(obj){
				var text = $(obj).val();
		        if (text == "") {  
		            layer.tips('email不能为空!', obj);
		            return false;
		        }  
		        var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		        if(!text.match(myreg)) {  
		           layer.tips('请输入正确格式的email!', obj);
		            return false;  
		        }  
		        return true;
			}
			function checkYijian(obj){
				var text = $(obj).val();
		        if (text == "") { 
		            layer.tips('意见不能为空!', obj);
		            return false;
		        }  
		        if(text.length < 15) {  
		           layer.tips('意见字数不能小于15!', obj);
		            return false;  
		        }  
		        return true;
			}
			//意见反馈结束
	//2017-1-18 头部新版
	//导航条波动
    $(".nav-hov").hover(function(){
        $(this).find("a").animate({"bottom":"5px"},300)
    },function(){
        $(this).find("a").animate({"bottom":"0"},300)
    })
    
     // 下拉框 效果
     $(function(){
        $(".nav-sub").hover(function(){
            $(".drop-down").show()
        },function(){
            $(".drop-down").hide()
        })
     })
     
    //够主题下面的类型
    $.get('/types.json', function (data) {
	 	var typelist = $('#typelist');
        var html = '';
        for (var i = 0; i < data.length; i++) {
        	html +='<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="' + data[i].colorUrl + '"/>'+
                   '<span class="module-title-name fl" onclick="window.location.href=\'/themeTrip/themeList.html?typeId=' + data[i].id + '\'">' + data[i].name + '</span>'+
                   '<span class="module-title-more fr" onclick="window.location.href=\'/themeTrip/themeList.html?typeId=' + data[i].id + '\'">更多</span></p>'+
                   '<ul class="drop-module-inner clearfix">';
            var terminiList = data[i].terminiList;
            if(terminiList!=null && terminiList.length>0){
            	for (var j = 0; j < terminiList.length; j++) {
	            	html +='<li class="module-inner-nation fl" onclick="window.location.href=\'/themeTrip/themeList.html?typeId='+ data[i].id +'&terminiId='+terminiList[j].id+'\'">'+terminiList[j].name+'</li>';
	            }
            }
            html +='</ul></div>';
        }
        typelist.html(html);
        
    });
</script>
</header>
<div class="main">
<div class="w1200 clearfix">
    <div class="page-route">
        <span>首页 &gt;</span>
        <span>主题酒店 &gt;</span>
        <span class="font-c-f4b">${hotelInfo.hotel_name}</span>
    </div>
    <div class="container fl">
        <p class="hotel-level">
            <i class="font-c-f4b">HOTEL</i>
            <span class="hotel-name">${hotelInfo.hotel_name}</span>
            ${hotelInfo.hotel_xingji}
            <input id="focusId" type="hidden" value="1248">
        	<input id="focusName" type="hidden" value="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）">
        </p>
        <!--这里是------------头部轮播-->
        <script>
        	  echo.init({
			    offset: 100,
			    throttle: 250 //设置图片延迟加载的时间 
			  });
			  //echo.render();
			  
			  $(document).ready(function() {     
				  $("img").lazyload({ 
				　　　　effect : "fadeIn", //渐现，show(直接显示),fadeIn(淡入),slideDown(下拉)
				　　　　threshold : 180, //预加载，在图片距离屏幕180px时提前载入
				　　　　event: 'sporty',  // 事件触发时才加载，click(点击),mouseover(鼠标划过),sporty(运动的),默认为scroll（滑动）
				　　　　container: $(".bigPic"), // 指定对某容器中的图片实现效果
				　　　　failure_limit:2 //加载2张可见区域外的图片,lazyload默认在找到第一张不在可见区域里的图片时则不再继续加载,但当HTML容器混乱的时候可能出现可见区域内图片并没加载出来的情况
				　　}); 
			  });
			
			  $(window).bind("load", function() {    
				  var timeout = setTimeout(function() {$(".bigPic img").trigger("sporty")}, 5000);    
			  }); 
        </script>
        <div class="carousel">
            <ul class="bigPic clearfix">
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/66b407d35d4977b7b77f1031d84e8c.jpg" data-original="http://image.goutrip.com/dd/66b407d35d4977b7b77f1031d84e8c.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/52ddccfa7b907023facd98dcd2670.jpg" data-original="http://image.goutrip.com/bd/52ddccfa7b907023facd98dcd2670.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/a39586f24099ed76674623ddc01d11.jpg" data-original="http://image.goutrip.com/f2/a39586f24099ed76674623ddc01d11.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/bf212f00687e9080a82a3fca414482.jpg" data-original="http://image.goutrip.com/bb/bf212f00687e9080a82a3fca414482.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: list-item;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/431c71ae4fe1b8be32fdd89fe90b9d.jpg" data-original="http://image.goutrip.com/e8/431c71ae4fe1b8be32fdd89fe90b9d.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/c9f7e44b89dad3bd4f742f99d615fa.jpg" data-original="http://image.goutrip.com/20/c9f7e44b89dad3bd4f742f99d615fa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/155215a02b428c4715f3f8592f9685.jpg" data-original="http://image.goutrip.com/86/155215a02b428c4715f3f8592f9685.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/fdaa617f2e450c5cd1487c46244732.jpg" data-original="http://image.goutrip.com/21/fdaa617f2e450c5cd1487c46244732.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/e2b7859d20bdb08fa5bfc70ef62b1.jpg" data-original="http://image.goutrip.com/42/e2b7859d20bdb08fa5bfc70ef62b1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/e734ce216b5c1f628c7ef56e689f41.jpg" data-original="http://image.goutrip.com/1c/e734ce216b5c1f628c7ef56e689f41.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/7053460bdfff765949d30c473aa153.jpg" data-original="http://image.goutrip.com/17/7053460bdfff765949d30c473aa153.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/ee19ff8c7ab93aeae4d1495ec42c13.jpg" data-original="http://image.goutrip.com/9b/ee19ff8c7ab93aeae4d1495ec42c13.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/bb5a88cbe247733dd43059ee82edfe.jpg" data-original="http://image.goutrip.com/62/bb5a88cbe247733dd43059ee82edfe.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/bb0fd22a433ccd7f0a9556e9555efa.jpg" data-original="http://image.goutrip.com/d4/bb0fd22a433ccd7f0a9556e9555efa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/c67685057a6d9c56af7eb767d24ff1.jpg" data-original="http://image.goutrip.com/ee/c67685057a6d9c56af7eb767d24ff1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/f8e092d8b3e75206950a80129422ee.jpg" data-original="http://image.goutrip.com/a6/f8e092d8b3e75206950a80129422ee.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
			    		<li style="display: none;">
				            <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/56970b391dfd0d4dae6295d2ec99a4.jpg" data-original="http://image.goutrip.com/19/56970b391dfd0d4dae6295d2ec99a4.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）" style="display: block;"></a>
				        </li>
            </ul>
            <div class="smallPic clearfix">
                <input type="button" class="left">
                <ol class="clearfix">
			        			<li class="">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/66b407d35d4977b7b77f1031d84e8c.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/52ddccfa7b907023facd98dcd2670.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/a39586f24099ed76674623ddc01d11.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/bf212f00687e9080a82a3fca414482.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="now">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/431c71ae4fe1b8be32fdd89fe90b9d.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/c9f7e44b89dad3bd4f742f99d615fa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/155215a02b428c4715f3f8592f9685.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/fdaa617f2e450c5cd1487c46244732.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/e2b7859d20bdb08fa5bfc70ef62b1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/e734ce216b5c1f628c7ef56e689f41.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="http://www.goutrip.com/hotel/1248.html" data-echo="http://image.goutrip.com/17/7053460bdfff765949d30c473aa153.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="http://www.goutrip.com/hotel/1248.html" data-echo="http://image.goutrip.com/9b/ee19ff8c7ab93aeae4d1495ec42c13.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="http://www.goutrip.com/hotel/1248.html" data-echo="http://image.goutrip.com/62/bb5a88cbe247733dd43059ee82edfe.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="http://www.goutrip.com/hotel/1248.html" data-echo="http://image.goutrip.com/d4/bb0fd22a433ccd7f0a9556e9555efa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="http://www.goutrip.com/hotel/1248.html" data-echo="http://image.goutrip.com/ee/c67685057a6d9c56af7eb767d24ff1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/f8e092d8b3e75206950a80129422ee.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
			        			<li class="last">
				                <a href="javascript:;"><img class="bgImage" src="./hotelInfo_files/56970b391dfd0d4dae6295d2ec99a4.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				            </li>
                </ol>
                <input type="button" class="right">
            </div>
            <!--<div class="hotel-tip">
                <span class="active">活动</span>
            </div>-->
        </div>
        <!--这里是-------产品详情-->
        <c:forEach items="${roomList}" var="room">
 <form action="<%=path%>/hotelorder.do?room_id=${room.room_id}&name=${hotelInfo.hotel_name}" method="post">
        <div class="product">
            <div class="mid_product">
                <div class="mid-nav clearfix border">
                    <ul class="clearfix fl">
                        <li class="nav-room font-c-2f7">房型预定</li>
                        <li class="nav-introduce">酒店介绍</li>
                        <li id="day_list" class="nav-occupancy">入住政策</li>
                        <li class="nav-install">酒店设施</li>
                        <li class="nav-traffic">交通信息</li>
                    </ul>
                    <input type="text" class="laydate-icon" value="" placeholder="入住" id="startDay" style="display: none;">
                    <input type="text" class="laydate-icon" value="" placeholder="离店" id="endDay" style="display: none;">
                    <input class="btn fr" type="button" value="确定" onclick="javascript:Room.getRoomList();" style="display: none;">
                </div>
                <div class="all-inner">
                    <!--房型预定-->
                    <div class="inner-room">
                        <p class="room-time">
                            <span>房型入住时间</span>
                            <input type="text" name="room_intime" class="laydate-icon" value="" placeholder="入住" id="startDay2">
                            <input type="text" name="room_outtime" class="laydate-icon" value="" placeholder="离店" id="endDay2">
                            <input type="hidden" name="room_days" class="time-remain">共<em id="dateDiff">1</em>晚
                            <input type="button" value="确定" onclick="changeTotalPrice()">
                        </p>
                        <script type="text/javascript">
						    //显示入住时间和退房时间的日历
							var start = {
								    elem: '#startDay',
								    format:"YYYY-MM-DD",
									istime:false,
									isclear:true,
									istoday:true,
									issure:true,
								    min: laydate.now(1), //设定最小日期为提前1天
								    max: '2099-06-16 23:59:59', //最大日期
								    choose: function(datas){
								         end.min = datas; //开始日选好后，重置结束日的最小日期
								         end.start = datas //将结束日的初始值设定为开始日
								         $('#startDay2').val(datas);
								    }
							};
							var end = {
								    elem: '#endDay',
								    format:"YYYY-MM-DD",
									istime:false,
									isclear:true,
									istoday:true,
									issure:true,
								    min: laydate.now(2), //设定最小日期为提前2天
								    max: '2099-06-16 23:59:59', //最大日期
								    choose: function(datas){
								        start.max = datas; //结束日选好后，重置开始日的最大日期
								        $('#endDay2').val(datas);
								        var startTime = $('#startDay2').val();
								        var endTime = datas;
								        var dateDiff = GetDateDiff(startTime,  endTime);//日期差
								        $('#dateDiff').html(dateDiff);
								    }
							};
							laydate(start);
							laydate(end);
							
							//显示入住时间和退房时间的日历
							var start2 = {
								    elem: '#startDay2',
								    format:"YYYY-MM-DD",
									istime:false,
									isclear:true,
									istoday:true,
									issure:true,
								    min: laydate.now(1), //设定最小日期为提前1天
								    max: '2099-06-16 23:59:59', //最大日期
								    choose: function(datas){
								         end2.min = datas; //开始日选好后，重置结束日的最小日期
								         end2.start = datas //将结束日的初始值设定为开始日
								         $('#startDay').val(datas);
								    }
							};
							var end2 = {
								    elem: '#endDay2',
								    format:"YYYY-MM-DD",
									istime:false,
									isclear:true,
									istoday:true,
									issure:true,
								    min: laydate.now(2), //设定最小日期为提前2天
								    max: '2099-06-16 23:59:59', //最大日期
								    choose: function(datas){
								        start2.max = datas; //结束日选好后，重置开始日的最大日期
								        $('#endDay').val(datas);
								        var startTime = $('#startDay2').val();
								        var endTime = datas;
								        var dateDiff = GetDateDiff(startTime,  endTime);//日期差
								        $('#dateDiff').html(dateDiff);
								    }
							};
							laydate(start2);
							laydate(end2);
							
						</script>
                        <div class="room-table">
                            <p class="tab-title">
                                <span class="tab-col col-name">商品名称</span>
                                <span class="tab-col col-bed">床型</span>
                                <span class="tab-col col-meal">早餐</span>
                                <span class="tab-col col-WB">宽带</span>
                                <span class="tab-col col-explain">预定说明</span>
                                <span class="tab-col col-parice">日均价</span>
                                <span class="tab-col"></span>
                            </p>
                        <div class="tab-body hotel_all">
                        
                       		<c:forEach items="${roomList}" var="roomList">
                              	<div class="tab-row"><p class="tab-col col-name"><img class="bgImage" src="http://image.goutrip.com/f7/eac806708ae5cf55a35940ba8e2f5f.jpg" data-original="http://image.goutrip.com/f7/eac806708ae5cf55a35940ba8e2f5f.jpg" alt="" style="display: inline-block;"><span>${roomList.room_name}</span></p><p class="tab-col col-bed">${roomList.room_bed}</p><p class="tab-col col-meal">${roomList.room_breakfast}</p><p class="tab-col col-WB">${roomList.room_wifi}</p><p class="tab-col col-explain">${roomList.room_explain}</p><p class="tab-col col-parice" id="pricePTag"><input type="hidden" id="price" name="hotelPrice" value="${roomList.room_price}">￥<span class="priceSpan">${roomList.room_price}</span></p><p class="tab-col col-btn"><input type="submit" class="hotel_book" data-roomid="10046" value="预定"></p></div><i class="line"></i>
                            </c:forEach>
                            <%-- ${Integer.valueOf(roomList.room_id)}  --%>
                 			<%-- <c:forEach items="${roomList}" var="roomList">
                              <div class="tab-row"><p class="tab-col col-name"><img class="bgImage" src="http://image.goutrip.com/f7/eac806708ae5cf55a35940ba8e2f5f.jpg" data-original="http://image.goutrip.com/f7/eac806708ae5cf55a35940ba8e2f5f.jpg" alt="" style="display: inline-block;"><span>${roomList.room_name}</span></p><p class="tab-col col-bed">${roomList.room_bed}</p><p class="tab-col col-meal">${roomList.room_breakfast}</p><p class="tab-col col-WB">${roomList.room_wifi}</p><p class="tab-col col-explain">${roomList.room_explain}</p><p class="tab-col col-parice">${roomList.room_price}</p><p class="tab-col col-btn"><button class="detail" onclick="window.location.href=&#39;<%=path%>/hotelorder.do?room_id=${roomList.room_id}&#39;">预定</button></p></div><i class="line"></i>
                            </c:forEach> --%>
                       </div>
                    </div>
                    <!--酒店介绍-->
                    <div class="inner-introduce">
                        <p class="inner-title">
                            <span class="title-log">酒店介绍</span>
                        </p>
                        <div class="introduce">
                            <div class="intro-txt">
								${hotelInfo.hotel_introduce}
                            </div>
                        </div>
                    </div>
                    <!--入住政策-->
                    <div class="inner-occupancy">
                        <p class="inner-title">
                            <span class="title-log">入住政策</span>
                        </p>
                        <div class="occupancy">
                            <ul>
                                <li class="clearfix">
                                    <i class="occu-key">入住和离店</i>
                                    <span class="occu-value">入住时间：14:00以后      离店时间：14:00以前</span>
                                </li>
                                <li class="clearfix">
                                    <i class="occu-key">取消政策</i>
                                    <span class="occu-value">不同类型的客房有不同的取消预订和预先付费政策</span>
                                </li>
                                <li class="clearfix">
                                    <i class="occu-key">押金/预付款</i>
                                    <span class="occu-value">入住时需要出示政府核发的身份证件(带照片)。
请携带信用卡和现金用以支付押金或额外费用。</span>
                                </li>
                                <li class="clearfix">
                                    <i class="occu-key">宠物</i>
                                    <span class="occu-value">不可携带宠物。</span>
                                </li>
                                <li class="clearfix">
                                    <i class="occu-key">特殊条款</i>
                                    <span class="occu-value">信用卡授权解除需时1-3个月。视不同国家、城市之银行操作时间而定。</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--酒店设施-->
                    <div class="inner-install">
                        <p class="inner-title">
                            <span class="title-log">酒店设施</span>
                        </p>
                        <div class="install">
                            <p class="install-title">餐饮设施</p>
                            	${hotelInfo.hotel_food}
                            <p class="install-title">康体娱乐</p>
								${hotelInfo.hotel_play}
                            <p class="install-title">会议设施</p>
                            	${hotelInfo.hotel_meeting}
                            <p class="install-title">支持卡类</p>
								${hotelInfo.hotel_card}
                        </div>
                    </div>
                    <!--交通信息-->
                    <div class="inner-traffic">
                        <p class="inner-title">
                            <span class="title-log">交通信息</span>
                        </p>
                        <div class="traffic">
							${hotelInfo.hotel_traffic}
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</form>
</c:forEach>
    <!--这里是--------------左侧详情-->
    <div class="summary fr side-fix-max">
        <div class="sum-parice">
            <p class="parice-detail">
                        <span class="">
                            <i class="parice">${hotelInfo.hotel_price}</i>元起/晚
                        </span>
                <button class="detail1">立即预定</button>
            </p>
        </div>
        <div class="sum-address">
            <span class="hotel-address">酒店位置：</span>
            ${hotelInfo.hotel_address}
        </div>
        <div class="sum-device">
            <span class="hotel-device">设施：</span>
            <i class="device-wifi" title="宽带"></i>
			<i class="device-pc" title="电视"></i>
			<i class="device-tel" title="电话"></i>
			<i class="device-coffee" title="餐厅"></i>
			<i class="device-pack" title="停车场"></i>
        </div>
        <div class="sum-recommend">
            <p class="recommend-title">产品经理推荐：</p>
            ${hotelInfo.hotel_groom}
        </div>
        <div class="sum-envir">
            <span class="envir-title">周围环境</span>
            ${hotelInfo.hotel_around}
        </div>
        <!--地图开始-->
        <div class="sum-map">
            <div class="hotel_map" id="allmap" style="overflow: hidden; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left; z-index: 0;"><div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 86px; cursor: url(&quot;http://api0.map.bdimg.com/images/openhand.cur&quot;) 8 8, default;"><div class="BMap_mask" style="position: absolute; left: 0px; top: -86px; z-index: 9; overflow: hidden; user-select: none; width: 352px; height: 220px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"><div class="BMap_pop" style="box-sizing: content-box; position: absolute; cursor: default; left: 62px; top: -45px;"><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 0px; top: 0px; width: 25px; height: 25px;"><div style="box-sizing:content-box;background:#fff;border-top:1px solid #ababab;border-left:1px solid #ababab;width:30px;height:30px;"></div></div><div class="BMap_top" style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 25px; top: 0px; width: 212px; height: 25px;"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 237px; top: 0px; width: 25px; height: 25px;"><div style="box-sizing:content-box;position:absolute;top:0;left:-6px;background:#fff;border-top:1px solid #ababab;border-right:1px solid #ababab;width:30px;height:30px;"></div></div><div class="BMap_center" style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 0px; top: 25px; width: 260px; height: 56px;"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 0px; top: 81px; width: 25px; height: 25px;"><div style="box-sizing:content-box;position:absolute;top:-6px;left:0;background:#fff;border-bottom:1px solid #ababab;border-left:1px solid #ababab;width:30px;height:30px;"></div></div><div class="BMap_bottom" style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 25px; top: 81px; width: 212px; height: 24px;"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 237px; top: 81px; width: 25px; height: 25px;"><div style="box-sizing:content-box;position:absolute;top:-6px;left:-6px;background:#fff;border-right:1px solid #ababab;border-bottom:1px solid #ababab;width:30px;height:30px;"></div></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 114px; top: 81px; width: 34px; height: 50px;"><img style="box-sizing:content-box;border:none;margin:0px;padding:0px;margin-left:-186px;margin-top:-691px;max-width:none; width:690px;height:786px;" src="./hotelInfo_files/iw3.png"></div><div style="box-sizing: content-box; width: 230px; height: 74px; position: absolute; left: 16px; top: 16px; z-index: 10; overflow: hidden;"><div class="BMap_bubble_title" style="overflow: hidden; height: auto; line-height: 24px; white-space: nowrap; width: auto;"><p style="width:210px;font:bold 14px/16px arial,sans-serif;margin:0;color:#cc5522;white-space:nowrap;overflow:hidden" title="三亚湘投银泰度假酒店">三亚湘投银泰度假酒店<a target="_blank" href="http://api.map.baidu.com/place/detail?uid=1bf85b25c77348bda0a93487&amp;output=html&amp;source=jsapi" style="margin-left:5px;font-size:12px;color:#3d6dcc;font-weight:normal;text-decoration:none;">详情»</a></p></div><div class="BMap_bubble_content" style="width: auto; height: auto;"><div style="font:12px arial,sans-serif;margin-top:10px"><table cellspacing="0" style="overflow:hidden;table-layout:fixed;width:100%;font:12px arial,sans-serif"><tbody><tr><td style="vertical-align:top;width:38px;white-space:nowrap;word-break:keep-all">地址：&nbsp;</td><td style="line-height:16px">大东海度假区海花路88号&nbsp;</td></tr><tr><td style="vertical-align:top;">电话：</td><td>(0898)88210888</td></tr></tbody></table></div></div><div class="BMap_bubble_max_content" style="display:none;position:relative"></div></div><img style="position: absolute; top: 12px; width: 10px; height: 10px; cursor: pointer; z-index: 10000; left: 237px;" src="./hotelInfo_files/iw_close1d3.gif"><img style="position:absolute;top:12px;width:10px;height:10px;-moz-user-select:none;cursor:pointer;z-index:10000;display:none" src="./hotelInfo_files/quanjing.png" title="进入全景"><img style="position:absolute;top:10px;width:9px;height:14px;-moz-user-select:none;cursor:pointer;z-index:10000;display:none;" src="./hotelInfo_files/phone.png" title="发送到手机"><img style="position: absolute; top: 12px; width: 10px; height: 10px; cursor: pointer; z-index: 10000; display: none; left: 217px;" src="./hotelInfo_files/iw_plus1d3.gif"><div style="position: absolute; top: 0px; left: 0px; z-index: 10000; width: 262px;"></div></div></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"><span class="BMap_Marker BMap_noprint" unselectable="on" "="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; background: url(&quot;http://api0.map.bdimg.com/images/blank.gif&quot;); width: 23px; height: 25px; left: 167px; top: 85px; z-index: 19000000; user-select: none;" title="三亚湘投银泰度假酒店"></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"><div class="BMap_shadow" style="position: absolute; left: 40px; top: 9px;" type="infowindow_shadow"><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 45px; top: 0px; width: 70px; height: 30px;"><img onmousedown="return false" style="margin-left: -323px; margin-top: 0px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 115px; top: 0px; width: 173px; height: 30px;"><img onmousedown="return false" style="margin-left: -393px; margin-top: 0px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 288px; top: 0px; width: 70px; height: 30px;"><img onmousedown="return false" style="margin-left: -1033px; margin-top: 0px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 29px; top: 30px; width: 86px; height: 16px;"><img onmousedown="return false" style="margin-top: -30px; margin-left: -307px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 115px; top: 30px; width: 186px; height: 16px;"><img onmousedown="return false" style="margin-left: -360px; margin-top: -30px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 301px; top: 30px; width: 86px; height: 16px;"><img onmousedown="return false" style="margin-top: -30px; margin-left: -1047px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 0px; top: 46px; width: 50px; height: 60px;"><img onmousedown="return false" style="margin-left: -14px; margin-top: -310px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 50px; top: 46px; width: 16px; height: 60px;"><img onmousedown="return false" style="margin-left: -255px; margin-top: -310px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 66px; top: 46px; width: 140px; height: 60px;"><img onmousedown="return false" style="margin-left: -440px; margin-top: -310px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 206px; top: 46px; width: 66px; height: 60px;"><img onmousedown="return false" style="margin-left: -255px; margin-top: -310px;" src="./hotelInfo_files/iws3.png"></div><div style="box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 272px; top: 46px; width: 70px; height: 60px;"><img onmousedown="return false" style="margin-left: -754px; margin-top: -310px;" src="./hotelInfo_files/iws3.png"></div></div></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; background-color: rgb(190, 190, 190); border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190);">shadow</label></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"><span class="BMap_Marker" unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 167px; top: 85px; z-index: 19000000;"><div style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;"><img src="./hotelInfo_files/markers.png" style="display: block; border:none;margin-left:0px; margin-top:0px; "></div></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"><span unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 170px; top: 99px;"><div style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;"><img src="./hotelInfo_files/marker_red_sprite.png" style="display: block; border:none;margin-left:-19px; margin-top:-13px; "></div></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 176px; top: 24px; display: block; transform: translate3d(0px, 0px, 0px);"><img src="./hotelInfo_files/saved_resource" style="position: absolute; border: none; width: 256px; height: 256px; left: -190px; top: -48px; max-width: none; opacity: 1;"><img src="./hotelInfo_files/saved_resource(1)" style="position: absolute; border: none; width: 256px; height: 256px; left: 66px; top: -48px; max-width: none; opacity: 1;"><img src="./hotelInfo_files/saved_resource(2)" style="position: absolute; border: none; width: 256px; height: 256px; left: -190px; top: -304px; max-width: none; opacity: 1;"><img src="./hotelInfo_files/saved_resource(3)" style="position: absolute; border: none; width: 256px; height: 256px; left: 66px; top: -304px; max-width: none; opacity: 1;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;"><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div></div><div class="pano_close" title="退出全景" style="z-index: 1201; display: none;"></div><a class="pano_pc_indoor_exit" title="退出室内景" style="z-index: 1201; display: none;"><span style="float:right;margin-right:12px;">出口</span></a><div class=" anchorBL" style="height: 32px; position: absolute; z-index: 30; text-size-adjust: none; bottom: 20px; right: auto; top: auto; left: 1px;"><a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1" style="outline: none;"><img style="border:none;width:77px;height:32px" src="./hotelInfo_files/copyright_logo.png"></a></div><div id="zoomer" style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api0.map.bdimg.com/images/openhand.cur) 8 8,default"><div class="BMap_zoomer" style="top:0;left:0;"></div><div class="BMap_zoomer" style="top:0;right:0;"></div><div class="BMap_zoomer" style="bottom:0;left:0;"></div><div class="BMap_zoomer" style="bottom:0;right:0;"></div></div><div unselectable="on" class=" BMap_noprint anchorTR" style="bottom: auto; right: 10px; top: 10px; left: auto; white-space: nowrap; cursor: pointer; position: absolute; z-index: 10; text-size-adjust: none;"><div style="float: left;"><div title="显示普通地图" style="box-shadow: rgba(0, 0, 0, 0.35) 2px 2px 3px; border-left: 1px solid rgb(139, 164, 220); border-top: 1px solid rgb(139, 164, 220); border-bottom: 1px solid rgb(139, 164, 220); background: rgb(142, 168, 224); padding: 2px 6px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 12px; line-height: 1.3em; font-family: arial, sans-serif; text-align: center; white-space: nowrap; border-radius: 3px 0px 0px 3px; color: rgb(255, 255, 255);">地图</div></div><div style="float: left;"><div title="显示卫星影像" style="box-shadow: rgba(0, 0, 0, 0.35) 2px 2px 3px; border-left: 1px solid rgb(139, 164, 220); border-top: 1px solid rgb(139, 164, 220); border-bottom: 1px solid rgb(139, 164, 220); background: rgb(255, 255, 255); padding: 2px 6px; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 12px; line-height: 1.3em; font-family: arial, sans-serif; text-align: center; white-space: nowrap; color: rgb(0, 0, 0);">卫星</div><div style="position: absolute; top: 21px; left: 37px; z-index: -1; display: none;"><div title="显示带有街道的卫星影像" style="border-right:1px solid #8ba4dc;border-bottom:1px solid #8ba4dc;border-left:1px solid #8ba4dc;background:white;font:12px arial,sans-serif;padding:0 8px 0 6px;line-height:1.6em;box-shadow:2px 2px 3px rgba(0, 0, 0, 0.35)"><span checked="checked" "="" class="BMap_checkbox"></span><label style="vertical-align: middle; cursor: pointer;">混合</label></div></div></div><div style="float: left;"><div title="显示三维地图" style="box-shadow: rgba(0, 0, 0, 0.35) 2px 2px 3px; border-width: 1px; border-style: solid; border-color: rgb(139, 164, 220); background: rgb(255, 255, 255); padding: 2px 6px; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 12px; line-height: 1.3em; font-family: arial, sans-serif; text-align: center; white-space: nowrap; border-radius: 0px 3px 3px 0px; color: rgb(0, 0, 0);">三维</div></div></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; color: black; background: none; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: 15px; font-family: arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 2px; position: absolute; z-index: 10; text-size-adjust: none;"><span _cid="1" style="display: inline;"><span style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2017 Baidu - GS(2016)2089号&nbsp;- Data © 长地万方</span></span></div></div>
        </div>
        <script type="text/javascript">
            // 百度地图API功能
            var map = new BMap.Map("allmap");    // 创建Map实例
            map.centerAndZoom(new BMap.Point(109.527, 18.228), 8);  // 初始化地图,设置中心点坐标和地图级别
            map.addControl(new BMap.MapTypeControl());
            map.setCurrentCity("三亚");
            map.enableScrollWheelZoom(true);
            var local = new BMap.LocalSearch(map, {
                renderOptions: {map: map, panel: "r-result"},
                pageCapacity:1
            });
            local.search("${hotelInfo.hotel_name}");
        </script>
        <!--地图结束-->
    </div>
</div>
</div>
<!--侧边栏-->
<!--侧边栏-->
<aside class="asides" style="display: block;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="./hotelInfo_files/apper.png" alt=""></div>
        </li>
        <li class="phone">
            <a href="javascript:;"></a>
            <div class="phoneN">400-065-5161</div>
        </li>
        <li class="kefu">
            <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2845023966&amp;site=qq&amp;menu=yes" target="_blank"></a>
            <div class="QQ">
                <p class="clearfix">
                    <i></i>
                    <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2845023966&amp;site=qq&amp;menu=yes" target="_blank">够旅游小够1</a>
                </p>
                <p class="clearfix">
                    <i></i>
                    <a href="tencent://message/?Menu=yes&amp;uin=441105682&amp;Site=qq&amp;Service=300&amp;sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45" target="_blank">够旅游小够2</a>
                </p>
            </div>
        </li>
        <li class="close"><a></a></li>
    </ul>
    <span class="toTop"></span>
</aside>

<script>
	//侧边栏
    $(".asides li").mouseover(function(){
        $(this).find("div").show();
    }).mouseout(function(){
        $(this).find("div").hide();
    })
    $(".close").click(function(){
        if($(".asides li").is(":hidden")){
            $(".asides li").slideDown();
        }else{
            $(".asides li:not(':last-child')").slideUp();
        }
    })
	//页面滚动 侧边栏显示 与 隐藏
    $(function(){
        $(".asides").hide();
        $(window).scroll(function(){
            if($(window).scrollTop()>650){
                $(".asides").show();
            }else{
                $(".asides").hide();
            }
        });
		//回到顶部
        $(".toTop").click(function(){
            $("body,html").animate({scrollTop:0},500);
            return false;
        })
    })
</script><!--页脚开始-->
<!--尾部-->
<div class="botm" data-oxlazy="image/bgmidd_04.png">
    <div class="w1200">
        <div>
            <img class="botm-logo" src="image/logo-3.png">
            <p class="main-btm-logo">客服电话：400-065-5161</p>
        </div>
        <div>
            <ul>
                <li>关于够旅游</li>
                <li><a href="http://www.goutrip.com/resources/guanyuwomen.html" target="_blank">关于我们</a></li>
                <li><a href="http://www.goutrip.com/resources/meitibaodao.html" target="_blank">媒体报道</a></li>
                <li><a href="http://www.goutrip.com/resources/gongzuojihui.html" target="_blank">工作机会</a></li>
                <li><a href="http://www.goutrip.com/resources/lianxiwomen.html" target="_blank">联系我们</a></li>
                <li><a href="http://www.goutrip.com/resources/yinsizhengce.html" target="_blank">隐私免责</a></li>
                <li><a href="http://www.goutrip.com/resources/fuwutiaokuan.html" target="_blank">服务条款</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li>旅行服务</li>
                <li><a href="http://www.goutrip.com/custom/mine.html" target="_blank">私人订制</a></li>
                <li><a href="http://www.goutrip.com/goods/wifi/wifiChannel.html" target="_blank">境外wifi</a></li>
                <li><a href="http://www.goutrip.com/goods/visa/channel.html" target="_blank">签证预订</a></li>
            </ul>
        </div>
        <div>
            <img src="./hotelInfo_files/bannner_34.png">
            <p>够旅游微信公众号</p>
        </div>
        
    </div>
    <div class="botm-last">
        <p>网站备案/许可证号：京ICP备14016142号-1|够旅游公安 备案编号：京公网安备11010802014913号|主办单位名称：北京汇智纵横信息技术有限公司</p>
        <p>办公地址：北京市海淀区中关村东路18号财智国际大厦A座17层|网站名称：够旅游网|网站首页网址：www.goutrip.com</p>
    </div>
   
</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?a536681329b45ba5dd8b2451b309dfc8";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();

//底部背景图片懒加载
//lazy loading
(function(a) {
    var c = a(window);
    var b = {
        flag: "data-oxlazy",
        init: function() {
            this.items = a.makeArray(a("[" + this.flag + "]"));
            this.cnt = this.items.length;
            if (this.cnt === 0) {
                return false;
            }
            c.bind("scroll.oxlazy", function(d) {
                b.detect();
            }).bind("resize.oxlazy", function(d) {
                b.detect();
            });
        },
        detect: function() {
            var e = [];
            for (var d = 0; d < this.cnt; d++) {
                if (!b.rock(this.items[d])) {
                    e.push(this.items[d]);
                }
            }
            this.items = e;
            this.cnt = this.items.length;
        },
        isInView: function(f) {
            var e = a(f),
                h = e.offset(),
                g = h.top - c.scrollTop(),
                d = c.height(),
                i = -(e.height());
            if ((g < i) || (g >= d)) {
                return false;
            }
            return e;
        },
        rock: function(i) {
            var h = i.getAttribute(this.flag);
            if ((!h) || (h === "")) {
                return false;
            }
            var f = this.isInView(i);
            if (!f) {
                return false;
            }
            var j = i.tagName === "IMG",
                e = i.tagName === "IFRAME",
                g = i.getAttribute(this.flag + "-timestamp") === "1",
                d = g ? ("?t=" + this.getTimeStamp()) : "";
            h = h + d;
            if (j || e) {
                i.setAttribute("src", h);
            } else {
                f.css("background-image", "url(" + h + ")");
            }
            i.removeAttribute(this.flag);
            return true;
        },
        getTimeStamp: function() {
            var d = new Date();
            return (d.getFullYear() + "" + d.getMonth() + "" + d.getDate());
        }
    };
    a(function() {
        b.init();
        b.detect();
    });
})(jQuery);
</script><!--页脚结束-->

<script type="text/javascript">
	function changeTotalPrice(){
		var days = $('#dateDiff').html();
		console.log(days);
		var singlePrice = $('.priceSpan').html();
		console.log(singlePrice);
	    var totalPrice = days*singlePrice;
	    console.log(totalPrice);
	    $('#price').parent('#pricePTag').find('input#price').val(totalPrice);
	}
</script>

<script src="./hotelInfo_files/hotelDetail.js.下载"></script>

</body></html>