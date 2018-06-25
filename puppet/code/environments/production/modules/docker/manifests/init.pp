class docker {



$comandos = "/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/apt-key add - ; /usr/bin/add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable' ; /usr/bin/apt update -y"

$pacotes = ["apt-transport-https","ca-certificates","curl","software-properties-common"]

package{$pacotes:
       ensure => present,
       }

exec{"rodando comando":
     command => $comandos,
    }

package{"docker-ce":
        ensure => present,
       }

 }
