#Agregar path ipv6, src=R1, dst=B, CONM_A
curl -X POST -d '{
    "dpid": 2560,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 3,
        "ipv6_src": '"'$1'"',
        "ipv6_dst": '"'$2'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 2
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path ipv6, src=B, dst=R1, CONM_A
curl -X POST -d '{
    "dpid": 2560,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 2,
        "ipv6_src": '"'$2'"',
        "ipv6_dst": '"'$1'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 3
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path ipv6, src=A, dst=D, CONM_B
curl -X POST -d '{
    "dpid": 2816,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 1,
        "ipv6_src": '"'$1'"',
        "ipv6_dst": '"'$2'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 2
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path ipv6, src=D, dst=A, CONM_B
curl -X POST -d '{
    "dpid": 2816,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 2,
        "ipv6_src": '"'$2'"',
        "ipv6_dst": '"'$1'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 1
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path ipv6, src=B, dst=E, CONM_D
curl -X POST -d '{
    "dpid": 3328,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 1,
        "ipv6_src": '"'$1'"',
        "ipv6_dst": '"'$2'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 2
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path ipv6, src=E, dst=B, CONM_D
curl -X POST -d '{
    "dpid": 3328,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 2,
        "ipv6_src": '"'$2'"',
        "ipv6_dst": '"'$1'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 1
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path ipv6, src=D, dst=R2, CONM_E
curl -X POST -d '{
    "dpid": 3584,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 1,
        "ipv6_src": '"'$1'"',
        "ipv6_dst": '"'$2'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 3
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
#Agregar path ipv6, src=R2, dst=D, CONM_E
curl -X POST -d '{
    "dpid": 3584,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": 3,
        "ipv6_src": '"'$2'"',
        "ipv6_dst": '"'$1'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 1
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
