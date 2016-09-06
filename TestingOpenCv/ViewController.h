//
//  ViewController.h
//  TestingOpenCV
//
//  Created by Calvin Dong on 8/17/16.
//  Copyright © 2016 Calvin Dong. All rights reserved.
//
//
//  ViewController.h
//  TestingOpenCV
//
//  Created by Calvin Dong on 8/16/16.
//  Copyright © 2016 Calvin Dong. All rights reserved.
//

#import <Availability.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#undef NO

#import <opencv2/opencv.hpp>
#import <opencv2/videoio/cap_ios.h>
#import "CVCameraView.h"

using namespace cv;
@interface ViewController : UIViewController
{
    
    
}



@property (strong, nonatomic) IBOutlet CVCameraView* imageView;

@end
