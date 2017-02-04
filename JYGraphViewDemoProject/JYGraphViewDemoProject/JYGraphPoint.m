//
//  JYSimpleWeatherGraphPoint.m
//  SimpleWeather
//
//  Created by John Yorke on 04/06/2013.
//  Copyright (c) 2013 John Yorke. All rights reserved.
//

#import "JYGraphPoint.h"


@interface JYGraphPoint ()

@property (nonatomic, strong) UIColor * strokeColor;
@property (nonatomic, strong) UIColor * fillColor;

@property (nonatomic, strong) NSNumber * number;

@property (nonatomic, assign) BOOL pointHidden;

@end


@implementation JYGraphPoint


- (instancetype)initWithNumber:(NSNumber *)number
                   strokeColor:(UIColor *)strokeColor
                     fillColor:(UIColor *)fillColor
                   pointHidden:(BOOL)pointHidden
{
    self = [super initWithFrame:CGRectMake(0, 0, 16, 16)];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        self.strokeColor = strokeColor;
        self.fillColor = fillColor;
        
        self.number = number;
        
        self.pointHidden = pointHidden;
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    //// Color Declarations
    UIColor * stroke = self.strokeColor;
    UIColor * fill = self.fillColor;
    
    //// Oval 2 Drawing
    UIBezierPath * oval2Path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(2, 2, 12, 12)];
    [fill setFill];
    [oval2Path fill];
    [stroke setStroke];
    oval2Path.lineWidth = 2.5;
    [oval2Path stroke];
}


@end
