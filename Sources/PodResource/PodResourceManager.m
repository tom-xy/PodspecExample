//
//  PodResourceManager.m
//  Pod
//
//  Created by Tom Yu on 2020/10/19.
//

#import "PodResourceManager.h"

@implementation PodResourceManager

+(UIImage *)image {
    NSBundle * bundle = [self bundle];
    UIImage * image = [UIImage imageNamed:@"ImagePod" inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
}

+(NSString *)localizableString {
    
    NSBundle * bundle = [self bundle];
    NSString * key = @"pod_localization_key";
    NSString * valueIfKeyNotFound = @"<Not Found>";
    NSString * table = @"PodLocalizable";
    NSString * string = [bundle localizedStringForKey:key value:valueIfKeyNotFound table:table];
    return string;
}

+(NSBundle *)bundle {
    return [NSBundle bundleForClass:self.class];
    
    static NSBundle * bundle;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString * path = [[NSBundle mainBundle] pathForResource:@"MyFramework" ofType:@"framework" inDirectory:@"Frameworks"];
        bundle = [NSBundle bundleWithPath:path];
        NSLog(@"Resource framework %@found at %@", (bundle ? @"" : @"not "),  path);
    });
    
    return bundle;
}

@end
