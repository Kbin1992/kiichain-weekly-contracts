# Week 2 KiiChain Smart Contract

## KiiChain Micro Lending Contract

For Week 2 of my KiiChain builder journey, I built a simple Micro Lending smart contract focused on basic onchain lending mechanics.

The goal of this contract is to explore how decentralized finance primitives work on KiiChain using Solidity and EVM compatibility.

This contract allows users to:
- Deposit KII tokens
- Request a simple loan
- Repay borrowed funds
- Track deposits and active loans onchain

Unlike a basic storage contract, this project introduces core DeFi concepts such as collateral logic, payable functions, state tracking, and peer to peer financial interactions.

## Why I Built This

KiiChain is heavily focused on PayFi, stablecoins, FX infrastructure, and real world financial applications.

Because of that, I wanted Week 2 to reflect a more finance oriented use case instead of another simple demo contract.

Micro lending is one of the most important primitives in decentralized finance and fits naturally with KiiChain’s vision for onchain financial infrastructure.

## Features

- Deposit funds into the contract
- Request loans with simple collateral logic
- Repay active loans
- View user deposits
- View active borrowed amount
- Emit events for all major actions

## Smart Contract Functions

### deposit()
Allows users to deposit KII into the contract.

### requestLoan(uint256 amount)
Allows users to request a loan if they meet collateral requirements.

### repayLoan()
Repay borrowed funds directly to the contract.

### getDeposit(address user)
Returns the deposited amount for a wallet.

### getLoan(address user)
Returns the active loan amount for a wallet.

## Deployment Steps

1. Open Remix IDE  
https://remix.ethereum.org/

2. Create a new Solidity file

3. Paste the smart contract code

4. Compile using Solidity version 0.8.x

5. Open Deploy and Run Transactions

6. Select Injected Provider MetaMask

7. Switch MetaMask to KiiChain Testnet Oro

8. Deploy the contract

9. Confirm transaction in MetaMask

## KiiChain Testnet Details

Network Name: KiiChain Testnet Oro  
Chain ID: 1336  
Currency Symbol: KII

## Official Links

Website  
https://kiichain.io/

Testnet  
https://kiichain.io/testnet

Faucet  
https://explorer.kiichain.io/faucet

GitHub  
https://github.com/KiiChain

Guild  
https://guild.xyz/kii-guild/home

## Goal

This project is part of my weekly builder series on KiiChain where I explore practical Solidity use cases related to payments, lending, and financial infrastructure.

More advanced PayFi and CrediFi experiments coming in future weeks.
