//
//  Copyright (c) 2019 Open Whisper Systems. All rights reserved.
//

import Foundation

@objc
public extension TSAccountManager {

    // MARK: - Dependencies

    class var databaseStorage: SDSDatabaseStorage {
        return SDSDatabaseStorage.shared
    }

    // MARK: -

    class func getOrCreateLocalThread(transaction: SDSAnyWriteTransaction) -> TSThread? {
        guard let localAddress = self.localAddress(with: transaction) else {
            owsFailDebug("Missing localAddress.")
            return nil
        }
        return TSContactThread.getOrCreateThread(withContactAddress: localAddress, transaction: transaction)
    }

    class func getOrCreateLocalThreadWithSneakyTransaction() -> TSThread? {
        assert(!Thread.isMainThread)

        var thread: TSThread?
        databaseStorage.write { transaction in
            thread = getOrCreateLocalThread(transaction: transaction)
        }
        return thread
    }

    var isRegisteredPrimaryDevice: Bool {
        return isRegistered && self.storedDeviceId() == OWSDevicePrimaryDeviceId
    }

    var isPrimaryDevice: Bool {
        return storedDeviceId() == OWSDevicePrimaryDeviceId
    }

    var storedServerUsername: String? {
        guard let serviceIdentifier = self.localAddress?.serviceIdentifier else {
            return nil
        }

        return isRegisteredPrimaryDevice ? serviceIdentifier : "\(serviceIdentifier).\(storedDeviceId())"
    }
}
