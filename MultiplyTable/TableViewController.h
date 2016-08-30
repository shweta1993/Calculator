//
//  TableViewController.h
//  MultiplyTable
//
//  Created by Student-003 on 26/07/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITextField *tf1;

@property (weak, nonatomic) IBOutlet UITextField *multipliertext;

- (IBAction)showTable:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *table1;

@property(nonatomic,retain)NSMutableArray *array;

@end
