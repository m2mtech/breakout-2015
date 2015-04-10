//
//  Settings.swift
//  Breakout
//
//  Created by Martin Mandl on 08.04.15.
//  Copyright (c) 2015 m2m server software gmbh. All rights reserved.
//

import Foundation

class Settings {
    
    private struct Const {
        static let ColumnsKey = "Settings.Columns"
        static let RowsKey = "Settings.Rows"
        static let BallsKey = "Settings.Balls"
        static let DifficultyKey = "Settings.Difficulty"
        static let AutoStartKey = "Settings.AutoStart"
        static let SpeedKey = "Settings.Speed"
        static let ChangeKey = "Settings.ChangeIndicator"
    }
    
    private let defaults = NSUserDefaults.standardUserDefaults()
    
    var columns: Int? {
        get { return defaults.objectForKey(Const.ColumnsKey) as? Int}
        set { defaults.setObject(newValue, forKey: Const.ColumnsKey) }
    }

    var rows: Int? {
        get { return defaults.objectForKey(Const.RowsKey) as? Int}
        set { defaults.setObject(newValue, forKey: Const.RowsKey) }
    }

    var balls: Int? {
        get { return defaults.objectForKey(Const.BallsKey) as? Int}
        set { defaults.setObject(newValue, forKey: Const.BallsKey) }
    }

    var difficulty: Int? {
        get { return defaults.objectForKey(Const.DifficultyKey) as? Int}
        set { defaults.setObject(newValue, forKey: Const.DifficultyKey) }
    }

    var autoStart: Bool {
        get { return defaults.objectForKey(Const.AutoStartKey) as? Bool ?? false}
        set { defaults.setObject(newValue, forKey: Const.AutoStartKey) }
    }

    var speed: Float {
        get { return defaults.objectForKey(Const.SpeedKey) as? Float ?? 1.0 }
        set { defaults.setObject(newValue, forKey: Const.SpeedKey) }
    }
    
    var changed: Bool {
        get { return defaults.objectForKey(Const.ChangeKey) as? Bool ?? false }
        set { defaults.setObject(newValue, forKey: Const.ChangeKey) }
    }
    
    convenience init(defaultColumns: Int, defaultRows: Int, defaultBalls: Int, defaultDifficulty: Int) {
        self.init()
        if columns == nil { columns = defaultColumns }
        if rows == nil { rows = defaultRows }
        if balls == nil { balls = defaultBalls }
        if difficulty == nil { difficulty = defaultDifficulty }
    }

}
