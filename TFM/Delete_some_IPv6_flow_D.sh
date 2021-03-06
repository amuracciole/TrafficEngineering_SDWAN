#Eliminar flujo ipv6 en CONM_B
curl -X POST -d '{
    "dpid": 3328,
    "cookie": 0,
    "cookie_mask": 1,
    "table_id": 0,
    "priority": 10,
    "flags": 1,
    "match":{
        "in_port": '$3',
        "ipv6_src": '"'$1'"',
        "ipv6_dst": '"'$2'"',
        "eth_type": 34525
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": '$4'
        }
    ]
 }' http://localhost:8080/stats/flowentry/delete_strict


