//
//  ViewController.m
//  UIImageViewGif
//
//  Created by 尤艺琪 on 2018/11/21.
//  Copyright © 2018 尤艺琪. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "UIImage+GIF.h"
#import "FLAnimatedImageView.h"
#import "FLAnimatedImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FLAnimatedImageView *imv = [[FLAnimatedImageView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    imv.center = self.view.center;
    [self.view addSubview:imv];
    
    
    NSURL *imgUrl = [[NSBundle mainBundle] URLForResource:@"timg" withExtension:@"gif"];
    FLAnimatedImage *animatedImg = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:imgUrl]];
    imv.animatedImage = animatedImg;
}


@end
