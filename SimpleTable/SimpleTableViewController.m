//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Simon Ng on 16/4/12.
//  Copyright (c) 2012 AppCoda. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableCell.h"
#import "Recipe.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController
{
    NSArray *tableData;
    NSArray *thumbnails;
    NSArray *prepTime;
    NSArray *recipes;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 min";
    recipe1.imageFile = @"egg_benedict.jpg";
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 min";
    recipe2.imageFile = @"mushroom_risotto.jpg";
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Full Breakfast";
    recipe3.prepTime = @"20 min";
    recipe3.imageFile = @"full_breakfast.jpg";
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Hamburger";
    recipe4.prepTime = @"30 min";
    recipe4.imageFile = @"hamburger.jpg";
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Ham and Egg Sandwich";
    recipe5.prepTime = @"10 min";
    recipe5.imageFile = @"ham_and_egg_sandwich.jpg";
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Creme Brelee";
    recipe6.prepTime = @"1 hour";
    recipe6.imageFile = @"creme_brelee.jpg";
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"White Chocolate Donut";
    recipe7.prepTime = @"45 min";
    recipe7.imageFile = @"white_chocolate_donut.jpg";
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Starbucks Coffee";
    recipe8.prepTime = @"5 min";
    recipe8.imageFile = @"starbucks_coffee.jpg";
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 min";
    recipe9.imageFile = @"vegetable_curry.jpg";
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Instant Noodle with Egg";
    recipe10.prepTime = @"8 min";
    recipe10.imageFile = @"instant_noodle_with_egg.jpg";
    
    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"Noodle with BBQ Pork";
    recipe11.prepTime = @"20 min";
    recipe11.imageFile = @"noodle_with_bbq_pork.jpg";
    
    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"Japanese Noodle with Pork";
    recipe12.prepTime = @"20 min";
    recipe12.imageFile = @"japanese_noodle_with_pork.jpg";
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"Green Tea";
    recipe13.prepTime = @"5 min";
    recipe13.imageFile = @"green_tea.jpg";
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"Thai Shrimp Cake";
    recipe14.prepTime = @"1.5 hours";
    recipe14.imageFile = @"thai_shrimp_cake.jpg";
    
    Recipe *recipe15 = [Recipe new];
    recipe15.name = @"Angry Birds Cake";
    recipe15.prepTime = @"4 hours";
    recipe15.imageFile = @"angry_birds_cake.jpg";
    
    Recipe *recipe16 = [Recipe new];
    recipe16.name = @"Ham and Cheese Panini";
    recipe16.prepTime = @"10 min";
    recipe16.imageFile = @"ham_and_cheese_panini.jpg";
    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16, nil];
    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    cell.nameLabel.text = recipe.name;
    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.imageFile];
    cell.prepTimeLabel.text = recipe.prepTime;
    
    return cell;
}


- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"willSelectRowAtIndexPath");
    if (indexPath.row == 0) {
        return nil;
    }
    
    return indexPath;
}

@end

