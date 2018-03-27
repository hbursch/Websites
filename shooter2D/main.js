
var canvas,
	ctx,
	width,
	height,
	gameScore;

//initial load of the poorly made "zombies" game
function init(){
	alert("Shoot the zombies");
	canvas = document.getElementById("canvas");
	width = canvas.width;
	height = canvas.height;
	ctx = canvas.getContext('2d');
	//doesn't confuse keypress function
	window.onkeydown = keyLogger.keyDownListener;
	window.onkeyup = keyLogger.keyUpListener;
	
	//Init player
	player.x = width/2;
	player.y = height/2;
	
	//Main game loop
	
	setInterval(function(){
		
	updateGame(0.01);
	renderGame();	
		
	},10);
	
}
function drawScore(){
	ctx.font = "16px Arial";
	ctx.fillStyle = "0094DD";
	ctx.fillText("Score: "+gameScore, 8, 20);
}

function updateGame(dt){
	bullets.update(dt);
	targets.update(dt);
	player.update(dt);
}

function renderGame(){
	drawScore();
	renderBackground();
	player.render(ctx);
	bullets.render(ctx);
	targets.render(ctx);
}
//load the canvas with color and size
function renderBackground(){
	ctx.fillStyle = "#c6c6c6";
	ctx.fillRect(0,0,width,height);
}

