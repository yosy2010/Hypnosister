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
    
    // set the radius of the circle to the smaller dimention (width or height)
    float radius = (MIN(bounds.size.width, bounds.size.height) / 2);
    
    // UIBezierPath is used to draw lines and curves that I want
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // define the path of the BezierPath
    [path addArcWithCenter:center
                    radius:radius
                startAngle:0.0
                  endAngle:M_PI * 2
                 clockwise:YES];
    
    // draw the linr
    [path stroke];
    
}


@end
