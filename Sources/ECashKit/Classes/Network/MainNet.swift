import BitcoinCore

public class MainNet: INetwork {
    public let bundleName = "ECash"

    public let maxBlockSize: UInt32 = 32 * 1024 * 1024
    public let pubKeyHash: UInt8 = 0x00
    public let privateKey: UInt8 = 0x80
    public let scriptHash: UInt8 = 0x05
    public let bech32PrefixPattern: String = "ecash"
    public let xPubKey: UInt32 = 0x0488_B21E
    public let xPrivKey: UInt32 = 0x0488_ADE4
    public let magic: UInt32 = 0xE3E1_F3E8
    public let port = 8333
    public let coinType: UInt32 = 899
    public let sigHash: SigHashType = .bitcoinCashAll
    public var syncableFromApi: Bool = true
    public var blockchairChainId: String = "ecash"

    public let dnsSeeds = [
        "seed.bitcoinabc.org", // Bitcoin ABC seeder
        "seeder.fabien.cash", // Fabien
        "seeder.status.cash", // status.cash
    ]

    public let dustRelayTxFee = 1000

    public init() {}
}
