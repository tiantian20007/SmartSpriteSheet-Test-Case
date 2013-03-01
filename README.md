SmartSpriteSheet-Test-Case
==========================

Cocosbuilder Smart Sprite Sheet Test Case

Use Cocosbuilder 3.0 alpha 2 to open /SmartSheet/TestSmartSheet/sm.ccbproj

Play the default timeline, you will see the perect animation.

Then open the xcode project and run it, you will see some frames blur out.

I think the problem is the texture packing cross, the plist is not rendered correctly: The animation is good when I packed those same texture frames using Zwoptex. 
Tested on iOS 6.1.
And I also test it in cocos2d-x, the result is the same.
