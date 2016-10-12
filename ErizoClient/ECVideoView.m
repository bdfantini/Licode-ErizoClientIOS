//
//  ECVideoView.m
//  ErizoClientIOS
//
//  Created by Benjamin Fantini on 12-10-16.
//
//

#import "ECVideoView.h"

#import "RTCI420Frame.h"

@implementation ECVideoView

// The frame to be displayed.
- (void)renderFrame:(RTCI420Frame*)frame {
    [super renderFrame:frame];
    
    // Set the video's aspect ratio
    self.aspectRatio = (CGFloat)frame.width / (CGFloat)frame.height;
    
    // Update the content bounds every time a frame is displayed
    dispatch_async(dispatch_get_main_queue(), ^{
        [self updateContentBounds];
    });
}

- (void)updateContentBounds {
    // This is the same as aspect ratio fit
    if (self.frame.size.height * self.aspectRatio > self.frame.size.width) {
        self.bounds = CGRectMake(self.bounds.origin.x,
                                 self.bounds.origin.y,
                                 self.frame.size.width,
                                 self.frame.size.width / self.aspectRatio);
    } else {
        self.bounds = CGRectMake(self.bounds.origin.x,
                                 self.bounds.origin.y,
                                 self.frame.size.height * self.aspectRatio,
                                 self.frame.size.height);
    }
}

@end
