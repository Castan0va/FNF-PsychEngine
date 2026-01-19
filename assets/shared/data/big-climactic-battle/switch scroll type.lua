function onStepHit()
    if curStep == 16 then
        if not downscroll then
            setProperty('healthBar.y', 20)
            setProperty('timeBar.y', 680)
            setProperty('timeTxt.y', 675)
            setProperty('scoreTxt.y', 100)
            setProperty('iconP1.y', -20)
            setProperty('iconP2.y', -20)
            makeLuaSprite('health', 'healthBar2', 333, -20)
            noteTweenY("NoteMove1", 0, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove2", 1, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove3", 2, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove4", 3, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove5", 4, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove6", 5, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove7", 6, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove8", 7, 570, 0.001, cubeInOut)
            doTweenAlpha('healthtween2', 'health', 1, 0.5, linear)
            addLuaSprite('health')
            setObjectCamera('health', 'hud')
            runHaxeCode('game.uiGroup.insert(game.uiGroup.members.indexOf(game.iconP1), game.getLuaObject("health"));')
            for i = 0, 7 do
                setProperty('strumLineNotes.members['..i..'].downScroll', true)
            end
            
            for i = 0, getProperty('unspawnNotes.length')-1 do
               if stringEndsWith(getProperty('unspawnNotes['..i..'].animation.name'), 'end') then setProperty('unspawnNotes['..i..'].flipY', true) end
            end
            
            for i = 0, getProperty('notes.length')-1 do
               if stringEndsWith(getProperty('notes.members['..i..'].animation.name'), 'end') then setProperty('notes.members['..i..'].flipY', true) end
            end
        end
        if downscroll then
            setProperty('healthBar.y', 585)
            setProperty('timeBar.y', 20)
            setProperty('timeTxt.y', 15)
            setProperty('scoreTxt.y', 670)
            setProperty('iconP1.y', 540)
            setProperty('iconP2.y', 540)
            makeLuaSprite('health', 'healthBar2', 333, 540)
            noteTweenY("NoteMove1", 0, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove2", 1, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove3", 2, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove4", 3, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove5", 4, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove6", 5, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove7", 6, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove8", 7, 50, 0.001, cubeInOut)
            doTweenAlpha('healthtween2', 'health', 1, 0.5, linear)
            addLuaSprite('health')
            setObjectCamera('health', 'hud')
            runHaxeCode('game.uiGroup.insert(game.uiGroup.members.indexOf(game.iconP1), game.getLuaObject("health"));')
            for i = 0, 7 do
                setProperty('strumLineNotes.members['..i..'].downScroll', false)
            end
            
            for i = 0, getProperty('unspawnNotes.length')-1 do
               if stringEndsWith(getProperty('unspawnNotes['..i..'].animation.name'), 'end') then setProperty('unspawnNotes['..i..'].flipY', false) end
            end
            
            for i = 0, getProperty('notes.length')-1 do
               if stringEndsWith(getProperty('notes.members['..i..'].animation.name'), 'end') then setProperty('notes.members['..i..'].flipY', false) end
            end
        end
    end
    if curStep == 32 then
        if downscroll then
            setProperty('healthBar.y', 20)
            setProperty('timeBar.y', 680)
            setProperty('timeTxt.y', 675)
            setProperty('scoreTxt.y', 100)
            setProperty('iconP1.y', -20)
            setProperty('iconP2.y', -20)
            makeLuaSprite('health', 'healthBar2', 333, -20)
            noteTweenY("NoteMove1", 0, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove2", 1, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove3", 2, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove4", 3, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove5", 4, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove6", 5, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove7", 6, 570, 0.001, cubeInOut)
            noteTweenY("NoteMove8", 7, 570, 0.001, cubeInOut)
            doTweenAlpha('healthtween2', 'health', 1, 0.5, linear)
            addLuaSprite('health')
            setObjectCamera('health', 'hud')
            runHaxeCode('game.uiGroup.insert(game.uiGroup.members.indexOf(game.iconP1), game.getLuaObject("health"));')
            for i = 0, 7 do
                setProperty('strumLineNotes.members['..i..'].downScroll', true)
            end
            
            for i = 0, getProperty('unspawnNotes.length')-1 do
               if stringEndsWith(getProperty('unspawnNotes['..i..'].animation.name'), 'end') then setProperty('unspawnNotes['..i..'].flipY', true) end
            end
            
            for i = 0, getProperty('notes.length')-1 do
               if stringEndsWith(getProperty('notes.members['..i..'].animation.name'), 'end') then setProperty('notes.members['..i..'].flipY', true) end
            end
        end
        if not downscroll then
            setProperty('healthBar.y', 585)
            setProperty('timeBar.y', 20)
            setProperty('timeTxt.y', 15)
            setProperty('scoreTxt.y', 670)
            setProperty('iconP1.y', 540)
            setProperty('iconP2.y', 540)
            makeLuaSprite('health', 'healthBar2', 333, 540)
            noteTweenY("NoteMove1", 0, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove2", 1, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove3", 2, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove4", 3, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove5", 4, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove6", 5, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove7", 6, 50, 0.001, cubeInOut)
            noteTweenY("NoteMove8", 7, 50, 0.001, cubeInOut)
            doTweenAlpha('healthtween2', 'health', 1, 0.5, linear)
            addLuaSprite('health')
            setObjectCamera('health', 'hud')
            runHaxeCode('game.uiGroup.insert(game.uiGroup.members.indexOf(game.iconP1), game.getLuaObject("health"));')
            for i = 0, 7 do
                setProperty('strumLineNotes.members['..i..'].downScroll', false)
            end
            
            for i = 0, getProperty('unspawnNotes.length')-1 do
               if stringEndsWith(getProperty('unspawnNotes['..i..'].animation.name'), 'end') then setProperty('unspawnNotes['..i..'].flipY', false) end
            end
            
            for i = 0, getProperty('notes.length')-1 do
               if stringEndsWith(getProperty('notes.members['..i..'].animation.name'), 'end') then setProperty('notes.members['..i..'].flipY', false) end
            end
        end
    end
end