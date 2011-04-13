//
//  PDF_TESTAppDelegate.h
//  PDF_TEST
//
//  Created by hooshuu on 2011/4/13.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PDF_TESTViewController;

@interface PDF_TESTAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PDF_TESTViewController *viewController;

@end
