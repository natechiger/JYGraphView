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
    self = [super initWithFrame:CGRectMake(0, 0, 20, 20)];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        self.strokeColor = strokeColor;
        self.fillColor = fillColor;
        
        self.number = number;
        
        self.pointHidden = pointHidden;
    }
    return self;
}


- (NSString *)debugDescription
{
    return [NSString stringWithFormat:@"<JYGraphPoint: number: %@, hidden: %@, point: %@>", self.number, self.pointHidden ? @"y" : @"n", NSStringFromCGPoint(self.point)];
}


- (void)drawRect:(CGRect)rect
{
    //// Color Declarations
    UIColor * stroke = self.strokeColor;
    UIColor * fill = self.fillColor;
    
    //// Oval 2 Drawing
    UIBezierPath * oval2Path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(2.50, 2.50, 15, 15)];
    [fill setFill];
    [oval2Path fill];
    [stroke setStroke];
    oval2Path.lineWidth = 3.0;
    [oval2Path stroke];
}


@end
