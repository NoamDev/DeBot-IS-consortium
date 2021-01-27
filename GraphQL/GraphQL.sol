pragma solidity >= 0.6.0;

interface IGraphQL {
    function query(uint32 answerId, string queryStr) external returns (bool success);
}

library GraphQL {

    uint256 constant ID = 0x3022ca1522612076c1f4b88096f7aa996070f99b8efdfc0d911ee874cf922bbd;
    int8 constant DEBOT_WC = -31;

    function query(uint32 answerId, string queryStr) public pure {
        address addr = address.makeAddrStd(DEBOT_WC, ID);
        IGraphQL(addr).query(answerId, queryStr);
    }

}