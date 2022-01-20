//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0; // Version declaration of solidity

contract Transactions {
    
    uint256 transactionCounter; // var responsible for do a count of all transactions

    //"function" who will take data from somewhere else and make the transfer.
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
    
    struct TransferStruct { // "object" of transference who contain the mains atributes needed for a transaction
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    
    TransferStruct[] transactions; // an array of all transactions on a format of the TransferStruct

    // function for add transactions to blockchain
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCounter += 1; // increse the transaction counter
        //add the new item for the array
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
        
        //pass the values to/execute the "function" Transfer
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);


        
    }
    // retorna as transações
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
    // retorna o transactionCount declarado anteriormente
    function getTransactionCounter() public view returns (uint256) {
        return transactionCounter;
    }


}