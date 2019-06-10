//
//  Theme.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

public protocol SpectrumColor {
    static var name: String { get set }
    static var dark: UIColor { get set }
    static var mediumDark: UIColor { get set }
    static var regular: UIColor { get set }
    static var mediumLight: UIColor { get set }
    static var light: UIColor { get set }
}


extension SpectrumColor {
    
    static func darkGradient() -> (UIColor, UIColor) {
        return (dark, mediumDark)
    }
    
    static func mediumDarkGradient() -> (UIColor, UIColor) {
        return (mediumDark, regular)
    }
    
    static func gradients() -> [(UIColor, UIColor)] {
        return [(dark, mediumDark), (mediumDark, regular), (regular, mediumLight), (mediumLight, light)]
    }
    
    static func colors() -> [UIColor] {
        return [dark, mediumDark, regular, mediumLight, light]
    }
}

public struct ColorSpectrum {
    public let name: String
    public let dark: UIColor
    public let mediumDark: UIColor
    public let regular: UIColor
    public let mediumLight: UIColor
    public let light: UIColor
    
    init(name: String, dark: UIColor, mediumDark: UIColor, regular: UIColor, mediumLight: UIColor, light: UIColor) {
        self.name = name
        self.dark = dark
        self.mediumDark = mediumDark
        self.regular = regular
        self.mediumLight = mediumLight
        self.light = light
    }
}

extension ColorSpectrum {
    public func darkGradient() -> (UIColor, UIColor) {
        return (dark, mediumDark)
    }
    
    public func mediumDarkGradient() -> (UIColor, UIColor) {
        return (mediumDark, regular)
    }
    
    public func gradients() -> [(UIColor, UIColor)] {
        return [(dark, mediumDark), (mediumDark, regular), (regular, mediumLight), (mediumLight, light)]
    }
    
    public func colors() -> [UIColor] {
        return [dark, mediumDark, regular, mediumLight, light]
    }
}

public let SpectrumPurple: ColorSpectrum = {
    return ColorSpectrum(
        name: "Purple",
        dark: UIColor(hex: 0x1A023B, alpha: 1.0),
        mediumDark: UIColor(hex: 0x470D9D, alpha: 1.0),
        regular: UIColor(hex: 0x7126EE, alpha: 1.0),
        mediumLight: UIColor(hex: 0x907FFC, alpha: 1.0),
        light: UIColor(hex: 0xE2E5FF, alpha: 1.0)
    )
}()

public let SpectrumGreen: ColorSpectrum =  {
    return ColorSpectrum(
        name: "Green",
        dark: UIColor(hex: 0x293033, alpha: 1.0),
        mediumDark: UIColor(hex: 0x14664A, alpha: 1.0),
        regular: UIColor(hex: 0x24B383, alpha: 1.0),
        mediumLight: UIColor(hex: 0x62D9B1, alpha: 1.0),
        light: UIColor(hex: 0xE6F2EE, alpha: 1.0)
    )
}()

public let SpectrumBlue: ColorSpectrum = {
    return ColorSpectrum(
        name: "Blue",
        dark: UIColor(hex: 0x1C282E, alpha: 1.0),
        mediumDark: UIColor(hex: 0x136483, alpha: 1.0),
        regular: UIColor(hex: 0x008FBB, alpha: 1.0),
        mediumLight: UIColor(hex: 0x46B2C3, alpha: 1.0),
        light: UIColor(hex: 0xF7FAFA, alpha: 1.0)
    )
}()

public let SpectrumPlum: ColorSpectrum = {
    return ColorSpectrum(
        name: "Plum",
        dark: UIColor(hex: 0x6B2A5F, alpha: 1.0),
        mediumDark: UIColor(hex: 0xB44C78, alpha: 1.0),
        regular: UIColor(hex: 0xFF7079, alpha: 1.0),
        mediumLight: UIColor(hex: 0xF9AC9D, alpha: 1.0),
        light: UIColor(hex: 0xF7D9C4, alpha: 1.0)
    )
}()

public let SpectrumHarvest: ColorSpectrum = {
    return ColorSpectrum(
        name: "Harvest",
        dark: UIColor(hex: 0x2C1F47, alpha: 1.0),
        mediumDark: UIColor(hex: 0x692A6F, alpha: 1.0),
        regular: UIColor(hex: 0xBF406A, alpha: 1.0),
        mediumLight: UIColor(hex: 0xED8F60, alpha: 1.0),
        light: UIColor(hex: 0xF0E675, alpha: 1.0)
    )
}()

public let SpectrumMarine: ColorSpectrum = {
    return ColorSpectrum(
        name: "Marine",
        dark: UIColor(hex: 0x014289, alpha: 1.0),
        mediumDark: UIColor(hex: 0x006FAF, alpha: 1.0),
        regular: UIColor(hex: 0x009AC0, alpha: 1.0),
        mediumLight: UIColor(hex: 0x00CCBC, alpha: 1.0),
        light: UIColor(hex: 0x60F3AB, alpha: 1.0)
    )
}()

public let SpectrumCoastal: ColorSpectrum = {
    return ColorSpectrum(
        name: "Coastal",
        dark: UIColor(hex: 0x003659, alpha: 1.0),
        mediumDark: UIColor(hex: 0x0B99A7, alpha: 1.0),
        regular: UIColor(hex: 0x37C4AA, alpha: 1.0),
        mediumLight: UIColor(hex: 0xB6E9C1, alpha: 1.0),
        light: UIColor(hex: 0xEEFBEB, alpha: 1.0)
    )
}()

public let SpectrumHarbor: ColorSpectrum = {
    return ColorSpectrum(
        name: "Harbor",
        dark: UIColor(hex: 0x4365B3, alpha: 1.0),
        mediumDark: UIColor(hex: 0x5EB5D7, alpha: 1.0),
        regular: UIColor(hex: 0x84EDED, alpha: 1.0),
        mediumLight: UIColor(hex: 0xBBFAF0, alpha: 1.0),
        light: UIColor(hex: 0xF3FFFC, alpha: 1.0)
    )
}()

public let SpectrumRose: ColorSpectrum = {
    return ColorSpectrum(
        name: "Rose",
        dark: UIColor(hex: 0x990F3D, alpha: 1.0),
        mediumDark: UIColor(hex: 0xCC2944, alpha: 1.0),
        regular: UIColor(hex: 0xD97787, alpha: 1.0),
        mediumLight: UIColor(hex: 0xE6ACB6, alpha: 1.0),
        light: UIColor(hex: 0xE6D6CF, alpha: 1.0)
    )
}()

public let SpectrumLavender: ColorSpectrum = {
    return ColorSpectrum(
        name: "Lavender",
        dark: UIColor(hex: 0x4A3341, alpha: 1.0),
        mediumDark: UIColor(hex: 0x6D4D63, alpha: 1.0),
        regular: UIColor(hex: 0x7E6991, alpha: 1.0),
        mediumLight: UIColor(hex: 0xA3A4BE, alpha: 1.0),
        light: UIColor(hex: 0xE0E6E9, alpha: 1.0)
    )
}()

public let SpectrumPastel: ColorSpectrum = {
    return ColorSpectrum(
        name: "Pastel",
        dark: UIColor(hex: 0x86E3CE, alpha: 1.0),
        mediumDark: UIColor(hex: 0xD0E6A5, alpha: 1.0),
        regular: UIColor(hex: 0xFFDD94, alpha: 1.0),
        mediumLight: UIColor(hex: 0xFA897B, alpha: 1.0),
        light: UIColor(hex: 0xCCABD8, alpha: 1.0)
    )
}()

public let SpectrumSolar: ColorSpectrum = {
    return ColorSpectrum(
        name: "Solar",
        dark: UIColor(hex: 0x597C80, alpha: 1.0),
        mediumDark: UIColor(hex: 0x4F1E31, alpha: 1.0),
        regular: UIColor(hex: 0xC02642, alpha: 1.0),
        mediumLight: UIColor(hex: 0xDA5A41, alpha: 1.0),
        light: UIColor(hex: 0xF2D06C, alpha: 1.0)
    )
}()

public let SpectrumCandy: ColorSpectrum = {
    return ColorSpectrum(
        name: "Candy",
        dark: UIColor(hex: 0x303030, alpha: 1.0),
        mediumDark: UIColor(hex: 0x7C5EFD, alpha: 1.0),
        regular: UIColor(hex: 0xFF4848, alpha: 1.0),
        mediumLight: UIColor(hex: 0x99EEEE, alpha: 1.0),
        light: UIColor(hex: 0xF7BC23, alpha: 1.0)
    )
}()

public let SpectrumSunrise: ColorSpectrum = {
    return ColorSpectrum(
        name: "Sunrise",
        dark: UIColor(hex: 0x031B88, alpha: 1.0),
        mediumDark: UIColor(hex: 0x6096FD, alpha: 1.0),
        regular: UIColor(hex: 0xAAB6FB, alpha: 1.0),
        mediumLight: UIColor(hex: 0xFB7B8E, alpha: 1.0),
        light: UIColor(hex: 0xFAA7B8, alpha: 1.0)
    )
}()

