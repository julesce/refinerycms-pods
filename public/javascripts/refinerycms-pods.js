$(document).ready(function() {

	$(".gallery_slider").bxSlider({
		auto: true,
		autoDelay: 3000,
		pause: 6000,
		controls: true
	});

  $(".video_pod .video a").each(function(index) {
		var str = $(this).attr("href");
	  	var yt_id = str.substring(str.lastIndexOf("/")+1, str.length);
		$(this).attr("href", "http://www.youtube.com/embed/" + yt_id + "?rel=0");
	  	$(this).html("<div class='video_img'><img src='http://img.youtube.com/vi/" + yt_id + "/0.jpg' /></div>");
		$(this).html( $(this).html() + "<div class='video_play'></div>" );
	});
  
	$(".video_pod .video a").colorbox({iframe:true, innerWidth:640, innerHeight:390, transition:"elastic"});

});