# Week 1 — BuilderVault.sol 🏗️

**Theme: On-Chain Builder Registry + Tip Vault**
**Network: KiiChain Testnet Oro (Chain ID: 1336)**
**Reward: +3 ORO**

-----

## What This Contract Does

`BuilderVault` is an on-chain registry where KiiChain developers can:

1. **Register** their wallet as a builder with a name and project description
1. **Tip** other builders directly in testnet KII
1. **View** all registered builders and their profiles

This demonstrates core Solidity patterns:

- `mapping` — storing structured data by address
- `struct` — grouping related data together
- `payable` functions — receiving and forwarding native tokens
- `events` — logging on-chain activity
- `modifiers` — reusable access control logic

-----

## Contract File

📄 [`BuilderVault.sol`](./BuilderVault.sol)

-----

## Quick Deploy Checklist

- [ ] MetaMask installed with KiiChain Testnet Oro added (Chain ID: 1336)
- [ ] Test KII received from faucet
- [ ] Remix IDE open at https://remix.ethereum.org
- [ ] Contract compiled with Solidity 0.8.20 + EVM version: london
- [ ] Deployed via Injected Provider (MetaMask)
- [ ] Contract address copied and saved
- [ ] Viewed on explorer: https://testnet.explorer.kiichain.io
- [ ] Screenshot taken for proof
- [ ] ORO claimed on KiiChain testnet dashboard

-----

## Interact After Deployment

### Register as a builder:

```
registerAsBuilder("YourName", "What you're building on KiiChain")
```

### Tip another builder:

```
tipBuilder(0xAnotherBuilderAddress)   ← add value in Wei (e.g. 1000000000000000 = 0.001 KII)
```

### Check a builder profile:

```
getBuilder(0xSomeWalletAddress)
```

-----

## Why This Matters for KiiChain

KiiChain’s vision includes **PayFi** — payment infrastructure on-chain. A tip vault is a primitive building block of that vision: peer-to-peer value transfer, tracked transparently on-chain, no intermediaries. Week 1 starts simple, but the concepts scale to stablecoins, RWA registries, and cross-border payment rails.

-----
