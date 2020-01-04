Object = require "lib/classic-master/classic"

local Test = Object:extend()


	Test.img = love.graphics.newImage("cursour.png")
	Test.img2 = love.graphics.newImage("ngon.png")
	Test.imgnill = Test.img
	Test.values1 = 10
	
	function Test:tf()
		
		print("trace Test _function")
	end

		
	function Test:update()
		Test.YposMouse = love.mouse.getY()
		Test.XposMouse = love.mouse.getX()
		print('trace Test:update')


		if love.mouse.isDown(1) then
			Test.imgnill = Test.img2
		end
		if love.mouse.isDown(3) then
			drw = 1
		end
	end
	
	
	function Test:draw()
		if drw == 1 then 
			love.graphics.draw(Test.imgnill, Test.XposMouse, Test.YposMouse)
		end
	end

return Test
