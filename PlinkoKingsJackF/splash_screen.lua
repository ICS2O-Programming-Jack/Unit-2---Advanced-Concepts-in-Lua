-----------------------------------------------------------------------------------------
--
-- splash_screen.lua
-- Created by: Jack F
-- Date: Month Day, Year
-- Description: This is the splash screen of the game. It displays the 
-- company logo that...
-----------------------------------------------------------------------------------------

-- Use Composer Library
local composer = require( "composer" )

-- Name the Scene
sceneName = "splash_screen"

-----------------------------------------------------------------------------------------

-- Create Scene Object
local scene = composer.newScene( sceneName )

----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
 
-- The local variables for this scene
local Logo
local scrollXSpeed = 8
local scrollYSpeed = -3
local introSounds = audio.loadSound("Sounds/SplashScreenSong.mp3")
local introSoundsChannel

--------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------
local function movePortal()
portal.y = portal.y + 1
end
local function moveBlimp()
  Blimp.x = Blimp.x + 4 
  blimpEffect.x = blimpEffect.x + 4 
end
local function moveBlimpUp()
Blimp.y = Blimp.y + -4
end
function moveBlimpDown()
blimpEffect.y = blimpEffect.y + 4
end

-- The function that moves the beetleship across the screen
local function moveLogo()
    Logo.y = Logo.y + 3
end
-- The function that will go to the main menu 
local function gotoMainMenu()
    composer.gotoScene( "main_menu" )
end
-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -- set the background to be black
    display.setDefault("background", 0, 0, 0)
    blimpEffect = display.newImageRect("Images/Blimp.png", 300, 220)
    Blimp = display.newImageRect("Images/Blimp.png", 300, 220)
    Logo = display.newImageRect("Images/Logo1.tif", 200, 200)
    rick = display.newImageRect("Images/Rick.png", 200, 400)
    portal = display.newImageRect("Images/Portal.png", 200, 110)
    LogoMain = display.newImageRect("Images/LogoZ.tif", 500, 500)
    display.setDefault("background", 0/255, 111/255, 144/255)
    -- set the initial x and y position of the beetleship
    Logo:toBack()
    Logo.x = 160
    Logo.y = -190
    blimpEffect.x = -110
    blimpEffect.y = -550
    rick.y = 600
    rick.x = 100
    portal.x = 160
    portal.y = -100
    LogoMain.x = display.contentWidth/2
    LogoMain.y = display.contentHeight/2
    Blimp.x = -110
    Blimp.y = display.contentHeight/2
    -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Logo )
    sceneGroup:insert( Blimp )
    sceneGroup:insert( blimpEffect )
    sceneGroup:insert( LogoMain )
    sceneGroup:insert( rick )
    sceneGroup:insert( portal )
end -- function scene:create( event )

--------------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is still off screen (but is about to come on screen).
    if ( phase == "will" ) then
       
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- start the splash screen music
        introSoundsChannel = audio.play(introSounds )

        -- Call the moveBeetleship function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveLogo)
        Runtime:addEventListener("enterFrame", moveBlimp)
        Runtime:addEventListener("enterFrame", moveBlimpUp )
        Runtime:addEventListener("enterFrame", moveBlimpDown)
        Runtime:addEventListener("enterFrame", movePortal)
        -- Go to the main menu screen after the given time.
        timer.performWithDelay ( 6000, gotoMainMenu)       
       
        
    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is on screen (but is about to go off screen).
    -- Insert code here to "pause" the scene.
    -- Example: stop timers, stop animation, stop audio, etc.
    if ( phase == "will" ) then  

    -----------------------------------------------------------------------------------------

    -- Called immediately after scene goes off screen.
    elseif ( phase == "did" ) then
        
        -- stop the jungle sounds channel for this screen
        audio.stop(introSoundsChannel)
    end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------


    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end -- function scene:destroy( event )

-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
