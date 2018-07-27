local _main = function()
    print('main')
    -- 设置隐去状态栏
    display.setStatusBar(display.HiddenStatusBar)
    -- seed the random number generator
    math.randomseed(os.time())
    -- 跳转至菜单 scene
    -- 这是程序的入口, 决定跳转的页面
    local composer = require('composer')
    -- composer.gotoScene('scene.需求.1')
    -- composer.gotoScene('scene.需求.2')
    -- composer.gotoScene('scene.需求.3')
    -- composer.gotoScene('scene.需求.4')
    composer.gotoScene('scene.需求.5')
end

_main()
