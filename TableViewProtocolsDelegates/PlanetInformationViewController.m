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

-(void) viewWillAppear:(BOOL)animated{
    
    [self cellWasPressed:self.Planet];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) cellWasPressed:(Planet *) planet{
    
    
    NSString *planetName = planet.planetName;
    NSString *distanceFromSun = [NSString stringWithFormat:@"%.2f Million Miles",planet.distanceFromSun];
    NSString *distanceFromEarth = [NSString stringWithFormat:@"%.2f Million Miles",planet.distanceFromEarth];
    NSString *planetSubtitle = planet.planetDescription;
    NSString *planetImage =  planet.imagePath;
    [self updateViews:planetName sun:distanceFromSun earth:distanceFromEarth subtitle:planetSubtitle image:planetImage];
}


-(void) updateViews:(NSString *) title sun: (NSString *) sun earth: (NSString *) earth subtitle: (NSString *) subtitle image: (NSString *) thePlanetImage{
    _planetTitle.text = title;
    _planetSubtitle.text = subtitle;
    _distanceFromSun.text = sun;
    _distanceFromEarth.text = earth;
    _planetImage.image = [UIImage imageNamed:thePlanetImage];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
