//
//  TableViewController.m
//  MultiplyTable
//
//  Created by Student-003 on 26/07/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    _array = [[NSMutableArray alloc]init];
    
    [self.table1 registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];


}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(NSInteger)numberOfSectionsinTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell =[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [_array objectAtIndex:indexPath.row];
    
    // Configure the cell...
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)showTable:(id)sender

{
    int no1 = [_tf1.text intValue];
    int no2 = [_multipliertext.text intValue];
    
    int i =1;
    for(i=1; i<=no2; i++)
    {
        NSString * result = [NSString stringWithFormat:@"%d * %d = %d",no1 ,i ,no1*i];
        [_array addObject:result];
    }
    
    [self.table1 reloadData];
    
    ////////////////////////thankyou///////////
    //////////////wertyui
    ///////////////asdfghjk
    /////////////////asdfghjkl
    
}
@end



