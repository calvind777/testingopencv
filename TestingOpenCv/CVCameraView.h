//
//  CVCameraView.h
//  TestingOpenCV
//
//  Created by Calvin Dong on 8/18/16.
//  Copyright © 2016 Calvin Dong. All rights reserved.
//

#ifndef CVCameraView_h
#define CVCameraView_h



#endif /* CVCameraView_h */
#import <Availability.h>
#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#undef NO
#import <opencv2/opencv.hpp>
#import <opencv2/videoio/cap_ios.h>


using namespace cv;
@interface CVCameraView : UIImageView<CvVideoCameraDelegate>
{
        
}

- (IBAction)actionStart:(id)sender;
@property (nonatomic, retain) CvVideoCamera* videoCamera;
@property (strong, nonatomic) IBOutlet UIImageView* imageView;

@end
