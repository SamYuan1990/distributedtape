# Distribute Tape

# SamYuan1990 : Distribute Tape

## This project is for support Tape deploy in a distributed way

## Table Of Content

* [Prerequisites](#prerequisites)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Regards](#thanks-for-choosing)

---
## Prerequisites

if you are new to ansible, tape or fabric, please go to [Hello_world.md](./Hello_world.md)

[ansible](https://command-not-found.com/ansible) is Prerequisite
```bash
ansible -v
```
update host and config your host to use ansible.
- edit your config.yaml under files folder.
- edit the config.yaml given to tape in distributed.yaml
```
- hosts: 127.0.0.1
  roles:
  - traffic
  vars: 
    tape_config_file: configlatest2.yaml
```
- host: the host name in your ansible host
- roles in traffic and observer
- traffic will start a traffic mode tape with `/roles/traffic/tasks/main.yml`
- observer will start a observer mode tape.
- tape_config_file the file name under files folder, which will use as tape config file.

---

## Usage

```bash
ansible-playbook distributed.yml
```

for debugging
```bash
ansible-playbook distributed.yml -vvvv
```

tbd docker:
```bash 
docker run -v /var/run/docker.sock:/var/run/docker.sock -v ~/.ssh:/root/.ssh -v $PWD:/home --network=host tapedistribute:latest ansible-playbook distributed.yml
```

---
## Contributing
Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -s 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---
## License
[Apache](https://github.com/SamYuan1990/distributedtape/blob/main/LICENSE)

---
## Contact
* via Discussion Tab
---

### THANKS FOR CHOOSING
