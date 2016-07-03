//
//  Mars.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Mars.h"

@implementation Mars


-(instancetype) init {

    self = [super init];
    self.planetName = @"Mars";
    self.distanceFromSun = 141.6;
    self.distanceFromEarth = 48.68;
    self.planetDescription = @"The Small Red Planet";
    self.imagePath = @"3D_Mars.png";
    return self;
    
}

@end
