//
//  AnimationFuctions.swift
//  UIComponents
//
//  Created by azat on 13/02/2018.
//

import Foundation

public typealias TimelineFunction = (CGFloat) -> CGFloat

public enum AnimationFunctions {
    // no easing, no acceleration
    public static let linear: TimelineFunction = { t in t }
    // accelerating from zero velocity
    public static let easeInQuad: TimelineFunction = { t in t * t }
    // decelerating to zero velocity
    public static let easeOutQuad: TimelineFunction = { t in t * (2 - t) }
    // acceleration until halfway, then deceleration
    public static let easeInOutQuad: TimelineFunction = { t in
        if  t < 0.5 {
            return (2 * t * t)
        } else {
            return (-1 + (4 - 2 * t) * t)
        }
    }
    // accelerating from zero velocity
    public static let easeInCubic: TimelineFunction = {  t in t * t * t }
    // decelerating to zero velocity
    public static let easeOutCubic: TimelineFunction = {  t in pow(t - 1, 3) + 1 }
    // acceleration until halfway, then deceleration
    public static let easeInOutCubic: TimelineFunction = { t in
        if t < 0.5 {
            return 4 * pow(t, 3)
        } else {
            return (t - 1) * (2 * t - 2)*(2 * t - 2) + 1
        }
    }
    
    // accelerating from zero velocity
    public static let easeInQuart: TimelineFunction = {  t in pow(t, 4) }
    // decelerating to zero velocity
    public static let easeOutQuart: TimelineFunction = { t in 1 - pow(t - 1, 4) }
    // acceleration until halfway, then deceleration
    public static let easeInOutQuart: TimelineFunction = { t in
        if t < 0.5 {
            return 8 * pow(t, 4)
            
        } else {
            return 1 - 8 * pow(t - 1, 4)
        }
    }
    // accelerating from zero velocity
    public static let easeInQuint: TimelineFunction = { t in pow(t, 5) }
    // decelerating to zero velocity
    public static let easeOutQuint: TimelineFunction = { t in 1 + pow(t - 1, 5) }
    // acceleration until halfway, then deceleration
    public static let easeInOutQuint: TimelineFunction = { t in
        if t < 0.5 {
            return 16 * pow(t, 5)
        } else {
            return 1 + 16 * pow(t - 1, 5)
        }
    }
}
