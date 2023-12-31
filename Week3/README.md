## Installing Java (JRE/JDK) on Ubuntu 20.04

### Prerequisites
To follow this tutorial, you will need:

- One Ubuntu 20.04 server set up by following the [Ubuntu 20.04 initial server setup guide](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-20-04) tutorial, including a sudo non-root user and a firewall.

### Installing the Default JRE/JDK
The easiest option for installing Java is to use the version packaged with Ubuntu. By default, Ubuntu 20.04 includes Open JDK 11, which is an open-source variant of the JRE and JDK.

1. Update the package index:

    ```bash
    sudo apt update
    ```

2. Check if Java is already installed:

    ```bash
    java -version
    ```

    If Java is not currently installed, you’ll see the following output:

    ```
    Command 'java' not found, but can be installed with:

    sudo apt install openjdk-11-jre-headless  # version 11.0.11+9-0ubuntu2~20.04, or
    sudo apt install default-jre              # version 2:1.11-72
    sudo apt install openjdk-13-jre-headless  # version 13.0.7+5-0ubuntu1~20.04
    sudo apt install openjdk-16-jre-headless  # version 16.0.1+9-1~20.04
    sudo apt install openjdk-8-jre-headless   # version 8u292-b10-0ubuntu1~20.04
    ```

3. Execute the following command to install the default Java Runtime Environment (JRE), which will install the JRE from OpenJDK 11:

    ```bash
    sudo apt install default-jre
    ```

4. Verify the installation with:

    ```bash
    java -version
    ```

    You’ll see output similar to the following:

    ```
    openjdk version "11.0.11" 2021-04-20
    OpenJDK Runtime Environment (build 11.0.11+9-Ubuntu-0ubuntu2.20.04)
    OpenJDK 64-Bit Server VM (build 11.0.11+9-Ubuntu-0ubuntu2.20.04, mixed mode, sharing))
    ```

5. You may need the Java Development Kit (JDK) in addition to the JRE to compile and run specific Java-based software. To install the JDK, execute the following command, which will also install the JRE:

    ```bash
    sudo apt install default-jdk
    ```

6. Verify that the JDK is installed by checking the version of javac, the Java compiler:

    ```bash
    javac -version
    ```

    You’ll see the following output:

    ```
    javac 11.0.11
    ```
** Note that some details may vary due to your current version of ubuntu



## Install Jenkins

### Add the Jenkins repository key to your system
```bash
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
```

### Add the Jenkins repository to your system
```bash
echo "deb https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
```

### Update package repository again
```bash
sudo apt update
```

### Install Jenkins
```bash
sudo apt install jenkins
sudo systemctl start jenkins && sudo systemctl enable jenkins
```

## Setup Jenkins

### Now go to a web browser and visit the web interface
```http://<your-server-ipaddress>:8080```

### Unlock Jenkins
When you first access Jenkins, you'll be prompted to unlock it. The initial administrator password can be found in the Jenkins server's log file or in a predefined location specified on the web UI.

### Install Plugins
Jenkins is highly extensible through plugins. Install plugins that are necessary for your project. Common plugins include Git, GitHub, Pipeline, and Docker. You can select the standard/recommended plugins

### Configure Global Settings
Configure global settings in Jenkins, such as email notifications, security settings, and system configurations according to your project's requirements.

### Create a Jenkins Pipeline
You can either create a Jenkins job via the web UI or you can create a Jenkins pipeline by adding a Jenkinsfile in your project repository.
- Jenkins Pipeline is defined using a domain-specific language called "Pipeline DSL" or by using the Blue Ocean visual editor.
- You can create a Jenkinsfile in your project's repository to define the pipeline stages, or you can use the Pipeline DSL directly in Jenkins.

