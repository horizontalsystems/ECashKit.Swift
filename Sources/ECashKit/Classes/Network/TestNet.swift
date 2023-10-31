import BitcoinCore

class TestNet: INetwork {
    let bundleName = "ECash"

    let maxBlockSize: UInt32 = 32 * 1024 * 1024
    let pubKeyHash: UInt8 = 0x6f
    let privateKey: UInt8 = 0xef
    let scriptHash: UInt8 = 0xc4
    let bech32PrefixPattern: String = "ecashtest"
    let xPubKey: UInt32 = 0x043587cf
    let xPrivKey: UInt32 = 0x04358394
    let magic: UInt32 = 0xf4e5f3f4
    let port = 18333
    let coinType: UInt32 = 1
    let sigHash: SigHashType = .bitcoinCashAll
    var syncableFromApi: Bool = true
    var blockchairChainId: String = ""

    let dnsSeeds = [
        "testnet-seed.bitcoinabc.org",
        "testnet-seed-abc.bitcoinforks.org"
    ]

    let dustRelayTxFee = 1000    // https://github.com/Bitcoin-ABC/bitcoin-abc/blob/master/src/policy/policy.h#L78
}
