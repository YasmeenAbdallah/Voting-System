pragma solidity ^0.5.16;

contract Election {
	struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
     // Read/write Candidates
    mapping(uint => Candidate) public candidates;
    // Store Candidates Count
    uint public candidatesCount;
    // Read/write candidate
    string public candidate;
    // Constructor
    constructor () public{
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }


    function addCandidate (string memory  _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }


    
}