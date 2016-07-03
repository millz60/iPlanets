//
//  PlanetInformationViewController.h
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanetListTableViewController.h"
#import "Planet.h"


@interface PlanetInformationViewController : UIViewController
{
    NSMutableArray *cellSelected;
}

@property(nonatomic,weak) IBOutlet UILabel *planetTitle;
@property(nonatomic,weak) IBOutlet UILabel *distanceFromSun;
@property(nonatomic,weak) IBOutlet UILabel *distanceFromEarth;
@property(nonatomic,weak) IBOutlet UILabel *planetSubtitle;
@property(nonatomic,weak) IBOutlet UIImageView *planetImage;


// This is required to receive the instance of planet in the PlanetListTableView prepareForSegue method

@property Planet *Planet;

-(void) cellWasPressed:(Planet *) planet;
-(void) updateViews:(NSString *) title sun: (NSString *) sun earth: (NSString *) earth subtitle: (NSString *) subtitle image: (NSString *) thePlanetImage;

@end
