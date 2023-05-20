function onStepHit()

    if curStep == 64 then
 setProperty('defaultCamZoom', 0.6); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);    
 
    elseif curStep == 320 then
 setProperty('defaultCamZoom', 0.4); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);    
 
    elseif curStep == 576 then
 setProperty('defaultCamZoom', 0.6); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);    
 
    elseif curStep == 832 then
 setProperty('defaultCamZoom', 0.4); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);    
 
    elseif curStep == 1088 then
 setProperty('defaultCamZoom', 0.6); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);  
 
    elseif curStep == 1344 then
 setProperty('defaultCamZoom', 0.4); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);  
 
    elseif curStep == 1600 then
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);  
 
    elseif curStep == 1856 then
 setProperty('defaultCamZoom', 0.6); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);  
 
    elseif curStep == 2112 then
 setProperty('defaultCamZoom', 0.4); 
     setProperty('whitescreen.alpha',1)
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);  
 
 
 end
 end
 
 function onCreate()
 
     makeLuaSprite('blackscreen', 'blackscreen', -300, -300);
     makeGraphic('blackscreen', 4000, 4000, 0xFFFFFF)
     setProperty('blackscreen.color', '000000')
     scaleObject('blackscreen', 6, 6);
     addLuaSprite('blackscreen', true);
     setProperty('blackscreen.alpha',0)
 
     makeLuaSprite('whitescreen', 'whitescreen', -300, -300);
     makeGraphic('whitescreen', 4000, 4000, 0xFFFFFF)
     scaleObject('whitescreen', 6, 6);
     addLuaSprite('whitescreen', true);
     setProperty('whitescreen.alpha',0)
 end