const DefiInsurance = artifacts.require('./DefiInsurance.sol')

require('chai')
    .use(require('chai-as-promised'))
    .should()

contract('DefiInsurance', ([deployer, author, tipper]) => {
    let defiInsurance

    before(async () => {
        defiInsurance = await DefiInsurance.deployed()
    })

    describe('deployment', async () => {
        it('deploys successfully', async () => {
            const address = await defiInsurance.address
            assert.notEqual(address, 0x0)
            assert.notEqual(address, '')
            assert.notEqual(address, null)
            assert.notEqual(address, undefined)
        })

        it('has a name', async () => {
            const name = await defiInsurance.name()
            assert.equal(name, 'DefiInsurance')
        })
    })
})