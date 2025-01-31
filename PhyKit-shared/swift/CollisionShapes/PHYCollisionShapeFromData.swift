//
//  PHYCollisionShapeFromData.swift
//  BulletPhysics
//
//  Created by Adam Eisfeld on 2020-06-14.
//  Copyright © 2020 adam. All rights reserved.
//

import Foundation

/// A collision shape built from previously serialized data
public class PHYCollisionShapeFromData: PHYCollisionShape {
    
    public let internalShape: CPHYCollisionShape
    
    public init(serializedData: Data) {
        internalShape = CPHYCollisionShape(serializedData: serializedData)
    }
    
}

public extension PHYCollisionShape {
    
    /// Serializes this collision shape's internal structure into Data which can be saved to disk and loaded later via a PHYCollisionShapeFromData instance.
    /// - Returns: Returns a data representation of this shape's internal structure.
    func serialize() -> Data {
        return internalShape.serialize()
    }
    
}
