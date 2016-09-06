//
//  ViewController.m
//  TestingOpenCV
//
//  Created by Calvin Dong on 8/16/16.
//  Copyright © 2016 Calvin Dong. All rights reserved.
//

#import "ViewController.h"
#import "UIKit/UIKit.h"
#import "WebKit/WebKit.h"


@implementation ViewController
#pragma mark - UI Actions


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGFloat width = CGRectGetWidth(screen);
    //Bonus height.
    CGFloat height = CGRectGetHeight(screen);
    CGRect  viewRect = CGRectMake(0, 0, width, height);
    
    
    CGRect half = CGRectMake(0, 0, width , height);
        WKWebView *asdf = [[WKWebView alloc] initWithFrame: half];
        NSURL *url = [NSURL URLWithString:@"https://twgljs.org/examples/twgl-cube.html"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [asdf loadRequest:request];
         asdf.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    
    asdf.backgroundColor = [UIColor clearColor];
    asdf.scrollView.backgroundColor = [UIColor clearColor];
    [asdf setOpaque:false];
    
    self.imageView = [[CVCameraView alloc] initWithFrame:viewRect];
    
    
    [self.view addSubview:(_imageView)];
    [self.view addSubview:(asdf)];
    BOOL loaded = 1;
    NSLog(@"Bool value: %d",loaded);
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    BOOL loaded = 0;
    NSLog(@"Bool value: %d",loaded);
    [super viewDidAppear:animated];
        
    
}

- (void)processImage:(Mat&)cvMat;
{
    Mat image_copy;
    cvtColor(cvMat, image_copy, CV_BGRA2BGR);
    
    // invert image
    bitwise_not(image_copy, image_copy);
    cvtColor(image_copy, cvMat, CV_BGR2BGRA);
}

@end
