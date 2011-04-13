//
//  PDF_TESTViewController.m
//  PDF_TEST
//
//  Created by hooshuu on 2011/4/13.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "PDF_TESTViewController.h"

@implementation PDF_TESTViewController
@synthesize webView, pdfUrl;

#pragma mark -
#pragma mark UIViewController methods

- (void)dealloc
{
    [webView release];
    [pdfUrl release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Tells the webView to load pdfUrl
	[webView loadRequest:[NSURLRequest requestWithURL:pdfUrl]];
    // Create an instance of PDFViewController
    PDF_TESTViewController *controller = [[PDF_TESTViewController alloc] initWithNibName:@"PDFView" bundle:nil];
    // Get the path to our documents directory
    NSArray *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    // This should be our documents directory
    NSString *saveDirectory = [documentPath objectAtIndex:0];
    // Our PDF is named 'Example.pdf'
    NSString *saveFileName = @"Example.pdf";
    // Create the full path using our saveDirectory and saveFileName
    NSString *finalPath = [saveDirectory stringByAppendingPathComponent:saveFileName];
    // Set the pdfUrl to our finalPath
    controller.pdfUrl = [NSURL fileURLWithPath:finalPath];
    // Push 'controller'
    [self.navigationController pushViewController:controller animated:YES];
    // Release 'controller'
    [controller release];
    
}

- (void)viewDidUnload
{
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
