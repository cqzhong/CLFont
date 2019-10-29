# CLFont

[![CI Status](https://img.shields.io/travis/cqzhong/CLFont.svg?style=flat)](https://travis-ci.org/cqzhong/CLFont)
[![Version](https://img.shields.io/cocoapods/v/CLFont.svg?style=flat)](https://cocoapods.org/pods/CLFont)
[![License](https://img.shields.io/cocoapods/l/CLFont.svg?style=flat)](https://cocoapods.org/pods/CLFont)
[![Platform](https://img.shields.io/cocoapods/p/CLFont.svg?style=flat)](https://cocoapods.org/pods/CLFont)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- 使用方法 
```objc

_nameLabel.font = CLUIFontMake(20);
_nameLabel.font = CLUIFontBoldMake(20);
_nameLabel.font = CLUIFontMediumMake(20);
_nameLabel.font = CLFontsProvidedMake(@"Copperplate",20 )
_nameLabel.font = CLUIFilePathFontMake([[NSBundle mainBundle] pathForResource:@"DFKaiGB-W5" ofType:@"otf"],60);

```
 
## Installation

CLFont is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CLFont'
```

## Author

cqzhong

## License

CLFont is available under the MIT license. See the LICENSE file for more info.
