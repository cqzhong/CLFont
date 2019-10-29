//
//  UIButton+CLFont.m
//  CLFont_Example
//
//  Created by cqz on 2019/10/29.
//  Copyright © 2019 cqz. All rights reserved.
//

#import "UIButton+CLFont.h"
#import "CLFontUtils.h"
#import <objc/runtime.h>

@implementation UIButton (CLFont)

+ (void)load{

    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(fontInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
}

- (id)fontInitWithCoder:(NSCoder *)aDecode{
    
    [self fontInitWithCoder:aDecode];
    if (self) {
        if (self.tag != CLFontTag) {
            
//            NSLog(@"打印字体： familyName：%@ fontName: %@", self.titleLabel.font.familyName, self.titleLabel.font.fontName);

            NSArray *nameArray = @[@"PingFangSC-Semibold",
                                   @".SFUIDisplay-Bold",
                                   @".SFUIDisplay-Semibold",
                                   @".SFUIText-Semibold",
                                   @".SFUIText-Bold"];
            
            CGFloat fontSize = self.titleLabel.font.pointSize;
        
            if ([nameArray containsObject:self.titleLabel.font.fontName]) {

                self.titleLabel.font = CLUIFontBoldMake(fontSize);
            } else if ([self.titleLabel.font.fontName isEqualToString:@".SFUIDisplay-Medium"] ||
                       [self.titleLabel.font.fontName isEqualToString:@".SFUIText-Medium"]) {
                
                self.titleLabel.font = CLUIFontMediumMake(fontSize);

            } else {
                self.titleLabel.font = CLUIFontMake(fontSize);
            }
        }
    }
    return self;
}


@end
