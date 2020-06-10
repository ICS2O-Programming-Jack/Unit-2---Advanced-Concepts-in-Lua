-----------------------------------------------------------------------------------------
--
-- level1_screen.lua
-- Created by: Your Name
-- Date: Month Day, Year
-- Description: This is the level 1 screen of the game.
-----------------------------------------------------------------------------------------
--Music
local Music1 = audio.loadSound("Sounds/Music1.mp3")
local Music1Channel

local Music2 = audio.loadSound("Sounds/Music2.mp3")
local Music2Channel

local Music3 = audio.loadSound("Sounds/Music3.mp3")
local Music3Channel


randomOperator = math.random(1, 3)
    
    if (randomOperator == 1) then
     Music1Channel = audio.play(Music1)
    elseif (randomOperator == 2) then 
     Music1Channel = audio.play(Music2)
    elseif (randomOperator == 3) then
     Music1Channel = audio.play(Music3)
    end

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level1_screen"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )
-----------------------------------------------------------------------------------------
--Functions
-----------------------------------------------------------------------------------------
local function AddPhysicsBodies()
    physics.addBody(Ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
    physics.addBody(Ball2, {density=1.0, friction=0.5, bounce=0.3, radius=25})
    physics.addBody(Ball3, {density=1.0, friction=0.5, bounce=0.3, radius=25})
    physics.addBody(ground,"static", {density=1.0, friction=0.5, bounce=0.3, radius=25})
end





-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

-- The local variables for this scene
local bkg_image
local physics = require("physics")
-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    ------------------------------------------------------------------------------------------
    --Images
    

    ground = display.newImage("Images/floor.png", 50, 50)
    ground.x = display.contentWidth/2
    ground.y = 740
    ground.width = display.contentWidth

    Ball1 = display.newImageRect("Images/Ball3.png", 50, 50)
    Ball2 = display.newImageRect("Images/Ball2.png", 50, 50)
    Ball3 = display.newImageRect("Images/Ball3.png", 50, 50)
    
    Ball1.x = 200
    Ball1.y = 150

    Ball2.x = 250
    Ball2.y = 150

    Ball3.x = 300
    Ball3.y = 100

    -----------------------------------------------------------------------------------------

    -- Insert the background image
    bkg_image = display.newImageRect("Images/level1_screen.png", display.contentWidth, display.contentHeight)
    bkg_image.x = display.contentCenterX
    bkg_image.y = display.contentCenterY
    bkg_image.width = display.contentWidth
    bkg_image.height = display.contentHeight

    -- Send the background image to the back layer so all other objects can be on top
    bkg_image:toBack()

        -- Insert background image into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( bkg_image )    

end --function scene:create( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
   physics.start()
        -- Called when the scene is still off screen (but is about to come on screen).
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then

     AddPhysicsBodies()
    
    







        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
       timer.performWithDelay( 0, firstBall)
       timer.performWithDelay( 0, Floor)
    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
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
