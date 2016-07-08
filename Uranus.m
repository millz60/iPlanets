//
//  Uranus.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Uranus.h"

@implementation Uranus

-(instancetype) init {
    
    self = [super init];
    self.planetName = @"Uranus";
    self.distanceFromSun = 1787.0;
    self.distanceFromEarth = 1692.66;
    self.planetDescription = @"The Rolling Ice Giant";
    self.imagePath = @"3D_Uranus.png";
    self.isFavorite = @"NO";
    return self;
    
}

@end
