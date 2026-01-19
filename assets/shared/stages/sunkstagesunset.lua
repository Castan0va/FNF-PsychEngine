function onCreate()
	makeLuaSprite('sky2', 'stages/sunky/skysunset' ,-600,-300) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('buildings12', 'stages/sunky/buildings1sunset' ,-600,-200)
	makeLuaSprite('buildings22', 'stages/sunky/buildings2sunset' ,-600,-200)
	makeLuaSprite('ground2', 'stages/sunky/groundsunset',-600,-200)
	makeLuaSprite('light2', 'stages/sunky/lights' ,-600,-200)
	makeLuaSprite('overheadlights2', 'stages/sunky/lightfrontsunset' ,-600,-200)
 
    setScrollFactor('sky2',1,1)
    setScrollFactor('buildings12',1.3,1.3)
    setScrollFactor('buildings22',1.2,1.2)
	setScrollFactor('ground2',1,1)
	setScrollFactor('light2',1.05,1.05)
	setScrollFactor('overheadlights2',1.05,1.05) -- 1 means no scroll

	setGraphicSize('sky2',2800,1500) 
	setGraphicSize('light2',2400,1350)
	setGraphicSize('overheadlights2',2400,1350)
	setGraphicSize('buildings12',2400,1350)
	setGraphicSize('buildings22',2400,1350)
	setGraphicSize('ground2',2400,1350)

	makeLuaSprite('sky', 'stages/sunky/skynight' ,-600,-300) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('buildings1', 'stages/sunky/buildings1night' ,-600,-200)
	makeLuaSprite('buildings2', 'stages/sunky/buildings2night' ,-600,-200)
	makeLuaSprite('ground', 'stages/sunky/groundnight',-600,-200)
	makeLuaSprite('lights', 'stages/sunky/lights' ,-600,-200)
	makeLuaSprite('overheadlights', 'stages/sunky/lightfrontnight' ,-600,-200)
 
    setScrollFactor('sky',1,1)
    setScrollFactor('buildings1',1.3,1.3)
    setScrollFactor('buildings2',1.2,1.2)
	setScrollFactor('ground',1,1) -- 1 means no scroll

	setGraphicSize('sky',2800,1500)
	setGraphicSize('buildings1',2400,1350)
	setGraphicSize('buildings2',2400,1350)
	setGraphicSize('ground',2400,1350)

	addLuaSprite('sky2', false)--false means behind player, true means in front
	addLuaSprite('sky', false)
	addLuaSprite('buildings12', false)
	addLuaSprite('buildings1', false)
	addLuaSprite('buildings22', false)
	addLuaSprite('buildings2', false)
	addLuaSprite('ground2', false)
	addLuaSprite('ground', false)
	addLuaSprite('light2', false) 
	addLuaSprite('overheadlights2', false) 

	setProperty('sky.alpha', 0)
	setProperty('buildings1.alpha', 0)
	setProperty('buildings2.alpha', 0)
	setProperty('ground.alpha', 0)
	setProperty('light2.alpha', 0)

end

function onBeatHit()
	if curBeat == 144 then
		doTweenAlpha('fadeinNight1', 'sky', 1, 58, 'linear')
		doTweenAlpha('fadeinNight2', 'buildings1', 1, 58, 'linear')
		doTweenAlpha('fadeinNight3', 'buildings2', 1, 58, 'linear')
		doTweenAlpha('fadeinNight4', 'ground', 1, 58, 'linear')
		doTweenAlpha('fadeinNight5', 'light2', 1, 58, 'linear')
	end
end