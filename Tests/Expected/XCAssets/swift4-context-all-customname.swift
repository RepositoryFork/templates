// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias AssetColorTypeAlias = NSColor
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias AssetColorTypeAlias = UIColor
  typealias Image = UIImage
#endif

// swiftlint:disable file_length

@available(*, deprecated, renamed: "XCTImageAsset")
typealias XCTAssetsType = XCTImageAsset

struct XCTImageAsset {
  fileprivate var name: String

  var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

struct XCTColorAsset {
  fileprivate var name: String

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  var color: AssetColorTypeAlias {
    return AssetColorTypeAlias(asset: self)
  }
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
enum XCTAssets {
  enum Colors {
    enum _24Vision {
      static let background = XCTColorAsset(name: "24Vision/Background")
      static let primary = XCTColorAsset(name: "24Vision/Primary")
    }
    static let orange = XCTImageAsset(name: "Orange")
    enum Vengo {
      static let primary = XCTColorAsset(name: "Vengo/Primary")
      static let tint = XCTColorAsset(name: "Vengo/Tint")
    }

    // swiftlint:disable trailing_comma
    static let allColors: [XCTColorAsset] = [
      _24Vision.background,
      _24Vision.primary,
      Vengo.primary,
      Vengo.tint,
    ]
    static let allImages: [XCTImageAsset] = [
      orange,
    ]
    // swiftlint:enable trailing_comma
    @available(*, deprecated, renamed: "allImages")
    static let allValues: [XCTAssetsType] = allImages
  }
  enum Images {
    enum Exotic {
      static let banana = XCTImageAsset(name: "Exotic/Banana")
      static let mango = XCTImageAsset(name: "Exotic/Mango")
    }
    static let `private` = XCTImageAsset(name: "private")
    enum Round {
      static let apricot = XCTImageAsset(name: "Round/Apricot")
      enum Red {
        static let apple = XCTImageAsset(name: "Round/Apple")
        enum Double {
          static let cherry = XCTImageAsset(name: "Round/Double/Cherry")
        }
        static let tomato = XCTImageAsset(name: "Round/Tomato")
      }
    }

    // swiftlint:disable trailing_comma
    static let allColors: [XCTColorAsset] = [
    ]
    static let allImages: [XCTImageAsset] = [
      Exotic.banana,
      Exotic.mango,
      `private`,
      Round.apricot,
      Round.Red.apple,
      Round.Red.Double.cherry,
      Round.Red.tomato,
    ]
    // swiftlint:enable trailing_comma
    @available(*, deprecated, renamed: "allImages")
    static let allValues: [XCTAssetsType] = allImages
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the XCTImageAsset.image property")
  convenience init!(asset: XCTImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

extension AssetColorTypeAlias {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: XCTColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

private final class BundleToken {}
