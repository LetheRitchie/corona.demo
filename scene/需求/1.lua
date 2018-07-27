-- 1, 显示图片
-- 使用 corona 提供的 composer 来生成一个新页面
local composer = require('composer')
local scene = composer.newScene()

function scene:create()
    -- sceneGroup 是整个游戏显示的画面
    local sceneGroup = self.view
    -- 在 sceneGroup 中显示图片, 并限定坐标
	local t = display.newImageRect(sceneGroup, 'img/title.png', 500, 80)
	t.x = display.contentCenterX
	t.y = display.contentHeight - 100
end

-- 给 scene 绑定 creat 函数
scene:addEventListener('create', scene)

return scene
