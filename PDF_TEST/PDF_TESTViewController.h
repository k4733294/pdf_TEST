//
//  PDF_TESTViewController.h
//  PDF_TEST
//
//  Created by hooshuu on 2011/4/13.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PDF_TESTViewController : UIViewController {
    UIWebView *webView;
    NSURL *pdfUrl;
    
    
}
@property (nonatomic, retain) IBOutlet UIWebView	*webView;
@property (nonatomic, retain) NSURL			*pdfUrl;

@end
