function onCreate()
	makeLuaSprite('sky', 'stages/sunky/skyday' ,-600,-300) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('buildings1', 'stages/sunky/buildings1day' ,-600,-200)
	makeLuaSprite('buildings2', 'stages/sunky/buildings2day' ,-600,-200)
	makeLuaSprite('ground', 'stages/sunky/groundday',-600,-200)
	makeLuaSprite('clouds', 'stages/sunky/cloudsday' ,-600,-300)
	makeLuaSprite('light', 'stages/sunky/lights' ,-600,-200)
	makeLuaSprite('overheadlights', 'stages/sunky/lightfrontday' ,-600,-200)
 
    setScrollFactor('sky',1,1)
	setScrollFactor('clouds',1.35,1.35)
    setScrollFactor('buildings1',1.3,1.3)
    setScrollFactor('buildings2',1.2,1.2)
	setScrollFactor('ground',1,1)
	setScrollFactor('light',1.05,1.05)
	setScrollFactor('overheadlights',1.05,1.05) -- 1 means no scroll

	setGraphicSize('sky',2800,1500)
	setGraphicSize('clouds',2800,1500)
	setGraphicSize('light',2400,1350)
	setGraphicSize('overheadlights',2400,1350)
	setGraphicSize('buildings1',2400,1350)
	setGraphicSize('buildings2',2400,1350)
	setGraphicSize('ground',2400,1350)

	makeLuaSprite('sky2', 'stages/sunky/skysunset' ,-600,-300) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('buildings12', 'stages/sunky/buildings1sunset' ,-600,-200)
	makeLuaSprite('buildings22', 'stages/sunky/buildings2sunset' ,-600,-200)
	makeLuaSprite('ground2', 'stages/sunky/groundsunset',-600,-200)
 
    setScrollFactor('sky2',1,1)
    setScrollFactor('buildings12',1.3,1.3)
    setScrollFactor('buildings22',1.2,1.2)
	setScrollFactor('ground2',1,1)

	setGraphicSize('sky2',2800,1500) 
	setGraphicSize('buildings12',2400,1350)
	setGraphicSize('buildings22',2400,1350)
	setGraphicSize('ground2',2400,1350)

	addLuaSprite('sky', false)	--false means behind player, true means in front
	addLuaSprite('sky2', false)
	addLuaSprite('clouds', false)  
	addLuaSprite('buildings1', false)
	addLuaSprite('buildings12', false)
	addLuaSprite('buildings2', false)
	addLuaSprite('buildings22', false)
	addLuaSprite('ground', false)
	addLuaSprite('ground2', false)
	addLuaSprite('overheadlights', false) 
	
	setProperty('sky2.alpha', 0)
	setProperty('buildings12.alpha', 0)
	setProperty('buildings22.alpha', 0)
	setProperty('ground2.alpha', 0)
	
end

function onBeatHit()
	if curBeat == 136 then
		doTweenAlpha('fadeinSunset1', 'sky2', 1, 64, 'linear')
		doTweenAlpha('fadeinSunset2', 'buildings12', 1, 64, 'linear')
		doTweenAlpha('fadeinSunset3', 'buildings22', 1, 64, 'linear')
		doTweenAlpha('fadeinSunset4', 'ground2', 1, 64, 'linear')
		doTweenAlpha('fadeinSunset5', 'clouds', 0, 64, 'linear')
	end
end