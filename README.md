# PowerKit

[![CI Status](http://img.shields.io/travis/xushiyan/PowerKit.svg?style=flat)](https://travis-ci.org/xushiyan/PowerKit)
[![Version](https://img.shields.io/cocoapods/v/PowerKit.svg?style=flat)](http://cocoapods.org/pods/PowerKit)
[![License](https://img.shields.io/cocoapods/l/PowerKit.svg?style=flat)](http://cocoapods.org/pods/PowerKit)
[![Platform](https://img.shields.io/cocoapods/p/PowerKit.svg?style=flat)](http://cocoapods.org/pods/PowerKit)

## Quick Start
Import as framework
```
@import PowerKit;
```
Conveniently create [`UIColor`](Pod/Classes/UIColor+PowerKit.h) of these [flat colors](http://flatuicolors.com/).
```
UIColor *color = [UIColor flatSunflowerColor];
```
Conveniently present alert controller using [`UIViewController+PowerKit.h`](Pod/Classes/UIViewController+PowerKit.h) when Apple Mail is not configured properly.
```
[viewController presentNoMailAlert];
```

More useful categories can be found [here](https://github.com/xushiyan/PowerKit/tree/master/Pod/Classes)


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- Xcode 7

## Installation

PowerKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PowerKit"
```

## Author

XU SHIYAN, xushiyan.1990@gmail.com

## License

PowerKit is available under the MIT license. See the LICENSE file for more info.
