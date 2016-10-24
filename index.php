<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="main.css">
	<script type="text/javascript" src="lib/sound.js"></script>
	<script type="text/javascript" src="lib/jquery.js"></script>
	<script type="text/javascript" src="main.js"></script>
	<?php
		if(isset($_GET['level_data'])) {
	?>
	<script type="text/javascript" src="lib/base64.js"></script>
	<script type="text/javascript">
		$(function() {
			var l;
			try {
				l = B64.decode("<?php echo htmlentities($_GET['level_data']); ?>")
			} catch(e) { 
				return alert("Base64 invalide");
			}
			var levelData = JSON.parse(l);
			ld.DATA.levels['test'] = levelData
			ld.setCheckpoint('test', levelData.playerPos[0], levelData.playerPos[1], true)
		})
		
	</script>
	<?php
		}
	?>
	
</head>
<body>
	<div class="container">
		<img src="img/logo.png" alt="logo">
		<div id="game">
			<canvas id="entities" width="800" height="600"></canvas>
			<div id="gameover"></div>
			<div id="mute"></div>
		</div>
		<div id="notes">
			<b>POST-LD (<a href="http://yann-p.fr/ld28">original version</a> )</b><br>
			Art &amp; programming by Yann P. (<a href="https://twitter.com/Cawrtz" target="_blank">@Cawrtz</a>).
		</div>
	</div>
	<div id="preload">
		<img src="img/level1.png">
		<img src="img/level2.png">
		<img src="img/level3.png">
		<img src="img/level4.png">
		<img src="img/level5.png">
		<img src="img/level6.png">
		<img src="img/level7.png">
		<img src="img/level8.png">
		<img src="img/level9.png">
		<img src="img/level10.png">
		<img src="img/level11.png">
		<img src="img/gameover.png">
		<img src="img/key_loot.png">
		<img src="img/door1.png">
		<img src="img/bomb.png">
		<img src="img/player.png">
		<img src="img/playerkey.png">
		<img src="img/bowman.png">
	</div>
</body>
</html>