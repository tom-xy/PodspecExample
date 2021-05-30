//
//  ViewController.m
//  SimpleApp
//
//  Created by Tom Yu on 2020/10/12.
//

#import "ViewController.h"
#import <ResourcedPod/PodResourceManager.h>
#import <ResourcedPod/Cat.h>
#import <ResourcedPod/Dog.h>
#import <ResourcedPod/AppleTree.h>
#import <ResourcedPod/Rose.h>

@interface ViewController ()

@property (nonatomic, strong) UILabel * label;

@property (nonatomic, strong) UIImageView * imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[[Cat alloc] init] run];
    [[[Dog alloc] init] eat];
    [[[Rose alloc] init] bloom];
    [[[AppleTree alloc] init] fruit];
    
    self.label = [[UILabel alloc] init];
    self.imageView = [[UIImageView alloc] init];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.imageView];
    
    NSBundle * bundle = [NSBundle bundleForClass:PodResourceManager.class];
    NSString * key = @"pod_localization_key";
    NSString * valueIfKeyNotFound = @"<Not Found>";
    NSString * table = @"PodLocalizable";
    NSString * string = [bundle localizedStringForKey:key value:valueIfKeyNotFound table:table];
    
    self.label.text = string;
    
    self.imageView.image =  [PodResourceManager image];
     
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
