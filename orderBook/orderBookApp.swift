//
//  orderBookApp.swift
//  orderBook
//
//  Created by dbot on 20/5/25.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers

@main
struct orderBookApp: App {
    var body: some Scene {
        DocumentGroup(editing: .itemDocument, migrationPlan: orderBookMigrationPlan.self) {
            ContentView()
        }
    }
}

extension UTType {
    static var itemDocument: UTType {
        UTType(importedAs: "com.example.item-document")
    }
}

struct orderBookMigrationPlan: SchemaMigrationPlan {
    static var schemas: [VersionedSchema.Type] = [
        orderBookVersionedSchema.self,
    ]

    static var stages: [MigrationStage] = [
        // Stages of migration between VersionedSchema, if required.
    ]
}

struct orderBookVersionedSchema: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)

    static var models: [any PersistentModel.Type] = [
        Item.self,
    ]
}
