//
//  ViewController.m
//  Gamers Elixir
//
//  Created by Ed George on 30/10/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+CustomColors.h"
#import "ArticleTableViewCell.h"


@interface ViewController ()
@property (strong, nonatomic) NSArray *data;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = @[@"gaming news", @"articles", @"test me"];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self.tableView registerNib:[UINib nibWithNibName:@"ArticleTableViewCell" bundle:nil] forCellReuseIdentifier:@"articleCell"];
    self.tableView.allowsSelection = NO;
}

- (void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.barTintColor = [UIColor GE_Yellow];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.data count];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ArticleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"articleCell"];
    if(!cell){
        cell = [tableView dequeueReusableCellWithIdentifier:@"articleCell"];
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIImage * img = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.gamerselixir.com/wp-content/uploads/2015/10/el_ludicolo_bailando_disco_by_jacoblionheart-d3e3sof-672x372.png"]]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            ArticleTableViewCell * cell = (ArticleTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
            cell.articleImage.image = img;
        });
    });
    
    return cell;
}

- (void) tableView:(UITableView *)tableView willDisplayCell:(ArticleTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.articleLabel.text = [[self.data objectAtIndex:indexPath.row] uppercaseString];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 220;
}


@end
