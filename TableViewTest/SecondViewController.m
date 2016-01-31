//
//  SecondViewController.m
//  TableViewTest
//
//  Created by 佐分晴紀 on 2016/01/30.
//  Copyright © 2016年 Haruki. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2; // セクション
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
   
    if (section == 0) {
        return 1;
    }else{
        
    
    return 10;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // セルオブジェクト取得
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                    forIndexPath:indexPath];
    // 設定（セル）
    if (indexPath.section == 0) {
        
    cell.textLabel.text = @"新規登録";
    cell.imageView.image = [UIImage imageNamed:@"0649.jpg"];
    
    return cell;
    }else{
        cell.textLabel.text = @"材料一覧 \n金額";
        cell.imageView.image = [UIImage imageNamed:@"0649.jpg"];
        
        return cell;
    }


}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if (section == 0) {
        return @"新規登録";
    }else{
        return @"材料一覧（タップで編集)";
    }
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        
       // UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        [self performSegueWithIdentifier:@"thirdView" sender:self];
    }else{
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        NSLog(@"%@", cell.textLabel.text);

    }
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
