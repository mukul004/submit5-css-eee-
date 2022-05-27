Paddle = Class{}
function Paddle:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dy = 0
end
function Paddle:update(dt)
    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy *dt)
    else
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy*dt)
    end
       
end
function Paddle:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
    
end
--[[Error

paddle.lua:1: attempt to call global 'class' (a nil value)


Traceback

[love "callbacks.lua"]:228: in function 'handler'
paddle.lua:1: in main chunk
[C]: in function 'require'
main.lua:2: in main chunk
[C]: in function 'require'
[C]: in function 'xpcall'
[C]: in function 'xpcall']]