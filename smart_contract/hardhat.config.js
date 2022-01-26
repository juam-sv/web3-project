// 

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/kI1WwxNUXn-4B7atlzbQVenQr0N6bMpj',
      accounts: [ '07d4a85a3357d15ba06890897951e4e6bb8c37cafd1dad3a5f54997a488c644d' ]
    }
  }
}

