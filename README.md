# BC-AMM
AMM ( automated market maker ) is implemented in Solidity ( 0.8.7 ) via Remix online IDE for 2 ERC20 Tokens ( VPT and MMT ). Adresses of tokens are hardcoded. Mint/burn of LP tokens and fees are not implemented due to simplicity. addLiquidity and removeLiquidity are implemented in a way to keep price constant. swapVPT2MMT,swapMMT2VPT are implemented to keep prudct constant - x * y = k. All contracts are deployed on test Ethereum BC - Goerli BC.

Address on Goerli BC:

VPT
0x77B829a682Ed71EF6D99F2Eec0B373770A64b519

MMT
0xc80E2d87C1Be040bf66557195d4CE8E194eEb14A

AMM_VPT2MMT
0x68CeEcD8d932f6a83E7c4aEdEf15f7FE5a7a08Ed

Below is GPT assesment of the code:

It is difficult to determine if there is a bug in the code without more context or a description of the problem that you are experiencing. However, here are a few potential issues that you may want to consider:

The contract does not check whether the amount parameter passed to the swapVPT2MMT function is greater than zero. This could result in an infinite loop if the amount is zero or negative.

The transferFrom function call in the swapVPT2MMT function could fail if the caller does not have sufficient allowance for the specified amount of tokens.

The swapVPT2MMT function does not check whether the contract has sufficient balance of token1 to fulfill the swap. This could result in an error if the contract does not have enough tokens to complete the swap.

The swapVPT2MMT function does not handle the case where the amount is greater than the contract's balance of token1. This could result in an incorrect calculation of the dy variable and an incorrect amount of token2 being transferred to the caller.

I recommend carefully reviewing the code and testing it thoroughly to ensure that it is functioning as intended. If you are still experiencing issues, please provide more information about the problem that you are encountering and any error messages that you are seeing.
