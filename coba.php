<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div id="muteYouTubeVidioPlayer">
		<iframe width="560" height="315" src="https://www.youtube.com/embed/tOuztz_hyzk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	</div>
	<script type="text/javascript" async src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">
		function onYoutubeIframeAPIReady(){
			var player;
			player = new YT.Player('muteYouTubeVidioPlayer',{
				videold:'tOuztz_hyzk',
				width:640,
				height:360,
				playerVars:{
					autoplay:1,
					controls:0,
					showinfo:0,
					modestbranding:0,
					loop:1,
					fs:0,
					cc_load_policty:0,
					iv_load_policy:3,
					autohide:1
				},
				events:{
					onReady:function(e){
						e.target.mute();
					}
				}
			})
		}
	</script>
</body>
</html>