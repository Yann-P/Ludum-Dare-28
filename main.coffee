# Yann P for ld28


createjs.Sound.registerSound("sound/break_key.mp3", "break_key");
createjs.Sound.registerSound("sound/gong.mp3", "gong");
createjs.Sound.registerSound("sound/explosion.mp3", "explosion");
createjs.Sound.registerSound("sound/punch.mp3", "punch");
createjs.Sound.registerSound("sound/throw_arrow.mp3", "throw_arrow");

window.ld = {}
ld.muted = false
ld.save = [1, 0, 0, false]
ld.restoreSaveFromLocalStorage = ->
	return
ld.getCheckpoint = ->
	return ld.save # Spawn par défaut
ld.setCheckpoint = (levelid, x, y, gotKey) ->
	ld.save = [levelid, x, y, gotKey]
ld.eraseData = ->
	if localStorage
		localStorage.save = {}
	ld.save = [1, 0, 0, false]
	window.location.reload()

ld.DATA = {
	levels: {
		'1': {
			playerPos: [21, 15]
			platforms: [[-100,580,900],[0,150,500],[60,60,100],[340,60,100],[560,150,400],[420,490,50],[320,400,50],[220,310,50],[-30,310,100],[0,480,100]]
			doors: [ #x, y, level destination
				[19, 582, 2]
			]
			monsters: {
				autospawn: []
			}
			checkpoint: [-20, 311]
		}
		'2': {
			playerPos: [100, 0]
			platforms: [[460,130,50],[650,240,100],[650,340,100],[540,450,30],[-50,580,900],[0,500,50],[100,420,50],[240,350,100],[240,260,100],[-90,80,500],[560,180,50]]
			doors: [
				[265, 347, 3]
			]
			monsters: {
				autospawn: [ ] # type, x, y, freq -- ex ['bomb', 0, 0, 10000]
			}
		}
		'3': {
			playerPos: [661, 544]
			platforms: [[-10,590,900],[660,510,50],[660,430,50],[660,330,50],[490,330,50],[-70,330,100],[280,330,50],[-60,250,100],[-50,150,100],[280,150,700]]
			doors: [
				[615, 150, 4]
			]
			monsters: {
				autospawn: [ ]
			}
			checkpoint: [640, 332]
		}
		'4': {
			playerPos: [353, 418]
			platforms: [[0,590,800],[290,390,200],[130,490,500],[530,290,100],[140,290,100],[350,210,70]]
			doors: [
				[360, 212, 5]
			]
			monsters: {
				autospawn: [ ]
				bowman: [[176, 70]]
			}
			checkpoint: [150, 290]
		}
		'5': {
			playerPos: [20, 506]
			platforms: [[0,580,800],[340,180,100],[290,260,200],[240,340,300],[190,420,400],[140,500,500],[660,260,50],[50,260,50],[50,160,50],[660,160,50]]
			doors: [
				[48, 160, 6]
			]
			monsters: {
				autospawn: [ ['bomb', 374, 0, 5000] ]
			}
			checkpoint: [639, 162]
		}
		'6': {
			playerPos: [0, 0]
			platforms: [[0,170,100],[230,170,100],[450,170,100],[660,170,100],[250,280,50],[470,280,50],[10,280,50],[20,380,30],[260,380,30],[480,380,30],[690,380,30],[0,480,800],[0,590,800],[680,280,50]]
			doors: [
				[677, 480, 7]
			]
			monsters: {
				autospawn: []
				bomb: [[263, 18], [480, 15], [700, 25]]
				bowman: [[700, 25], [33, 319]]
			}
			checkpoint: [660, 280]
		}
		'7': {
			playerPos: [53, 490]
			platforms: [[0,590,800],[600,490,30],[460,420,30],[550,290,30],[770,290,30],[560,40,70],[630,190,30],[700,100,100],[200,390,100],[0,390,100],[70,310,30],[200,240,30],[70,160,30],[70,70,100]]
			doors: [
				[85, 72, 8]
			]
			monsters: {
				autospawn: []
				bomb: [[0, 0]]
				bowman: [[770, 173]]
			}
			checkpoint: [550, 41]
		}
		'8': {
			playerPos: [0, 0]
			platforms: [[0,110,500],[0,220,400],[0,590,800],[620,110,100],[770,200,30],[670,280,30],[770,360,30],[0,370,100],[0,480,100],[670,450,30],[570,520,30],[400,420,50]]
			doors: [
				[37, 222, 9]
			]
			monsters: {
				autospawn: [['bomb', 100, 500, 2000]]
				bowman: [[9, 300], [9, 401], [5, 527]]
			}
			checkpoint: [380, 422]
		}
		'9': {
			playerPos: [8, 300]
			platforms: [[0,270,700],[0,390,800],[110,150,700],[770,320,30],[0,210,30]]
			doors: [
				[692, 151, 10],
				[92, 392, 8]
			]
			monsters: {
				autospawn: [['bowman', 0, 0, 2500], ['bomb', 0, 0, 5000], ['bomb', 329, 327, 5000], ['bomb', 400, 0, 5000]]
			}
		},
		'10': {
			playerPos: [600, 477]
			platforms: [[0,572,800],[357,503,105],[423,440,105],[495,377,105],[561,314,105],[417,233,39],[0,236,255],[0,166,42]]
			doors: [
				[658, 575, 9],
				[110, 235, 11]
			]
			monsters: {
				autospawn: []
			}
			checkpoint: [98, 572]
		}
		'11': {
			playerPos: [750, 114]
			platforms: [[110,260,100],[20,530,100],[650,370,100],[20,60,100],[0,350,100],[260,120,100],[600,160,100],[480,490,100],[200,420,100],[390,280,100],[0,590,800],[90,120,100],[250,60,100],[240,220,100],[490,250,100],[410,20,100],[340,210,100],[190,160,100],[20,180,100],[320,350,100],[160,540,100],[90,440,100],[470,110,100],[440,550,100],[700,240,100],[700,450,100],[670,530,100],[580,70,100],[290,530,100],[440,380,100],[190,340,100]]
			doors: [
			]
			monsters: {
				autospawn: [['bomb', 0, 0, 1000]]
			}
			checkpoint: [750, 242]
		},
		'12': {
			playerPos: [741, 534]
			platforms: [[0,590,800],[0,30,50],[70,70,100],[480,150,40],[750,160,50],[580,200,10],[660,330,10],[730,370,30],[570,400,80],[410,450,100],[290,500,60],[180,540,50],[620,260,10],[700,240,5],[190,110,100],[310,150,100]]
			doors: [
				[0, 30, 13]
			]
			monsters: {
				bowman: [[777, 115], [31, 515]]
				autospawn: [['bomb', 220, 50, 1000], ['bomb', 31, 515, 2000]]
			}
			checkpoint: [751, 162]
		}

		
	}
}

PARTICLE_PARAMS =
	BROKEN_KEY:
		velocityRange:
			x: [-20, 20], y: [-15, -5]
		size: 5
		lifeTime: 700
		collidesPlatform: true
		gravity: true
		color: 'rgba(255, 255, 255, 0.5)'
	SPARK:
		velocityRange:
            x: [-2, 2]
            y: [-10, -5]
        size: 3
       	lifeTime: 250
        gravity: true
        color: 'yellow'
	EXPLOSION:
		velocityRange:
            x: [10, -10]
            y: [10, -10]
		size: 5
		lifeTime: 200
		color: 'rgb(255, 150, 0)'
	FIREWORKS:
		velocityRange:
            x: [10, -10]
            y: [10, -10]
		size: 8
		gravity: true
		lifeTime: 3000
		color: 'red'
	CHECKPOINT:
		velocityRange:
            x: [0, 0]
            y: [-.5, -2]
		size: 3
		lifeTime: 1000
		color: 'rgba(0, 255, 255, 0.5)'
	GOT_CHECKPOINT:
		velocityRange:
            x: [-5, 5]
            y: [-10, -15]
		size: 7
		collidesPlatform: true
		gravity: true
		lifeTime: 1000
		color: 'rgba(0, 255, 255, 0.5)'


KEY =
	DOWN: 40, UP: 38, LEFT: 37, RIGHT: 39, P: 80, M: 77, SPACE: 32

DEFAULT_VOLUME = .9

window.requestAnimFrame = ( ->
  return  window.requestAnimationFrame       ||
          window.webkitRequestAnimationFrame ||
          window.mozRequestAnimationFrame    ||
          ((callback) ->
            window.setTimeout(callback, 1000 / 60);
          )
)()

ld.Util =
	testEntitiesCollision: (e1, e2) ->
		return  !(  (e2.pos.x >= e1.pos.x + e1.size.x)   || 
				    (e2.pos.x + e1.size.x <= e1.pos.x)   || 
				    (e2.pos.y >= e1.pos.y + e1.size.y)   || 
				    (e2.pos.y + e1.size.y <= e1.pos.y))
	randomFloatBetween: (min, max) ->
        return Math.random() * (max - min) + min
    circlesCollision: (c1, c2) ->
        d2 = (c1.x - c2.x) * (c1.x - c2.x) + (c1.y - c2.y) * (c1.y - c2.y)
        return !(d2 > (c1.radius + c2.radius) * (c1.radius + c2.radius))



# VEC2
class Vec2
    constructor: (@x = 0, @y = 0) ->
    copy: ->
        return new Vec2(@x, @y)
    @random: (maxX, maxY) -> 
        return new Vec2(~~(Math.random() * maxX), ~~(Math.random() * maxY))

# ANIMATIONSHEET
class ld.AnimationSheet
    constructor: (@url, @size) ->
        @image = new Image()
        @image.src = @url
    
# ANIMATION   
class ld.Animation
    constructor: (@animid, @sheet, @frameTime, @sequence) ->     
        @startTime = Date.now()
        @ticks = 0
        @frameid = 0
    update: ->
        deltaTime = Date.now() - @startTime
        if deltaTime > @frameTime
            @frameid = (@ticks++) % @sequence.length;
            @startTime = Date.now()
    draw: (ctx, pos) ->
        frame = @sequence[@frameid]
        ctx.drawImage(@sheet.image, 
                      frame[0] * @sheet.size.x, frame[1] * @sheet.size.y,
                      @sheet.size.x, @sheet.size.y, 
                      pos.x, pos.y,
                      @sheet.size.x, @sheet.size.y);

# ENTITY
class ld.Entity
	constructor: (@id, @params) ->
		@pos = new Vec2()
		@vel = new Vec2()
		@size = new Vec2()
		@va = 0 # Vitesse angulaire
		@angle = 0
		@restitution = null
		@friction = null
		@onGround = false
		@animations = {}
		@currentAnim = null
		@mustDespawnCallback = null
		@hitGroundCallback = null
		@spawnTime = Date.now()
	addAnim: (animid, frameTime, sequence) ->
        if !@animSheet then throw "AnimSheet non définie"
        @animations[animid] = new ld.Animation(animid, @animSheet, frameTime, sequence)
	setAnim: (animid) ->
		if @currentAnim and @currentAnim.animid == animid
			return # Déjà la même anim 
		@currentAnim = @animations[animid]
	collidesPlatform: (platform) ->
		return  @pos.x + @size.x > platform.pos.x and 
				@pos.x + @size.x <= platform.pos.x + platform.width + @size.x and 
				@pos.y + @size.y + @vel.y >= platform.pos.y and 
				@pos.y + @size.y <= platform.pos.y
	collidesAnyPlatform: (game) ->
		platforms = game.getEntitiesByClass('Platform')
		for platform in platforms
			if @collidesPlatform(platform) 
				return true
		return false
	update: (game) ->
		# Despawn si hors zone jeu
		if @pos.x + @size.x < 0 or @pos.x - @size.x > 800 or @pos.y - @size.y > 600
			@mustDespawnCallback()
		@angle += @va
		if @onGround
			@vel.x *= @friction or .7
		if @params.gravity
			if @vel.y < 15
				@vel.y += .7
		if @params.collidesPlatform
			if @collidesAnyPlatform(game) and @vel.y > 0
				if @hitGroundCallback
					@hitGroundCallback(@vel.y)
				@onGround = true
				if @restitution
					@vel.y *= -@restitution
					if @vel.y < .1 then @vel.y = 0
				else @vel.y = 0
			else @onGround = false
			
		if @pos.x + @vel.x < 0 and @vel.x < 0 or @pos.x + @size.x + @vel.x > 800 and @vel.x > 0
			@vel.x *= -1
		if isNaN(@vel.y) or isNaN(@pos.y) or isNaN(@vel.x) or isNaN(@pos.x)
			throw ":( :("
		@pos = new Vec2(@pos.x + @vel.x, @pos.y + @vel.y)
		if @currentAnim
			@currentAnim.update()
	draw: (ctx) ->
		if @currentAnim
			ctx.save() # Rotation
			ctx.translate(@pos.x + @size.x*.5, @pos.y + @size.y*.5)
			ctx.rotate(@angle)
			ctx.translate(-(@pos.x + @size.x*.5), -(@pos.y + @size.y*.5))
			@currentAnim.draw(ctx, @pos)
			ctx.restore()
	onMustDespawn: (callback) ->
		@mustDespawnCallback = callback
	onHitGround: (callback) ->
		@hitGroundCallback = callback

# CHECKPOINT
class ld.Checkpoint extends ld.Entity
	constructor: (id, pos) ->
		super(id, {})
		@pos = pos
		@size = new Vec2(96, 96)
		@pos.y -= @size.y
		@animSheet = new ld.AnimationSheet('img/checkpoint.png', @size.copy())
		@addAnim('default', 100, [[0, 0]])
		@setAnim('default')
		@closed = true
	update: (game) ->
		player = game.getPlayer()
		if ld.Util.testEntitiesCollision(@, player) and player.key and player.key.linked
			ld.setCheckpoint(ld.game.currentLevel, @pos.x + @size.x/2, @pos.y, ld.game.keyUnlocked)
			if player.lastCheckpoint != @ 
				player.lastCheckpoint = @
				ld.Particle.sendParticles(20, new Vec2(@pos.x + @size.x/2, @pos.y + @size.y), PARTICLE_PARAMS.GOT_CHECKPOINT)
		if Math.random() < .3
			game.addParticle(new Vec2(@pos.x + Math.random() * @size.x, @pos.y + @size.y), PARTICLE_PARAMS.CHECKPOINT)
		ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Entity.prototype.draw.call(@, ctx)


# PARTICLE
class ld.Particle extends ld.Entity
	constructor: (id, pos, @options) ->
		super(id, {collidesPlatform: @options.collidesPlatform or false, gravity: @options.gravity or false })
		@vel = new Vec2(ld.Util.randomFloatBetween(@options.velocityRange.x[0], @options.velocityRange.x[1]),
                        ld.Util.randomFloatBetween(@options.velocityRange.y[0], @options.velocityRange.y[1]))
		@pos = pos
		@size =  new Vec2(@options.size, @options.size)
		@creationTime = Date.now()
	update: (game) ->
		if @options.lifeTime
			if Date.now() - @creationTime > @options.lifeTime
				@mustDespawnCallback()
		ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ctx.fillStyle = @options.color or 'chartreuse'
		ctx.fillRect(@pos.x, @pos.y, @options.size, @options.size)
		ld.Entity.prototype.draw.call(@, ctx)
	@sendParticles: (amount, pos, options) ->
		for i in [0...amount]
			ld.game.addParticle(pos, options)

# DOOR
class ld.Door extends ld.Entity
	constructor: (id, pos, @destination) ->
		super(id, {})
		@pos = pos
		@size = new Vec2(54, 60)
		@pos.y -= @size.y
		@animSheet = new ld.AnimationSheet('img/door1.png', new Vec2(54, 60))
		@addAnim('closed', 100, [[0, 0]])
		@addAnim('open', 100, [[1, 0]])
		@setAnim('closed')
		@closed = true
	open: ->
		@closed = false
		@setAnim('open')
	update: (game) ->
		player = game.getPlayer()
		if ld.Util.testEntitiesCollision(@, player) 
			if @closed and player.hasKeyWithIt()
				@open()
			if !@closed and game.isKeyPressed(KEY.DOWN)
				game.loadLevel(@destination)
				return
		ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Entity.prototype.draw.call(@, ctx)

# GLASSKEYLOOT
class ld.GlassKeyLoot extends ld.Entity
	constructor: ->
		super(2, { collidesPlatform: true, gravity: true })
		@size = new Vec2(36, 36)
		@pos = new Vec2(15, 198) ##
		@animSheet = new ld.AnimationSheet('img/key_loot.png', new Vec2(36, 36))
		@addAnim('default', 100, [[0, 0]])
		@setAnim('default')
		playerGetItCallback = null
	update: (game) ->
		player = game.getPlayer()
		if player.key == null and ld.Util.testEntitiesCollision(@, player)
			@mustDespawnCallback()
			createjs.Sound.play("gong")
			@playerGetItCallback()
		ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Entity.prototype.draw.call(@, ctx)
	onPlayerGetIt: (callback) ->
		@playerGetItCallback = callback


# PLATFORM
class ld.Platform extends ld.Entity
	constructor: (id, pos, @width) ->
		super(id, {})
		@pos = pos
		@size = new Vec2(@width, 0)
	update: (game) ->
		#ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ctx.fillStyle = '#b94'
		ctx.fillRect(@pos.x, @pos.y, @width, 4) # Uncomment to draw platforms
		#ld.Entity.prototype.draw.call(@, ctx)

# ARROW
class ld.Arrow extends ld.Entity
	constructor: (id, pos) ->
		super(id, { collidesPlatform: true, gravity: true })
		@pos = pos
		@size = new Vec2(33, 15)
		@animSheet = new ld.AnimationSheet('img/arrow.png', @size.copy())
		@addAnim('left', 100, [[0, 0]])
		@addAnim('right', 100, [[0, 1]])
		@setAnim('left')
		createjs.Sound.play("throw_arrow")
	update: (game) ->
		player = game.getPlayer()
		@setAnim(if @vel.x > 0 then 'right' else 'left')
		if Math.abs(@vel.x) < 1
			@mustDespawnCallback()
		if ld.Util.testEntitiesCollision(player, @)
			createjs.Sound.play("punch")
			player.vel.y -= @vel.x*.5
			player.vel.x += @vel.x
			if player.key then player.key.unlink()
			@mustDespawnCallback()
		ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Entity.prototype.draw.call(@, ctx)

# PLAYERKEY
class ld.PlayerKey extends ld.Entity
	constructor: (id, @player) ->
		super(id, {})
		@pos = new Vec2()
		@size = new Vec2(21, 21)
		@linked = true
		@broken = false
		@restitution = .6
		@friction = .95
		@animSheet = new ld.AnimationSheet('img/playerkey.png', @size.copy())
		@addAnim('left', 100, [[0, 0]])
		@addAnim('right', 100, [[1, 0]])
		@setAnim('left')
		@onHitGround( (yVelocity) =>
			if yVelocity > 15 and !@linked
        @break_()
		)
	break_: ->
		createjs.Sound.play("break_key")
		@broken = true
		@mustDespawnCallback()
		ld.Particle.sendParticles(70, new Vec2(@pos.x + @size.x*.5, @pos.y + @size.y*.5), PARTICLE_PARAMS.BROKEN_KEY)
		ld.game.gameOver()
		##
	unlink: ->
		if @linked
			@params = { gravity: true, collidesPlatform: true }
			@linked = false
			@vel.y = -@player.vel.y
			@vel.x = @player.vel.x
			if @player.vel.x > 0 then @pos.x += 20 else @pos.x -= 40
	update: (game) ->
		if !@linked
			if @vel.y > 0 then @va = .1
			else @va = 0
			if !@broken
				if ld.Util.testEntitiesCollision(@player, @) and Math.abs(@vel.x) < 1 and Math.abs(@vel.y) < 1
					@linked = true
		else
			@angle = 0
			@va = 0
 
		if @pos.x < 0
			@pos.x = 0
			@vel.x = 10
		if @pos.x > 800 - @size.x
			@pos.x = 800 - @size.x
			@vel.x = -10

		ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Entity.prototype.draw.call(@, ctx)

# CHARACTER
class ld.Character extends ld.Entity
	constructor: (id, params) ->
		super(id, params)
		@walking = false
		@orientation = 'right'
	jump: ->
		if @onGround
			@vel.y -= 11.7
	update: (game) ->
		if @vel.x > 0 then @orientation = 'right'
		if @vel.x < 0 then @orientation = 'left'

		if @walking and @onGround
			@setAnim('walk_' + @orientation)
		else
			@setAnim('idle_' + @orientation)
		ld.Entity.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Entity.prototype.draw.call(@, ctx)

class ld.Monster extends ld.Character
	constructor: (id, params) ->
		super(id, params)
		@walkDirection = null
	update: (game) ->
		if @walking and @walkDirection
			if @walkDirection == 'left' and @pos.x < 5 then @walkDirection = 'right'
			if @walkDirection == 'right' and @pos.x + @size.x + 5 > 800 then @walkDirection = 'left'
		ld.Character.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Character.prototype.draw.call(@, ctx)

#BOWMAN
class ld.Bowman extends ld.Monster
	constructor: (id, pos) ->
		super(id, { collidesPlatform: true, gravity: true })
		@pos = pos
		@size = new Vec2(33, 39)
		@animSheet = new ld.AnimationSheet('img/bowman.png', new Vec2(33, 39))
		@addAnim('idle_right', 100, [[0, 1]])
		@addAnim('idle_left', 100, [[0, 0]])
		@addAnim('shoot_right', 100, [[1, 1]])
		@addAnim('shoot_left', 100, [[1, 0]])
		@setAnim('shoot_left')
		@orientation = 'right'
		@lastShootTime = 0
	shoot: ->
		if Date.now() - @spawnTime > 3000 # Empêcher le spawnkill
			@lastShootTime = Date.now()
			dx = if @orientation == 'left' then -10 else 40
			arrow = ld.game.addArrow(new Vec2(@pos.x + dx, @pos.y))
			arrow.vel.x = if @orientation == 'left' then -10 - Math.random() * 10 else 10 + Math.random() * 10
			arrow.vel.y = -Math.random() * 10
	update: (game) ->
		player = game.getPlayer()
		if Math.random() < .01
			@jump()
			@shoot()
		ld.Monster.prototype.update.call(@, game)
		@orientation = if player.pos.x > @pos.x then 'right' else 'left'
		@setAnim('idle_' + @orientation)
		if Date.now() - @lastShootTime < 300
			@setAnim('shoot_' + @orientation)

	draw: (ctx) ->
		ld.Monster.prototype.draw.call(@, ctx)

# BOMB
class ld.Bomb extends ld.Monster
	constructor: (id, pos) ->
		super(id, { collidesPlatform: true, gravity: true })
		@pos = pos
		@size = new Vec2(32, 42)
		@animSheet = new ld.AnimationSheet('img/bomb.png', new Vec2(32, 42))
		@addAnim('idle_right', 100, [[0, 0]])
		@addAnim('idle_left', 100, [[0, 1]])
		@addAnim('walk_right', 100, [[0, 2], [1, 2], [2, 2], [3, 2]])
		@addAnim('walk_left', 100, [[0, 3], [1, 3], [2, 3], [3, 3]])
		@setAnim('idle_right')
		@walkRandomly()
	explode: ->
		if Date.now() - @spawnTime < 1000
			return # Empêcher d'exploser moins de 3s après spawn
		createjs.Sound.play("explosion")
		@mustDespawnCallback()
		ld.Particle.sendParticles(30, new Vec2(@pos.x, @pos.y), PARTICLE_PARAMS.EXPLOSION)
		power = 400
		characters = ld.game.getEntitiesByClass('Character')
		if ld.game.getPlayer().key # On ajoute la clé dans les entités pouvant être impactées :D
			characters.push ld.game.getPlayer().key
		for e in characters
			# Le +1 évite une division par zéro
			dist = Math.sqrt(Math.pow(e.pos.x - @pos.x, 2) + Math.pow(e.pos.y - @pos.y, 2)) + 1
			if dist <= power
				if e instanceof ld.Player and dist < 200
					if e.key then e.key.unlink()
				entityPower = Math.exp(power / dist)
				angle = Math.atan2(e.pos.y - @pos.y, e.pos.x - @pos.x)
				powerX = Math.cos(angle) * entityPower
				powerY = Math.sin(angle) * entityPower
				if isNaN(powerY)
					throw "#{dist}"
				maxVelocity = 20
				if powerX > 0 then powerX = Math.min(maxVelocity, powerX) 
				else powerX = Math.max(-maxVelocity, powerX) 
				if powerY > 0 then powerY = Math.min(maxVelocity, powerY) 
				else powerY = Math.max(-maxVelocity, powerY) 
				e.vel.x += powerX
				e.vel.y += powerY

	walkRandomly: ->
		@walking = true
		@walkDirection = if Math.random() < 0.5 then 'left' else 'right'
	update: (game) ->
		if Math.random() < .5
			game.addParticle(new Vec2(@pos.x + @size.x/2, @pos.y), PARTICLE_PARAMS.SPARK)
		if Math.random() < .01
			@walkRandomly()
		if Math.random() < .003
			@explode()
		if Math.random() < .03
			@jump()
		if @walkDirection
			@vel.x = if @walkDirection == 'left' then -3 else 3
		ld.Monster.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Monster.prototype.draw.call(@, ctx)

# PLAYER
class ld.Player extends ld.Character
	constructor: (id, pos) ->
		super(id, { collidesPlatform: true, gravity: true })
		@pos = pos
		@size = new Vec2(30, 36)
		@animSheet = new ld.AnimationSheet('img/player.png', new Vec2(30, 36))
		@addAnim('walk_left', 100, [[0, 0], [1, 0], [2, 0], [3, 0]])
		@addAnim('walk_right', 100, [[0, 1], [1, 1], [2, 1], [3, 1]])
		@addAnim('idle_left', 100, [[0, 2]])
		@addAnim('idle_right', 100, [[0, 3]])
		@setAnim('idle_right')
		@key = null
		@lastCheckpoint = null
		@canBoost = true
		@onHitGround( (yVelocity) =>
			if @key and yVelocity > 15
				@key.unlink()
		)
	giveKey: ->
		@key = ld.game.addPlayerKey(@)
	hasKeyWithIt: ->
		return @key and @key.linked
	boost: ->
		if @canBoost and !@onGround
			@canBoost = false
			@vel.x *= 3
			if @vel.y < 10
				@vel.y = -5
	update: (game) ->
		if !@onGround
			@vel.x *= .75
		else
			@canBoost = true
		if @key
			if @key.linked
				dx = if @vel.x < 0 then -20 else 25
				@key.pos = new Vec2(@pos.x + dx, @pos.y + 15)
				@key.setAnim(if @vel.x < 0 then 'left' else 'right')
		if game.isKeyPressed(KEY.UP) 
			@jump()
		if game.isKeyPressed(KEY.SPACE) 
			@boost()
		@walking = true
		if game.isKeyPressed(KEY.LEFT)
			@vel.x -= 1.2
		else if game.isKeyPressed(KEY.RIGHT)
			@vel.x += 1.2
		else @walking = false
		ld.Character.prototype.update.call(@, game)
	draw: (ctx) ->
		ld.Character.prototype.draw.call(@, ctx)

# GAME
class ld.Game
	constructor: (@ctx) ->
		@entityCount = 100
		@entities = {}
		@currentLevel = null
		@playerId = null
		@started = false
		@keys = {}
		@loadLevelCallback = null
		@keyUnlocked = ld.save[3]
		@gameIsOver = false
		@canRestart = false # quitter le screen game over
		@lastAutospawns = {}
		@autospawn = []
	start: ->
		@started = true
		data = ld.getCheckpoint()
		if data[0] == 'test' && !ld.DATA.levels.test
			ld.setCheckpoint(1, 0, 0, false)
			@keyUnlocked = false
			data = ld.getCheckpoint()

		@loadLevel(data[0], new Vec2(data[1], data[2])) # levelid, x, y
		@update()
	stop: ->
		@started = false
	gameOver: ->
		# Arrêter les spawns d'entités aussi !!
		@gameIsOver = true
		@canRestart = false
		setTimeout( =>
			$('#gameover').show()
			@entities = {}
			setTimeout( =>
				@canRestart = true
			, 800)
		, 800)
		
	loadLevel: (@id, initialPlayerPos) ->
		levelData = ld.DATA.levels[id]
		@gameIsOver = false
		@currentLevel = id
		@entities = {}

		if levelData.checkpoint
			@addCheckpoint(new Vec2(levelData.checkpoint[0], levelData.checkpoint[1]))
		for data in levelData.platforms
			@addPlatform(new Vec2(data[0], data[1]), data[2])
		for data in levelData.doors
			@addDoor(new Vec2(data[0], data[1]), data[2])
		if levelData.monsters.bowman
			for data in levelData.monsters.bowman
				@addBowman(new Vec2(data[0], data[1]))
		if levelData.monsters.bomb
			for data in levelData.monsters.bomb
				@addBomb(new Vec2(data[0], data[1]))

		@autospawn = levelData.monsters.autospawn

		@playerId = @entityCount
		if initialPlayerPos
			@addPlayer(initialPlayerPos)
		else # Entrée normale dans un niveau
			@addPlayer(new Vec2(levelData.playerPos[0], levelData.playerPos[1]))

		if @keyUnlocked then @getPlayer().giveKey()
		
		@loadLevelCallback(id)
		# Add glass key
		if id == 1 and !@keyUnlocked
			gk = new ld.GlassKeyLoot()
			@registerEntity(gk)
			gk.onPlayerGetIt( =>
				@keyUnlocked = true
				@getPlayer().giveKey()
				@unregisterEntity(gk)
			)
	isKeyPressed: (key) ->
		return @keys[key]
	registerEntity: (entity) ->
		@entities[entity.id] = entity
		entity.onMustDespawn( =>
			@unregisterEntity(entity)
		)
		@entityCount++
		return entity
	unregisterEntity: (entity) ->
		delete @entities[entity.id]
	getPlayer: ->
		return @entities[@playerId]
	getEntitiesByClass: (c) ->
		result = []
		for id of @entities
			if 	c == 'PlayerKey' and @entities[id] instanceof ld.PlayerKey or
				c == 'Character' and @entities[id] instanceof ld.Character or
				c == 'Door' and @entities[id] instanceof ld.Door or
				c == 'Platform' and @entities[id] instanceof ld.Platform or
				c == 'Entity' 	and @entities[id] instanceof ld.Entity then result.push @entities[id]
		return result
	update: ->
		return unless @started
		if !@gameIsOver ################
			for data, i in @autospawn

				if !@lastAutospawns[i]
					@lastAutospawns[i] = 0


				if Date.now() - @lastAutospawns[i] > data[3] 
					@lastAutospawns[i] = Date.now()
					if data[0] == 'bomb'
						@addBomb(new Vec2(data[1], data[2]))
					else if data[0] == 'bowman'
						@addBowman(new Vec2(data[1], data[2]))

		if @gameIsOver and @canRestart and @isKeyPressed(KEY.SPACE)
			if +$('#gameover').css('opacity') != 1
				$('#gameover').stop().fadeTo(0, 1)
			else
				$('#gameover').hide()
				gameIsOver = false
				save = ld.getCheckpoint()
				@loadLevel(save[0], new Vec2(save[1], save[2]))
		@ctx.clearRect(0, 0, 800, 600)
		for eid of @entities
			entity = @entities[eid]
			if !entity
				console.log 'boum'
				break
			entity.draw(@ctx)
			entity.update(@)
		if @id == 11 and Math.random() < .05
			colors = ['yellow', 'orange', 'red', 'magenta', 'blue', 'cyan', 'lime']
			params = JSON.parse(JSON.stringify(PARTICLE_PARAMS.FIREWORKS))
			params.color = colors[Math.floor(Math.random() * colors.length)]
			ld.Particle.sendParticles(30, new Vec2(Math.random() * 800, Math.random() * 600), params)
		requestAnimFrame( => @update() )
	addPlayer: (pos) -> 
		player = new ld.Player(@entityCount, pos)
		return @registerEntity player
	addPlayerKey: (player) -> 
		playerKey = new ld.PlayerKey(@entityCount, player)
		return @registerEntity playerKey
	addBowman: (pos) ->
		bowman = new ld.Bowman(@entityCount, pos)
		return  @registerEntity bowman
	addBomb: (pos) ->
		bomb = new ld.Bomb(@entityCount, pos)
		return @registerEntity bomb
	addArrow: (pos) ->
		arrow = new ld.Arrow(@entityCount, pos)
		return @registerEntity arrow
	addCheckpoint: (pos) ->
		checkpoint = new ld.Checkpoint(@entityCount, pos)
		return @registerEntity checkpoint
	addDoor: (pos, destination) -> 
		door = new ld.Door(@entityCount, pos, destination)
		return @registerEntity door
	addPlatform: (pos, width) ->
		platform = new ld.Platform(@entityCount, pos, width)
		return @registerEntity platform
	addParticle: (pos, params) ->
		particle = new ld.Particle(@entityCount, pos, params)
		return @registerEntity particle
	onLoadLevel: (callback) ->
		@loadLevelCallback = callback

window.onload = ->
	ld.restoreSaveFromLocalStorage()
	gameCanvas = document.getElementById('entities')
	ld.game = new ld.Game(gameCanvas.getContext('2d'))
	ld.game.onLoadLevel( (id) =>
		#document.getElementById('game').style.background = '#555'
		document.getElementById('game').style.background = 'url(img/level' + id + '.png)'
	)
	ld.game.start();
	document.addEventListener 'keydown', (e) ->
		if ~[40, 38, 32].indexOf e.keyCode # Empêcher les touches haut/bas/space d'avoir leurs actions ordinaires
			e.preventDefault()
		ld.game.keys[e.keyCode] = true
	document.addEventListener 'keyup', (e) ->
		ld.game.keys[e.keyCode] = false
	muteButton = document.getElementById('mute')
	muteButton.addEventListener 'click', =>
		if ld.muted
			muteButton.style.background = 'url("img/loud.png")'
			createjs.Sound.setVolume(DEFAULT_VOLUME);
		else
			muteButton.style.background = 'url("img/quiet.png")'
			createjs.Sound.setVolume(0);
		ld.muted = !ld.muted
	$('#erase-save').click( =>
		return unless confirm 'Sure ?'
		ld.game.stop()
		ld.save = []
		localStorage.save = []
		window.location.reload()
	)
