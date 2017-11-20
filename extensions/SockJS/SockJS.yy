{
    "id": "7e649347-c434-4052-a543-285f1df16ff8",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "SockJS",
    "IncludedResources": [
        "Scripts\\sockjs_example",
        "Scripts\\sockjs_documentation",
        "Objects\\obj_sockjs_example",
        "Included Files\\server.py"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2017-26-18 08:11:59",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "b3272470-575f-4db3-b040-b3d82b88dc37",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "790d3224-ef37-49a6-bf51-69240b9b29be",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "SOCK_STATUS_CONNECTING",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "3ca38660-c1be-4c2c-9d4a-c39e7180c036",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "SOCK_STATUS_OPEN",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "4ec1ca24-478f-493d-9506-cbdece56f73a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "SOCK_STATUS_CLOSING",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "129924f1-b46a-4623-8ad7-82cce8d98597",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "SOCK_STATUS_CLOSED",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "copyToTargets": 52777614151918,
            "filename": "sock.js",
            "final": "",
            "functions": [
                {
                    "id": "2c745bec-0f8b-42d5-9050-c971f212c740",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "sock_open",
                    "help": "sock_open(host)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sock_open",
                    "returnType": 2
                },
                {
                    "id": "41d9965b-efef-49fa-a30d-2e2d127a2ac3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "sock_send",
                    "help": "sock_send(sock, message)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sock_send",
                    "returnType": 2
                },
                {
                    "id": "83343ff9-3860-4783-bdbe-03b9c8fd024f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "sock_hasmessages",
                    "help": "sock_hasmessages(sock)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sock_hasmessages",
                    "returnType": 2
                },
                {
                    "id": "8e3bf03a-881b-491e-aeb0-75b49a8d9574",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "sock_recieve",
                    "help": "sock_recieve(sock)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sock_recieve",
                    "returnType": 1
                },
                {
                    "id": "6a8f3b66-2ec2-4554-860c-d5ae05390244",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "sock_status",
                    "help": "sock_status(sock)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sock_status",
                    "returnType": 2
                },
                {
                    "id": "05294469-fa70-41a5-af2d-e5ae2cefe9ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "sock_close",
                    "help": "sock_close(sock)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sock_close",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 5,
            "order": [
                "2c745bec-0f8b-42d5-9050-c971f212c740",
                "41d9965b-efef-49fa-a30d-2e2d127a2ac3",
                "83343ff9-3860-4783-bdbe-03b9c8fd024f",
                "8e3bf03a-881b-491e-aeb0-75b49a8d9574",
                "6a8f3b66-2ec2-4554-860c-d5ae05390244",
                "05294469-fa70-41a5-af2d-e5ae2cefe9ee"
            ],
            "origname": "extensions\\sock.js",
            "uncompress": false
        },
        {
            "id": "3a9417d6-d6df-461b-bcec-995bb750345c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "sock_.js",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 5,
            "order": [
                
            ],
            "origname": "extensions\\sock_.js",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.tmiedema.sockjs",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "version": "0.3.4"
}