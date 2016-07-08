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
#import "FavoritesTableViewController.h"

@protocol PlanetInformationDelegate

-(void) favoritesButtonWasPressed: (Planet *) sentPlanet;

@end

@interface PlanetInformationViewController : UIViewController
{
    NSMutableArray *cellSelected;
}

@property(nonatomic,weak) IBOutlet UILabel *planetTitle;
@property(nonatomic,weak) IBOutlet UILabel *distanceFromSun;
@property(nonatomic,weak) IBOutlet UILabel *distanceFromEarth;
@property(nonatomic,weak) IBOutlet UILabel *planetSubtitle;
@property(nonatomic,weak) IBOutlet UIImageView *planetImage;

@property(nonatomic,weak) IBOutlet UIButton *favoritesButton;

@property (nonatomic,weak) id <PlanetInformationDelegate> delegate;


// This is required to receive the instance of planet in the PlanetListTableView prepareForSegue method

@property Planet *planet;

-(void) cellWasPressed:(Planet *) planet;

@end
