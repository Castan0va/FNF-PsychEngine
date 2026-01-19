function onCreate()
	makeLuaSprite('sky', 'stages/legacy/legskyday' ,-650,-250) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('buildings1', 'stages/legacy/legbuildings1day' ,-600,-150)
	makeLuaSprite('buildings2', 'stages/legacy/legbuildings2day' ,-550,-50)
	makeLuaSprite('ground', 'stages/legacy/leggroundday' ,-500,-30)

    setScrollFactor('sky',1,1)
    setScrollFactor('buildings1',1.4,1.4)
    setScrollFactor('buildings2',1.2,1.2)
	setScrollFactor('ground',1,1) -- 1 means no scroll

	setGraphicSize('sky',2800,1522.5)
	setGraphicSize('buildings1',2400,1312.5)
	setGraphicSize('buildings2',2400,1312.5)
	setGraphicSize('ground',2400,1312.5)

	addLuaSprite('sky', false) --false means behind player, true means in front
	addLuaSprite('buildings1', false)
	addLuaSprite('buildings2', false)
	addLuaSprite('ground', false)
end