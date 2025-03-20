//
//  ViewController.m
//  SimpleOC
//
//  Created by Tom Yu on 2025/3/20.
//

#import "ViewController.h"
#import <SimplePod/Cat.h>
#import <SimplePod/Dog.h>
#import <SimplePod/Rose.h>
#import <SimplePod/AppleTree.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[[Cat alloc] init] run];
    [[[Dog alloc] init] eat];
    [[[Rose alloc] init] bloom];
    [[[AppleTree alloc] init] fruit];
}

@end
