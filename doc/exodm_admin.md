## Module: exodm_admin

### RPC: exodm_admin:create-account

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm_admin:create-account",
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



### RPC: exodm_admin:update-account

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm_admin:update-account",
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



### RPC: exodm_admin:delete-account

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm_admin:delete-account",
 "id": "",
 "params": {"name": ""}}
```

Delete an account,
data must be deleted before account is removed.



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



### RPC: exodm_admin:list-accounts

#### Request
```json
{"jsonrpc": "2.0",
 "method": "exodm_admin:list-accounts",
 "id": "",
 "params": {"n": "",
            "previous": ""}}
```

List all account names.



**descriptions**
<dl><dt>n</dt>
<dd>Number of entries to fetch (<b>type:</b> uint32; [<em>mandatory: false</em>])</dd>
<dt>previous</dt>
<dd>Previous account name; "" if from beginning (<b>type:</b> string; [<em>mandatory: false</em>])</dd>
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






