function onStepHit()
	if shadersEnabled == true then
	if curStep == 256 then
	luaDebugMode = true

	initLuaShader("bloom")
	makeLuaSprite("bloom")
	makeGraphic("bloom", screenWidth, screenHeight)
	setSpriteShader("bloom", "bloom")

	addHaxeLibrary("ShaderFilter", "openfl.filters")
	runHaxeCode([[
		game.camGame.setFilters([new ShaderFilter(game.getLuaObject("bloom").shader)/*, new ShaderFilter(game.getLuaObject("radialblur").shader)*/]);
		game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("bloom").shader)]);
	]])
end
end
end