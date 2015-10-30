//
//  ArticleTableViewCell.h
//  Gamers Elixir
//
//  Created by Ed George on 30/10/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRLabel.h"

@interface ArticleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *articleTitle;
@property (weak, nonatomic) IBOutlet UIImageView *articleImage;
@property (weak, nonatomic) IBOutlet NRLabel *articleLabel;

@end
