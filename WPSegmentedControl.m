//
//  WPSegmentedControl.m
//
//  Created by panda on 16.08.13.
//  Copyright (c) 2013 WiredPanda. All rights reserved.
//

#import "WPSegmentedControl.h"

@implementation WPSegmentedControl

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithItems:(NSArray *)items {
    self = [super initWithItems:items];
    if (self) {
        
        // Set divider images
        [self setDividerImage:[UIImage imageNamed:@"segmented_control-divider-none-selected"]
          forLeftSegmentState:UIControlStateNormal
            rightSegmentState:UIControlStateNormal
                   barMetrics:UIBarMetricsDefault];
        
        [self setDividerImage:[UIImage imageNamed:@"segmented_control-divider-left-selected"]
          forLeftSegmentState:UIControlStateSelected
            rightSegmentState:UIControlStateNormal
                   barMetrics:UIBarMetricsDefault];
        
        [self setDividerImage:[UIImage imageNamed:@"segmented_control-divider-right-selected"]
          forLeftSegmentState:UIControlStateNormal
            rightSegmentState:UIControlStateSelected
                   barMetrics:UIBarMetricsDefault];
        
        UIImage *normalBackgroundImage = [UIImage imageNamed:@"segmented_control-normal-bkgd"];
        [self setBackgroundImage:normalBackgroundImage
                        forState:UIControlStateNormal
                      barMetrics:UIBarMetricsDefault];
        
        UIImage *selectedBackgroundImage = [UIImage imageNamed:@"segmented_control-selected-bkgd"];
        [self setBackgroundImage:selectedBackgroundImage
                        forState:UIControlStateSelected
                      barMetrics:UIBarMetricsDefault];
    }

    UIFont *font = [UIFont fontWithName:@"HelveticaNeue" size:12];
    
    NSMutableDictionary *attributes = [NSMutableDictionary dictionaryWithObject:font
                                                           forKey:UITextAttributeFont];
    [attributes setObject:[NSValue valueWithUIOffset:UIOffsetMake(0, 0)]
                   forKey:UITextAttributeTextShadowOffset];
    [attributes setObject:[UIColor colorWithRed:115 green:181 blue:95 alpha:1]
                   forKey:UITextAttributeTextColor];
    [self setTitleTextAttributes:attributes
                        forState:UIControlStateNormal];
    
    [attributes setObject:[UIColor whiteColor]
                   forKey:UITextAttributeTextColor];
    [self setTitleTextAttributes:attributes
                        forState:UIControlStateSelected];
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
