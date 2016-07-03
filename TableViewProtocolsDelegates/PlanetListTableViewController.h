//
//  PlanetListTableViewController.h
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mars.h"
#import "Earth.h"
#import "Jupiter.h"
#import "Mercury.h"
#import "Venus.h"
#import "Saturn.h"
#import "Uranus.h"
#import "Neptune.h"
#import "PlanetInformationViewController.h"




@interface PlanetListTableViewController : UITableViewController
{
    NSMutableArray *_planetList;
}



@end
