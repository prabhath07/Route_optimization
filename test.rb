"steps"= [
    {
        "type": "start",
        "location": [
            75.6996062,
            30.2166102
        ],
        "load": [
            2
        ],
        "arrival": 30667,
        "duration": 0,
        "distance": 0
    },
    {
        "type": "job",
        "location": [
            75.842185,
            30.231386
        ],
        "id": 1,
        "service": 300,
        "waiting_time": 0,
        "job": 1,
        "load": [
            1
        ],
        "arrival": 32400,
        "duration": 1733,
        "distance": 30830
    },
    {
        "type": "job",
        "location": [
            75.82356,
            30.249849
        ],
        "id": 2,
        "service": 300,
        "waiting_time": 0,
        "job": 2,
        "load": [
            0
        ],
        "arrival": 32983,
        "duration": 2016,
        "distance": 34341
    },
    {
        "type": "end",
        "location": [
            75.6996062,
            30.2166102
        ],
        "load": [
            0
        ],
        "arrival": 34681,
        "duration": 3414,
        "distance": 58661
    }
]
rout = []
for i in steps
    if i["type"]=="start"
end
