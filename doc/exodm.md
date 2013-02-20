## Module: exodm

## exodm:create-user

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-user",
        "id": "",
        "params": {
            "uname": "",
            "email": "",
            "password": "",
            "fullname": "",
            "phone": "",
            "skype": "",
            "alias": [
                "alias": ""
            ]
        }
    }


**Create a new user**<br>This command creates a new user that can be given access to accounts and assigned roles.The authorizing user must be either master or admin roles assigned to it for this command to be executed. The created user can be granted access to accounts through roles using the [exodm:add-user-to-role] command

#### descriptions
<dl><dt>alias</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>email</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>fullname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>password</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>phone</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>skype</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>uname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:delete-user

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:delete-user",
        "id": "",
        "params": {
            "uname": ""
        }
    }


Delete an existing user

#### descriptions
<dl><dt>uname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-users

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-users",
        "id": "",
        "params": {
            "n": "",
            "previous": "",
            "account": ""
        }
    }


List all users.

#### descriptions
<dl><dt>account</dt>
<dd>If account is given only users connected to that account are returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous user name; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "users": [
                "users": ""
            ]
        }
    }


#### descriptions
<dl><dt>users</dt>
<dd>List of user names (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:create-account

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-account",
        "id": "",
        "params": {
            "name": "",
            "admin-user": [
                {
                    "uname": "",
                    "email": "",
                    "password": "",
                    "fullname": "",
                    "phone": "",
                    "skype": "",
                    "alias": [
                        "alias": ""
                    ]
                }
            ]
        }
    }


**Create a new account**<br>This call, which must be invoked by the sysadm user, creates a new Exosense Account. The created account can give access permission to users that will manage the devices, device groups, packages, etc, owned by the account. <br><br>When the account is created, an account admin user will be also be automatically created. This user acts as the initial administrator for the account and can be used to manage all resources owned by the account. The name of the account admin is provided in the admin-user argument of this call. 

#### descriptions
<dl><dt>admin-user</dt>
<dd>The initial account administrator user to create in conjunction with the account. The username has to be unique across all users created in the Exosense Server (<b>type:</b> array)</dd>
<dt>alias</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>email</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>fullname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>The name of the account. This name has to be unique across all accounts created in the Exosense Server. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>password</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>phone</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>skype</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>uname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>The result of the operation. (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:update-account

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:update-account",
        "id": "",
        "params": {
            "name": ""
        }
    }


**Update an existing account**<br>This call modifies the name of an account previously created with a [exodm:create-account] command. The new name of the account must be unique across all accounts in the Exosense Server.

#### descriptions
<dl><dt>name</dt>
<dd>The name of the account. This name has to be unique across all accounts created in the Exosense Server. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>The result of the operation. (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:delete-account

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:delete-account",
        "id": "",
        "params": {
            "name": ""
        }
    }


**Delete an existing account<br>**This command will remove the account specified by the name argument. If the given account owns any devices, device types, device groups, packages, configuration sets or yang specifications, they will be deleted together with the account.

#### descriptions
<dl><dt>name</dt>
<dd>The name of the account to delete. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-accounts

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-accounts",
        "id": "",
        "params": {
            "n": "",
            "previous": ""
        }
    }


**List all accounts in the Exosense Server**<br>This command will list all accounts created in the Exosense Server. This command can only be executed by the sysadm user.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of accounts.

#### descriptions
<dl><dt>n</dt>
<dd>Maximum number of entries to return. More accounts may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first account after the account with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "accounts": [
                "accounts": ""
            ]
        }
    }


#### descriptions
<dl><dt>accounts</dt>
<dd>List of account names (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-account-users

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-account-users",
        "id": "",
        "params": {
            "account": "",
            "n": "",
            "previous": ""
        }
    }


**List all users with access to the specified account<br>**This command will list all users who have been given access to the given account through [exodm:add-account-users] commands.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of user names.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to list the users for.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More users may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first user after the user with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "users": [
                "users": ""
            ]
        }
    }


#### descriptions
<dl><dt>users</dt>
<dd>The (partial) list of user names with access to the given account. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:add-user-to-role

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:add-user-to-role",
        "id": "",
        "params": {
            "account": "",
            "role": "",
            "names": [
                "names": ""
            ]
        }
    }


**Add user(s) to a role in an account**<br>This command gives one or more users access to the resources of an account by adding them to a role. Each role will give access to a predefined set of core Exosense Server JSON-RPC commands, as listed in the "Exosense JSON-RPC command Role assignment" chapter of the "Exosense Server Operations Manual". In addition to this, roles can also be given additional execution rights to package RPCs through the [exodm:add-role-execution-permission] command. See the "Package" chapter of the "Exosense Operations Manual" and [exodm:create-package] for details on RPCs and their execution rights. <br><br>Once one or more roles have been assigned to a user, that user can execute all JSON-RPC commands that those roles have execution rights for on the given account. <br><br>The [exodm:list-account-roles] command can be used to retrieve a list of all availale roles for an account that a usert can be assigned to.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the role belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>names</dt>
<dd>Users to add to account. The users, previously created through the [exodm:create-user] or [exodm:create-account] commands, to be assigned the given role for this account. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>role</dt>
<dd>The role to assign to the user for the specified account. The value of this arument must be from the list of roles returned by [exodm:list-account-roles] (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:remove-user-from-role

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:remove-user-from-role",
        "id": "",
        "params": {
            "account": "",
            "role": "",
            "unames": [
                "unames": ""
            ]
        }
    }


**Remove user(s) from a role**<br>This command retracts one or more user's access to the resources of an account by removing the user from a role. The user have previously been added to the role through a [exodm:add-user-to-role] command. Once the user has been removed from the role, it can nolonger run the JSON-RPC commands that the role had execution rights for (unless the user is also assigned other roles that have execution rights for the same commands).  See the "Package" chapter of the "Exosense Operations Manual" and [exodm:create-package] for details on RPCs and Yang specifications.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the role belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>role</dt>
<dd>The role to strip the given user of for the specified account.The value of this arument must be from the list of roles returned by [exodm:list-account-roles] (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>unames</dt>
<dd>Users to strip of the specified role for this account. Listed users must previously have been assingned the role through an [exodm:add-account-users] command. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:add-role-execution-permission

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:add-role-execution-permission",
        "id": "",
        "params": {
            "account": "",
            "role": "",
            "package-name": "",
            "rpc-name": ""
        }
    }


**Add permission execution for a role to an RPC**<br>  This command adds execution rights for a role to an RPC in a package owned by the given account. Once this command has executed, all users assigned to the role will be able to execute the given RPC on all devices, owned by the account, that the associated package has been installed on. <br><br>Users can be added to the role through the [exodm:add-user-to-role] command. <br><br>If multiple roles have execution rights to a single RPC within a package, any user who is assigned to one or more of these roles can execute the RPC. Conversely, a user must be removed from all roles with execution rights to an RPC in order to revoke the execution right for that user.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the role and package belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>Name of package to which to add role execution rights. The package has previously been created through a [exodm:create-package] command (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>role</dt>
<dd>Name of role to add execution permission to. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>rpc-name</dt>
<dd>Name of the RPC in the package to add role execution rights to. The name of the RPC should include the module prefix and a colon (fleetmanager:get-position) (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:remove-role-execution-permission

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:remove-role-execution-permission",
        "id": "",
        "params": {
            "account": "",
            "role": "",
            "package-name": "",
            "rpc-name": ""
        }
    }


**Remove permission for a role to execute an RPC**<br>This command removes execution rights for a role from an RPC in a package owned by the given account. Once this command has executed, all users assigned to the role will no longer have permission to execute the given RPC on devices, owned by the account, that the associated package has been installed on. <br><br>If multiple roles have execution rights to a single RPC within a package, any user who is assigned to one or more of these roles can execute the RPC. Conversely, a user must be removed from all roles with execution rights to an RPC in order to revoke the execution right for that user.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the role and package belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>Name of package fromn which to remove role execution rights. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>role</dt>
<dd>Name of role to remove execution permission from. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>rpc-name</dt>
<dd>Name of the RPC in the package to remove role execution rights from. The name of the RPC should include the module prefix and a colon (fleetmanager:get-position) (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-rpc-roles

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-rpc-roles",
        "id": "",
        "params": {
            "account": "",
            "package-name": "",
            "rpc-name": "",
            "n": "",
            "previous": ""
        }
    }


**List all roles that have exeuction right for an RPC**<br>This command will list all roles with execution rights for the given account/package/RPC combination<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of roles.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the role and package belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More roles may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>Name of package to list role access for, (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first role after the role with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>rpc-name</dt>
<dd>Name of RPC inside the package to list role access for. The name of the RPC should include the module prefix and a colon (fleetmanager:get-position). (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "roles": [
                "roles": ""
            ]
        }
    }


#### descriptions
<dl><dt>roles</dt>
<dd>List of roles with execution right to the given RPC in the specified package owned by the account. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-account-roles

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-account-roles",
        "id": "",
        "params": {
            "account": "",
            "n": "",
            "previous": ""
        }
    }


**List all roles defined for account**<br>This command will return all roles in account that can be assigned to users in order for them to access resources owned by the account.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of roles.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the roles belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More roles may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first role after the role with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "roles": [
                "roles": ""
            ]
        }
    }


#### descriptions
<dl><dt>roles</dt>
<dd>List of role names assignable to users. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:create-device

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-device",
        "id": "",
        "params": {
            "account": "",
            "device-id": "",
            "device-type": "",
            "attributes": ""
        }
    }


**Create a new device in the Exosense Server**<br> This commands sets up a new device to be owned and managed by the given account. The mandatory device-id must be unique across all devices and device groups under the owning account. The device type is previously created through a [exodm:create-device-type] command.<br><br>The new device can optionally have attributes set for it, where the structure of these attributes is defined by the provided device type. The device type has a yang module, created through an [exodm:create-yang-module] command, tied to it. Inside this module, a container defines the attribute structure that should be applied to all devices assigned to the given device type. <br><br>Unlinke device configuration data (see [exodm:create-package]), device attributes will not be sent to the device. Instead they will be stored locally on the Exosense Server.<br><br>The attributes can be set through this command and [exodm:update-device], and retrieved through [exodm:lookup-device].  Protocol plugins can also access the device attributes to locate network addresses and other information necessary for the protocol to communicate with a device.<br><br>Once a device has been provisioned through this command, the protocol plugin associated with the assigned device type can match an incoming device ID from the connected device with device attribute data in order to retrieve encryption keys, passwords, network addresses, certificates, etc, that can be used by the plugin to authenticate the device and secure communication with it. Please note that all device attributes, apart from the mandatory device type and device-id, are opaque to the Exosense Server. It is up to the yang-file and protocol plugin author to agree on the structure of the attributes assigned to a device of the given device type.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>attributes</dt>
<dd>Attributes to set for this device. The structure of the attributes is defined by the yang module provided to the [exodm:create-device-type] command that created the device type that the device is assigned to. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-type</dt>
<dd>Type of device, as given by a previous [exodm:create-device-type] call. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:update-device

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:update-device",
        "id": "",
        "params": {
            "account": "",
            "attributes": ""
        }
    }


**Update the attributes of an existing device**<br>This command updates the attributes of the given device. Please note that the device-id and device type of an existing device cannot be modified. For these operations, the device needs to be deleted with [exodm:delete-device] and then re-created with [exodm:create-device]. <br><br> The attributes that can be updated for a device is defined by the assigned device type. Please see [exodm:create-device] for information on how device attributes are specified and managed.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>attributes</dt>
<dd>Attributes to set for the device. The structure of the attributes is defined by the yang module provided to the [exodm:create-device-type] command that created the device type that the device is assigned to. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:lookup-device

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:lookup-device",
        "id": "",
        "params": {
            "account": "",
            "device-id": ""
        }
    }


**Retrieve information about a given device**<br>This command retrieves the device id, the device type, and the optional device attributes for a given device owned by the provided avcount. <br><br> The format of the device attributes, if present, is specified by the device type the device is assgined to.  The device type, when it is created through the [exodm:create-device-type] command, can optionally refer to a yang specification module (created with [exodm:create-yang-module]), that defines the structure of the attributes that all devices of the given type will have.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>The ID of the device to look up. The device has previously been created through [exodm:create-device] command. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": "",
            "device-id": "",
            "device-type": "",
            "attributes": ""
        }
    }


#### descriptions
<dl><dt>attributes</dt>
<dd>Attributes set for this device. The structure of the attributes is defined by the yang module provided to the [exodm:create-device-type] command that created the device type that the device is assigned to. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-type</dt>
<dd>Type of device, as given by a previous [exodm:create-device-type] call. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-devices

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-devices",
        "id": "",
        "params": {
            "account": "",
            "n": "",
            "previous": ""
        }
    }


**List all devices created under an account**<br>This command lists the device ID of all devices created under the given account through the [exodm:create-device] command. Detailed information can be given for a device through the [exodm:lookup-device] command.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of device IDs.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the devices belong.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More devices may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first device after the device with the ID specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "devices": [
                {
                    "device-id": "",
                    "device-type": ""
                }
            ]
        }
    }


#### descriptions
<dl><dt>device-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-type</dt>
<dd>Type of device, as given by a previous [exodm:create-device-type] call. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>devices</dt>
<dd>Device object data (<b>type:</b> array)</dd>
</dl>



## exodm:delete-devices

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:delete-devices",
        "id": "",
        "params": {
            "account": "",
            "device-id": ""
        }
    }


**Delete an existing device**<br>This command deletes a device, previously created with [exodm:create-device], from the Exosense Server. This command also deletes the device's attributes, previously set-up throguh through the [exodm:create-device] and [exodm:update-device] commands.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device belong.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>The ID of the device to remove (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:create-device-group

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-device-group",
        "id": "",
        "params": {
            "name": "",
            "notification-url": "",
            "account": ""
        }
    }


RPC to create a device group

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Group name (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>RPC callback notification URL (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": "",
            "gid": ""
        }
    }


#### descriptions
<dl><dt>gid</dt>
<dd>Group identifier. 0 (zero) if operation failed. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:delete-device-group

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:delete-device-group",
        "id": "",
        "params": {
            "gid": "",
            "account": ""
        }
    }


RPC to create a device group

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>gid</dt>
<dd>Group ID (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-device-groups

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-device-groups",
        "id": "",
        "params": {
            "n": "",
            "previous": "",
            "account": "",
            "device-id": ""
        }
    }


List device groups, N entries at a time

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>Optional device ID. If given, device groups associated with the given device are listed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous device group id (GID); "" if from beginning (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "device-groups": [
                {
                    "gid": "",
                    "name": "",
                    "notification-url": ""
                }
            ]
        }
    }


#### descriptions
<dl><dt>device-groups</dt>
<dd> (<b>type:</b> array)</dd>
<dt>gid</dt>
<dd> (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>notification-url</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-device-group-members

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-device-group-members",
        "id": "",
        "params": {
            "gid": "",
            "n": "",
            "previous": "",
            "account": ""
        }
    }


List devices attached to a device group, N entries at a time

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>gid</dt>
<dd>ID of the device group (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous device; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "device-group-members": [
                "device-group-members": ""
            ]
        }
    }


#### descriptions
<dl><dt>device-group-members</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:add-device-group-members

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:add-device-group-members",
        "id": "",
        "params": {
            "device-groups": [
                "device-groups": ""
            ],
            "dev-id": [
                "dev-id": ""
            ],
            "account": ""
        }
    }


Link devices to device groups

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>List of Device ID(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-groups</dt>
<dd>Device groups to associate with the given device(s) (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:remove-device-group-members

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:remove-device-group-members",
        "id": "",
        "params": {
            "device-groups": [
                "device-groups": ""
            ],
            "dev-id": [
                "dev-id": ""
            ],
            "account": ""
        }
    }


Unlink devices from device groups

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>List of device ID(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-groups</dt>
<dd>Device groups to unlink the given device(s) from (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:update-device-group

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:update-device-group",
        "id": "",
        "params": {
            "gid": "",
            "notification-url": "",
            "account": ""
        }
    }


RPC to change the notification URL of an existing group

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>gid</dt>
<dd>Group identifier. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>RPC callback notification URL (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:create-device-type

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-device-type",
        "id": "",
        "params": {
            "account": "",
            "name": "",
            "protocol": "",
            "yang-specification": "",
            "attribute-container": ""
        }
    }


**Create a new device type under an account**<br>This command creates a new device type that can be assigned to devices.  The type will be owned by an account and use the specified protocol to communicate with devices assigned to the device type. The name of the protocol is one of those registered by protocol plugins deployed on the server.  <br><br>  The device type can optionally be associated with a set of attributes specified by a yang file uploaded through an [exodm:create-yang-module] command. In these cases, each device assigned to the device type will have the given attributes associated with it in the server. Unlinke device configuration data, device attributes will not be sent to the device. Instead they will be stored locally on the Exosense Server.<br>The attributes can be set through the [exodm:update-device] command and retrieved through [exodm:lookup-device].  Protocol plugins can also access the device attributes to locate network addresses and other information necessary for the protocol to communicate with a device.<br><br> Please note that the actual configuration data and RPC APIs for a device is managed through the packages installed on it.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>attribute-container</dt>
<dd>Container within the Yang specification hosting the device attribute specification. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Account-wide unique name of the device type. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>protocol</dt>
<dd>Protocol between device and Exosense server.  The name has previously been registered by a protocol plugin deployed on the server. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the device attribute specifications.  (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:update-device-type

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:update-device-type",
        "id": "",
        "params": {
            "account": "",
            "name": "",
            "protocol": "",
            "yang-specification": "",
            "attribute-container": ""
        }
    }


**Update an existing device type**<br>This commands updates an existing device type previously created with [exodm:create-device-type].  This command currently does nothing since changing any information would have unforseeable consequences for the existing devices of this type.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>attribute-container</dt>
<dd>Container within the Yang specification hosting the device attribute specification. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Account-wide unique name of the device type. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>protocol</dt>
<dd>Protocol between device and Exosense server.  The name has previously been registered by a protocol plugin deployed on the server. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the device attribute specifications.  (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:delete-device-type

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:delete-device-type",
        "id": "",
        "params": {
            "account": "",
            "name": ""
        }
    }


**Delete a device type and its associated devices**<br>This command deletes a device type previously created through a [exodm:create-device-type] command. All devices assigned to the device type will also be deleted as if [exodm:delete-device] was called for each one of them.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the device type to delete. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-device-types

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-device-types",
        "id": "",
        "params": {
            "account": "",
            "n": "",
            "previous": ""
        }
    }


**List all device types owned by an account**<br>This commands will retrieve the name of all device types created under the given account through [exodm:create-device-type] calls.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of device type names.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More device types may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first device type after the one with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "device-types": [
                {
                    "name": "",
                    "protocol": "",
                    "yang-specification": "",
                    "attribute-container": ""
                }
            ]
        }
    }


#### descriptions
<dl><dt>attribute-container</dt>
<dd>Container within the Yang specification hosting the device attribute specification. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-types</dt>
<dd>List of device types owned by the given account. (<b>type:</b> array)</dd>
<dt>name</dt>
<dd>Account-wide unique name of the device type. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>protocol</dt>
<dd>Protocol between device and Exosense server.  The name has previously been registered by a protocol plugin deployed on the server. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the device attribute specifications.  (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-device-type-devices

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-device-type-devices",
        "id": "",
        "params": {
            "account": "",
            "name": "",
            "n": "",
            "previous": ""
        }
    }


**List device IDs associated with a device type**<br> This command returns the device ID of all devices that were assigned to the given device type when they were created with a [exodm:create-device] command.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of device IDs.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More devices may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>name</dt>
<dd>Name of device type for which to retrieve associated devices. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first device after the device with the ID specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": "ok"
    }




## exodm:create-config-set

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-config-set",
        "id": "",
        "params": {
            "account": "",
            "name": "",
            "yang": "",
            "notification-url": "",
            "values": ""
        }
    }


**Create a new configuration set [deprecated in 2.x]**<br>This command creates a new configuration set describing an RPC API and configuration data supported by a device. A configuration set is associated with a yang module, created through a [exodm:create-yang-module] command, that describes the configuration data and API interface of the devices that are members of the set. Also tied to the configuration set is a notification URL that will receive all results from RPCs sent to a member device The notification URL will also be used to forward incoming incoming RPCs from the device sent to the server. <br><br>Once a configuration set has been created, it can have devices added to it through the [exodm:add-config-set-members]. All such member devices can have RPCs, as defined in the configuration set yang module, called through the JSON-RPC interface. These devices can also have configuration data updated by the server through the [exodm:update-config-set] and [exodm:push-config-set] commands.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the configuration set belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the configuration set to create (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>Notification URL to send RPC results and device-originated RPC calls to. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang spec) to initialize the newly created configuration set with. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>yang</dt>
<dd>Name of the yang module to use. Include the ".yang" suffix. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:update-config-set

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:update-config-set",
        "id": "",
        "params": {
            "name": "",
            "account": "",
            "notification-url": "",
            "values": ""
        }
    }


**Update the data of a configuraiton set**<br>This command will update the configuration values of a configuraiton set. Once the data has been updated, it can be pushed out to all configuration set member devices through the [exodm:push-config-set] command. <br><br>The format of the configuration data is specified by the yang module provided to the [exodm:create-config-set] command that created the configuration set. Any data that does not validate against the yang module will result in an error.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the configuration set belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>The name of the configuration data set to update. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>Notification URL to send RPC results and device-originated RPC calls to. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang spec) to update in the configuration set. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:delete-config-set

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:delete-config-set",
        "id": "",
        "params": {
            "account": "",
            "name": ""
        }
    }


**Delete an existing configuration set**<br>This command deletes a configuration set previously created through an [exodm:create-config-set] command. Any configuration data pushed to the set's member devices will be delivered, although the delivery notificatin sent back to the notification URL of the set may be lost? Any configuration set member devices will be removed from the set prior to its deletion.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the configuration set belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>The name of the configuration data set to delete. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-config-sets

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-config-sets",
        "id": "",
        "params": {
            "n": "",
            "previous": "",
            "account": "",
            "device-id": ""
        }
    }


**List all configuraiton sets owned by an account**<br>This commands will return all configuration sets created under the specified account through a previous [exodm:create-config-set] command.

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>Optional device ID. If given, config specs associated with the given device are listed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous config set; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "config-sets": [
                {
                    "name": "",
                    "yang": "",
                    "notification-url": ""
                }
            ]
        }
    }


#### descriptions
<dl><dt>config-sets</dt>
<dd> (<b>type:</b> array)</dd>
<dt>name</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>notification-url</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-config-set-members

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-config-set-members",
        "id": "",
        "params": {
            "name": "",
            "n": "",
            "previous": "",
            "account": ""
        }
    }


List members of a config set, N entries at a time

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>name</dt>
<dd>Name of the config set (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous member; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "config-set-members": [
                "config-set-members": ""
            ]
        }
    }


#### descriptions
<dl><dt>config-set-members</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:add-config-set-members

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:add-config-set-members",
        "id": "",
        "params": {
            "name": [
                "name": ""
            ],
            "dev-id": [
                "dev-id": ""
            ],
            "account": ""
        }
    }


Add a device to a config set.

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Devices to push the given config data instances to (s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Configuration data instances to associate with the given device(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:remove-config-set-members

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:remove-config-set-members",
        "id": "",
        "params": {
            "name": [
                "name": ""
            ],
            "dev-id": [
                "dev-id": ""
            ],
            "account": ""
        }
    }


Remove a config set member.

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Devices to remove from the given config data instances (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Configuration data instances from which to remove the given devices (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:push-config-set

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:push-config-set",
        "id": "",
        "params": {
            "account": "",
            "name": ""
        }
    }


Push the given configuration data to all member devices

#### descriptions
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of configuration data set to push. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### Notification: exodm:push-config-set-callback


    {
        "jsonrpc": "2.0",
        "method": "exodm:push-config-set-callback",
        "params": {
            "transaction-id": "",
            "rpc-status": "",
            "rpc-status-string": "",
            "final": ""
        }
    }


Elements included in all callback notifications sent from Exosense to the backend server.

#### descriptions
<dl><dt>final</dt>
<dd>This is the final callback for the given operation (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>rpc-status</dt>
<dd>Status of operation in progress. (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
<dt>rpc-status-string</dt>
<dd>Additional status information, in human readable format, (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>transaction-id</dt>
<dd>The transaction that this callback is made in response to. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:create-yang-module

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-yang-module",
        "id": "",
        "params": {
            "account": "",
            "repository": "",
            "name": "",
            "yang-module": ""
        }
    }


**Upload a yang file**<br>This commands parses the provided yang file and stores it as a yang module in the Exosense Server. The yang file is expected to be compliant with RFC 6020. Once a yang module has been created, it can be used to specify the structure of device attributes, package RPC APIs, and package configuration data. Please see [exodm:create-device-type] for details on device attributes, and [exodm:create-package] for details on package RPC API and configuration data structure. <br><br> A yang module can be created either in the account or system repository on the Exosense Server. Modules created in the "system\ repository will be accessible to all accounts on the system, while modules created in the "account" repository will only be visible and accessible to the account invoking this command.  Only the sysadm account can create a yang module in the system repository.<br><br>If the yang module is uploaded to the "user" repo, then the name of the yang module must be unique among all existing yang modules under the given account, as well as being unique among all existing yang modules in the "system" repository. <br>If the yang module is uploaded to the "system" repo, then the name of the yang module must be unique among all existing yang modules created in the Exosense Server. No existing yang module in any "user" repository under any account can have the same name as the new module. Neither can the new module have the same name as an existing yang module in the "system" repository.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, in whose repository the yang modules should be created.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned.<br> This argument is not used if the yang module to is to be created in the "system" repository. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the uploaded yang module, including the .yang prefix. Example is commands.yang.  (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>Where to store the module in the Exosense Server: Can be "system" or "account" (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang-module</dt>
<dd>The yang code to create the module from (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:delete-yang-module

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:delete-yang-module",
        "id": "",
        "params": {
            "account": "",
            "name": ""
        }
    }


**Delete an existing yang module**<br> This commands deletes a yang module previously created through [exodm:create-yang-module]. This command will fail if there are any device types and/or packages currently referring to the given yang module.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the yang modules belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned.<br> This argument is not used if the yang module to delete resides in the "system" repository. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the yang module to delete. Example iscommands.yang' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-yang-modules

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-yang-modules",
        "id": "",
        "params": {
            "account": "",
            "repository": "",
            "n": "",
            "previous": ""
        }
    }


**List the yang modules created in a repository**This commands lists all yang modules under the account-specific or system-wide repository.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of device IDs.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the yang modules belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned.<br> This argument is not used if the yang modules to list resides in the "system" repository. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More modules may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first module after themodule with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>The repository to list modules under "system" or "account"; default: "account" (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "yang-modules": [
                "yang-modules": ""
            ]
        }
    }


#### descriptions
<dl><dt>yang-modules</dt>
<dd>List of yang modules. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:create-package

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:create-package",
        "id": "",
        "params": {
            "account": "",
            "package-name": "",
            "prerequisite-packages": [
                "prerequisite-packages": ""
            ],
            "upgrade-from-packages": [
                "upgrade-from-packages": ""
            ],
            "yang-specification": "",
            "configuration-container": "",
            "api-container": "",
            "image": ""
        }
    }


**Upload a package, with a software image**<br>This command uploads a package software image and the associated meta data to the Exosense Server.Once the package has been uploaded, it can be added to device types that supports it through the [exodm:add-package-to-device-type] command, and then installed on actual devices through the [exodm:install-package] command.<br><br>If the given package is an upgrade, all existing packages that this package can perform an upgrade on can be listed by the upgrade-from-packages argument. Upgrade packages can be installed on a device through the [exodm:upgrade-package] <br><br>If the given package needs other packages installed on a device before itself can be installed, the list of the required packages can be listed in the prerequisite-packages argument. <br><br>When [exodm:install-package] command is called, the server will check its device database to ensure that the prerequisite packages are already installed. If this is not the case, and recursive-dependency-resolve installation has not been selected, an error will be returned. If recursive installation has been selected for the command, all dependency packages will be resolved recursively and transmitted with the package given in package-name to the device.  <br><br>If a package has functions that can be remotely invoked on a device from the Exosense Server, the API of those RPCs is specified by the yang module and container given in the yang-specification and api-container arguments. Once the package has been installed on a device, a user with access to an RPC given in the yang container can call the function on the device through the JSON-RPC interface on the Exosense Server. The server will store the call and forward it to the device once it comes online. The result of the executed function will be transported back from the device to the backend server through a notification sent to the device callback URL and the callback URL of any device groups that the device is a member of. <br><br>In order for a package RPC to be executed via a JSON-RPC call, a user must be assigned to a role with execution rights to the RPC. A role is given execution rights to a specific RPC in a package created in an account through the [exodm:add-role-execution-permission] call. Users can then be added to the role through the [exodm:add-user-to-role] the <br><br>If a package has configuration data that can be remotely updated from the Exosense Server, the structure of that data is also specified in the yang module given by the yang-specification argument. The container hosting the configuration data structure is given in the configuration-container argument. <br><br>The configuration data for a package can be set for a package, once it has been installed on a device, through the [exodm:update-package-configuration] command.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, that will own the package. If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>api-container</dt>
<dd>Container within the Yang specification that has the RPC API definition. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>configuration-container</dt>
<dd>Container within the Yang specification that has the configuration data definition. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>image</dt>
<dd>The package image itself. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>Name of package. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>prerequisite-packages</dt>
<dd>List of packages that must be installed prior to this on a device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>upgrade-from-packages</dt>
<dd>List of packages that can be upgraded by this package. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the API and configuration data definitions. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:add-package-to-device-type

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:add-package-to-device-type",
        "id": "",
        "params": {
            "account": "",
            "package-name": [
                "package-name": ""
            ],
            "device-type": "",
            "install-arguments": "",
            "upgrade-arguments": "",
            "uninstall-arguments": ""
        }
    }


**Specify that a package can be installed on devices of a given device type**<br>This commands specifies that the given package can be installed, upgraded, and removed from devices that belongs to the provided device type. Once the package has been added to the device type, it can be sent out to be installed, upgraded, or uninstalled to/from a device using the [exodm:install-package], [exodm:upgrade-package], and [exodm:uninstall-package] calls. In additon to the device type and package name itself, this call also accepts arguments to be provided as command line parameters to the local package manager on the device.  Different arguments are given for the manager depending on if the package is to be installed, upgraded or uninstalled. The actual syntax and semantics of the arguments are dependent on the type of package manager running on the device. 

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package and device type belong. If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>Device type to accept this package. The device type is that assigned to the device type through a [exodm:create-device-type] command. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>install-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is installed on devices of the given device type. The specified string will be supplied as a command line argument to the package manager. The exact syntax of the string is dependent on the package manager running on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The name of the package to allow on the device type. The name is that assigned to the package when it was created through a [exodm:create-package] command. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>uninstall-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is uninstalled from devices of the given device type. The specified string will be supplied as a command line argument to the package manager. The exact syntax of the string is dependent on the package manager running on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>upgrade-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is upgraded on devices of the given device type. The specified string will be supplied as a command line argument to the package manager. The exact syntax of the string is dependent on the package manager running on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:remove-package-from-device-type

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:remove-package-from-device-type",
        "id": "",
        "params": {
            "account": "",
            "package-name": [
                "package-name": ""
            ],
            "device-type": "",
            "install-arguments": "",
            "upgrade-arguments": "",
            "uninstall-arguments": ""
        }
    }


**Specify that a package cannot any longer be installed on devices of a given device type**<br>This commands specifies that the given package cannot be installed, upgraded, or removed from devices that belongs to the provided device type. The given package must have been added to the device-type with a previous [exodm:add-package-to-device-type] command. <br><br>Any devices of the given device type that already have the package installed will not be affected, although they cannot be uninstalled from them once the package is no longer supported by the device type.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package and device type belong. If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>Device type to accept this package. The device type is that assigned to the device type through a [exodm:create-device-type] command. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>install-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is installed on devices of the given device type. The specified string will be supplied as a command line argument to the package manager. The exact syntax of the string is dependent on the package manager running on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The name of the package to allow on the device type. The name is that assigned to the package when it was created through a [exodm:create-package] command. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>uninstall-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is uninstalled from devices of the given device type. The specified string will be supplied as a command line argument to the package manager. The exact syntax of the string is dependent on the package manager running on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>upgrade-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is upgraded on devices of the given device type. The specified string will be supplied as a command line argument to the package manager. The exact syntax of the string is dependent on the package manager running on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:install-package

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:install-package",
        "id": "",
        "params": {
            "account": "",
            "package-name": "",
            "targets": [
                "targets": ""
            ],
            "recursive-dependency-resolve": "",
            "timeout": ""
        }
    }


**Install a package on one or more devices**<br>Installs the given package on the devices provided in the targets argument. The device IDs can either be listed directly in the argument, or be a member of a listed device group. The package will be transmitted to all resolved target and then installed on them. <br><br>Please note that all devices, either listed directly or through a device group, must be of a device type that accepts the given package. If one or more devices are of a type not accepting the package, a [exodm:package-operation-notification] will be sent back for the failed device with the error code not-supported.<br><br>The installation is carried out by invoking the local package manager on the device. This manager will be provided with command line argumens retrieved from the install-arguments string specified to the [exodm:add-package-to-device-type] when the package was added to the device type. <br><br>The package to install may have dependencies on other packages that must be installed on a device before itself can be installed. Such dependencies are listed in the prerequisite-packages argument of the [exodm:create-package] command that created the package.<br><br>Prior to processing the install operation on each device, server will check its internal database to ensure that the prerequisite packages are already installed on the device. If this is not the case, and recursive installation has not been selected, an error will be returned. If the recursive-dependency-resolve argument has been set for the install, all dependency packages will be resolved recursively and transmitted with the package given in package-name to the device in order to all be installed at once. on the device. <br><br>For each successful or failed transmit and install operation on a device, a notification will be sent back to the backend server. This allows the backend server to keep track of successes and failures during the install process.  The notification will be sent to the URL registered for the device and any device groups that the device is a member of. Thus, a single device operation may trigger notifications sends to multiple callback URLs. If the same URL is registered multiple times for a device and its groups, the notificaiton will only be sent once to that URL.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package and devices belong. If no account is given, the authorizing user assumes to have access only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The name of the package to install (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>recursive-dependency-resolve</dt>
<dd>Recursively transmit and install any packages that this package is dependent upon. This allows a complete tree of software to be transmitted with a single transaciton. (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>Mix of device-ids and device group ids for all devices to have the package installed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the package to be installed on the target devices before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:upgrade-package

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:upgrade-package",
        "id": "",
        "params": {
            "account": "",
            "from-package-name": "",
            "to-package-name": "",
            "targets": [
                "targets": ""
            ],
            "recursive-dependency-resolve": "",
            "remove-unused": "",
            "timeout": ""
        }
    }


**Upgrade a package on one or more devices**<br>Upgrades the given package, specified by from-package-name, to a newer version, specified in to-package-name, on the devices provided in the targets argument. The device IDs can either be listed directly in the argument, or be a member of a listed device group. The package in to-package-name will be transmitted to all resolved target and then installed on them. <br><br>In order for the upgrade to processed, the package specified by the from-package-name must be listed in the upgrade-from-packages element of the [exodm:create-package] call that created the package specified by to-package-name.<br><br>Please note that all devices, either listed directly or through a device group, must be of a device type that accepts the given package. If one or more devices are of a type not accepting the package, a [exodm:package-operation-notification] will be sent back for the failed device with the error code not-supported.<br><br>The upgrade is carried out by invoking the local package manager on the device. This software will be provided with command line argumens retrieved from the upgrade-arguments string specified to the [exodm:add-package-to-device-type] when the package was added to the device type. <br><br>For each successful or failed transmit and install operation on a device, a notification will be sent back to the backend server. This allows the backend server to keep track of successes and failures during the upgrade process.  The notification will be sent to the URL registered for the device and any device groups that the device is a member of. Thus, a single device operation may trigger notifications sends to multiple callback URLs. If the same URL is registered multiple times for a device and its groups, the notificaiton will only be sent once to that URL.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package and devices belong.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>from-package-name</dt>
<dd>The name of the package already installed on the devices to upgrade.  (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>recursive-dependency-resolve</dt>
<dd>Recursively transmit and install any packages that to-package-name is dependent upon. (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>remove-unused</dt>
<dd>Remove any package images not needed after the upgrade from the device. (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>Mix of device-ids and device group ids for all devices to have the upgrade performed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the package to be upgraded on the target devices before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>to-package-name</dt>
<dd>The name of the package to use to upgrade the from-package.  (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:uninstall-package

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:uninstall-package",
        "id": "",
        "params": {
            "account": "",
            "package-name": "",
            "targets": [
                "targets": ""
            ],
            "remove-unused": "",
            "timeout": ""
        }
    }


**Uninstall a package on one or more devices**<br>Uninstalls the given package, specified by package-name, from the devices provided in the targets argument. The device IDs can either be listed directly in the argument, or be a member of a listed device group. <br><br>The uninstall is carried out by invoking the local package manager  on the device. This manager will be provided with command line argumens retrieved from the upgrade-arguments string specified to the [exodm:add-package-to-device-type] when the package was added to the device type. <br><br>For each successful or failed uninstall operation on a device, a notification will be sent back to the backend server. This allows the backend server to keep track of successes and failures during the uninstall process.  The notification will be sent to the URL registered for the device and any device groups that the device is a member of. Thus, a single device operation may trigger notifications sends to multiple callback URLs. If the same URL is registered multiple times for a device and its groups, the notificaiton will only be sent once to that URL.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package and devices belong.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to  multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The name of the package, already installed on the device, to uninstall. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>remove-unused</dt>
<dd>Remove the package images that are no longer in use from the device. (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>Mix of device-ids and device group ids for all devices to have the uninstall performed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the package to be removed from the target devices before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": ""
        }
    }


#### descriptions
<dl><dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### Notification: exodm:package-operation-notification


    {
        "jsonrpc": "2.0",
        "method": "exodm:package-operation-notification",
        "params": {
            "device-id": "",
            "package-name": "",
            "package-status": "",
            "transaction-id": "",
            "rpc-status": "",
            "rpc-status-string": "",
            "final": ""
        }
    }


A notification sent back from the Exosense Server to the backend server to report the progress of an install/upgrade/uninstall operation. One notification will be sent back for each device that is to process the operation. The device ID specifies the device that the notification refers to. This device ID is listed, either directly or as a device group member, in the targets list of the install-package command that this is a notification of.

#### descriptions
<dl><dt>device-id</dt>
<dd>The device that this notificaiton is in response to (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>final</dt>
<dd>This is the final callback for the given operation (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The device that this notificaiton is in response to (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-status</dt>
<dd>The status of the packge install operation (<b>type:</b> "0" (transmitted) | "0" (transmitted) | "1" (transmit-failed) | "2" (installed) | "3" (install-failed) | "4" (upgraded) | "5" (upgrade-failed) | "6" (uninstalled) | "7" (uninstall-failed) | "8" (not-installed) | "9" (unsupported-package) | "10" (dependency-failure) | "11" (timeout); [<em>mandatory: false</em>])</dd>
<dt>rpc-status</dt>
<dd>Status of operation in progress. (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
<dt>rpc-status-string</dt>
<dd>Additional status information, in human readable format, (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>transaction-id</dt>
<dd>The transaction that this callback is made in response to. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-packages

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-packages",
        "id": "",
        "params": {
            "account": "",
            "n": "",
            "previous": ""
        }
    }


**List all packages owned by a given account**<br>This command returns the names of all packages created by previous [exodm:create-package] calls in the given account.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of package names.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible the authorizing user, to list all packages for.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More packages may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first package after the package with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": "",
            "packages": [
                "packages": ""
            ]
        }
    }


#### descriptions
<dl><dt>packages</dt>
<dd>Package names under the given account (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-device-types-with-package

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-device-types-with-package",
        "id": "",
        "params": {
            "account": "",
            "package-name": "",
            "n": "",
            "previous": ""
        }
    }


**List all device types that can install a given package**<br>All devices types that have had the given package added to it through an [exodm:add-package-to-device-type] command will returned by this call.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of device type names.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More device types may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The package to which list supporting device types for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first device type after that with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": "",
            "device-types": [
                "device-types": ""
            ]
        }
    }


#### descriptions
<dl><dt>device-types</dt>
<dd>List of device types accepting the given package. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-packages-on-device-type

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-packages-on-device-type",
        "id": "",
        "params": {
            "account": "",
            "device-type": "",
            "n": "",
            "previous": ""
        }
    }


**List all packages that can be installed on the given device type**<br>All packages that have been added to a device type through an [exodm:add-package-to-device-type] command will returned by this call.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of device type names.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the device type belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>The device type to which list supporting device types for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More package names may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first package after that with the name specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": "",
            "packages": [
                "packages": ""
            ]
        }
    }


#### descriptions
<dl><dt>packages</dt>
<dd>List of package names available for installation on the given device type. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:list-devices-with-package

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:list-devices-with-package",
        "id": "",
        "params": {
            "account": "",
            "package-name": "",
            "n": "",
            "previous": ""
        }
    }


**List all devices that have installed or uninstalled a package**<br>Packages returned have previously been installed on the device using a [exodm:add-package-to-device] call.<br><br>Each returned device will have a package-status argument indicating if the package is in the process of being transmitted and installed on a device, or if its installation has completed.<br><br>This command allows for chunks of the result set to be returned to facilitate a sequential retrieval of device names

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package belongs.If no account is given, the authorizing user assumes to have access to  only one account, which will be used. If no account is given, and the user has access to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Maximum number of entries to return. More devices may be available after the last returned element. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The account to which list installed devices for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Start the fetch at the first device after that with the ID specified by this argument. Use "" if the fetch is to start from the beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": {
            "result": "",
            "devices": [
                {
                    "device-id": "",
                    "package-status": ""
                }
            ]
        }
    }


#### descriptions
<dl><dt>device-id</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>devices</dt>
<dd> (<b>type:</b> array)</dd>
<dt>package-status</dt>
<dd> (<b>type:</b> "0" (pending-install) | "0" (pending-install) | "1" (installed); [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd>Result of the operation (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



## exodm:update-package-config

### Request


    {
        "jsonrpc": "2.0",
        "method": "exodm:update-package-config",
        "id": "",
        "params": {
            "account": "",
            "targets": [
                "targets": ""
            ],
            "package-name": "",
            "timeout": "",
            "values": ""
        }
    }


**Set and push configuration data for a package to a device(s)**<br>The device IDs can either be listed directly in the argument, or be a member of a listed device group.  The configuration data for the package will be transmitted to all resolved target and then updated in their local configuration system.  The package name is given together with an array of key/value pairs for the configuration data to set for the given package on the given devices.  Each key/value pair must match an element in the yang file and container specified by the create-package yang-specification and configuration-container.  All given devices must have both be supporting the specified package, and have the package installed on them. <br><br>A successful configuration entry update on a device will overwrite any earlier values that entry had. This allows default and/or general configuration updates, such as Exosense Server addresses and call in schedules, to be sent out to device groups covering large swaths of devices, followed by more targeted updates to individual devices with information such as local encryption keys, individual identities, etc. <br><br>For each successful or failed configuration operation on a device, a notification will be sent back to the invoking backend server for the given device. This allows the backend server to keep track of successes and failures during the configuration update process.

#### descriptions
<dl><dt>account</dt>
<dd>The account, accessible by the authorizing user, to which the package and device belongs.If no account is given, the authorizing user assumes to have access to only one account, which will be used. If no account is given, and the user has access multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The package to set the config data for in the target device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>A list of device ids and device group ids id to set the config data on. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the configuration data to be sent to the device before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang specifification) to set on the target devices. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
</dl>



### Reply


    {
        "jsonrpc": "2.0",
        "id": "",
        "result": "ok"
    }







