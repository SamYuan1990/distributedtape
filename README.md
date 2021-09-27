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

[ansible](https://command-not-found.com/ansible) is Prerequisite
```bash
ansible -v
ansible-galaxy collection install community.docker
```
update host and config your host to use ansible.
todo
making your config.

---

## Usage

```bash
ansible-playbook distributed.yml
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
