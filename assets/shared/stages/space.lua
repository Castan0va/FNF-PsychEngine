function onCreate()
	makeLuaSprite('space', 'stages/sunky/earth' ,-1150,-850) -- the 2 ending numbers are x,y coordinates

	setScrollFactor('space',1,1)

	setGraphicSize('space',7680,4320)

	addLuaSprite('space', false) --false means behind player, true means in front

	doTweenX('movespace', 'earth', -5000, 72, linear)

end