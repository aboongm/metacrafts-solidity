const IntermediateCrafterToken = artifacts.require("IntermediateCrafterToken");

contract("IntermediateCrafterToken", (accounts) => {
    let interCrafterToken;

    before(async () => {
        interCrafterToken = await IntermediateCrafterToken.deployed()
    });

    it("gives the owner of the token 20M tokens", async () => {
        let balance = await interCrafterToken.balanceOf(accounts[0]);
        balance = web3.utils.fromWei(balance.toString(), "ether");
        assert.equal(balance, "20000000", "Balance should be 20M tokens for the owner");
    })

    it("can transfer tokens between accounts", async () => {
        let amount = web3.utils.toWei("1000", "ether");
        await interCrafterToken.transfer(accounts[1], amount, { from: accounts[0] });

        let balance = await interCrafterToken.balanceOf(accounts[1]);
        balance = web3.utils.fromWei(balance.toString(), "ether");
        assert.equal(balance, "1000", "Balance should be 1000 tokens for the account 1");
    })
});
