// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum L10n {
  /// Some alert body there
  case AlertMessage
  /// Title of the alert
  case AlertTitle
  /// Hello, my name is %@ and I'm %d
  case Greetings(String, Int)
  /// These are %3$@'s %1$d %2$@.
  case ObjectOwnership(Int, String, String)
  /// You have %d apples
  case ApplesCount(Int)
  /// Those %d bananas belong to %@.
  case BananasOwner(Int, String)
  /// Some Reserved Keyword there
  case SettingsNavigationBarSelf
  /// Settings
  case SettingsNavigationBarTitleEvenDeeper
  /// DeepSettings
  case SettingsNavigationBarTitleEvenDeeperThanWeCanHandle
  /// Here you can change some user profile settings.
  case SeTTingsUSerProFileSectioNFooterText
  /// User Profile Settings
  case SettingsUserProfileSectionHeaderTitle
}
// swiftlint:enable type_body_length

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .AlertMessage:
        return L10n.tr("alert_message")
      case .AlertTitle:
        return L10n.tr("alert_title")
      case .Greetings(let p1, let p2):
        return L10n.tr("greetings", p1, p2)
      case .ObjectOwnership(let p1, let p2, let p3):
        return L10n.tr("ObjectOwnership", p1, p2, p3)
      case .ApplesCount(let p1):
        return L10n.tr("apples.count", p1)
      case .BananasOwner(let p1, let p2):
        return L10n.tr("bananas.owner", p1, p2)
      case .SettingsNavigationBarSelf:
        return L10n.tr("settings.navigation-bar.self")
      case .SettingsNavigationBarTitleEvenDeeper:
        return L10n.tr("settings.navigation-bar.title.even.deeper")
      case .SettingsNavigationBarTitleEvenDeeperThanWeCanHandle:
        return L10n.tr("settings.navigation-bar.title.even.deeper.than.we.can.handle")
      case .SeTTingsUSerProFileSectioNFooterText:
        return L10n.tr("seTTings.uSer-proFile-sectioN.footer_text")
      case .SettingsUserProfileSectionHeaderTitle:
        return L10n.tr("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }

  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

func tr(key: L10n) -> String {
  return key.string
}