# 🔗 KiiChain Weekly Smart Contract Deployments

> A weekly builder series deploying meaningful, real-world smart contracts on **KiiChain Testnet Oro** — helping developers learn, build, and earn ORO rewards.

[![KiiChain](https://img.shields.io/badge/Network-KiiChain%20Testnet%20Oro-blueviolet)](https://kiichain.io)
[![Chain ID](https://img.shields.io/badge/Chain%20ID-1336-blue)](https://kiichain.io/testnet)
[![Solidity](https://img.shields.io/badge/Solidity-0.8.20-brightgreen)](https://soliditylang.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)

-----

## 🎯 About This Repository

This repo is part of the **KiiChain Builder Program** — a mission to help developers understand and build on KiiChain by deploying a new meaningful smart contract every week.

Each weekly contract:

- Is **fully commented** and beginner-friendly
- Covers a **real use case** (DeFi, RWA, PayFi, CrediFi, etc.)
- Can be deployed in **under 10 minutes** using Remix IDE
- Earns **+3 ORO** per weekly deployment on KiiChain testnet

-----

## 📁 Repository Structure

```
kiichain-weekly-contracts/
│
├── week-01/
│   ├── BuilderVault.sol       ← Smart contract source
│   ├── README.md              ← Week-specific guide
│   └── screenshots/           ← Deployment proof
│
├── week-02/                   ← Coming soon
├── week-03/                   ← Coming soon
│
└── README.md                  ← This file
```

-----

## ⚙️ KiiChain Testnet Configuration

Add this network to MetaMask before deploying:

|Parameter      |Value                                                     |
|---------------|----------------------------------------------------------|
|Network Name   |KiiChain Testnet Oro                                      |
|RPC URL        |`https://json-rpc.uno.sentry.testnet.v3.kiivalidator.com/`|
|Chain ID       |`1336`                                                    |
|Currency Symbol|`KII`                                                     |
|Explorer       |`https://testnet.explorer.kiichain.io`                    |


> 💧 **Need test tokens?** Use the faucet at: https://explorer.kiichain.io/faucet

-----

## 🚀 How to Deploy (Remix IDE — No Setup Needed)

### Step 1 — Add KiiChain to MetaMask

1. Open MetaMask → Networks → **Add Network**
1. Fill in the chain details from the table above
1. Save and switch to KiiChain Testnet Oro

### Step 2 — Get Test Tokens

1. Copy your MetaMask wallet address
1. Go to https://explorer.kiichain.io/faucet
1. Paste your address and request KII tokens
1. Wait ~30 seconds for tokens to arrive

### Step 3 — Open Remix IDE

1. Go to https://remix.ethereum.org
1. In the **File Explorer** (left panel), click the `+` icon
1. Name your file `BuilderVault.sol`
1. Paste the contract code from `week-01/BuilderVault.sol`

### Step 4 — Compile

1. Click the **Solidity Compiler** tab (second icon on left)
1. Set compiler version to **0.8.20**
1. Under **Advanced Settings** → EVM Version → select **london**
1. Click **Compile BuilderVault.sol**
1. ✅ No errors = ready to deploy

### Step 5 — Deploy

1. Click the **Deploy & Run Transactions** tab (third icon)
1. Under **Environment**, select **Injected Provider - MetaMask**
1. MetaMask will pop up — confirm switching to KiiChain Testnet Oro
1. Under **Contract**, select `BuilderVault`
1. In the constructor field, enter a registry name (e.g., `"KiiChain Builders"`)
1. Click **Deploy** → MetaMask will ask to confirm the transaction
1. ✅ Your contract is now live on KiiChain!

### Step 6 — Interact with Your Contract

Once deployed, you’ll see your contract under **Deployed Contracts** in Remix:

|Function           |Type           |What it does                         |
|-------------------|---------------|-------------------------------------|
|`registerAsBuilder`|Write          |Register your wallet as a builder    |
|`tipBuilder`       |Write (payable)|Send KII tip to another builder      |
|`getBuilder`       |Read           |View a builder’s full profile        |
|`getAllBuilders`   |Read           |List all registered builders         |
|`isBuilder`        |Read           |Check if a wallet is registered      |
|`totalBuilders`    |Read           |See how many builders have registered|

### Step 7 — Verify & Submit

1. Copy your **deployed contract address** from Remix
1. View it on the explorer: `https://testnet.explorer.kiichain.io/address/YOUR_CONTRACT_ADDRESS`
1. Take a screenshot as proof
1. Submit your deployment on KiiChain testnet → Claim your **+3 ORO**

-----

## 📅 Weekly Contract Series

|Week  |Contract           |Topic                                |Status  |
|------|-------------------|-------------------------------------|--------|
|Week 1|`BuilderVault.sol` |On-chain Builder Registry + Tip Vault|✅ Live  |
|Week 2|`StableSavings.sol`|Stablecoin Savings Pot (PayFi)       |🔜 Coming|
|Week 3|`RWARegistry.sol`  |Real World Asset Registry (RWA)      |🔜 Coming|
|Week 4|`MicroLoan.sol`    |Micro-lending Protocol (CrediFi)     |🔜 Coming|

-----

## 🌐 Official KiiChain Links

- 🌍 Website: https://kiichain.io
- 📖 Docs: https://docs.kiiglobal.io
- 💬 Discord: https://discord.gg/kiichain
- 🐦 Twitter/X: https://x.com/KiiChainio
- 🧑‍💻 GitHub: https://github.com/KiiChain
- 🏆 Quests: https://app.galxe.com/quest/KiiChain

-----

## 🤝 Contributing

This repo is open to the KiiChain builder community!

- Found a bug? Open an issue
- Want to add a contract? Open a PR with your `.sol` file + explanation
- Learning Solidity? Start with Week 1 and follow along

-----

## 📄 License

MIT License — free to use, modify, and share.

-----

*Built with ❤️ for the KiiChain ecosystem. Every contract deployed brings us closer to a decentralized financial future.*
