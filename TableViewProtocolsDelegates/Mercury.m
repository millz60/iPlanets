//
//  Mercury.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Mercury.h"

@implementation Mercury

-(instancetype) init {
    
    self = [super init];
    self.planetName = @"Mercury";
    self.distanceFromSun = 35.98;
    self.distanceFromEarth = 56.97;
    self.planetDescription = @"The Smallest Planet";
    self.imagePath = @"3D_Mercury.png";
    return self;
    
}

@end
