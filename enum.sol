// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Election {
    enum Status {
        Accepted,
        Passed,
        Checked,
        Rejected,
        Canceled
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }  

    function set(Status _status) public {
        status = _status;
    }

     function cancel() public {
        status = Status.Canceled;
    }

    
    function reset() public {
        delete status;
    }
}
