//
//  HelloWorldLayer.h
//  SmartSheet
//
//  Created by tianTian on 3/1/13.
//  Copyright leshu-2 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "CCBReader.h"
#import "CCBAnimationManager.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayerColor <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate, CCBAnimationManagerDelegate>
{
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

- (void) completedAnimationSequenceNamed:(NSString*)name;

@property(nonatomic, retain) CCBAnimationManager *animationManager;

@end
