//
//  CLViewController.m
//  CLFont
//
//  Created by cqzhong on 10/29/2019.
//  Copyright (c) 2019 cqzhong. All rights reserved.
//

#import "CLViewController.h"
#import "CLFontUtils.h"

@interface CLViewController ()

@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation CLViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.nameLabel];


        
    [[UIFont familyNames] enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    
        NSLog(@"\n %@", obj);
    }];

}
- (UILabel *)nameLabel {
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, 200, 40)];
        _nameLabel.text = @"这里是细体汉字";
        _nameLabel.textColor = [UIColor redColor];
        _nameLabel.font = CLUIFontMake(24);
//        NSString *path2 = [[NSBundle mainBundle] pathForResource:@"HYZhengYuan-65S" ofType:@"ttf"];
//
//        _nameLabel.font = CDUIFilePathFontMake(path2, 24);
    }
    return _nameLabel;
}

@end
