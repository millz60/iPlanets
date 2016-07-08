//
//  Neptune.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Neptune.h"

@implementation Neptune

-(instancetype) init {
    
    self = [super init];
    self.planetName = @"Neptune";
    self.distanceFromSun = 2795.6;
    self.distanceFromEarth = 2700.0;
    self.planetDescription = @"The Blue God Planet";
    self.imagePath = @"3D_Neptune.png";
    self.isFavorite = @"NO";
    return self;
    
}

@end
