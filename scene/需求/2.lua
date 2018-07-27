-- 2, 左右移动
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
    -- 在程序运行期间绑定 key 以捕捉回调事件
	Runtime:addEventListener('key', function(event)
        -- 在敲击按键之后根据按键类型来修改 x 坐标
		if (event.keyName == 'left') then
			t.x = t.x - 10
		elseif (event.keyName == 'right') then
			t.x = t.x + 10
		end
	end)
end

-- 给 scene 绑定 creat 函数
scene:addEventListener('create', scene)

return scene
