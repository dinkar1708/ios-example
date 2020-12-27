# ios example
> Example - ios

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LFAlertController.svg)  
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

Various ios example

## Features

- [x] Custom View Controller
- [x] Auto layout
- [x] Table View
- [x] Collection View
- [x] Size Classes

## Requirements

- iOS 12.0+
- Xcode 12.0.1

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `ViewAnimator` by adding it to your `Podfile`:

```
pod 'ViewAnimator'
pod 'Cartography'
```
To get the full benefits import `ViewAnimator` wherever you import UIKit

``` swift
Example for two views
constrain(vc.view, view) { child, parent in
    // change the view position in custom vc
    child.left == parent.left + 25
    child.right == parent.right - 25
    child.bottom == parent.bottom - 10
    child.height == self.containerView.bounds.height
}
Ref documentation - 
https://github.com/robb/Cartography
```

To get the full benefits import `ViewAnimator` wherever you import UIKit

``` swift
import ViewAnimator
UIView.animate(views: self.collectionView!.orderedVisibleCells,
                animations: animations, options: [.curveEaseInOut], completion: {
                sender.isEnabled = true
                })
```

#### Carthage
Create a `Cartfile` that lists the framework and run `carthage update`.

```
github "ReactiveX/RxSwift" ~> 5.1.1
github "Alamofire/Alamofire"


```
#### Manually
### TODO
1. Download and drop ```.swift``` in this project.  

## Usage example

```swift

```

## Meta

[swift-image]:https://img.shields.io/badge/swift-5.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
