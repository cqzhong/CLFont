//
//  UILabel+CLFont.m
//  CLFont_Example
//
//  Created by cqz on 2019/10/29.
//  Copyright © 2019 cqz. All rights reserved.
//

#import "UILabel+CLFont.h"
#import "CLFontUtils.h"
#import <objc/runtime.h>

@implementation UILabel (CLFont)

+ (void)load{
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(fontInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
}

- (id)fontInitWithCoder:(NSCoder *)aDecode{
    
    [self fontInitWithCoder:aDecode];
    if (self) {
        if (self.tag != CLFontTag) {

//            NSLog(@"打印字体： text：%@ fontName: %@", self.text, self.font.fontName);
            
            NSArray *nameArray = @[@"PingFangSC-Semibold",
                                   @".SFUIDisplay-Bold",
                                   @".SFUIDisplay-Semibold",
                                   @".SFUIText-Semibold",
                                   @".SFUIText-Bold"];
            
            CGFloat fontSize = self.font.pointSize;
            
            if ([nameArray containsObject:self.font.fontName]) {
                
                self.font = CLUIFontBoldMake(fontSize);
            } else if ([self.font.fontName isEqualToString:@".SFUIDisplay-Medium"] ||
                       [self.font.fontName isEqualToString:@".SFUIText-Medium"]) {
                
                self.font = CLUIFontMediumMake(fontSize);
                
            } else {
                self.font = CLUIFontMake(fontSize);
            }

            
        }

    }
    return self;
}

@end
