//
//  Venus.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Venus.h"

@implementation Venus

-(instancetype) init {
    
    self = [super init];
    self.planetName = @"Venus";
    self.distanceFromSun = 67.24;
    self.distanceFromEarth = 25.72;
    self.planetDescription = @"The Brightest Planet";
    self.imagePath = @"3D_Venus.png";
    return self;
    
}

@end
