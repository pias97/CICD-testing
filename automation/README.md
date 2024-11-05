# Automatic installation of Docker on ubuntu machine.
## 1. To install docker engine on VM, simply run this shell file.

```bash
sudo sh ./Docker.sh
```
## 2. Then give permission to user to run docker commands

```bash
sudo chown $USER /var/run/docker.sock
```

# Terraform (Optional)
If anyone wants to create EC2 instances on AWS, by using terraform `ec2 modules`, they can use it on their VM. But first, Terraform needed to be installed on their local machine. 

## 1. Run the following command to install Terraform.
```bash
sudo sh ./terraform.sh
``` 
1. Enter to terraform directory
2. Change configuration of `main.tf` file according to their need and run these following commands.
3. ``` terraform init ```
4. ``` terraform plan ```
5. ``` terraform apply ```
6. To delete created instance/s, run ```terraform destroy``` 