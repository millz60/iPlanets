//
//  PlanetListTableViewController.m
//  TableViewProtocolsDelegates
//
//  Created by Matt Milner on 7/2/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "PlanetListTableViewController.h"

@interface PlanetListTableViewController ()

@end

@implementation PlanetListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor blackColor];
    
    _planetList = [[NSMutableArray alloc] init];
    
    Mars *mars = [[Mars alloc] init];
    Earth *earth = [[Earth alloc] init];
    Jupiter *jupiter = [[Jupiter alloc] init];
    Mercury *mercury = [[Mercury alloc] init];
    Venus *venus = [[Venus alloc] init];
    Saturn *saturn = [[Saturn alloc] init];
    Uranus *uranus = [[Uranus alloc] init];
    Neptune *neptune = [[Neptune alloc] init];
    
    [_planetList addObject:mercury];
    [_planetList addObject:venus];
    [_planetList addObject:earth];
    [_planetList addObject:mars];
    [_planetList addObject:jupiter];
    [_planetList addObject:saturn];
    [_planetList addObject:uranus];
    [_planetList addObject:neptune];
    
    
    
    
    
    

    
    
    
    
    
    
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
    
    return _planetList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlanetListCell" forIndexPath:indexPath];
    

    Planet *currentPlanet = _planetList[indexPath.row];
    NSString *cellTitle = currentPlanet.planetName;
    
    cell.backgroundColor = [UIColor blackColor];
    cell.textLabel.font = [UIFont fontWithName:@"Apple SD Gothic Neo" size:23.0];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.text = cellTitle;
    
    return cell;
}


// ** Find Out Which View Controller needs to implement a Protocol/Delegate to receive planet info


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    PlanetInformationViewController *planetInformationViewController = segue.destinationViewController;
    
    UITableViewCell *selectedCell = (UITableViewCell *) sender;
    
    if([selectedCell.textLabel.text isEqualToString:@"Mercury"]){
        planetInformationViewController.planet = _planetList[0];
    }
    else if ([selectedCell.textLabel.text isEqualToString:@"Venus"]){
        planetInformationViewController.planet = _planetList[1];
    }
    else if ([selectedCell.textLabel.text isEqualToString:@"Earth"]){
        planetInformationViewController.planet = _planetList[2];
    }
    else if ([selectedCell.textLabel.text isEqualToString:@"Mars"]){
        planetInformationViewController.planet = _planetList[3];
    }
    else if ([selectedCell.textLabel.text isEqualToString:@"Jupiter"]){
        planetInformationViewController.planet = _planetList[4];
    }
    else if ([selectedCell.textLabel.text isEqualToString:@"Saturn"]){
        planetInformationViewController.planet = _planetList[5];
    }
    else if ([selectedCell.textLabel.text isEqualToString:@"Uranus"]){
        planetInformationViewController.planet = _planetList[6];
    }
    else if ([selectedCell.textLabel.text isEqualToString:@"Neptune"]){
        planetInformationViewController.planet = _planetList[7];
    }
    
    
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
