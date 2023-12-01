FROM amazonlinux:2.0.20231116.0

# install defaults
RUN yum install -y gtar tar unzip

# install ssh
RUN yum install -y initscripts git openssh-server openssh-clients && \
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
echo 'Port 22' >> /etc/ssh/sshd_config && \
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -q -N '' && ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -q -N '' && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -q -N ''

# ec2-user setup
RUN yum install -y shadow-utils sudo git && \
adduser ec2-user && \
usermod -aG root ec2-user && \
echo "ec2-user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# setup ssh
RUN mkdir -p /home/ec2-user/.ssh && \
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGOZOa2Ek/nCSrZbKHWBOcbR5oCZxPTh80Og4O4l6cA0lDLQIHWWhTiTNlXN6qX9sAcEzA2xsbFFaqXUPp/z7CxjFb9E1q9iNGM1YprF6ap33yCmIYl7cxzxMgOPOw6SS0OyhsC6lA/stnJ89YNHix5LBV+waOCO6x97zfvGumnVd+hxe8Ni/Jl1COKL9eW+cW8lpHWrvY6ysJPteY1TlVuavgaNkePH35NokKh01mZaN/gry2Q9cDObGJb5cqjeTNl94alZ4GbzwpvgwZCfbQxzjjN/z2MTs6L6gz+5kPU8B96MDZtIuP+j7ykg+m1gaIX8UaPnvUVMGjpukzsK+b ec2-user@peter-ansible01.foo.bar" >> /home/ec2-user/.ssh/authorized_keys && \
chown -R ec2-user:ec2-user /home/ec2-user
