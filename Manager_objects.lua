Object = require "lib/classic-master/classic"
Test = require "TClassCursour"
level = require "Test_level"
Unit = require "Unit"


--dofile(AnAl.lua)
--playr = playr
dofile("AnAL.lua")
	manager_objects = Object:extend()
		 
		local Test = Test()
        local level = level()
        
        Unit = Unit()
--
		function manager_objects:load()
			
			level:load()
			Unit:load()
		end 
		
		
		function manager_objects:update(dt)
			Unit:update(dt)
		end
		

		
		function manager_objects:draw()
		--render backgroun, interactiv, mobs
			level:draw()
			Unit:draw()
		end
		
return manager_objects
