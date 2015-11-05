//
//  StreamerViewController.m
//  Gamers Elixir
//
//  Created by Ed George on 04/11/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import "StreamerViewController.h"
#import "AppConstants.h"
#import "AFNetworking.h"

@interface StreamerViewController ()
@property (weak, nonatomic) NSDictionary* streamers;
@end

@implementation StreamerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if(!self.streamers){
        [self loadData:GE_StreamTeamName];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Load streamers
-(void)loadData:(NSString *)streamTeam
{
    
    NSLog(@"Request Made");
    
    NSString *urlString = [NSString stringWithFormat:@"%@/team/%@/all_channels.json", GE_TwitchWebBaseURL, streamTeam];
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/vnd.twitchtv.v3+json" forHTTPHeaderField:@"Accept"];
    [manager.requestSerializer setValue:@"uk.breedrapps.Gamers-Elixir" forHTTPHeaderField:@"Client-ID"];
    
    
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        self.streamers = (NSDictionary *)responseObject;
        
        
        
        
        NSLog(@"REQUEST");
        
        for (NSString *key in [responseObject allKeys]) {
            
            NSDictionary *dict=[responseObject objectForKey:key];
            
            
            
            
        }
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Streamers"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alertView show];
        
    }];
    
    
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
