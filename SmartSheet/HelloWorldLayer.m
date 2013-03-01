//
//  HelloWorldLayer.m
//  SmartSheet
//
//  Created by tianTian on 3/1/13.
//  Copyright leshu-2 2013. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"




#pragma mark - HelloWorldLayer

// HelloWorldLayer implementation
@implementation HelloWorldLayer

@synthesize animationManager;

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self = [super initWithColor:ccc4(255, 255, 255, 255)]) ) {
    //if( (self = [super init]) ) {
        CCBReader *reader = [CCBReader reader];
                
		CCNode* myNode = [reader nodeGraphFromFile:@"10310002.ccbi"];
        
        CGSize winSize = [(CCDirectorIOS*) [CCDirector sharedDirector] winSize];
        [myNode setPosition:ccp(winSize.width/2, winSize.height/2)];
		[self addChild:myNode z:1000];

        
        self.animationManager = reader.actionManager;
        self.animationManager.delegate = self;
        

        
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

#pragma mark - CCBAnimationManager delegate
- (void) completedAnimationSequenceNamed:(NSString*)name
{
    CCLOG(@"%s", name.cString );
}

#pragma mark GameKit delegate

-(void) achievementViewControllerDidFinish:(GKAchievementViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}

-(void) leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}
@end
