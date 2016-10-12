//
//  ECVideoView.h
//  ErizoClientIOS
//
//  Created by Benjamin Fantini on 12-10-16.
//
//

#import "RTCEAGLVideoView.h"

@interface ECVideoView : RTCEAGLVideoView

@property (nonatomic) CGFloat aspectRatio;

- (void)updateContentBounds;

@end
