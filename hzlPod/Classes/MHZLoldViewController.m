//
//  HZLNewViewController.m
//  Pods
//
//  Created by SDMac on 2017/6/23.
//
//

#import "MHZLoldViewController.h"
#import "MHZLEndViewController.h"

@interface MHZLoldViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *netArray;

@end

@implementation MHZLoldViewController

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
    
    [self.view addSubview:self.tableView];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.title = [NSString stringWithFormat:@"数字 --- %@",self.titleString];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.netArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName =@"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"字母 --- %@",self.netArray[indexPath.row]];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    MHZLEndViewController *vc = [[MHZLEndViewController alloc]init];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark - custom delegate

#pragma mark - event response

#pragma mark - public Methods

#pragma mark - private Methods


#pragma mark - getters and setters

- (UITableView*)tableView
{
    if (!_tableView)
    {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20)];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.scrollEnabled = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.backgroundColor = [UIColor greenColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
    
    return _tableView;
}

- (NSMutableArray*)netArray
{
    if (!_netArray)
    {
        _netArray = [NSMutableArray arrayWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",nil];
    }
    
    return _netArray;
}


@end
