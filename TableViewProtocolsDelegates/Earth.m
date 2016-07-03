//
//  Earth.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Earth.h"

@implementation Earth


-(instancetype) init {
    
    self = [super init];
    self.planetName = @"Earth";
    self.distanceFromSun = 92.96;
    self.distanceFromEarth = 0.0;
    self.planetDescription = @"The Home of Mankind";
    self.imagePath = @"3D_Earth.png";
    return self;
    
}

@end
