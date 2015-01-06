//
//  MapperTransform.swift
//  BaseClient
//
//  Created by Tristan Himmelman on 2014-10-07.
//  Copyright (c) 2014 hearst. All rights reserved.
//

import Foundation

public class MapperTransform<ObjectType, JSONType> {
  
    private let transformFromJSONFunc: ((value: AnyObject?) -> ObjectType?)?
    private let transformToJSONFunc: ((value: ObjectType?) -> JSONType?)?

    public init(){
    }
  
    public init(transformFromJSON: (value: AnyObject?) -> ObjectType?, transformToJSON: (value: ObjectType?) -> JSONType?) {
        self.transformFromJSONFunc = transformFromJSON
        self.transformToJSONFunc = transformToJSON
    }

    public func transformFromJSON(value: AnyObject?) -> ObjectType? {
        return transformFromJSONFunc?( value: value )
    }
    
    public func transformToJSON(value: ObjectType?) -> JSONType? {
        return transformToJSONFunc?( value: value )
    }
}
