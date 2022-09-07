// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract wallet
{
    address payable public id;
    constructor()
    {
        // cài đặt id của owner
        id=payable(msg.sender);
    }
    // ai cũng có thể gửi tiền vào ví
    receive() external payable{}

    // việc rút tiền
    function withdraw(uint _money) public 
    {
        // chỉ có chủ sở hữu mới có thế rút tiền
        require(msg.sender == id,"You are not the owner");
        //Tiếp tục thực hiện nếu bạn là chủ sở hữu
        payable(msg.sender).transfer(_money);     
    }

}
