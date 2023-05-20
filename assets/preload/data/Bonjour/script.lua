function onCreate()
	setProperty("camHUD.alpha", 0)
	setProperty("camNotes.alpha", 0)

	makeLuaSprite('bg', 'empty', 0, 0)
    makeGraphic('bg', 300, 100, '000000')
    setProperty('bg.scale.x', 100)
    setProperty('bg.scale.y', 100)
	setProperty('bg.alpha', 0)
	addLuaSprite('bg')

	makeLuaSprite('fade', 'empty', 0, 0)
    makeGraphic('fade', 300, 100, '000000')
    setProperty('fade.scale.x', 100)
    setProperty('fade.scale.y', 100)
	setProperty('fade.alpha', 0)
    setObjectOrder('fade', 100)
    addLuaSprite('fade', true)

	makeLuaSprite('flash', 'empty', 0, 0)
    makeGraphic('flash', 300, 100, 'FFFFFF')
    setProperty('flash.scale.x', 100)
    setProperty('flash.scale.y', 100)
	setProperty('flash.alpha', 0)
    setObjectOrder('flash', 101)
    addLuaSprite('flash', true)
end


function onBeatHit()
	if curBeat >= 14 then
		doTweenAlpha('back', 'camHUD', '1', '1', 'quadOut')
		doTweenAlpha('back2', 'camNotes', '1', '1', 'quadOut')
	end
end