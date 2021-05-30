//
//  ViewController.m
//  SimpleApp
//
//  Created by Tom Yu on 2020/10/12.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel * label;

@property (nonatomic, strong) UIImageView * imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label = [[UILabel alloc] init];
    self.imageView = [[UIImageView alloc] init];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.imageView];
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"PodBundle" ofType:@"bundle" inDirectory:nil];
    NSBundle * bundle = [NSBundle bundleWithPath:path];
    NSString * string = [bundle localizedStringForKey:@"pod_localization_key" value:@"<Not Found>" table:@"PodLocalizable"];
    self.label.text = string;

    self.imageView.layer.borderColor = [UIColor redColor].CGColor;
    self.imageView.layer.borderWidth = 1.0;
    
    self.label.layer.borderColor = [UIColor redColor].CGColor;
    self.label.layer.borderWidth = 1.0;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    CGFloat width = self.view.frame.size.width;
    self.imageView.frame = CGRectMake((width - 100) / 2, 100, 100, 100);
    self.label.frame = CGRectMake(10, 230, width - 20, 20);
}

@end

