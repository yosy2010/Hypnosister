//
//  AppDelegate.m
//  Hypnosister
//
//  Created by YASSER ALTAMIMI on 18/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisVuew.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // create the main window and make it the rootView
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIViewController *controller = [[UIViewController alloc] init];
    self.window.rootViewController = controller;
    
    // set the background of the window
    self.window.backgroundColor = [UIColor whiteColor];
    
    // get the screen bounds
    // we call the CGRectMake this way because its a struct of the C language, so we call the method like we would in C
    CGRect screenFrame = self.window.bounds;
    
    // create a frame size for the scroll view that can fit two hypnosis views,
    // then change the content size of the scrollView to the size of the 2 hyppnosis views
    // sizes
    CGRect bigFrame = screenFrame;
    bigFrame.size.width *=2.0;
    
    // create a UIScrollView that is as big as the window and enable paging on it so that we can
    // view one of the pages only and not stop between the two of them
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenFrame];
    scrollView.pagingEnabled = YES;
    
    // now add it to the super view
    [controller.view addSubview:scrollView];
    
    // create 2 hypnosis view and add them as a subview of the scrollView
    BNRHypnosisVuew *hyponsisView = [[BNRHypnosisVuew alloc]initWithFrame:screenFrame];
    [scrollView addSubview:hyponsisView];
    
    // in the second one we should change the x origen to the left so it can be placed beside it
    screenFrame.origin.x += screenFrame.size.width;
    BNRHypnosisVuew *secondView = [[BNRHypnosisVuew alloc] initWithFrame:screenFrame];
    [scrollView addSubview:secondView];
    
    // set the content size of the scroll view
    scrollView.contentSize = bigFrame.size;
    
    // draw it to the screen
    [self.window makeKeyAndVisible];
    
    // return yes
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
