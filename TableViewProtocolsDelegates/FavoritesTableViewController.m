//
//  FavoritesTableViewController.m
//  iPlanets
//
//  Created by Matt Milner on 7/3/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "FavoritesTableViewController.h"

@interface FavoritesTableViewController ()

@end

@implementation FavoritesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor blackColor];
    
    
    // Need to add an initWithCoder method to the planet class and make a saveable favorites section to access in the planetinfo view controller
    
    self._favoritesList = [[NSMutableArray alloc] init];
    
    NSUserDefaults *favoritesList = [NSUserDefaults standardUserDefaults];
    self._favoritesList = [favoritesList objectForKey:@"FavoritesList"];
        
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self._favoritesList.count;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FavoritesTableViewCell *cell = (FavoritesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"FavoritesCell" forIndexPath:indexPath];
    
    // Decode the planet object(s) here
    NSUserDefaults *favoritesList = [NSUserDefaults standardUserDefaults];
    NSMutableArray *favesArray = [favoritesList objectForKey:@"FavoritesList"];
 
    Planet *currentPlanet = [NSKeyedUnarchiver unarchiveObjectWithData:favesArray[indexPath.row]];
    
    // Only planetName is supplying a valid asset name, the others give this error: CUICatalog: Invalid asset name supplied: (null)
        
    cell.titleLabel.text = currentPlanet.planetName;
    cell.subtitleLabel.text = currentPlanet.planetDescription;
    cell.PlanetImage.image = [UIImage imageNamed:currentPlanet.imagePath];

    NSLog(@"planet name: %@    subtitle: %@   imagePath: %@", currentPlanet.planetName, currentPlanet.planetDescription, currentPlanet.imagePath );
    
    return cell;
}





















/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
