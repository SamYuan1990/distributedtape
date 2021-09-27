# At the beginning
This file is a guide to create 3 tape instance in docker at both 127.0.0.1 and localhsot.
It is a hello world guide for beginners to see how this project works and help to deploy tape in a distributed way.

## Table Of Content

* [Prerequisites](#prerequisites)
* [Start fabric](#step_1)
* [Copy files](#step_2)
* [Start](#step_3)


## Prerequisites
config ansible with 127.0.0.1 and localhost. ref: https://docs.ansible.com/ansible/latest/user_guide/quickstart.html
```
ansible all -m ping
```
response with 127.0.0.1 and localhost
```
[WARNING]: A duplicate localhost-like entry was found (localhost). First found localhost was 127.0.0.1
[WARNING]: Platform darwin on host 127.0.0.1 is using the discovered Python interpreter at /usr/bin/python, but future installation of another Python interpreter could change the
meaning of that path. See https://docs.ansible.com/ansible/2.10/reference_appendices/interpreter_discovery.html for more information.
127.0.0.1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
[WARNING]: Platform darwin on host localhost is using the discovered Python interpreter at /usr/bin/python, but future installation of another Python interpreter could change the
meaning of that path. See https://docs.ansible.com/ansible/2.10/reference_appendices/interpreter_discovery.html for more information.
localhost | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
```

## step_1
config your test network with fabric sample
```
cd ./test-network
./network.sh up createChannel
./network.sh deployCC -ccn basic -ccp ../asset-transfer-basic/chaincode-go/ -ccl go
```

## step_2
copy file from test-network to files, within this sample, we prepared ansible host, tape config related files for you. All you need to do is copy fabric sample files from test network to files.
```
test-network % cp -r ./organizations /distributedtape/files
```

## step_3
Start tapes with this project
```bash
ansible-playbook distributed.yml
```