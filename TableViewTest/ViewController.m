//
//  ViewController.m
//  TableViewTest
//
//  Created by 佐分晴紀 on 2016/01/29.
//  Copyright © 2016年 Haruki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(IBAction)nextButtonAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nextButtonAction:(id)sender{
    [self performSegueWithIdentifier:@"nextView" sender:self];
}

@end
