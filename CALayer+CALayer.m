//
//  CALayer+CALayer.m
//  fortune-teller
//
//  Created by 簡吟真 on 2021/5/5.
//

#import "CALayer+CALayer.h"
#import <UIKit/UIKit.h>
@implementation CALayer (borderColor)
- (void)setBorderColorWithUIColor:(UIColor *)color
{
 self.borderColor = color.CGColor;
}@end
