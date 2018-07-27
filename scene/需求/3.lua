-- 3, 场景切换
-- 使用 corona 提供的 composer 来生成一个新页面
local composer = require('composer')
local scene = composer.newScene()

function scene:create()
    -- sceneGroup 是整个游戏显示的画面
	local sceneGroup = self.view
    -- 设置文字的相关信息(内容, 坐标, 字体, 字号)
    local text = '点击跳转到需求 4'
    local x = display.contentCenterX
    local y = 700
    local font = native.systemFont
    local fontsize = self.fontsize
    -- 在 sceneGroup 中生成一个按钮
    local change = display.newText(sceneGroup, text, x, y, font, fontsize)
    -- 在按钮被点击时跳转场景
	change:addEventListener('tap', function()
        composer.gotoScene('scene.需求.2')
    end)

end

-- 给 scene 绑定 creat 函数
scene:addEventListener('create', scene)

return scene
