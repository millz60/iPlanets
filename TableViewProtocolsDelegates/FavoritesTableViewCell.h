//
//  FavoritesTableViewCell.h
//  iPlanets
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FavoritesTableViewCell : UITableViewCell

@property(nonatomic,weak) IBOutlet UIImageView *PlanetImage;
@property(nonatomic,weak) IBOutlet UILabel *titleLabel;
@property(nonatomic,weak) IBOutlet UILabel *subtitleLabel;

@end
