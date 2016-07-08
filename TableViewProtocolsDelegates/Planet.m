//
//  Mars.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Planet.h"

@implementation Planet

-(instancetype) initWithCoder:(NSCoder * )coder {
    
    self = [super init];
    self.planetName = [coder decodeObjectForKey:@"planetName"];
    self.imagePath = [coder decodeObjectForKey:@"imagePath"];
    self.planetDescription = [coder decodeObjectForKey:@"planetDescription"];
    self.isFavorite = [coder decodeObjectForKey:@"isFavorite"];
    return self;
}

-(void) encodeWithCoder:(NSCoder *)coder{
    
    [coder encodeObject:self.planetName forKey:@"planetName"];
    [coder encodeObject:self.imagePath forKey:@"imagePath"];
    [coder encodeObject:self.planetDescription forKey:@"planetDescription"];
    [coder encodeObject:self.isFavorite forKey:@"isFavorite"];
    
    
}





@end
