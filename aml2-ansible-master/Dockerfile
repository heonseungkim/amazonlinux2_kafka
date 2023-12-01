FROM amazonlinux:2.0.20231116.0

# install ssh
RUN yum install -y initscripts git openssh-server openssh-clients && \
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
echo 'Port 22' >> /etc/ssh/sshd_config

# ec2-user setup
RUN yum install -y shadow-utils sudo git && \
adduser ec2-user && \
usermod -aG root ec2-user && \
echo "ec2-user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
mkdir -p /home/ec2-user

# install ansible
RUN amazon-linux-extras install -y ansible2

# clone sources
RUN git clone https://github.com/onlybooks/kafka2 /home/ec2-user/kafka2

# setup ssh
RUN mkdir -p /home/ec2-user/.ssh && \
echo "-----BEGIN RSA PRIVATE KEY-----" >> /home/ec2-user/.ssh/id_rsa && \
echo "MIIEowIBAAKCAQEAxjmTmthJP5wkq2Wyh1gTnG0eaAmcT04fNDoODuJenANJQy0C" >> /home/ec2-user/.ssh/id_rsa && \
echo "B1loU4kzZVzeql/bAHBMwNsbGxRWql1D6f8+wsYxW/RNavYjRjNWKaxemqd98gpi" >> /home/ec2-user/.ssh/id_rsa && \
echo "GJe3Mc8TIDjzsOkktDsobAupQP7LZyfPWDR4seSwVfsGjgjusfe837xrpp1XfocX" >> /home/ec2-user/.ssh/id_rsa && \
echo "vDYvyZdQjii/XlvnFvJaR1q72OsrCT7XmNU5Vbmr4GjZHjx9+TaJCodNZmWjf4K8" >> /home/ec2-user/.ssh/id_rsa && \
echo "tkPXAzmxiW+XKo3kzZfeGpWeBm88Kb4MGQn20Mc44zf89jE7Oi+oM/uZD1PAfejA" >> /home/ec2-user/.ssh/id_rsa && \
echo "2bSLj/o+8pIPptYGiF/FGj571FTBo6bpM7CvmwIDAQABAoIBACis1+UGTMGIwN2K" >> /home/ec2-user/.ssh/id_rsa && \
echo "2L99C0kl+v9OOYzscuq8nvXe7ZsF8ZqfObNYXVgG50z9aZN8Z+wHHzjTvRQpcD81" >> /home/ec2-user/.ssh/id_rsa && \
echo "NCJoBfDhym8cCmbQaxyUnDGg9Si3BdkM2GRDfYvy+fG6vganUKjLGthQ7EIyBnr8" >> /home/ec2-user/.ssh/id_rsa && \
echo "aEepPLsEOkrqX8X1f0V1mIQwncZqVniJ9w1+WGeXZth2HkDyhF3GRBRwYNfrhpVX" >> /home/ec2-user/.ssh/id_rsa && \
echo "4sHydV91jXVrAz7zLgsh7/mX97FYHntu49ll6KAhkRgsPxcaW1p8tdDlIROtcaIL" >> /home/ec2-user/.ssh/id_rsa && \
echo "p1BQTvqUGtUfrBuplQ5FFdOupPZlc0FQdnLqevloLhb4a+cA57JHSpkeMytAtuEc" >> /home/ec2-user/.ssh/id_rsa && \
echo "i3TUzsECgYEA5nHBeQK8Ouq/VdDiVcIcVYHUBRqWc6ad17Obj3KXLxHvvrn71Iqy" >> /home/ec2-user/.ssh/id_rsa && \
echo "l/YDK4iwo6PaA+VFd0LbSNUPeF9JtZfSfvmFqZDTvETjkr607l6EKwxrM8AqivB8" >> /home/ec2-user/.ssh/id_rsa && \
echo "OSfAn6MczixJV1pSfnnWoqOL7foBxeol9ZIWdIYycYLTSoNQaVJOz08CgYEA3DUe" >> /home/ec2-user/.ssh/id_rsa && \
echo "3rJeR5p4EPnxw3q60pra/C+TS9iFF57ELLPF5V/BJvbAAOJNfxish3jawB8kOL0p" >> /home/ec2-user/.ssh/id_rsa && \
echo "8a+HlYcPjJYsI5p4pdm0Y302pqbsQ9mmZ/iDEXYGBnvxP4z8HS64DgijPBhL3TUu" >> /home/ec2-user/.ssh/id_rsa && \
echo "jdidh/4wV/4TDPvy8kqFrmGfrie0Sip55W6M5/UCgYEAl/Yx4Cu2lp+QlvWNG4JK" >> /home/ec2-user/.ssh/id_rsa && \
echo "jvRzLP5wcklQUxqknX6yRZ7tWvdoIqtnxB+9zWpxGSgGr4T0PwX+dtPRRM6JW8+H" >> /home/ec2-user/.ssh/id_rsa && \
echo "RqYix0Oy7Lb83xsVUw9O1th0pQa2xzJ4qHQXaO32I9s+bfUo6zBLIqr4rnCr1Kho" >> /home/ec2-user/.ssh/id_rsa && \
echo "abzxQ9vuzb24ua1ITHuzbq8CgYBHltV0XNSdvrAuBLP+cxXthf6PYgAm9js+lJT+" >> /home/ec2-user/.ssh/id_rsa && \
echo "W2uIyHqI6ks9flTnbuQYHsgvEXC7KXRLaF9R01jQwbmT0ZJLiN1GQtzTjQzeehHJ" >> /home/ec2-user/.ssh/id_rsa && \
echo "V1d1A8Ots/mYSYNlEV0w4sn+rX9saO+7maKNJawdzzHuVLKE5olTSdWZzrqkKe77" >> /home/ec2-user/.ssh/id_rsa && \
echo "EdepSQKBgE4jC3ULZY1jXfaHmSYmD23t9SgXMetzDY+Xk0T9eekDzdipo2OK3rZW" >> /home/ec2-user/.ssh/id_rsa && \
echo "8ia973KhWnJBlY6OvbuARZE5OuQWpI+8uQeW89zDSPIUI8V2a95YAZ7LpUZKUsK6" >> /home/ec2-user/.ssh/id_rsa && \
echo "t30Md6n6b4eJEWU7CMFXTt2uN6Hzy3f1G1L+gozDC62DvGivGMl2" >> /home/ec2-user/.ssh/id_rsa && \
echo "-----END RSA PRIVATE KEY-----" >> /home/ec2-user/.ssh/id_rsa && \
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGOZOa2Ek/nCSrZbKHWBOcbR5oCZxPTh80Og4O4l6cA0lDLQIHWWhTiTNlXN6qX9sAcEzA2xsbFFaqXUPp/z7CxjFb9E1q9iNGM1YprF6ap33yCmIYl7cxzxMgOPOw6SS0OyhsC6lA/stnJ89YNHix5LBV+waOCO6x97zfvGumnVd+hxe8Ni/Jl1COKL9eW+cW8lpHWrvY6ysJPteY1TlVuavgaNkePH35NokKh01mZaN/gry2Q9cDObGJb5cqjeTNl94alZ4GbzwpvgwZCfbQxzjjN/z2MTs6L6gz+5kPU8B96MDZtIuP+j7ykg+m1gaIX8UaPnvUVMGjpukzsK+b ec2-user@peter-ansible01.foo.bar" >> /home/ec2-user/.ssh/id_rsa.pub && \
chmod 400 /home/ec2-user/.ssh/id_rsa && \
chmod 400 /home/ec2-user/.ssh/id_rsa.pub && \
chown -R ec2-user:ec2-user /home/ec2-user
