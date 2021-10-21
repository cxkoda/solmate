// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.7.0;

import {Auth, Authority} from "../../../auth/Auth.sol";

contract MockAuthChild is Auth(msg.sender, Authority(address(0))) {
    bool public flag;

    function updateFlag() external requiresAuth {
        flag = true;
    }
}