import ballerina/http;
import ballerina/time;

type User record{
    readonly int id;
    string name;
    time:Date birthDate;
    string mobileNumber;
};

table<User> key(id) users = table [
   	    {id:1, name:"Joe", birthDate: {year: 2000, month: 3, day: 21},mobileNumber: "0773711238"}
   	];

service /social\-media on new http:Listener(9090) {
    resource function get users() returns User[]|error {
        return users.toArray();
    }

    //resource function get users/[int id]() returns User|UserNotFound|error;
    //resource function post users(NewUser newUser) returns http:Created|error;
}
