//
//  hzlPodViewController.m
//  hzlPod
//
//  Created by hzl434587115 on 06/23/2017.
//  Copyright (c) 2017 hzl434587115. All rights reserved.
//

#import "hzlPodViewController.h"
#import <hzlPod/MHZLoldViewController.h>

@interface hzlPodViewController ()

@end

@implementation hzlPodViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((self.view.frame.size.width - 60)/2, 160, 60, 40);
    btn.backgroundColor = [UIColor brownColor];
    [btn setTitle:@"模态" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(getAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)getAction:(UIButton*)sender
{
//    HZLNewViewController *vc = [[HZLNewViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
}

@end
