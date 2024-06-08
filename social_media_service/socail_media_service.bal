import ballerina/http;
import ballerina/time;

type User record{
    int id;
    string name;
    time:Date birthDate;
    string mobileNumber;
};

service /social\-media on new http:Listener(9090) {
    resource function get users() returns User[]|error {
        User joe={id:1, name:"Joe", birthDate: {year: 2000, month: 3, day: 21},mobileNumber: "0773711238"};
        return [joe];
    }
}
