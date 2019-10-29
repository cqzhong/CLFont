//
//  CLFontUtils.m
//  CLFont_Example
//
//  Created by cqz on 2019/10/29.
//  Copyright © 2019 cqz. All rights reserved.
//

#import "CLFontUtils.h"
#import <CoreText/CoreText.h>
#import <objc/runtime.h>

NSUInteger const CLFontTag = 7101746;

//系统默认使用字体
UIFont * SystemRegularFontSize(CGFloat size) {
    
    return [UIFont systemFontOfSize:size weight:UIFontWeightRegular];
}

UIFont * SystemBoldFontSize(CGFloat size) {
    
    return [UIFont systemFontOfSize:size weight:UIFontWeightBold];
//    return [UIFont boldSystemFontOfSize:size];
}

UIFont * SystemMediumFontSize(CGFloat size) {
    
    return [UIFont systemFontOfSize:size weight:UIFontWeightMedium];
}

UIFont * AppSystemFont(BOOL isBold,
                    CGFloat inch_3_5,
                    CGFloat inch_4_0,
                    CGFloat inch_4_7,
                    CGFloat inch_5_5,
                    CGFloat inch_5_8,
                    CGFloat inch_6_1,
                    CGFloat inch_6_5) {
    if (CLIS_35INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_3_5) : SystemRegularFontSize(inch_3_5);
    }
    if (CLIS_40INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_4_0) : SystemRegularFontSize(inch_4_0);
    }
    if (CLIS_47INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_4_7) : SystemRegularFontSize(inch_4_7);
    }
    if (CLIS_55INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_5_5) : SystemRegularFontSize(inch_5_5);
    }
    if (CLIS_58INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_5_8) : SystemRegularFontSize(inch_5_8);
    }
    if (CLIS_61INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_6_1) : SystemRegularFontSize(inch_6_1);
    }
    if (CLIS_65INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_6_5) : SystemRegularFontSize(inch_6_5);
    }
    return isBold ? SystemBoldFontSize(inch_4_7) : SystemRegularFontSize(inch_4_7);
}


/*************************************************宏定义字体Function******************************************************************/

/*
 * 系统默认字体
 */
//使用常规字体
UIFont * CLSystemRegularFont(CGFloat inch_3_5,
                            CGFloat inch_4_0,
                            CGFloat inch_4_7,
                            CGFloat inch_5_5,
                            CGFloat inch_5_8,
                            CGFloat inch_6_1,
                            CGFloat inch_6_5) {
    
    return AppSystemFont(NO, inch_3_5, inch_4_0, inch_4_7, inch_5_5, inch_5_8, inch_6_1, inch_6_5);
}

//使用加粗体
UIFont * CLSystemBoldFont(CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5) {
    return AppSystemFont(YES, inch_3_5, inch_4_0, inch_4_7, inch_5_5, inch_5_8, inch_6_1, inch_6_5);
}

//使用中粗体
UIFont * CLSystemMediumFont(CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5) {
    if (CLIS_35INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_3_5);
    }
    if (CLIS_40INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_4_0);
    }
    if (CLIS_47INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_4_7);
    }
    if (CLIS_55INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_5_5);
    }
    if (CLIS_58INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_5_8);
    }
    if (CLIS_61INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_6_1);
    }
    if (CLIS_65INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_6_5);
    }
    return SystemMediumFontSize(inch_4_7);
}

/*
 * 使用知道名字的字体
 */
//fontName字体
UIFont * CLFontsProvidedByApplication(NSString *fontName,
                          CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5) {
    
    CGFloat fontSize = inch_4_7;
    if (CLIS_35INCH_SCREEN) {
        fontSize = inch_3_5;
    }
    if (CLIS_40INCH_SCREEN) {
        fontSize = inch_4_0;
    }
    if (CLIS_47INCH_SCREEN) {
        fontSize = inch_4_7;
    }
    if (CLIS_55INCH_SCREEN) {
        fontSize = inch_5_5;
    }
    if (CLIS_58INCH_SCREEN) {
        fontSize = inch_5_8;
    }
    if (CLIS_61INCH_SCREEN) {
        fontSize = inch_6_1;
    }
    if (CLIS_65INCH_SCREEN) {
        fontSize = inch_6_5;
    }

    return [UIFont fontWithName:fontName size:fontSize];
}




/*
 * 路径字体
 */

//file path 路径字体
UIFont * CLCustomFontFilePath(NSString *filePath,
                              CGFloat inch_3_5,
                              CGFloat inch_4_0,
                              CGFloat inch_4_7,
                              CGFloat inch_5_5,
                              CGFloat inch_5_8,
                              CGFloat inch_6_1,
                              CGFloat inch_6_5) {

    CGFloat fontSize = inch_4_7;
    if (CLIS_35INCH_SCREEN) {
        fontSize = inch_3_5;
    }
    if (CLIS_40INCH_SCREEN) {
        fontSize = inch_4_0;
    }
    if (CLIS_47INCH_SCREEN) {
        fontSize = inch_4_7;
    }
    if (CLIS_55INCH_SCREEN) {
        fontSize = inch_5_5;
    }
    if (CLIS_58INCH_SCREEN) {
        fontSize = inch_5_8;
    }
    if (CLIS_61INCH_SCREEN) {
        fontSize = inch_6_1;
    }
    if (CLIS_65INCH_SCREEN) {
        fontSize = inch_6_5;
    }

    NSURL *fontUrl = [NSURL fileURLWithPath:filePath];
    CGDataProviderRef fontDataProvider = CGDataProviderCreateWithURL((__bridge CFURLRef)fontUrl);
    CGFontRef fontRef = CGFontCreateWithDataProvider(fontDataProvider);
    CGDataProviderRelease(fontDataProvider);
    CTFontManagerRegisterGraphicsFont(fontRef, NULL);
    NSString *fontName = CFBridgingRelease(CGFontCopyPostScriptName(fontRef));
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    CGFontRelease(fontRef);
    return font;
}

