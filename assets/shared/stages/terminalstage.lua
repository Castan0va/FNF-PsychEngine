function onCreate()
	makeLuaSprite('clouds', 'stages/terminal/clouds' ,-550,-150)
	makeLuaSprite('shrub', 'stages/terminal/shrub' ,-560,-120)
	makeLuaSprite('ground', 'stages/terminal/grass' ,-550,-150)
	makeLuaSprite('holes', 'stages/terminal/holes' ,-550,-120)
	makeLuaSprite('trees', 'stages/terminal/trees' ,-550,-110)
	makeLuaSprite('sky', 'stages/terminal/sky' ,-550,-150)
	makeLuaSprite('ocean', 'stages/terminal/ocean' ,-550,-120)

	setScrollFactor('clouds',1.2,1.2)
    setScrollFactor('shrub',1.1,1.1) -- 1 means no scroll
	setScrollFactor('trees',1.15,1)

	setGraphicSize('sky',2400,1312.5)
	setGraphicSize('ocean',2400,1312.5)
	setGraphicSize('trees',2400,1312.5)
	setGraphicSize('shrub',2400,1312.5)
	setGraphicSize('ground',2400,1312.5)
	setGraphicSize('holes',2400,1312.5)
	setGraphicSize('clouds',2400,1312.5)

	addLuaSprite('sky', false) 
	addLuaSprite('ocean', false) 
	addLuaSprite('trees', false)
	addLuaSprite('shrub', false)
	addLuaSprite('ground', false)
	addLuaSprite('holes', false)
	addLuaSprite('clouds', true)
end