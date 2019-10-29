//
//  CLFontUtils.h
//  CLFont_Example
//
//  Created by cqz on 2019/10/29.
//  Copyright © 2019 cqz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLDeviceUtils.h"

// 设备屏幕尺寸
// 3.5寸  iPhone 4s
#define CLIS_35INCH_SCREEN [CLDeviceUtils is35InchScreen]
// 4.0寸  iPhone 5
#define CLIS_40INCH_SCREEN [CLDeviceUtils is40InchScreen]
// 4.7寸 iPhone 6
#define CLIS_47INCH_SCREEN [CLDeviceUtils is47InchScreen]
// 5.5寸 iPhone 6p
#define CLIS_55INCH_SCREEN [CLDeviceUtils is55InchScreen]
// 5.8寸 iPhone X iPhone XS
#define CLIS_58INCH_SCREEN [CLDeviceUtils is58InchScreen]
// 6.1寸 iPhone XR
#define CLIS_61INCH_SCREEN [CLDeviceUtils is61InchScreen]
// 6.5寸 iPhone XS Max
#define CLIS_65INCH_SCREEN [CLDeviceUtils is65InchScreen]

//当使用xib时候，如果不想根据屏幕改变字体大小就设置tag为
FOUNDATION_EXPORT NSUInteger const CLFontTag;

/**
 *  系统正常字体
 */
FOUNDATION_EXTERN UIFont * CLSystemRegularFont(CGFloat inch_3_5,
                             CGFloat inch_4_0,
                             CGFloat inch_4_7,
                             CGFloat inch_5_5,
                             CGFloat inch_5_8,
                             CGFloat inch_6_1,
                             CGFloat inch_6_5);

/**
 *  系统最粗体字体
 */
FOUNDATION_EXTERN UIFont * CLSystemBoldFont(CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5);

/**
 *  系统中粗体字体
 */
FOUNDATION_EXTERN UIFont * CLSystemMediumFont(CGFloat inch_3_5,
                            CGFloat inch_4_0,
                            CGFloat inch_4_7,
                            CGFloat inch_5_5,
                            CGFloat inch_5_8,
                            CGFloat inch_6_1,
                            CGFloat inch_6_5);
/**
 * 使用包内含有，并知道名字的字体
 */
FOUNDATION_EXTERN UIFont * CLFontsProvidedByApplication(NSString *fontName,
                                      CGFloat inch_3_5,
                                      CGFloat inch_4_0,
                                      CGFloat inch_4_7,
                                      CGFloat inch_5_5,
                                      CGFloat inch_5_8,
                                      CGFloat inch_6_1,
                                      CGFloat inch_6_5);

/**
 *  下载字体
 */
FOUNDATION_EXTERN UIFont * CLCustomFontFilePath(NSString *filePath,
                                                CGFloat inch_3_5,
                                                CGFloat inch_4_0,
                                                CGFloat inch_4_7,
                                                CGFloat inch_5_5,
                                                CGFloat inch_5_8,
                                                CGFloat inch_6_1,
                                                CGFloat inch_6_5);

// 知道字体名字
#define CLFontsProvidedMake(fontName, font)       CLFontsProvidedByApplication(fontName, (font - 2), (font - 2), font, (font + 1), font, font, (font + 1))

// 本地字体路径 大小
#define CLUIFilePathFontMake(filePath, font)    CLCustomFontFilePath(filePath, (font - 2), (font - 2), font, (font + 1), font, font, (font + 1))



//App的主字体 平方体
#define CLUIFontMake(font)                      CLSystemRegularFont((font - 2), (font - 2), font, (font + 1), font, font, (font + 1))
#define CLUIFontBoldMake(font)                  CLSystemBoldFont((font - 2), (font - 2), font, (font + 1), font, font, (font + 1))
#define CLUIFontMediumMake(font)                  CLSystemMediumFont((font - 2), (font - 2), font, (font + 1), font, font, (font + 1))


