//
//  ViewController.m
//  SimpleApp
//
//  Created by Tom Yu on 2020/10/12.
//

#import "ViewController.h"
#import <EmbeddedPod/Cat.h>
#import <EmbeddedPod/Dog.h>
#import <EmbeddedPod/Rose.h>
#import <EmbeddedPod/AppleTree.h>

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
