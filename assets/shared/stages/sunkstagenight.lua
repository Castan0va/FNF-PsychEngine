function onCreate()
	makeLuaSprite('sky', 'stages/sunky/skynight' ,-600,-300) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('buildings1', 'stages/sunky/buildings1night' ,-600,-200)
	makeLuaSprite('buildings2', 'stages/sunky/buildings2night' ,-600,-200)
	makeLuaSprite('ground', 'stages/sunky/groundnight',-600,-200)
	makeLuaSprite('lightss', 'stages/sunky/lights' ,-600,-200)
	makeLuaSprite('overheadlights', 'stages/sunky/lightfrontnight' ,-600,-200)
 
    setScrollFactor('sky',1,1)
    setScrollFactor('buildings1',1.3,1.15)
    setScrollFactor('buildings2',1.2,1.1)
	setScrollFactor('ground',1,1)
	setScrollFactor('lightss',1.05,1.05)
	setScrollFactor('overheadlights',1.05,1.05) -- 1 means no scroll

	setGraphicSize('sky',2800,1500)
	setGraphicSize('lightss',2400,1350)
	setGraphicSize('overheadlights',2400,1350)
	setGraphicSize('buildings1',2400,1350)
	setGraphicSize('buildings2',2400,1350)
	setGraphicSize('ground',2400,1350)

	addLuaSprite('sky', false) --false means behind player, true means in front
	addLuaSprite('buildings1', false)
	addLuaSprite('buildings2', false)
	addLuaSprite('ground', false)
	addLuaSprite('lightss', false) 
	addLuaSprite('overheadlights', false) 

end