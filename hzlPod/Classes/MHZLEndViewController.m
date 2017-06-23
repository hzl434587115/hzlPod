//
//  HZLNewViewController.m
//  Pods
//
//  Created by SDMac on 2017/6/23.
//
//

#import "MHZLEndViewController.h"

@interface MHZLEndViewController ()

@end

@implementation MHZLEndViewController

#pragma mark - life cycle

- (id)init
{
    if (self = [super init])
    {
        
    }
    
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((self.view.frame.size.width - 100)/2, 160, 100, 40);
    btn.backgroundColor = [UIColor brownColor];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(getAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.view.backgroundColor = [UIColor greenColor];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDelegate

#pragma mark - custom delegate

#pragma mark - event response

-(void)getAction:(UIButton*)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark - public Methods

#pragma mark - private Methods

#pragma mark - getters and setters

@end
