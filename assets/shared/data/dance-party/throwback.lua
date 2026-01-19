function onCreatePost()
	if shadersEnabled == true then
	initLuaShader("throwback")
	makeLuaSprite("throwback")
	makeGraphic("throwback", screenWidth, screenHeight)
	setSpriteShader("throwback", "throwback")

	addHaxeLibrary("ShaderFilter", "openfl.filters")
	runHaxeCode([[
		game.camGame.setFilters([new ShaderFilter(game.getLuaObject("throwback").shader)/*, new ShaderFilter(game.getLuaObject("throwback").shader)*/]);
		game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("throwback").shader)]);
	]])
	end
end

function onUpdate(elapsed)
	if shadersEnabled == true then
    setShaderFloat("throwback", "iTime", os.clock())
	end
end