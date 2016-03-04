//
//  Reflection.swift
//  Reflection
//
//  Created by Christian Otkjær on 04/03/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public func typeName(thing: Any) -> String
{
    return (thing is Any.Type) ? "\(thing)" : "\(thing.dynamicType)"
}

public func typeName(thing: Any?) -> String
{
    guard let thing = thing else { return "nil" }

    return typeName(thing)
}