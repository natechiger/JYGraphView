//
//  JYSimpleWeatherGraphPoint.h
//  SimpleWeather
//
//  Created by John Yorke on 04/06/2013.
//  Copyright (c) 2013 John Yorke. All rights reserved.
//

@import UIKit;

@interface JYGraphPoint : UIView

@property (nonatomic, strong, readonly) UIColor * strokeColor;
@property (nonatomic, strong, readonly) UIColor * fillColor;

@property (nonatomic, strong, readonly) NSNumber * number;

@property (nonatomic, assign, readonly) BOOL pointHidden;

@property (nonatomic, assign) CGPoint point;

- (instancetype)initWithNumber:(NSNumber *)number
                   strokeColor:(UIColor *)strokeColor
                     fillColor:(UIColor *)fillColor
                   pointHidden:(BOOL)pointHidden;

@end
