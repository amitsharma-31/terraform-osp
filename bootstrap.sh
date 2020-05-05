This file userdata will be applied on the instance via cloud-config meta data. We have taken a simple example of creating a user with some random password
#!/bin/bash
useradd <username>
echo "<yourpass>" |passwd <username> --stdin
