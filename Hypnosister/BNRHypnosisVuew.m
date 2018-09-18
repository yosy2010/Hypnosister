//
//  BNRHypnosisVuew.m
//  Hypnosister
//
//  Created by YASSER ALTAMIMI on 18/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import "BNRHypnosisVuew.h"

@implementation BNRHypnosisVuew

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */

// override the drawRect method to draw a circle
- (void)drawRect:(CGRect)rect {
    
    // get hte currnt bounds
    CGRect bounds = self.bounds;
    
    // then get the mid point of the bounds rectangle by using CGPoint
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // the largest circle will circumscribe the view
    float maxRadius = hypotf(bounds.size.width, bounds.size.height);
    
    // UIBezierPath is used to draw lines and curves that I want
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (float currentRadious = maxRadius; currentRadious > 0; currentRadious -= 20) {
        
        // move to the new point
        [path moveToPoint:CGPointMake(center.x + currentRadious, center.y)];
        
        // create a circle
        [path addArcWithCenter:center
                        radius:currentRadious
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    // change line width
    path.lineWidth = 10;
    
    // giving it a color
    [[UIColor lightGrayColor] setStroke];
    
    [path stroke];
    
}

// init with frame that used to come by default if youe supclassing UIView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // set the back ground to clear (transperent) for every view in this class
        // if we did it in the AppDelegate then we will have to do it for every circle but in
        // here we have to do it only once
        self.backgroundColor = [UIColor clearColor];
        
    }
    return self;
}

@end
