class UserModel {

    firstName: string;
    lastName: string;
    username: string;
    password: string;
    roles: string[];

    constructor(firstName: string, lastName: string, username: string, password: string, roles: string[]) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.password = password;
        this.roles = roles;
    }
}



export default UserModel;

