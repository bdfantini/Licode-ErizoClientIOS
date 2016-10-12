//
//  ECVideoView.h
//  ErizoClientIOS
//
//  Created by Benjamin Fantini on 12-10-16.
//
//

#import "RTCEAGLVideoView.h"

typedef NS_ENUM(NSUInteger, ECVideoViewAspectType) {
    ECVideoViewAspectTypeFit,
    ECVideoViewAspectTypeFill
};

@interface ECVideoView : RTCEAGLVideoView

@property (nonatomic) CGFloat aspectRatio;
@property (nonatomic) ECVideoViewAspectType aspectType;

- (BOOL)isLandscape;
- (void)updateContentBounds;

@end
