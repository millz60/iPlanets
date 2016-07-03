//
//  Mars.h
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Planet : NSObject
{

}

@property (nonatomic,weak) NSString *planetName;
@property double distanceFromSun;
@property double distanceFromEarth;
@property (nonatomic,weak) NSString *imagePath;
@property (nonatomic,weak) NSString *planetDescription;


@end
