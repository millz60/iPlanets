//
//  Jupiter.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Jupiter.h"

@implementation Jupiter

-(instancetype) init {
    
    self = [super init];
    self.planetName = @"Jupiter";
    self.distanceFromSun = 483.8;
    self.distanceFromEarth = 390.67;
    self.planetDescription = @"A Cloudy Gas Giant";
    self.imagePath = @"3D_Jupiter.png";
    self.isFavorite = @"NO";
    return self;
    
}

@end
