function onCreate()
	makeLuaSprite('sky', 'stages/legacy/legskynight' ,-650,-250) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('buildings1', 'stages/legacy/legbuildings1night' ,-600,-150)
	makeLuaSprite('buildings2', 'stages/legacy/legbuildings2night' ,-550,-50)
	makeLuaSprite('ground', 'stages/legacy/leggroundnight2' ,-500,-30)
	makeLuaSprite('ground2', 'stages/legacy/leggroundnight' ,-500,-30)

    setScrollFactor('sky',1,1)
    setScrollFactor('buildings1',1.4,1.4)
    setScrollFactor('buildings2',1.2,1.2)
	setScrollFactor('ground',1,1) -- 1 means no scroll
	setScrollFactor('ground2',1,1)

	setGraphicSize('sky',2800,1522.5)
	setGraphicSize('buildings1',2400,1312.5)
	setGraphicSize('buildings2',2400,1312.5)
	setGraphicSize('ground',2400,1312.5)
	setGraphicSize('ground2',2400,1312.5)

	addLuaSprite('sky', false) --false means behind player, true means in front
	addLuaSprite('buildings1', false)
	addLuaSprite('buildings2', false)
	addLuaSprite('ground', false)
	addLuaSprite('ground2', false)

	doTweenAlpha('groundbye', 'ground2', 0, 0.01, linear)
end

function onStepHit()
	if curStep == 256 then
		doTweenAlpha('groundhi', 'ground2', 1, 0.01, linear)
	end
end