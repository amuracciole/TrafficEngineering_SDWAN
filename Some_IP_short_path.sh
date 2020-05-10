#Agregar path IP, src=R1, dst=C, CONM_A
curl -X POST -d '{
    "dpid": 2560,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 1,
    "flags": 1,
    "match":{
        "in_port": 3,
        "ipv4_src": '"'$1'"',
        "ipv4_dst": '"'$2'"',
        "eth_type": 2048
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 1
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path IP, src=C, dst=R1, CONM_A
curl -X POST -d '{
    "dpid": 2560,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 1,
    "flags": 1,
    "match":{
        "in_port": 1,
        "ipv4_src": '"'$2'"',
        "ipv4_dst": '"'$1'"',
        "eth_type": 2048
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 3
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path IP, src=A, dst=E, CONM_C
curl -X POST -d '{
    "dpid": 3072,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 1,
    "flags": 1,
    "match":{
        "in_port": 1,
        "ipv4_src": '"'$1'"',
        "ipv4_dst": '"'$2'"',
        "eth_type": 2048
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 2
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path IP, src=E, dst=A, CONM_C
curl -X POST -d '{
    "dpid": 3072,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 1,
    "flags": 1,
    "match":{
        "in_port": 2,
        "ipv4_src": '"'$2'"',
        "ipv4_dst": '"'$1'"',
        "eth_type": 2048
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 1
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path IP, src=A, dst=R2, CONM_E
curl -X POST -d '{
    "dpid": 3584,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 1,
    "flags": 1,
    "match":{
        "in_port": 2,
        "ipv4_src": '"'$1'"',
        "ipv4_dst": '"'$2'"',
        "eth_type": 2048
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 3
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path IP, src=R2, dst=A, CONM_E
curl -X POST -d '{
    "dpid": 3584,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 1,
    "flags": 1,
    "match":{
        "in_port": 3,
        "ipv4_src": '"'$2'"',
        "ipv4_dst": '"'$1'"',
        "eth_type": 2048
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 2
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
