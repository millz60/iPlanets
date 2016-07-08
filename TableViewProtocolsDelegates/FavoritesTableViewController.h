//
//  FavoritesTableViewController.h
//  iPlanets
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanetInformationViewController.h"
#import "Planet.h"
#import "FavoritesTableViewCell.h"


@interface FavoritesTableViewController : UITableViewController
{

}

@property (nonatomic,strong) NSMutableArray *_favoritesList;


@end
