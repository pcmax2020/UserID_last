pragma solidity ^0.5.0;

contract  UserID{
    
   uint Employee_ID;
   string Name;
   string HomeAdress;
   uint LogingAttemps;
    bool Authorized_Person;
    bool LessThan3Attemps;
   
   
  
   
   function SetUserInfo(uint _Employee_ID, string memory _Name,string memory _HomeAdress) public {
       Employee_ID = _Employee_ID;
       Name = _Name;
       HomeAdress = _HomeAdress;
       
   //Authorized_Person
     if (Employee_ID >= 80 ){Authorized_Person = false;
       
   }
   
     else Authorized_Person = true;
   
    }
   
   //Logging attemps
   function LogAttemps ( uint _LogingAttemps) public {
       LogingAttemps = _LogingAttemps;
   
    if (LogingAttemps >= 3) {LessThan3Attemps = false;
    
    }
    else (LessThan3Attemps = true);
    
   }
   
   //Getting all the data
   function GetUserInfo() public view returns (uint , string memory,string memory,uint, bool, bool) {
return (Employee_ID, Name, HomeAdress, LogingAttemps, Authorized_Person, LessThan3Attemps);
   }
    
}