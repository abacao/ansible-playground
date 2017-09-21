"# ansible-playground"

## Test Kitchen
### Using Vagrant
1. git clone https://github.com/abacao/ansible-playground.git
2. cd ansible-playground/vagrant
3. vagrant up
4. vagrant ssh


Now you can test one of the following commands:
```
bundle exec kitchen list
bundle exec kitchen create ubuntu-14
bundle exec kitchen login ubuntu-14
bundle exec kitchen verify ubuntu-14
bundle exec kitchen converge ubuntu-14
bundle exec kitchen destroy ubuntu-14
```


### Using AWS / Terraform
1. Install Terraform
2. Create a terraform.tfvars with
  ```
  key_name = "abacao"
  public_key_path = "~/.ssh/id_rsa.pub"
  aws_accesskey = "ASAAAAAAAAAAAAAAAAAAA"
  aws_secretkey  = "dummietokendummietokendummietokendummietoken"
  aws_region = "eu-west-2"
  ```
3. ssh ubuntu@IP
4. git clone https://github.com/abacao/ansible-playground.git
5. cd ansible-playground/ansible
6. ansible-playbook install_kitchen.yml


Now you can test one of the following commands:
```
bundle exec kitchen list
bundle exec kitchen create ubuntu-14
bundle exec kitchen login ubuntu-14
bundle exec kitchen verify ubuntu-14
bundle exec kitchen converge ubuntu-14
bundle exec kitchen destroy ubuntu-14
```
