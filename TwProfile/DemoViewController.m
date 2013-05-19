//
//  DemoViewController.m
//  TwProfile
//
//  Created by Edgar on 5/1/13.
//  Copyright (c) 2013 mx.com.hunk. All rights reserved.
//

#import "DemoViewController.h"
#import "ProfileViewController.h"
#import "ProfileScrollViewController.h"
#import "ProfileImagesViewController.h"
#import "ProfileImagesScrollViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title = @"Tweetbot Profile effect";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    if (indexPath.row == 0) {
        cell.textLabel.text = @"TwProfile with UITableView";
    }else if(indexPath.row == 1){
        cell.textLabel.text = @"TwProfile with UIScrollView";
    }else if(indexPath.row == 2){
        cell.textLabel.text = @"TwProfile img+ with UIScrollView";
    }else{
        cell.textLabel.text = @"TwProfile img+ with UIScrollView";
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        ProfileViewController *profileVC = [[ProfileViewController alloc] init];
        [self.navigationController pushViewController:profileVC animated:YES];
    }else if(indexPath.row == 1){
        ProfileScrollViewController *profileScroll = [[ProfileScrollViewController alloc] init];
        [self.navigationController pushViewController:profileScroll animated:YES];
    }else if(indexPath.row == 2){
        ProfileImagesViewController *proImgs = [[ProfileImagesViewController alloc] init];
        [self.navigationController pushViewController:proImgs animated:YES];
    }else{
        ProfileImagesScrollViewController *proImgsSc = [[ProfileImagesScrollViewController alloc] init];
        [self.navigationController pushViewController:proImgsSc animated:YES];
    }
}

@end
