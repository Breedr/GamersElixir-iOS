//
//  DetailViewController.m
//  Gamers Elixir
//
//  Created by Ed George on 30/10/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import "DetailViewController.h"
#import "UIColor+CustomColors.h"
#import "NSArray+Map.h"
#import "JCTagListView.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet JCTagListView *tagView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self populateTags];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)populateTags{
    
    NSArray *tags = @[@"Gaming News", @"Test me", @"hello world", @"j-fg", @"i enjoy pancakes", @"Gaming News", @"Test me", @"hello world", @"j-fg", @"i enjoy pancakes"];

    
    self.tagView.canSeletedTags = NO;
    self.tagView.tagColor = [UIColor GE_Twitch];
    self.tagView.tagCornerRadius = 2.0f;
    self.tagView.tags = [[tags mapObjectsUsingBlock:^(id obj, NSUInteger idx) {
        return [obj uppercaseString];
    }] mutableCopy];

}

- (IBAction)shareButtonClicked:(id)sender {
    NSLog(@"share clicked");
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
