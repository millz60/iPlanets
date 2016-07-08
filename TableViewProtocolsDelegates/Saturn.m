//
//  Saturn.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Saturn.h"

@implementation Saturn

-(instancetype) init {
    
    self = [super init];
    self.planetName = @"Saturn";
    self.distanceFromSun = 888.2;
    self.distanceFromEarth = 792.25;
    self.planetDescription = @"The Ringed Gas Giant";
    self.imagePath = @"3D_Saturn.png";
    self.isFavorite = @"NO";
    return self;
    
}

@end
