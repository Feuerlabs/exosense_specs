## Module: exodm

### RPC: exodm:create-user

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-user",
 "id": "",
 "params": {"uname": "",
            "email": "",
            "password": "",
            "fullname": "",
            "phone": "",
            "skype": "",
            "alias": ["alias": ""]}}
```

Create a new user



**descriptions**
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



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-user

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-user",
 "id": "",
 "params": {"uname": ""}}
```

Delete an existing user



**descriptions**
<dl><dt>uname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-users

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-users",
 "id": "",
 "params": {"n": "",
            "previous": "",
            "account": ""}}
```

List all users.



**descriptions**
<dl><dt>account</dt>
<dd>If account is given only users connected to that account are returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous user name; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"users": ["users": ""]}}
```

**descriptions**
<dl><dt>users</dt>
<dd>List of user names (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:create-account

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-account",
 "id": "",
 "params": {"name": "",
            "admin-user": [{"uname": "",
                            "email": "",
                            "password": "",
                            "fullname": "",
                            "phone": "",
                            "skype": "",
                            "alias": ["alias": ""]}]}}
```

Create a new account



**descriptions**
<dl><dt>admin-user</dt>
<dd> (<b>type:</b> array)</dd>
<dt>alias</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>email</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>fullname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>password</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>phone</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>skype</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>uname</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": "",
            "account-id": ""}}
```

**descriptions**
<dl><dt>account-id</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-account

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-account",
 "id": "",
 "params": {"name": ""}}
```

Update account information.



**descriptions**
<dl><dt>name</dt>
<dd>The account name. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-account

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-account",
 "id": "",
 "params": {"name": ""}}
```

Delete an account,
   data must be deleted before account is removed.



**descriptions**
<dl><dt>name</dt>
<dd>The account name. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-accounts

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-accounts",
 "id": "",
 "params": {"n": "",
            "previous": ""}}
```

List all account names.



**descriptions**
<dl><dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous account name; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"accounts": ["accounts": ""]}}
```

**descriptions**
<dl><dt>accounts</dt>
<dd>List of account ID (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-account-users

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-account-users",
 "id": "",
 "params": {"account": "",
            "role": "",
            "unames": ["unames": ""]}}
```

Add account access to existing user(s).Predefined roles are: admin, configurer, executer, viewer



**descriptions**
<dl><dt>account</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>role</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>unames</dt>
<dd>Users to add to account. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:remove-account-users

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:remove-account-users",
 "id": "",
 "params": {"account": "",
            "role": "",
            "unames": ["unames": ""]}}
```

Remove account access from existing user(s).



**descriptions**
<dl><dt>account</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>role</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>unames</dt>
<dd>Users to add to account. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-account-users

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-account-users",
 "id": "",
 "params": {"account": "",
            "n": "",
            "previous": ""}}
```

List all users with access to account.



**descriptions**
<dl><dt>account</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous user name; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"users": ["users": ""]}}
```

**descriptions**
<dl><dt>users</dt>
<dd>List of user names (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-account-roles

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-account-roles",
 "id": "",
 "params": {"account": "",
            "n": "",
            "previous": ""}}
```

List all roles defined for account.



**descriptions**
<dl><dt>account</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous user name; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"roles": ["roles": ""]}}
```

**descriptions**
<dl><dt>roles</dt>
<dd>List of role names (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:provision-device

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:provision-device",
 "id": "",
 "params": {"dev-id": "",
            "device-type": "",
            "description": "",
            "server-key": "",
            "device-key": "",
            "session-timeout": "",
            "msisdn": "",
            "imsi": "",
            "imei": "",
            "latitude": "",
            "longitude": "",
            "account": ""}}
```

Create a new device. augment this call if you want to add device-data



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>description</dt>
<dd>User-provided description of device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-key</dt>
<dd>Device key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>Type of device (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>imei</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>imsi</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>latitude</dt>
<dd>Latitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>longitude</dt>
<dd>Longitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>msisdn</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>session-timeout</dt>
<dd>Time of inactivity before a connected device considered off-line (seconds; 0 seconds means no timeout) (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-device

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-device",
 "id": "",
 "params": {"dev-id": "",
            "device-type": "",
            "description": "",
            "server-key": "",
            "device-key": "",
            "session-timeout": "",
            "msisdn": "",
            "imsi": "",
            "imei": "",
            "latitude": "",
            "longitude": "",
            "account": ""}}
```

RPC to update an existing device object.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>description</dt>
<dd>User-provided description of device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-key</dt>
<dd>Device key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>Type of device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>imei</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>imsi</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>latitude</dt>
<dd>Latitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>longitude</dt>
<dd>Longitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>msisdn</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>session-timeout</dt>
<dd>Time of inactivity before a connected device considered off-line (seconds; 0 seconds means no timeout) (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:lookup-device

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:lookup-device",
 "id": "",
 "params": {"dev-id": "",
            "account": ""}}
```

RPC to read a single device object.Returns a list of zero or one device object.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd> (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": "",
            "devices": [{"dev-id": "",
                         "device-type": "",
                         "description": "",
                         "server-key": "",
                         "device-key": "",
                         "session-timeout": "",
                         "msisdn": "",
                         "imsi": "",
                         "imei": "",
                         "latitude": "",
                         "longitude": ""}]}}
```

**descriptions**
<dl><dt>description</dt>
<dd>User-provided description of device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-key</dt>
<dd>Device key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>Type of device (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>devices</dt>
<dd>Device object leafs (<b>type:</b> array)</dd>
<dt>imei</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>imsi</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>latitude</dt>
<dd>Latitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>longitude</dt>
<dd>Longitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>msisdn</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>session-timeout</dt>
<dd>Time of inactivity before a connected device considered off-line (seconds; 0 seconds means no timeout) (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-devices

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-devices",
 "id": "",
 "params": {"n": "",
            "previous": "",
            "account": ""}}
```

List provisioned devices, N entries at a time



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous device ID; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"devices": [{"dev-id": "",
                         "device-type": "",
                         "description": "",
                         "server-key": "",
                         "device-key": "",
                         "session-timeout": "",
                         "msisdn": "",
                         "imsi": "",
                         "imei": "",
                         "latitude": "",
                         "longitude": ""}]}}
```

**descriptions**
<dl><dt>description</dt>
<dd>User-provided description of device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-key</dt>
<dd>Device key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>Type of device (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>devices</dt>
<dd>Device object leafs (<b>type:</b> array)</dd>
<dt>imei</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>imsi</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>latitude</dt>
<dd>Latitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>longitude</dt>
<dd>Longitude of device location (<b>type:</b> decimal64; [<em>mandatory: false</em>])</dd>
<dt>msisdn</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
<dt>session-timeout</dt>
<dd>Time of inactivity before a connected device considered off-line (seconds; 0 seconds means no timeout) (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:deprovision-devices

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:deprovision-devices",
 "id": "",
 "params": {"dev-id": ["dev-id": ""],
            "account": ""}}
```

RPC to deprovision a set of existing devices.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:create-device-group

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-device-group",
 "id": "",
 "params": {"name": "",
            "notification-url": "",
            "account": ""}}
```

RPC to create a device group



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Group name (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>RPC callback notification URL (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": "",
            "gid": ""}}
```

**descriptions**
<dl><dt>gid</dt>
<dd>Group identifier. 0 (zero) if operation failed. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-device-group

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-device-group",
 "id": "",
 "params": {"gid": "",
            "account": ""}}
```

RPC to create a device group



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>gid</dt>
<dd>Group ID (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-device-groups

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-device-groups",
 "id": "",
 "params": {"n": "",
            "previous": "",
            "account": "",
            "device-id": ""}}
```

List device groups, N entries at a time



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>Optional device ID. If given, device groups associated with the given device are listed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous device group id (GID); "" if from beginning (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"device-groups": [{"gid": "",
                               "name": "",
                               "notification-url": ""}]}}
```

**descriptions**
<dl><dt>device-groups</dt>
<dd> (<b>type:</b> array)</dd>
<dt>gid</dt>
<dd> (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>notification-url</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-device-group-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-device-group-members",
 "id": "",
 "params": {"gid": "",
            "n": "",
            "previous": "",
            "account": ""}}
```

List devices attached to a device group, N entries at a time



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>gid</dt>
<dd>ID of the device group (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous device; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"device-group-members": ["device-group-members": ""]}}
```

**descriptions**
<dl><dt>device-group-members</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-device-group-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-device-group-members",
 "id": "",
 "params": {"device-groups": ["device-groups": ""],
            "dev-id": ["dev-id": ""],
            "account": ""}}
```

Link devices to device groups



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>List of Device ID(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-groups</dt>
<dd>Device groups to associate with the given device(s) (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:remove-device-group-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:remove-device-group-members",
 "id": "",
 "params": {"device-groups": ["device-groups": ""],
            "dev-id": ["dev-id": ""],
            "account": ""}}
```

Unlink devices from device groups



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>List of device ID(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-groups</dt>
<dd>Device groups to unlink the given device(s) from (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-device-group

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-device-group",
 "id": "",
 "params": {"gid": "",
            "notification-url": "",
            "account": ""}}
```

RPC to change the notification URL of an existing group



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>gid</dt>
<dd>Group identifier. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>RPC callback notification URL (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:create-device-type

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-device-type",
 "id": "",
 "params": {"account": "",
            "name": "",
            "protocol": "",
            "yang-specification": "",
            "attribute-container": ""}}
```

RPC to create a device type



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the device type belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>attribute-container</dt>
<dd>Container within the Yang specification containing device attribute specification. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Account-wide unique device type name (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>protocol</dt>
<dd>Protocol between device and Exosense server (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the device attribute specifications. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-device-type

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-device-type",
 "id": "",
 "params": {"account": "",
            "name": "",
            "protocol": "",
            "yang-specification": "",
            "attribute-container": ""}}
```

RPC to modify an existing device type.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>attribute-container</dt>
<dd>Container within the Yang specification containing device attribute specification. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Account-wide unique device type name (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>protocol</dt>
<dd>Protocol between device and Exosense server (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the device attribute specifications. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-device-type

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-device-type",
 "id": "",
 "params": {"account": "",
            "name": ""}}
```

RPC to create a device type



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the device type belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Device type name (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-device-types

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-device-types",
 "id": "",
 "params": {"account": "",
            "n": "",
            "previous": ""}}
```

RPC to list device types.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the device type belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous device type; "" if from beginning (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"device-types": [{"name": "",
                              "protocol": "",
                              "yang-specification": "",
                              "attribute-container": ""}]}}
```

**descriptions**
<dl><dt>attribute-container</dt>
<dd>Container within the Yang specification containing device attribute specification. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-types</dt>
<dd>Device type object leafs (<b>type:</b> array)</dd>
<dt>name</dt>
<dd>Account-wide unique device type name (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>protocol</dt>
<dd>Protocol between device and Exosense server (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the device attribute specifications. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-device-type-packages

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-device-type-packages",
 "id": "",
 "params": {"account": "",
            "device-type": "",
            "n": "",
            "previous": ""}}
```

List all packages allowed to be installed on devices of a given type N entries at a time.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the device type belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-type</dt>
<dd>ID of the device type to list packages for (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous package name; "" if from beginning (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"device-type-packages": ["device-type-packages": ""]}}
```

**descriptions**
<dl><dt>device-type-packages</dt>
<dd>List of packages allowed by this device type (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-device-type-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-device-type-package",
 "id": "",
 "params": {"account": "",
            "packages": ["packages": ""],
            "device-types": ["device-types": ""]}}
```

Add packages allowed to be installed on device types



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the device type belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-types</dt>
<dd>List of device types that can accept the package (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>packages</dt>
<dd>List of packages that are allowed to be installed on the given device types (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:remove-device-type-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:remove-device-type-package",
 "id": "",
 "params": {"account": "",
            "device-groups": ["device-groups": ""],
            "dev-id": ["dev-id": ""]}}
```

Unlink devices from device groups



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>List of device ID(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-groups</dt>
<dd>Device groups to unlink the given device(s) from (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-device-type-devices

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-device-type-devices",
 "id": "",
 "params": {"account": "",
            "name": "",
            "n": "",
            "previous": ""}}
```

List device IDs associated with a device type



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the device type belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>name</dt>
<dd>Name of device type (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous device ID; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": "ok"}
```



### RPC: exodm:create-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-config-set",
 "id": "",
 "params": {"name": "",
            "yang": "",
            "account": "",
            "notification-url": "",
            "values": ""}}
```

RPC to create device config data set



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the config data set (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>Notification URL (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang spec) (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>yang</dt>
<dd>Name of the corresponding yang file - must exist. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-config-set",
 "id": "",
 "params": {"name": "",
            "account": "",
            "notification-url": "",
            "values": ""}}
```

RPC to update existing config data set



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the config data set (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>notification-url</dt>
<dd>Notification URL (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang spec) (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-config-set",
 "id": "",
 "params": {"name": "",
            "account": ""}}
```

RPC to delete a config data set. Any member devices must first be removed.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the config data set (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-config-sets

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-config-sets",
 "id": "",
 "params": {"n": "",
            "previous": "",
            "account": "",
            "device-id": ""}}
```

List config sets, N entries at a time



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>Optional device ID. If given, config specs associated with the given device are listed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous config set; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"config-sets": [{"name": "",
                             "yang": "",
                             "notification-url": ""}]}}
```

**descriptions**
<dl><dt>config-sets</dt>
<dd> (<b>type:</b> array)</dd>
<dt>name</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>notification-url</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-config-set-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-config-set-members",
 "id": "",
 "params": {"name": "",
            "n": "",
            "previous": "",
            "account": ""}}
```

List members of a config set, N entries at a time



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>name</dt>
<dd>Name of the config set (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous member; "" if from beginning (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"config-set-members": ["config-set-members": ""]}}
```

**descriptions**
<dl><dt>config-set-members</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-config-set-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-config-set-members",
 "id": "",
 "params": {"name": ["name": ""],
            "dev-id": ["dev-id": ""],
            "account": ""}}
```

Add a device to a config set.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Devices to push the given config data instances to (s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Configuration data instances to associate with the given device(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:remove-config-set-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:remove-config-set-members",
 "id": "",
 "params": {"name": ["name": ""],
            "dev-id": ["dev-id": ""],
            "account": ""}}
```

Remove a config set member.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Devices to remove from the given config data instances (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Configuration data instances from which to remove the given devices (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:push-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:push-config-set",
 "id": "",
 "params": {"account": "",
            "name": ""}}
```

Push the given configuration data to all member devices

**extensions**
<dl>
<dt>exosense:matching-notification</dt><dd>push-config-set-callback</dd>
</dl>


**descriptions**
<dl><dt>account</dt>
<dd>The account to which the config set belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of configuration data set to push. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



#### Notification: exodm:push-config-set-callback
```json
{"jsonrpc": "2.0",
 "method": "exodm:push-config-set-callback",
 "params": {"transaction-id": "",
            "rpc-status": "",
            "rpc-status-string": "",
            "final": ""}}
```

Elements included in all callback notifications sent from Exosense to the backend server.



**descriptions**
<dl><dt>final</dt>
<dd>This is the final callback for the given operation (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>rpc-status</dt>
<dd>Status of operation in progress. (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
<dt>rpc-status-string</dt>
<dd>Additional status information, in human readable format, (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>transaction-id</dt>
<dd>The transaction that this callback is made in response to. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:create-yang-module

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-yang-module",
 "id": "",
 "params": {"repository": "",
            "name": "",
            "yang-module": "",
            "account": ""}}
```

RPC to store a YANG module either in user or system space



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name, including extension, e.g. 'rfzone.yang' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>Where to store the module: Currently "system" or "user" (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>yang-module</dt>
<dd>The actual source of the YANG module specification (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-yang-module

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-yang-module",
 "id": "",
 "params": {"repository": "",
            "name": "",
            "account": ""}}
```

RPC to delete a YANG module



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name, including extension, e.g. 'rfzone.yang' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>Where to delete the module: Currently "system" or "user" (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-yang-modules

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-yang-modules",
 "id": "",
 "params": {"repository": "",
            "n": "",
            "previous": "",
            "account": ""}}
```

RPC to list existing yang modules.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch. (<b>type:</b> uint32; [<em>mandatory: true</em>])</dd>
<dt>previous</dt>
<dd>Previous yang filename. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>"system" or "user"; default: "user" (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"yang-modules": ["yang-modules": ""]}}
```

**descriptions**
<dl><dt>yang-modules</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-execution-permission

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-execution-permission",
 "id": "",
 "params": {"repository": "",
            "name": "",
            "rpcname": "",
            "role": "",
            "account": ""}}
```



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of module, including extension, e.g. 'rfzone.yang' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>Where the module is: Currently "system" or "user" (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>role</dt>
<dd>Name of role to add permission to. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>rpcname</dt>
<dd>Name of rpc e.g. 'config-device' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:remove-execution-permission

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:remove-execution-permission",
 "id": "",
 "params": {"repository": "",
            "name": "",
            "rpcname": "",
            "role": "",
            "account": ""}}
```



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of module, including extension, e.g. 'rfzone.yang' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>Where the module is: Currently "system" or "user" (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>role</dt>
<dd>Name of role to remove permission from. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>rpcname</dt>
<dd>Name of rpc e.g. 'config-device' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-execution-permission

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-execution-permission",
 "id": "",
 "params": {"repository": "",
            "modulename": "",
            "rpcname": "",
            "account": ""}}
```



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the yang module belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>modulename</dt>
<dd>Name of module, including extension, e.g. 'rfzone.yang' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>repository</dt>
<dd>Where the module is: Currently "system" or "user" (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>rpcname</dt>
<dd>Name of rpc e.g. 'config-device' (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"roles": ["roles": ""]}}
```

**descriptions**
<dl><dt>roles</dt>
<dd>List of role names (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:create-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-package",
 "id": "",
 "params": {"account": "",
            "package-name": "",
            "dependencies": ["dependencies": ""],
            "uprade-from-packages": ["uprade-from-packages": ""],
            "yang-specification": "",
            "configuration-container": "",
            "api-container": "",
            "image": ""}}
```

Create a package in the database to be forwarded to devices.



**descriptions**
<dl><dt>account</dt>
<dd>The account under which the package is installed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>api-container</dt>
<dd>Container within the Yang specification that has the RPC API definition. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>configuration-container</dt>
<dd>Container within the Yang specification that has the configuration data definition. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dependencies</dt>
<dd>List of packages that must be installed prior to this on a device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>image</dt>
<dd>The package image itself. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>Name of package. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>uprade-from-packages</dt>
<dd>List of packages that can be upgraded by this package. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang-specification</dt>
<dd>Yang specification containing the API and configuration data definitions. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-package-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-package-members",
 "id": "",
 "params": {"account": "",
            "package-name": ["package-name": ""],
            "device-id": "",
            "install-arguments": "",
            "upgrade-arguments": "",
            "uninstall-arguments": ""}}
```

Add members to the list of devices to receive the package. The device type of each added device-id must have the package as a part of its allowed packages.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the device type belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>Device type to accept this package. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>install-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is installed on the given device type. The arguments will be provided to the install software on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>Configuration data instances to associate with the given device(s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>uninstall-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is uninstalled on the given device type. The arguments will be provided to the install software on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>upgrade-arguments</dt>
<dd>Arguments to be provided to the device package manager when package is upgraded from an earlier version on the given device type. The arguments will be provided to the install software on the device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:install-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:install-package",
 "id": "",
 "params": {"account": "",
            "package-name": "",
            "targets": ["targets": ""],
            "recursive": "",
            "timeout": ""}}
```

Installs the package on all listed devices and/or device groups. The package will be transmitted to all devices, and device group member devices, and then installed. For each successful or failed transmit and install operation, a notification will be sent back to the invoking server.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the package and devices belong. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The name of the package to install (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>recursive</dt>
<dd>Recursively transmit and install any packages that this package is dependent upon. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>Mix of device-ids and device group ids for all devices to have the package installed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the package to be installed on the target devices before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:upgrade-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:upgrade-package",
 "id": "",
 "params": {"account": "",
            "from-package-name": "",
            "to-package-name": "",
            "targets": ["targets": ""],
            "recursive": "",
            "remove-unused": "",
            "timeout": ""}}
```

Upgrades from one package to another on all listed devices and/or device groups. The package will be transmitted to all devices, and device group member devices, and then installed. For each successful or failed transmit and install operation, a notification will be sent back to the invoking server.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the package and devices belong. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>from-package-name</dt>
<dd>The name of the package already installed on the device to upgrade.  (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>recursive</dt>
<dd>Recursively transmit and install any packages that to-package-name is dependent upon. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>remove-unused</dt>
<dd>Remove any package images not needed after the upgrade from the device. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>Mix of device-ids and device group ids for all devices to have the upgrade performed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the package to be upgraded on the target devices before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>to-package-name</dt>
<dd>The name of the package to use to upgrade the from-oackage.  (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:uninstall-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:uninstall-package",
 "id": "",
 "params": {"account": "",
            "package": "",
            "targets": ["targets": ""],
            "remove-unused": "",
            "timeout": ""}}
```

Uninstalls a packagefrom all listed devices and/or device groups. The package will be uninstalled from all devices, and device group member devices. For each successful or failed uninstall operation, a notification will be sent back to the invoking server.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the package and devices belong. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package</dt>
<dd>The name of the package already installed on the device to uninstall. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>remove-unused</dt>
<dd>Remove the package image from the device. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>Mix of device-ids and device group ids for all devices to have the uninstall performed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the package to be removed from the target devices before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



#### Notification: exodm:package-operation-notification
```json
{"jsonrpc": "2.0",
 "method": "exodm:package-operation-notification",
 "params": {"device-id": "",
            "package-name": "",
            "package-status": "",
            "transaction-id": "",
            "rpc-status": "",
            "rpc-status-string": "",
            "final": ""}}
```

A notification sent back from the Exosense Server to the backend server to report the progress of an install/upgrade/uninstall operation. One notification will be sent back for each device that is to process the operaiton. The device ID that the notification is about. This device is listed, either directly or as a device group member, in the targets list of the install-package command that this is a notification of.



**descriptions**
<dl><dt>device-id</dt>
<dd>The device that this notificaiton is in response to (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>final</dt>
<dd>This is the final callback for the given operation (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The device that this notificaiton is in response to (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-status</dt>
<dd>The status of the packge install operation (<b>type:</b> 0 (transmitted) | 1 (transmit-failed) | 2 (installed) | 3 (install-failed) | 4 (upgraded) | 5 (upgrade-failed) | 6 (uninstalled) | 7 (uninstall-failed); [<em>mandatory: false</em>])</dd>
<dt>rpc-status</dt>
<dd>Status of operation in progress. (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
<dt>rpc-status-string</dt>
<dd>Additional status information, in human readable format, (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>transaction-id</dt>
<dd>The transaction that this callback is made in response to. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-packages

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-packages",
 "id": "",
 "params": {"account": ""}}
```

List all packages in the system



**descriptions**
<dl><dt>account</dt>
<dd>The account to list all packages for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": "",
            "packages": ["packages": ""]}}
```

**descriptions**
<dl><dt>packages</dt>
<dd>Name of package (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:get-package-device-types

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:get-package-device-types",
 "id": "",
 "params": {"account": "",
            "package-name": "",
            "n": "",
            "previous": ""}}
```

List all device types that can install a given package.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the package belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The account to which list supported device types for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous device-type name (GID); "" if from beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": "",
            "device-types": ["device-types": ""]}}
```

**descriptions**
<dl><dt>device-types</dt>
<dd>List of device-types accepting the given package. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:get-package-devices

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:get-package-devices",
 "id": "",
 "params": {"account": "",
            "package-name": "",
            "n": "",
            "previous": ""}}
```

List all device types that have installed, or are in the process of installing the given package.



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the package belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The account to which list supported device types for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous device-id; "" if from beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": "",
            "devices": [{"device-id": "",
                         "package-status": ""}]}}
```

**descriptions**
<dl><dt>device-id</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>devices</dt>
<dd> (<b>type:</b> array)</dd>
<dt>package-status</dt>
<dd> (<b>type:</b> 0 (pending-install) | 1 (installed) | 2 (pending-uninstall) | 3 (uninstalled) | 4 (removed) | 5 (failed-install) | 6 (failed-uninstall); [<em>mandatory: false</em>])</dd>
<dt>result</dt>
<dd> (<b>type:</b> enumeration; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-package-config

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-package-config",
 "id": "",
 "params": {"account": "",
            "device-id": "",
            "package-name": "",
            "timeout": "",
            "values": ""}}
```

Set and push configuration data for a given package on a given device, or all member devices of a device group, to those devices. The package name is given together with an array of key/value pairs for the conrfiguration data to set for the given package on the given device. Each key/value pair must match an element in the yang file and container specified by the create-package yang-specification and configuration-container



**descriptions**
<dl><dt>account</dt>
<dd>The account to which the package belongs. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>device-id</dt>
<dd>The device or group id to set the config data for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The package to set the config data for in the target device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the configuration data to be sent to the device before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang specifification) (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": "ok"}
```






