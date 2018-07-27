-- 4, 播放动画
-- 使用 corona 提供的 composer 来生成一个新页面
local composer = require('composer')
local scene = composer.newScene()


function loadConfig()
    -- 图片的配置文件
    local sheetOptions = {
        width = 512,
        height = 256,
        numFrames = 8
    }
    local sheet_runningCat = graphics.newImageSheet('img/sprites-cat-running.png', sheetOptions)
    return sheet_runningCat
end


function scene:create()
    -- sceneGroup 是整个游戏显示的画面
    local sceneGroup = self.view
    -- sequences_runningCat 是跑动时的动作效果
	local sequences_runningCat = {
	    {
	        name = 'normalRun',
	        start = 1,
	        count = 8,
	        time = 800,
	        loopCount = 0,
	    },
	}
    -- 根据配置文件生成的图片对象
    local sheet_runningCat = loadConfig()
    -- 根据图片对象和跑动效果生成动画对象
	local runningCat = display.newSprite(sheet_runningCat, sequences_runningCat)
    -- 使动画对象播放
	runningCat:play()
end

-- 给 scene 绑定 creat 函数
scene:addEventListener('create', scene)

return scene
