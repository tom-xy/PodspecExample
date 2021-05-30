//
//  ViewController.m
//  SimpleApp
//
//  Created by Tom Yu on 2020/10/12.
//

#import "ViewController.h"
#import <CombinedPod/Cat.h>
#import <CombinedPod/Dog.h>
#import <CombinedPod/Rose.h>
#import <CombinedPod/AppleTree.h>

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
