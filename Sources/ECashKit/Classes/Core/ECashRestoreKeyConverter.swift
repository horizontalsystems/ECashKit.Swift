import BitcoinCore
import Foundation
import HdWalletKit

class ECashRestoreKeyConverter: IRestoreKeyConverter {
    private let addressConverter: IAddressConverter
    private let purpose: Purpose

    init(addressConverter: IAddressConverter, purpose: Purpose) {
        self.addressConverter = addressConverter
        self.purpose = purpose
    }

    public func keysForApiRestore(publicKey: PublicKey) -> [String] {
        var keys = [publicKey.hashP2pkh.hs.hex]

        do {
            try keys.append(addressConverter.convert(publicKey: publicKey, type: purpose.scriptType).stringValue)
        } catch {}

        return keys
    }

    public func bloomFilterElements(publicKey: PublicKey) -> [Data] {
        [publicKey.hashP2pkh, publicKey.raw]
    }
}
