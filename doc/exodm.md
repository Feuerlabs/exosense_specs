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
            "prerequisite-packages": ["prerequisite-packages": ""],
            "uprade-from-packages": ["uprade-from-packages": ""],
            "yang-specification": "",
            "configuration-container": "",
            "api-container": "",
            "image": ""}}
```

Upload a package, with a software image, to be installed on devices. The created package will be owned by the specified account. Once the package has been uploaded, it can be added to device types that supports it through the [exodm:add-package-tog-device-type] command. <br><br>If the given package is an upgrade, all existing packages that this package can perform an upgrade on can be listed by the upgrade-from-packages argument. <br><br>If the given package needs other packages installed on a device before itself can be installed, the list of the required packages can be listed in the prerequisite-packages argument. <br><br>When [exodm:install-package] command is called, the server will check its device database to ensure that the prerequisite packages are already installed. If this is not the case, and recursive-dependency-resolve installation has not been selected, an error will be returned. If recursive installation has been selected for the command, all dependency packages will be resolved recursively and transmitted with the package given in package-name to the device. 



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated withh the authorizing user, that will own the package.It is not possible to access  device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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



### RPC: exodm:add-package-to-device-type

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-package-to-device-type",
 "id": "",
 "params": {"account": "",
            "package-name": ["package-name": ""],
            "device-type": "",
            "install-arguments": "",
            "upgrade-arguments": "",
            "uninstall-arguments": ""}}
```

Specify that a package can be installed on devices of a  given device type. This commands specifies that the given package can be installed, upgraded, and removed from devices that belongs to the provided device type. Once the package has been added to the device type, it can be sent out to be installed, upgraded, or uninstalled to/from a device using the [exodm:install-package], [exodm:upgrade-package], and [exodm:uninstall-package] calls. In additon to the device type and package name itself, this call also accepts arguments to be provided as command line parameters to the local package manager on the device.  Different arguments are given for the manager depending on if the package is to be installed, upgraded or uninstalled. The actual syntax and semantics of the arguments are dependent on the type of package manager running on the device. 



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package and device type belong. It is not possible to access packages or device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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



### RPC: exodm:remove-package-from-device-type

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:remove-package-from-device-type",
 "id": "",
 "params": {"account": "",
            "package-name": ["package-name": ""],
            "device-type": "",
            "install-arguments": "",
            "upgrade-arguments": "",
            "uninstall-arguments": ""}}
```

Specify that a package cannot any longer be installed on devices of a given device type. This commands specifies that the given package cannot be installed, upgraded, or removed from devices that belongs to the provided device type. The given package must have been added to the device-type with a previous [exodm:add-package-to-device-type] command. Any devices of the given device type that already has the package installed will not be affected, although they cannot be uninstalled from them once the package is no longer supported by the device type.



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package and device type belong. It is not possible to access packages or device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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
            "recursive-dependency-resolve": "",
            "timeout": ""}}
```

Install a package on one or more devices. Installs the given package on the devices provided in the targets argument. The device IDs can either be listed directly in the argument, or be a part of a listed device group. The package will be transmitted to all resolved target and then installed on them. <br><br>Please note that all devices, either listed directly or through a device group, must be of a device type that accepts the given package. If one or more devices are of a type not accepting the package, a [exodm:package-operation-notification] will be sent back for the failed device with the error code not-supported.<br><br>The installation is carried out by invoking the local package manager on the device. This manager will be provided with command line argumens retrieved from the install-arguments string specified to the [exodm:add-package-to-device-type] when the package was added to the device type. <br><br>The package to install may have dependencies on other packages that must be installed on a device before itself can be installed. Such dependencies are listed in the prerequisite-packages argument of the [exodm:create-package] command that created the package.<br><br>Prior to processing the install operation on each device, server will check its internal database to ensure that the prerequisite packages are already installed on the device. If this is not the case, and recursive installation has not been selected, an error will be returned. If the recursive-dependency-resolve argument has been set for the install, all dependency packages will be resolved recursively and transmitted with the package given in package-name to the device in order to all be installed at once. on the device. <br><br>For each successful or failed transmit and install operation on a device, a notification will be sent back to the invoking backend server. This allows the backend server to keep track of successes and failures during the install process



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package and devices belong.It is not possible to access packages or device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The name of the package to install (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>recursive-dependency-resolve</dt>
<dd>Recursively transmit and install any packages that this package is dependent upon. This allows a complete tree of software to be transmitted with a single transaciton. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
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
            "recursive-dependency-resolve": "",
            "remove-unused": "",
            "timeout": ""}}
```

Upgrade a package on one or more devices. Upgrades the given package, specified by from-package-name, to a newer version, specified in to-package-name, on the devices provided in the targets argument. The device IDs can either be listed directly in the argument, or be a part of a listed device group. The package in to-package-name will be transmitted to all resolved target and then installed on them. <br><br>In order for the upgrade to processed, the package specified by the from-package-name must be listed in the upgrade-from-packages element of the [exodm:create-package] call that created the package specified by to-package-name.<br><br>Please note that all devices, either listed directly or through a device group, must be of a device type that accepts the given package. If one or more devices are of a type not accepting the package, a [exodm:package-operation-notification] will be sent back for the failed device with the error code not-supported.<br><br>The upgrade is carried out by invoking the local package manager on the device. This software will be provided with command line argumens retrieved from the upgrade-arguments string specified to the [exodm:add-package-to-device-type] when the package was added to the device type. <br><br>For each successful or failed transmit and upgrade operation on a device, a notification will be sent back to the invoking backend server. This allows the backend server to keep track of successes and failures during the upgrade process



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package and devices belong.It is not possible to access packages or device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>from-package-name</dt>
<dd>The name of the package already installed on the devices to upgrade.  (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>recursive-dependency-resolve</dt>
<dd>Recursively transmit and install any packages that to-package-name is dependent upon. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>remove-unused</dt>
<dd>Remove any package images not needed after the upgrade from the device. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>Mix of device-ids and device group ids for all devices to have the upgrade performed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the package to be upgraded on the target devices before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>to-package-name</dt>
<dd>The name of the package to use to upgrade the from-package.  (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
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
            "package-name": "",
            "targets": ["targets": ""],
            "remove-unused": "",
            "timeout": ""}}
```

Uninstall a package on one or more devices. Uninstalls the given package, specified by package-name, from the devices provided in the targets argument. The device IDs can either be listed directly in the argument, or be a part of a listed device group. <br><br>The uninstall is carried out by invoking the local package manager  on the device. This manager will be provided with command line argumens retrieved from the upgrade-arguments string specified to the [exodm:add-package-to-device-type] when the package was added to the device type. <br><br>For each successful or failed uninstall operation on a device, a notification will be sent back to the invoking backend server. This allows the backend server to keep track of successes and failures during the uninstall process



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package and devices belong.It is not possible to access packages or device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The name of the package, already installed on the device, to uninstall. (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>remove-unused</dt>
<dd>Remove the package images that are no longer in use from the device. (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
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

A notification sent back from the Exosense Server to the backend server to report the progress of an install/upgrade/uninstall operation. One notification will be sent back for each device that is to process the operation. The device ID specifies the device that the notification refers to. This device ID is listed, either directly or as a device group member, in the targets list of the install-package command that this is a notification of.



**descriptions**
<dl><dt>device-id</dt>
<dd>The device that this notificaiton is in response to (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>final</dt>
<dd>This is the final callback for the given operation (<b>type:</b> true | false; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The device that this notificaiton is in response to (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-status</dt>
<dd>The status of the packge install operation (<b>type:</b> 0 (transmitted) | 1 (transmit-failed) | 2 (installed) | 3 (install-failed) | 4 (upgraded) | 5 (upgrade-failed) | 6 (uninstalled) | 7 (uninstall-failed) | 8 (not-installed) | 9 (unsupported-package) | 10 (dependency-failure) | 11 (timeout); [<em>mandatory: false</em>])</dd>
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
<dd>The account, associated with the authorizing user, to list all packages for.It is not possible to access packages or device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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

List all device types that can install a given package.  All devices types that have had the given package added to it through an [exodm:add-package-to-device-type] will returned by this call.



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package belongs.It is not possible to access packages types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The package to which list supporting device types for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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



### RPC: exodm:get-devices-with-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:get-devices-with-package",
 "id": "",
 "params": {"account": "",
            "package-name": "",
            "n": "",
            "previous": ""}}
```

List all device types that have installed, or are in the process of installing the given package. Packages returned have previously been installed on the device using a [exodm:add-package-to-device] call



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package belongs.It is not possible to access packages or device types not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The account to which list installed devices for. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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
            "targets": ["targets": ""],
            "package-name": "",
            "timeout": "",
            "values": ""}}
```

Set and push configuration data for a given package to a the devices provided in the targets <br><br>argument. The device IDs can either be listed directly in the argument, or be a part of a listed device group.  The configuration data for the package will be transmitted to all resolved target and then updated in their local configuration system.  The package name is given together with an array of key/value pairs for the conrfiguration data to set for the given package on the given devices.  Each key/value pair must match an element in the yang file and container specified by the create-package yang-specification and configuration-container.  All given devices must have both be supporting the specified package, and have the package installed on them. <br><br>A successful configuration entry update on a device will overwrite any earlier values that entry had. This allows default and/or general configuration updates, such as Exosense Server addresses and callin schedules, to be sent out to device groups covering large swaths of devices, followed by more targeted updates to individual devices with information such as local encryption keys, individual identities, etc. <br><br>For each successful or failed configuration operation on a device, a notification will be sent back to the invoking backend server for the given device. This allows the backend server to keep track of successes and failures during the configuration update process.



**descriptions**
<dl><dt>account</dt>
<dd>The account, associated with the authorizing user, to which the package and device belongs.It is not possible to access packages or devices not owned by the given account. If no account is given, the authorizing user assumes to be associated with only one account, which will be used. If no account is given, and the user belongs to multiple accounts, an error is returned. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd>The package to set the config data for in the target device. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>targets</dt>
<dd>A list of device ids and device group ids id to set the config data on. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>How many seconds to wait for the configuration data to be sent to the device before returning a timeout error. Default is one week. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang specifification) to set on the target devices. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": "ok"}
```






