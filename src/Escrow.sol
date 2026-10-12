// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Escrow {
    enum State { None, Funded, Released, Refunded, Disputed, Resolved }

    struct Deal {
        address buyer;
        address seller;
        uint256 amount;
        uint64 deadline;
        State state;
    }

    error NotImplemented();

    event EscrowCreated(uint256 indexed id, address indexed buyer, address indexed seller, uint256 amount, uint64 deadline);
    event EscrowReleased(uint256 indexed id, uint256 toSeller, uint256 fee);
    event EscrowRefunded(uint256 indexed id, uint256 amount);
    event EscrowDisputed(uint256 indexed id, address indexed by);
    event EscrowResolved(uint256 indexed id, bool toSeller);

    // TODO: storage (token, arbiter, treasury, feeBps, nextId, deals mapping)

    constructor(address token_, address arbiter_, address treasury_, uint16 feeBps_) {
        // TODO: validate and store
    }

    function create(address seller, uint256 amount, uint64 deadline) external returns (uint256 id) {
        revert NotImplemented();
    }

    function release(uint256 id) external {
        revert NotImplemented();
    }

    function reclaim(uint256 id) external {
        revert NotImplemented();
    }

    function dispute(uint256 id) external {
        revert NotImplemented();
    }

    function resolve(uint256 id, bool toSeller) external {
        revert NotImplemented();
    }
}