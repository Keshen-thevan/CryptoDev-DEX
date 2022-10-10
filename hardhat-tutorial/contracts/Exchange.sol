// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Exchange is ERC20 {
    address public cryptoDevTokenAddress;

    constructor(address _CryptoDevtoken) ERC20("CryptoDev LP Token", "CDLP"){
        require(_CryptoDevtoken != address(0), "Token address passed si a null address");
        cryptoDevTokenAddress = _CryptoDevtoken;
    }

    //return the amoung of Crypto Dev Tokens held by the contract
    function getReserve() public view returns(uint){
        return ERC20(cryptoDevTokenAddress).balanceOf(address(this));
    }

    function addLiquidity(uint _amount) public payable returns(uint){
        uint liquidty;
        uint ethBalance = address(this).balance;
        uint cryptoDevToken = getReserve();
        ERC20 cryptoDevTOken = ERC20(cryptoDevTokenAddress);

        // if the reserve is empty, intake any user supplied value for "Ether" and "Crypto Dev" tokens becoz no ratio
    }
}