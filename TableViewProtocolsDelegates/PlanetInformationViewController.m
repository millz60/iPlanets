//
//  PlanetInformationViewController.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "PlanetInformationViewController.h"

@interface PlanetInformationViewController ()
@end

@implementation PlanetInformationViewController




- (void)viewDidLoad {
    [super viewDidLoad];


    
}

// Added this method to update the view controller with the planet that was selected in the PlanetListTableViewController

-(void) viewWillAppear:(BOOL)animated{
    
    [self cellWasPressed:self.planet];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) cellWasPressed:(Planet *) planet{
    
    
    _planetTitle.text = planet.planetName;
    _planetSubtitle.text = planet.planetDescription;
     _distanceFromSun.text = [NSString stringWithFormat:@"%.2f Million Miles",planet.distanceFromSun];
    _distanceFromEarth.text = [NSString stringWithFormat:@"%.2f Million Miles",planet.distanceFromEarth];
    _planetImage.image = [UIImage imageNamed:planet.imagePath];
   
    
    
    NSString *isFavorite = planet.isFavorite;
    
    // Add controls that change the button upon a click if it is not a favorite, and disable the button and change text; possibly add animations
    
    if([isFavorite isEqualToString:@"NO"]){
        
        
    }
    else {
        
    }
    
    
    
    
}


// After adding an initWithCoder method to Planet class, use the NSUserDefaults to add a planet if its isFavorite property is YES
// Hopefully this will avoid having to use another way of saving the current planet as a favorite


-(IBAction)favoritesButtonWasPressed:(id)sender {
    
    
    
    // Add a method inside the favorites table view controller that decodes the planet object and pushes it into the table cell.
    
    // Reference the user defaults favorites list here and encode the Planet object before adding it to to the list
    
    //NSMutableArray *favoritesArray = nil;
    NSUserDefaults *favorites = [NSUserDefaults standardUserDefaults];
    NSMutableArray *favoritesArray = (NSMutableArray *) [favorites objectForKey:@"FavoritesList"];
    
    if(favoritesArray == nil) {
        favoritesArray = [NSMutableArray array];
    }
    
    favoritesArray = [favoritesArray mutableCopy];
   
    
    Planet *planetToAdd = [[Planet alloc] init];
    planetToAdd.planetName = self.planet.planetName;
    planetToAdd.planetDescription = self.planet.planetDescription;
//    planetToAdd.distanceFromSun = self.planet.distanceFromSun;
//    planetToAdd.distanceFromEarth = self.planet.distanceFromEarth;
    planetToAdd.imagePath = self.planet.imagePath;
    planetToAdd.isFavorite = self.planet.isFavorite;
   

    
    
    // call the _favoritesList NSMutable array using NSUserDefaults, then add the encoded planet to it
    
     NSData *planetData = [NSKeyedArchiver archivedDataWithRootObject:planetToAdd];
    [favoritesArray addObject:planetData];
    
    NSUserDefaults *savedData = [NSUserDefaults standardUserDefaults];
    [savedData setObject:favoritesArray forKey:@"FavoritesList"];
//    [favorites]
    [savedData synchronize];

    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] dictionaryRepresentation]);
    
    
    
    
    
}








//-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    
//    NSLog(@"%@",self.Planet);
//    
//    if([segue.identifier isEqualToString:@"AddToFavoritesSegue"]){
//        FavoritesTableViewController *favoritesController =  segue.destinationViewController;
//        Planet *planet =  self.Planet;
//        [favoritesController favoritesButtonWasPressed: planet];
//    }
//    
//}


// Add method to send planet class to favorites







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
