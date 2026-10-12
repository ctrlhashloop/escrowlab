// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Escrow} from "../../src/Escrow.sol";
import {MockToken} from "../../src/MockToken.sol";

contract EscrowTest is Test {
    Escrow escrow;
    MockToken token;

    address buyer = makeAddr("buyer");
    address seller = makeAddr("seller");
    address arbiter = makeAddr("arbiter");
    address treasury = makeAddr("treasury");
    uint16 constant FEE_BPS = 250; // 2.5%

    function setUp() public {
        token = new MockToken();
        escrow = new Escrow(address(token), arbiter, treasury, FEE_BPS);
        token.mint(buyer, 1_000e18);
        vm.prank(buyer);
        token.approve(address(escrow), type(uint256).max);
    }

    function test_Create_Succeeds() public {
        vm.skip(true); // TODO
    }
    function test_Create_RevertsOnZeroAmount() public { vm.skip(true); }
    function test_Create_RevertsOnZeroSeller() public { vm.skip(true); }
    function test_Create_RevertsOnPastDeadline() public { vm.skip(true); }
    function test_Release_PaysSellerAndTreasury() public { vm.skip(true); }
    function test_Release_RevertsForNonBuyer() public { vm.skip(true); }
    function test_Release_RevertsIfAlreadyReleased() public { vm.skip(true); }
    function test_Reclaim_RevertsBeforeDeadline() public { vm.skip(true); }
    function test_Reclaim_SucceedsAfterDeadline() public { vm.skip(true); }
    function test_Dispute_ByBuyerOrSeller() public { vm.skip(true); }
    function test_Resolve_OnlyArbiter() public { vm.skip(true); }
}