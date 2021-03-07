/*

Submitted by fHierophant 03/07/2021
  
  
  
  
              ,---------------------------,
              |  /---------------------\  |
              | |     Dont forget:      | |
              | |     you're here       | |
              | |       forever         | |
              | |                       | |
              | |      $FTM - $40       | |
              |  \_____________________/  |
              |___________________________|
            ,---\_____     []     _______/------,
          /         /______________\           /|
        /___________________________________ /  | ___
        |                                   |   |    )
        |  _ _ _                 [-------]  |   |   (
        |  o o o                 [-------]  |  /    _)_
        |__________________________________ |/     /  /
    /-------------------------------------/|      ( )/
  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


I just wanted to take a moment to congratulate you Anon, you've successfully stumbled upon unironically the next big thing. 
Stop thinking short-term. Look at the trajectory of cryptocurrency as an emerging asset class and technology infrastructure. 
Fantom is the 'multi-core processor network' to what is Ethereum's 'single-core processor network' 
The Opera network has unparalleled speed of finality and- wait a second.. Opera.. Fantom.. Fantom of the Opera! 
HOLY SHIT THE FANTOM OF THE OPERA, FANTOM ON THE OPERA! I GET IT!  

ah-hem. FUCK BECKER. FUCK JANNIES. FUCK GLOWIES. 

$FTM to the fucking MOON $40 EOY

$wCRES Gang 

Congratulations visionaries, DONT MOLLYCODDLE YOUR CHILDREN WITH YOUR GENERATIONAL WEALTH 

And hey Paulie; STAY POOR you little bitch.

*/

pragma solidity ^0.5.0;

// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
//
// ----------------------------------------------------------------------------
interface ERC20Interface {
    function totalSupply() external view returns (uint);
    function balanceOf(address tokenOwner) external view returns (uint balance);
    function allowance(address tokenOwner, address spender) external view returns (uint remaining);
    function transfer(address to, uint tokens) external returns (bool success);
    function approve(address spender, uint tokens) external returns (bool success);
    function transferFrom(address from, address to, uint tokens) external returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}

// ----------------------------------------------------------------------------
// Safe Math Library
// ----------------------------------------------------------------------------


library SafeMath {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}


contract Remember is ERC20Interface {
    
    using SafeMath for uint256;
    
    string public name;
    string public symbol;
    uint8 public decimals; // 18 decimals is the strongly suggested default, avoid changing it

    uint256 public _totalSupply;

    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint)) allowed;
    /*  
     * Constrctor function
     *
     * Initializes contract with initial supply tokens to the creator of the contract
     */
    constructor() public {
        name = "MemeMagic";
        symbol = "YGMI";
        decimals = 18;
        _totalSupply = 777777000000000000000000;

        balances[msg.sender] = _totalSupply;
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    function totalSupply() public view returns (uint) {
        return _totalSupply  - balances[address(0)];
    }

    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balances[tokenOwner];
    }

    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }

    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }

    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender].sub(tokens);
        balances[to].add(tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }

    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from].sub(tokens);
        allowed[from][msg.sender].sub(tokens);
        balances[to].add(tokens);
        emit Transfer(from, to, tokens);
        return true;
    }
}
    
/* .ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhhhhhhhhhhdhhhhhhhhhhhhdhhhhhhhhhhhhyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhhhhhhyyyyyyyssssssssssssssssssssssssyyyyyyyhhhhhhhhyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhhhhhhhyyyyssssssssssssssssssssssssssssssssssssssssssssssyyyyhhhhhhhysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhhyyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyyhhhhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssssssssssyhhhhyyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyyhhhhyssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssssssyhhdhyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyhdhhyssssssssssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssyyhdhyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyhdhyyssssssssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssssssssyhhdhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhdhhysssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssyhhhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhyssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssyyhdyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyydhyysssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhysssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssyyhhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhyyssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssyhdhysssssssssssssssssssssssssssssssssssssssssssssssssssssssssso++////+oossssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssyhdhysssssssssssssssssssssssssssssssssssssssssssssssssssssssso/-.`        `.-+ossssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssyhdhysssssssssssssssssssssssssssssssssssssssssssssssssssssso+:.`                `.:+ossssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssyhdhysssssssssssssssssssssssssssssssssssssssssssssssssssss+:.`       `.-://:-.`       `-/osssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssss: 
.sssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssso/-`       ``-+osssssssso/-`        .-/osssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssss: 
.ssssssssssssssssssssssydhyssssssssssssssssssssssssssssssssssssssssssssssssso+-.        `-/ossssssssssssssss+/.`        .:+ossssssssssssssssssss:`-/ossssssssssssssssssssssssyhdysssssssssssssssssssss: 
.ssssssssssssssssssssyhdyssssssssssssssssssssssssssssssssssssssssssssssss+:.`       `.:+ssssssssssssssssssssssss+:.`       `.:ossssssssssssssss-    `-/ssssssssssssssssssssssssydhysssssssssssssssssss: 
.sssssssssssssssssssydhsssssssssssssssssssssssssssssssssssssssssssssso/-`       `.:+osssssssssssssssssssssssssssssso/-`        `-/osssssssssss+.`      `:sssssssssssssssssssssssshdyssssssssssssssssss: 
.sssssssssssssssssyhdyssssssssssssssssssssssssssssssssssssssssssso/-`        `-/osssssssssssssssssssssssssssssssssssssso/-`        .-+sssssssssso/.`     `+sssssssssssssssssssssssydhyssssssssssssssss: 
.ssssssssssssssssydhssssssssssssssssssssssssssssssssssssssssss+:.        `./ossssssssssssssssssssssssssssssssssssssssssssss+:.         .:+ssssssssso:      +sssssssssssssssssssssssshdysssssssssssssss: 
.ssssssssssssssyhdyssssssssssssssssssssssssssssssssssssssso:.         .:+ssssssssssssssssssssssssssssssssssssssssssssssssssssss+:`        `-/ossssssso`    `sssssssssssssssssssssssssydhysssssssssssss: 
.sssssssssssssyddsssssssssssssssssssssssssssssssssssssso:`        `-+ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso/-`        `:ssssss+     :ssssssssssssssssssssssssssddyssssssssssss: 
.ssssssssssssydhsssssssssssssssssssssssssssssssssssssso`      `-/osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso/.       `ssssss`    .ssssssssssssssssssssssssssshdysssssssssss: 
.sssssssssssymysssssssssssssssssssssssssssssssssssssss:     `/ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss:      /sssss.    `ssssssssssssssssssssssssssssymyssssssssss: 
.ssssssssssymyssssssssssssssssssssssssssssssssssssssss:       `-/osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso/-`       /sssss/:::::sssssssssssssssssssssssssssssymysssssssss: 
.sssssssssydysssssssssssssssssssssssssssssssssssssssss:           `:+ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss+-`           /sssssssssssssssssssssssssssssssssssssssssydyssssssss: 
.ssssssssymyssssssssssssssssssssssssssssssssssssssssss:     .         .:+ssssssssssssssssssssssssssssssssssssssssssssssssssssss+:.         .     /ssssssssssssssssssssssssssssssssssssssssssymysssssss: 
.sssssssymysssssssssssssssssssssssssssssssssssssssssss:     os+-.        `-/osssssssssssssssssssssssssssssssssssssssssssssso/.`        .:+so     /sssssssssssssssssssssssssssssssssssssssssssymyssssss: 
.ssssssymyssssssssssssssssssssssssssssssssssssssssssss:     osssso/-`        `-/osssssssssssssssssssssssssssssssssssssso/-`        `-/osssso     /ssssssssssssssssssssssssssssssssssssssssssssymysssss: 
.sssssydhsssssssssssssssssssssssssssssssssssssssssssss:     osssssssso:.`       `.:+ssssssssssssssssssssssssssssssso+:.`       `-/osssssssso     /ssssssssssssssssssssssssssssssssssssssssssssshdyssss: 
.ssssshhssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssss+:.        `./ossssssssssssssssssssssss+:.`       `.:+sssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssshhssss: 
.ssssydyssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssssso/-`        `-/osssssssssssssssso/-`        .-+ossssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssydysss: 
.sssymysssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssssssssso/-`       `.:+osssssssso+-``       `-/ossssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssymyss: 
.sssdhssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssss+:.`       `.:///:-.`       `.:ossssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssshdss: 
.ssymyssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssso+-.                 `.:+osssssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssymys: 
.ssdysssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssss+-                -+ssssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssyds: 
.sydssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssssssssssssssso/-`                    `-/ossssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssdy: 
.sdyssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssssssssssso+-.        `-/`    ./.`       `.:+ossssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssyd: 
.ymsssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssssssso+:.`       `.:+sss`    .yso+:.`       `.:+sssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssm/ 
.dhsssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssso/-`       `.:+ossssss`    .yssssso+-``       `-/osssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssho 
.mysssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssso/-`        `-/ossssssssss`    .yssssssssso/-`        .-+osssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssyh 
-mssssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssss+:.        `./+ssssssssssssss`    .ysssssssssssss+:.`       `.:+ssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssssm`
:hssssssssssssssssssssssssssssssssssssssssssssssssssss:     ossso:.`       `.:+ssssssssssssssssss`    .ysssssssssssssssso+:``       `-/ossso     /ssssssssssssssssssssssssssssssssssssssssssssssssssssh:
oyssssssssssssssssssssssssssssssssssssssssssssssssssss:     +/-`        `-/osssssssssssssssssssss`    .ysssssssssssssssssssso/-`        `-/+     /ssssssssssssssssssssssssssssssssssssssssssssssssssssyo
hsssssssssssssssssssssssssssssssssssssssssssssssssssss:             `-/osssssssssssssssssssssssss`    .yssssssssssssssssssssssss+/.`             /sssssssssssssssssssssssssssssssssssssssssssssssssssssh
dsssssssssssssssssssssssssssssssssssssssssssssssssssss:          .:+sssssssssssssssssssssssssssss`    .yssssssssssssssssssssssssssss+:.          /sssssssssssssssssssssssssssssssssssssssssssssssssssssd
msssssssssssssssssssssssssssssssssssssssssssssssssssss:      `:+sssssssssssssssssssssssssssssssss`    .yssssssssssssssssssssssssssssssso/-`      /sssssssssssssssssssssssssssssssssssssssssssssssssssssm
msssssssssssssssssssssssssssssssssssssssssssssssssssss:     `:+ssssssssssssssssssssssssssssssssss`    .ysssssssssssssssssssssssssssssssss+-      /sssssssssssssssssssssssssssssssssssssssssssssssssssssm
dsssssssssssssssssssssssssssssssssssssssssssssssssssss:         .:ossssssssssssssssssssssssssssss`    .ysssssssssssssssssssssssssssss+:.         /sssssssssssssssssssssssssssssssssssssssssssssssssssssd
dsssssssssssssssssssssssssssssssssssssssssssssssssssss:            `-/ossssssssssssssssssssssssss`    .yssssssssssssssssssssssssso/.             /sssssssssssssssssssssssssssssssssssssssssssssssssssssd
msssssssssssssssssssssssssssssssssssssssssssssssssssss:     :-`        `-+sssssssssssssssssssssss`    .yssssssssssssssssssssso/-`        `-:     /sssssssssssssssssssssssssssssssssssssssssssssssssssssm
msssssssssssssssssssssssssssssssssssssssssssssssssssss:     osso:.         .:+sssssssssssssssssss`    .yssssssssssssssssss+:`        `-/osso     /sssssssssssssssssssssssssssssssssssssssssssssssssssssm
dsssssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssss+:.        `./osssssssssssssss`    .yssssssssssssss+:.`        .:+sssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssssd
hsssssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssso/-`        `-/osssssssssss`    .ysssssssssso/-`        .-+sssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssssh
oyssssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssso/-`        `:+ssssssss`    .ysssssso+-`        `-/ossssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssssyo
:hssssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssss+:.        `.:+ssss`    .ysss+:.`       `.:ossssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssssh:
-mssssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssso+-.        `-/o`    .o/.`        .:+ssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssssm`
.mysssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssso/-`       `              `-/osssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssyh 
.dhsssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssssssssssssssssss+:.`              `-/osssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssho 
.ymsssssssssssssssssssssssssssssssssssssssssssssssssss:     ossssssssssssssssssssssssssssssso+:..``````.-:+ossssssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssssm/ 
.sdyssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssoooossssssssssssssssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssyd: 
.sydssssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssssdy: 
.ssdysssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssssyds: 
.ssymyssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssssymys: 
.sssdhssssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssshdss: 
.sssymysssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssssymyss: 
.ssssydyssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssssydysss: 
.ssssshhssssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssssshhssss: 
.sssssydhsssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssshdyssss: 
.ssssssymyssssssssssssssssssssssssssssssssssssssssssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /ssssssssssssssssssssssssssssssssssssssssssssymysssss: 
.sssssssymyssssssssssssssssssssssssssssssss+++++osssss:     osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso     /sssssssssssssssssssssssssssssssssssssssssssymyssssss: 
.ssssssssymysssssssssssssssssssssssssssssss`    -yssss:     +ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss/     /ssssssssssssssssssssssssssssssssssssssssssymysssssss: 
.sssssssssydyssssssssssssssssssssssssssssss`    `ysssso      `-/ossssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss+:.      `osssssssssssssssssssssssssssssssssssssssssydyssssssss: 
.ssssssssssymysssssssssssssssssssssssssssss:     osssss+.        `-/osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso/.         -osssssssssssssssssssssssssssssssssssssssssymysssssssss: 
.sssssssssssymysssssssssssssssssssssssssssso     .ssssssso/-`        `:+ssssssssssssssssssssssssssssssssssssssssssssssssssssssso/-`        `-/sssssssssssssssssssssssssssssssssssssssssssymyssssssssss: 
.ssssssssssssydhssssssssssssssssssssssssssss/     `+ssssssssso:.         .:+ssssssssssssssssssssssssssssssssssssssssssssssss+:`         -/ossssssssssssssssssssssssssssssssssssssssssssshdysssssssssss: 
.sssssssssssssyddssssssssssssssssssssssssssss/      `:ossssssssss+:.        `-/ossssssssssssssssssssssssssssssssssssssss+:.         .:+ssssssssssssssssssssssssssssssssssssssssssssssssddyssssssssssss: 
.ssssssssssssssyhdyssssssssssssssssssssssssssso-       .:osssssssssso/-`        `-/osssssssssssssssssssssssssssssssso/-`        `-+ssssssssssssssssssssssssssssssssssssssssssssssssssydhysssssssssssss: 
.ssssssssssssssssydhsssssssssssssssssssssssssssso:`     `osssssssssssssso/-`        .:+ssssssssssssssssssssssssso+-`        `-/osssssssssssssssssssssssssssssssssssssssssssssssssssshdysssssssssssssss: 
.sssssssssssssssssyhdysssssssssssssssssssssssssssss+-` .osssssssssssssssssss+:.        `.:+ssssssssssssssssss+:.`       `.:ossssssssssssssssssssssssssssssssssssssssssssssssssssssydhyssssssssssssssss: 
.sssssssssssssssssssydhsssssssssssssssssssssssssssssssosssssssssssssssssssssssso+-.        `-/osssssssssso/.`        .:+ssssssssssssssssssssssssssssssssssssssssssssssssssssssssshdyssssssssssssssssss: 
.ssssssssssssssssssssyhdysssssssssssssssssssssssssssssssssssssssssssssssssssssssssso/-`        `-:/++/:-`        `-/ossssssssssssssssssssssssssssssssssssssssssssssssssssssssssydhysssssssssssssssssss: 
.ssssssssssssssssssssssydhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss+:.`                  `-/ossssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdysssssssssssssssssssss: 
.sssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso+:.`          `.:+ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssss: 
.sssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssso+/::--::/+osssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssyyhhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhyyssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssyhdhyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdhysssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssyyhdyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyydhyysssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssyhhhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhyssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssssssssyhhdhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhdhhysssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssyyhdhyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyhdhyyssssssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssssssyhhdhyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyhdhhyssssssssssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssssssssssyhhhhyyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyyhhhhyssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhhyyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyyyhhhhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhhhhhhhyyyyssssssssssssssssssssssssssssssssssssssssssssssyyyyhhhhhhhysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhhhhhhyyyyyyyssssssssssssssssssssssssyyyyyyyhhhhhhhhyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
.ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss: 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                                                                                                                                    
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                     `.--:://+oossso+//:--`                                                                                                                             
                                                 `-/sssyyysssyyyyyyyyyyyyysss/:.                 ````````                                                                                               
                                               `/yyyyssssssssssssssssssssssyyyyyy+:`     `.:/+syyyysssssyyys+/:.`                                                                                       
                                           ``-+yyysssssssssssssssssssssssssssssssyyy+:/+oyyyyyysssssssssssssyyyyyo+-`                                                                                   
                                       `-/+syyysssssssssssssssssssssssssssssssssssssyymmyssssssssssssssssssssssssyyyyo/.                                                                                
                                     `/syyysssssssssssssssssssssssssssssssssssssssssssyhddyssssssssssssssssssssssssssyyy+-`                                                                             
                                    -syyssssssssssssssssssssssssssssssssssssssssssssssssydmhssssssssssssssssssssssssssssyyo-                                                                            
                                  `+hysssssssssssssssssssssssssssssssssssssssssssssssssssshmhyssssssssssssssssssssssssssssyyo.                                                                          
                                 .shysssssssssssssssssssssssyyyyyyyysssssssyyyyyyyyyyyssssshmhssssssssssssssssssssssssssssssyh/                                                                         
                                -hhssssssssssssssssyyyyhhhhhhdddddddhhhhhhdmmddddddddddhhyyshNyssssssssssssssssssssssyyyyyyyyyho`                                                                       
                               :hysssssssssssssyyhdddddhhhyyyyyyyyyyyyyhhddmddhhyyyyyyyhdddhydmssssssssssssssssyyhhhdddddddddddms-`                                                                     
                              :hysssssssssssyydddhhyyyyyyhhhhhhhhhhhhhyyyyssyyyhddddyysssyyhdmMysssssssssssssssydhhhhhhhhddddddddhyo+-`                                                                 
                             /hyssssssssssyhddhyssyhdddddhhhyyyyyyyhhhddddddhhyysyyhdmdhyssssymmysssssssssssssyyhdddddhhhyyyyyyhhddmdhhs-                                                               
                            /hyssssssssssymdyssyhddhyyssssssssssssssssssssyyhhdddhyyyyydmdyyssshmysssssssssyhdddhyyyyyyhhhdddddhhyyyydmdd+                                                              
                           /yysssssssssshNysssymdyssssssssssssssssssssssssssssssyhmmdhysyhddyysshmhssssssydmdyssyyhddddhyyyyyyyhhdddyyymy.                                                              
                          :yysssssssssshNysssymdssssssssyyyyyyyyyyyyyyyyyyyyyyyyyyyyhdmdyyshmdysyhmyssssymhysyydmmdhyyyyyyyyssssssyhddyd+                                                               
                         .sysssssssssssymdhhdNNhhhysssoossssssdNNmNNNNNNNNNNNNh/-----:::+syyshmhsyddsssssssyho/+hNNNNNNNNdsssshyysssydmm:                                                               
                        `+hsssssssssssssyyhyyhhddo-``        oNm:./dMMMMMMMMMMNo`        `:yysymdyhmyssssyho--ydhNMMMMMMMNy-``.:+syhysmM`                                                               
                        /hssssssssssssssssssssssyyhso:`     .mMm-`-hMMMNs-`-omMM/          `ohsydmyyyssshy. :mh- `dMMMMNdmMd-     `./oyN`                                                               
                       -hysssssssssssssssssssssssssssyhyo/-.:mMMMddMMMM/     +MMs`           /hsydmysssd/  .hMNs:oNMMh-   .dy`         /-                                                               
                      `+hssssssssssssssssssssssssssyyssssyyhhNNMm-/dMMMd:```-hMMy.            /hsymdssd/   :MMMNyhNMN+     hN`        `y:                                                               
                      .mysssssssssssssssssssssssssshmhyssssssyyhdmNMMMMMMdddNMMMo`             yysyysys`   -NMMh/+NMMNs:::sNh`      .+hN.                                                               
                      +hssssssssssssssssssssssssssssydmdhssssssssyyhdmNNMMMMMMMy.              :Nhyssys/-` `oMMMMMMMMMMMMMMm-  `.:+syyhs`                                                               
                     `myssssssssssssssssssssssssssssssyhdmdhysssssssssyyyhdmmNd+-.```````..:/+ohhdmdysyyyyyyhmmNNNNNNMNNNNNhyhyyyyyssyo`                                                                
                     /dssssssssssssssssssssssssssssssssssyyhddddhyyyysssssssyyyyyyhhhhhhhyyyyyyyyhmdysyysssssyyyyyyyyyyyyyyyyssyyyyhs-                                                     `./+++/`     
                    :Nyssssssssssssssssssssssssssssssssssssssyyyhdddddddhhhhhyyyyyyyyyyyhhhdddddhhyyssydddhhhhyyyyyysssssssyhdddmdmy.                                                  `./oyhyh/:+s/`   
                   +hmssssssssssssssssssssssssssssssssssssssssssssyyyyyyhhhhhhdhhhhhhhhhhdNmhyyysssssssyyhdmNmddddddhysssssyyyyyyhmy-                                               `-+yhhyyyssso/+yo`  
                  +hsdsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhmdysssssssssssssssyydddhyyyysssssyhdddddhhyy/`                                          `-oyhyysssssosyys/+sy- 
                 :yysmssssssssssssssssyhdmmdyssssssssssssssssssssssssssssssssssssssssyhddyysssssssssssssssssssyhdmhyssssssyhhyyyysssyyo`                                      -/syyyssssssssyysyhyooydd:
                `syssdssssssssssssssssyhhyyyssssssssssssssssssssssssssssssssssssssyyhmdyysssssssssssssssssssssssyydmhyssssssssssssssssh/`                                 `-+yhyssossssssyyyyhyddddhhydh
                /yyssyssssssssssssssssssyyyyyyssssssssssssssssssssssssssssssssyyhhddhysssssssssssssssssssssssssssssyddyssssssssssssssssds:`                           `.:oyhysooosssssssyhhhhddmmmmhyhh:
               `oyssssssssssssssssssyhhddddddhssssssssssssssssssssssssssssyyhddddhyssssssssssssssssssssssssssssssssssyyssssssssssssssssymyy/                       `./syhhsssosssssyyyyhhhddmdmmmNNdy+. 
               :yyssssssssssssssssydddhyyyyyyyssssssssssssssssssssssssyyhdddhhyyssssssssssssssssssssssssssssssssssssssssssssssssssssssshdsyy/     `..```        `-+syyyssssossssyyhhhhhhhdmmmmmNmho:`   
              `ohssssssssssssssssyhhysssssssssssssssssssssssssssssssssydhyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssymyyyyo    :hhyyysso+::-:osyyssssoossssyyyyhhhddmmmmmmmNds:`      
              -yyssssssssssssssssssssssssssssyyyyyyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssymhyyyy.    .shhhyyyyhddyysssssssssosyyyhhhddmmmmmmmmmdy/.         
             .ohssssssssssssssssssssssssssyhdhhhhhhhhdhhyyyyyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhdyyyyy:       -+yhhhhyysssssssssssssyhhhhddmmmmNNmmhs/.            
            .+dyssssssssssssssssssssssssssmyysyyyyyysyyyhhhdhhhhhhyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhyyyyyysssssssssssssssssssssssyydhyyyho.       `./yhysssssossosssssysyhhddmmmmNNmdy+-`               
           :/.:yyssssssssssssssssssssssssymyyyysyyyyyyyyyyysyyyyyyyhhhhhhhdhhhhhhhhhhhyyyyyyyyyyyyyyyyhhhhhhyyyyyyyyyyyyyyyyyyyhhhhyyyhs-     `./+oosossssssossssssyyyhhdddmmNNmmhs:.                   
         `+/   -sysssssssssssssssssssssssshdyyyyyyyyyhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhyyyyyyyhh.   `-+ssy+:/:sysossyyhhhhhhhdmmmmNNNNNms-`                      
        .+-     .oyysssssssssssssssssssssssyhdhyyyyyyyyyhdddmddhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhdhyd:  -ysooooo//+osyyhhhhyyyyyyyyyyhhdmmdhyhy/`                     
       -s`        +yyssssssssssssssssssssssssyhddhyyyyyyyyyyyhddmNmmmdhhyyyyyyyyyyyyyyyyyyyyhhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyhdhyyysy+  +yo++o+h/ooyhmdyssssssssssssssssssyhhhddd/                    
      -+`          .yyssssssssssssssssssssssssssyyhhdhyyyyyyyyyysyyyhdmNNNNmmmmmmmmmmmmNNNMMMMMMMMMMMMNNmdhhhhhhyyyhhhhhddhhhhhysyyyysh+  -d++ssoyoyhs+ohhsssssssssssssssssssssssyyhs.                  
     -+.             +hyssssssssssssssssssssssssssssyyhhhhyyyyyyyyyyyysyyyhddmNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmhhyyyyyyyyssyyyyyyyyyyyd-  `+hsyyyydNsoosdhssssssyyyhhhhhhhyyssssssssyy`                 
    .+-               .ohyssssssssssssssssssssssssssssssyyhhhhyyyyyyyyyyyyyyyyyyhdmNMMMMMMMMMMMMMMMMMMMMMNmmhyyyyyyyyyyyyyyyyyyyyyyyyy: :osydddhhhhNmhyyyyyyhhyss+:--hyyyyhdhyssssssyh+                 
   `/:                  -shyssssssssssssssssssssssssssssssssyyyhdhhyyyyyyyyyyyyyyyyyyhhdmmmNNNNNNNmmddhyyyyyyyyyyyyyyyyyyyyyyyyyyyhs/` ohyssyyhdmmmNMNmhso/-..`      :hysssyddyssssssyho.               
   :+                     -ohyssssssssssssssssssssssssssssssssssssyhdddhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhdddo    myssssssshNNds/`               /dssssyydddhdddhdmd+`             
  `+s`                      .+hyysssssssssssssssssssssssssssssssssssssyyhddhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhdhhyssys`   shssssssssyd+`                  +mhdddhysssssssssshh+`           
 `+NMmh+-`                     :ohyyssssssssssssssssssssssssssssssssssssssyyhddhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhddhyysssssys`   `yhssssssssshy:             `-+syhyysssssssssssssssshh:          
 /NMMMMMNdo:`                    ./oyyyssssssssssssssssssssssssssssssssssssssyyhddhysyyyyyyyyyyyyyyyyyyyyyyyyysyyhhdhhyysssssssssy+     `ohyssssssssyho`       `-/syyyysssssssssssssssssssssydo`        
:NMMMMMMMMMNds:.                    .:oshysssssssssssssssssssssssssssssssssssssssyhdhhyysyyyyyyyyyyyyyyysyyhhhdhhyyyssssssssssssyy.       -hhssssssssyhs`   ./syyyysssssssssssssssssssssssssssyy:       
mMMMMMMMMMMMMMNNh+.                    `./syhyssssssssssssssssssssssssssssssssssssssyyhddhhyyyyyyyyyyhhhhdhyyyyssssssssssssssssymd:`       .shssssssssshs-/yyyyssssssssssssssssyyhhhhhhhhhhysssyhs.     
MMMMMMMMMMMMMMMMMMNdo:`                    `./oyyyyyssssssssssssssssssssssssssssssssssssyyyhhdddddddhyyyysssssssssssssssssssssymMMMmy:`     `ohysssssssydmyyssssssssssssssyhhhdhhyyyyyyyyyyddysssyh/`   
MMMMMMMMMMMMMMMMMMMMMNmy+-`                    `.:/oyyyyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhs/MMMMMNdo.    `ohysssssyhdysssssssssssssyhddhyyssssssssssssssysssssyhs.  
MMMMMMMMMMMMMMMMMMMMMMMMMNds/.`                    ``.://ossyyysssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyhs:`/MMMMMMMMNs:`  `ohysssyhddhhysssssssyhhdmdyssssssssssssssssssssssssssyh- 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMNmho:.                       ``.:/+syyyyyyysssssssssssssssssssssssssssssssssssssssssssssssssyys:`  oMMMMMMMMMMNy:` `yysssymydhyydyssyhdhhdddyhhyssssssssssssssssssssssssshs`
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmho:.                         ```.-::/oyddhhhhyyyyyysssssyhdmmmmdhyssssssyyyyyyyyyyyyyhy/`   `dMMMMMMMMMMMMNy:`.hyssydhhhhhdhhhdhysydhdhyddsssssyyhhhhhhdhhhyssssssssm`
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdo/.`                        `-/+sdMMMMMMMNNNNNNNNmmNMMMMMMMMmddmmNNNNNNNNMMMNNNNd+.    `MMMMMMMMMMMMMMMNy--hyssyyhhddhhyysssssyhdhdhhyhhhddhyyyyyyyyyhmysssssssN.
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmho/.`                  .+hNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMms.  .MMMMMMMMMMMMMMMMMNo:shysssssssssssssssssyyyyhyyyyyssssssssssssydyssssssN.
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmho:.`             :dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy` sMMMMMMMMMMMMMMMMMMMd/:yhyssssssssssssssssssssssssssssssssssssssydysssssN`
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmy+-`         `mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-.NMMMMMMMMMMMMMMMMMMMMNs-+hyssssssssssssssssssssssssssssssssssssssysssssyd`
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNhs-`      `NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMsdMMMMMMMMMMMMMMMMMMMMMMMd//yysssssssssssssssssssssssssssssssssssssssssssyy`
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdo.`    oMMMMMMMMMMMMMMMMMNmddhssymMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNh+yhyssssssssssssssssssssssssssssssssssssssssshs`
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNy:`  .hMMMMMMMMMMMNdho/:.`     :ymNNNNNddhoyhmNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNhdhsssssssssssssssssssssssssssssssssssssssssh+ 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNh/` .smNNNNmhhmMh`         `:-`-/::--`.s/  .-/oyhdNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNhssssssssssssssssssssssssssssssssssssssssd/ 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh:  .-::-..+NMy`         `/:`..      -s-      .:sNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMdsssssssssssssssssssssssssssssssssssssssm: 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo.    `:yNMMy`             -.       +:  `./sdNMMMMMMMMMMMMMMMMMMMMNNmmMMMMMMMMMMMMMMMMMMMMMMMdysssssssssssssssssssssssssssssssssssssm. 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd/:/smNMMMMy              -`       .o+sdNMMMMMMMMMMMMMMMMMMMMNmhyssoodMMMMMMMMMMMMMMMMMMMMMMMNdyssssssssssssssssssssssssssssssssssyy. 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy              -`       `hMMMMMMMMMMMMMMMMMMNmddhys+sooosssdMMMMMMMMMMMMMMMMMMMMMMMMMmhysssssssssssssssssssssssssssssssyy` 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy              :`        hMMMMMMMMMMMMMMNmdddhysoosssso++syossyhhhddmmNMMMMMMMMMMMMMMMMmhysssssssssssssssssssssssssssssho` 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo              :`        hMMMMMMMMMNmdyysoshmdyyoyyhyo+oosss+++++///+ohMMMMMMMMMMMMMMMMMMmyssssssssssssssssssssssssssssm+` 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+           `` :`        sMMMMMMMNdhsooo+oyddhhhyyydyo++oss++o+ooo+++sNMMMMMMMMMMMMMMMMMMMNysssssssssssssssssssssssssssmNh+
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm/          .o/`:`        +NMMMMMMNdhssosooyddhhdyshhsoooo++/++o+++sydNMMMMMMMMMMMMMMMMMMMMMdssssssssssssssssssssssssssymMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm/              :`        /NMMMMMMMmhysso+oyddhhhyyh+oo/+ssooo+++oshNMMMMMMMMMMMMMMMMMMMMMMMMyssssssssssssssssssssssssssdMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm:              :`        :mMMMMMMMMmdhs+o+sddhyyshdo/+osssooosooyNMMMMMMMMMMMMMMMMMMMMMMMMMMhssssssssssssssssssssssssssymMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd-              :`        -mMMMMMMMMNmmyysshmdhyshdyyysoosys+soyhNMMMMMMMMMMMMMMMMMMMMMMMMMMMmsssssssssssssssssssssssssssshN
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd-              :`        .mMMMMMMMMMMMMNNMMMMMNNMMNMMMMNNNNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMdysssssssssssssssssssssssssssy
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd.              :`        `mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmhyssssssssssssssssssssssssss
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd.              :`        `dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmsyhyyssssssssssssssssssssss
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`          `-. :`         dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo`.:oshyyysssssssssssssssss
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`          .+: :`         hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`  `.:+osyyyyyyysssssssss
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh               :`         sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`      `.-:/++osyyyyyyys
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh               :`         +NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`             ````..```
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh               :`         /NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNy:`                    
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy               :`         :NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdyo+//:-.```        
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo               :`         -NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmdhys+/::-:
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+               :`         .NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNNN
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+               :`         `NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN/           .o: :`          mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm:           `-. :`          mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm-               :`          hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm-               :`          sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm-               :`          +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh-             `-`         `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNs-           `-`       `+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNh/.`       `-    `.:smMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNhs/:-...-:-:/ohmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmmmNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

*/
