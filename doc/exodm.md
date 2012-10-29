## Module: exodm

### RPC: exodm:create-device-group

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-device-group",
 "id": "",
 "params": {"name": "",
            "notification-url": ""}}
```

RPC to create a device group



**descriptions**
<dl><dt>name</dt>
<dd>Group name (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>notification-url</dt>
<dd>RPC callback notification URL (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-device-group

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-device-group",
 "id": "",
 "params": {"gid": ""}}
```

RPC to create a device group



**descriptions**
<dl><dt>gid</dt>
<dd>Group ID (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-devices

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-devices",
 "id": "",
 "params": {"n": "",
            "previous": ""}}
```

List provisioned devices, N entries at a time



**descriptions**
<dl><dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous device ID; "" if from beginning (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"devices": [{"dev-id": "",
                         "protocol": "",
                         "description": "",
                         "server-key": "",
                         "device-key": "",
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
<dt>protocol</dt>
<dd>Protocol between device and Exosense server (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-config-sets

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-config-sets",
 "id": "",
 "params": {"n": "",
            "previous": ""}}
```

List config sets, N entries at a time



**descriptions**
<dl><dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous config set; "" if from beginning (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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
            "previous": ""}}
```

List members of a config set, N entries at a time



**descriptions**
<dl><dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>name</dt>
<dd>Name of the config set (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous member; "" if from beginning (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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



### RPC: exodm:list-device-groups

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-device-groups",
 "id": "",
 "params": {"n": "",
            "previous": ""}}
```

List device groups, N entries at a time



**descriptions**
<dl><dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous device group id (GID); "" if from beginning (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
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



### RPC: exodm:add-device-group-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-device-group-members",
 "id": "",
 "params": {"device-groups": ["device-groups": ""],
            "dev-id": ["dev-id": ""]}}
```

Link devices to device groups



**descriptions**
<dl><dt>dev-id</dt>
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
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-device-group

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-device-group",
 "id": "",
 "params": {"gid": "",
            "notification-url": ""}}
```

RPC to change the notification URL of an existing group



**descriptions**
<dl><dt>gid</dt>
<dd>Group identifier. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>notification-url</dt>
<dd>RPC callback notification URL (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:create-yang-module

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-yang-module",
 "id": "",
 "params": {"repository": "",
            "name": "",
            "yang-module": ""}}
```

RPC to store a YANG module either in user or system space



**descriptions**
<dl><dt>name</dt>
<dd>Name, including extension, e.g. 'rfzone.yang' (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>repository</dt>
<dd>Where to store the module: Currently "system" or "user" (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>yang-module</dt>
<dd>The actual source of the YANG module specification (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:list-yang-modules

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:list-yang-modules",
 "id": "",
 "params": {"repository": "",
            "n": "",
            "previous": ""}}
```

RPC to list existing yang modules.



**descriptions**
<dl><dt>n</dt>
<dd>Number of entries to fetch. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous yang filename. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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



### RPC: exodm:create-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-config-set",
 "id": "",
 "params": {"name": "",
            "yang": "",
            "notification-url": "",
            "values": ""}}
```

RPC to create device config data set



**descriptions**
<dl><dt>name</dt>
<dd>Name of the config data set (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>notification-url</dt>
<dd>Notification URL (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>values</dt>
<dd>Configuration values (validated against the yang spec) (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>yang</dt>
<dd>Name of the corresponding yang file - must exist. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-config-set",
 "id": "",
 "params": {"name": "",
            "notification-url": "",
            "values": ""}}
```

RPC to update existing config data set



**descriptions**
<dl><dt>name</dt>
<dd>Name of the config data set (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:delete-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:delete-config-set",
 "id": "",
 "params": {"name": ""}}
```

RPC to delete a config data set. Any member devices must first be removed.



**descriptions**
<dl><dt>name</dt>
<dd>Name of the config data set (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:provision-device

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:provision-device",
 "id": "",
 "params": {"dev-id": "",
            "protocol": "",
            "description": "",
            "server-key": "",
            "device-key": "",
            "msisdn": "",
            "imsi": "",
            "imei": "",
            "latitude": "",
            "longitude": ""}}
```

Create a new device. augment this call if you want to add device-data



**descriptions**
<dl><dt>description</dt>
<dd>User-provided description of device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-key</dt>
<dd>Device key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
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
<dt>protocol</dt>
<dd>Protocol between device and Exosense server (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:update-device

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:update-device",
 "id": "",
 "params": {"dev-id": "",
            "protocol": "",
            "description": "",
            "server-key": "",
            "device-key": "",
            "msisdn": "",
            "imsi": "",
            "imei": "",
            "latitude": "",
            "longitude": ""}}
```

RPC to update an existing device object.



**descriptions**
<dl><dt>description</dt>
<dd>User-provided description of device (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>dev-id</dt>
<dd>Account-wide unique device-id (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>device-key</dt>
<dd>Device key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
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
<dt>protocol</dt>
<dd>Protocol between device and Exosense server (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:lookup-device

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:lookup-device",
 "id": "",
 "params": {"dev-id": ""}}
```

RPC to read a single device object.Returns a list of zero or one device object.



**descriptions**
<dl><dt>dev-id</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"devices": [{"dev-id": "",
                         "protocol": "",
                         "description": "",
                         "server-key": "",
                         "device-key": "",
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
<dt>protocol</dt>
<dd>Protocol between device and Exosense server (<b>type:</b> string; [<em>mandatory: true</em>])</dd>
<dt>server-key</dt>
<dd>Server key (<b>type:</b> uint64; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:deprovision-device

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:deprovision-device",
 "id": "",
 "params": {"dev-id": ["dev-id": ""]}}
```

RPC to deprovision an existing device.



**descriptions**
<dl><dt>dev-id</dt>
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
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-config-set-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-config-set-members",
 "id": "",
 "params": {"name": ["name": ""],
            "dev-id": ["dev-id": ""]}}
```

Create a new device. augment this call if you want to add device-data



**descriptions**
<dl><dt>dev-id</dt>
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
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:push-config-set

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:push-config-set",
 "id": "",
 "params": {"name": ""}}
```

Push the given configuration data to all member devices

**extensions**
<dl>
<dt>exosense:matching-notification</dt><dd>push-config-set-callback</dd>
</dl>


**descriptions**
<dl><dt>name</dt>
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
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
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
<dd>This is the final callback for the given operation (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>rpc-status</dt>
<dd>Status of operation in progress. (<b>type:</b> "0" (accepted) | "0" (accepted) | "1" (complete) | "2" (time-out) | "3" (device-connected) | "4" (device-unknown) | "5" (device-error) | "6" (format-error) | "7" (value-error); [<em>mandatory: false</em>])</dd>
<dt>rpc-status-string</dt>
<dd>Additional status information, in human readable format, (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>transaction-id</dt>
<dd>The transaction that this callback is made in response to. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:create-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-package",
 "id": "",
 "params": {"package-name": "",
            "depndencies": [{"package-name": ""}],
            "image": ""}}
```

Create a package in the database to be forwarded to devices.



**descriptions**
<dl><dt>depndencies</dt>
<dd> (<b>type:</b> array)</dd>
<dt>image</dt>
<dd>The package image itself. (<b>type:</b> XML; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



#### Notification: exodm:create-package-notification
```json
{"jsonrpc": "2.0",
 "method": "exodm:create-package-notification",
 "params": {"transaction-id": "",
            "rpc-status": "",
            "rpc-status-string": "",
            "final": ""}}
```

Elements included in all callback notifications sent from Exosense to the backend server.



**descriptions**
<dl><dt>final</dt>
<dd>This is the final callback for the given operation (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>rpc-status</dt>
<dd>Status of operation in progress. (<b>type:</b> "0" (accepted) | "0" (accepted) | "1" (complete) | "2" (time-out) | "3" (device-connected) | "4" (device-unknown) | "5" (device-error) | "6" (format-error) | "7" (value-error); [<em>mandatory: false</em>])</dd>
<dt>rpc-status-string</dt>
<dd>Additional status information, in human readable format, (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>transaction-id</dt>
<dd>The transaction that this callback is made in response to. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:add-package-members

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:add-package-members",
 "id": "",
 "params": {"package-name": ["package-name": ""],
            "dev-id": ["dev-id": ""]}}
```

Add members to the list of devices to receive the package.



**descriptions**
<dl><dt>dev-id</dt>
<dd>Devices to push the given config data instances to (s) (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
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
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



### RPC: exodm:push-package

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm:push-package",
 "id": "",
 "params": {"package-name": "",
            "operation": "",
            "timeout": "",
            "auto-push-dependencies": "",
            "remove-after-operation": "",
            "replace-queue": ""}}
```

Pushes the given package to all member devices. Notifications will be sent back. If the package is already pushed to a device, it will not be transmitted again. Instead the specified operation will be executed for the package on the given device.



**descriptions**
<dl><dt>auto-push-dependencies</dt>
<dd>Specifies if any unresolved dependencies should automatically be pushed to the target as well. If set to false, each device with an unresolved dependency will generate an error push-package-notification (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>operation</dt>
<dd>The operation to be carried out on the package once it has been received on a device. (<b>type:</b> "0" (transmit) | "0" (transmit) | "1" (install) | "2" (upgrade) | "3" (uninstall) | "4" (remove) | "5" (remove-recursively); [<em>mandatory: false</em>])</dd>
<dt>package-name</dt>
<dd> (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>remove-after-operation</dt>
<dd>Specifies if the package should be removed from device-local storage once the operation (such as install) has been carried out on the device. If the auto-push-dependencies flag is set, any packages automatically transmitted to resolve dependencies will be removed as well. (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>replace-queue</dt>
<dd>If set to true, any earlier operations for this package queued to the given device will be removed and replaced by the operation specified by this command. If set to false, this command will be queued to be executed after any other pending commands for this package to the given device. (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>timeout</dt>
<dd>Timeout specification for this operation to be carried out to a device. If a timeout occur, an error is sent back for the timed out device using push-package-notification. Please note that some devices may time out while other succeed. (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
</dl>



#### Reply
```json
{"jsonrpc": "2.0",
 "id": "",
 "result": {"result": ""}}
```

**descriptions**
<dl><dt>result</dt>
<dd> (<b>type:</b> "0" (ok) | "0" (ok) | "1" (permission-denied) | "2" (validation-failed) | "3" (object-exists) | "4" (object-not-found) | "5" (device-not-found); [<em>mandatory: false</em>])</dd>
</dl>



#### Notification: exodm:push-package-notification
```json
{"jsonrpc": "2.0",
 "method": "exodm:push-package-notification",
 "params": {"transaction-id": "",
            "rpc-status": "",
            "rpc-status-string": "",
            "final": ""}}
```

Elements included in all callback notifications sent from Exosense to the backend server.



**descriptions**
<dl><dt>final</dt>
<dd>This is the final callback for the given operation (<b>type:</b> "1" (true) | "0" (false); [<em>mandatory: false</em>])</dd>
<dt>rpc-status</dt>
<dd>Status of operation in progress. (<b>type:</b> "0" (accepted) | "0" (accepted) | "1" (complete) | "2" (time-out) | "3" (device-connected) | "4" (device-unknown) | "5" (device-error) | "6" (format-error) | "7" (value-error); [<em>mandatory: false</em>])</dd>
<dt>rpc-status-string</dt>
<dd>Additional status information, in human readable format, (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
<dt>transaction-id</dt>
<dd>The transaction that this callback is made in response to. (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
</dl>






