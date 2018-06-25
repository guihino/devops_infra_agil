class exercicio {

  file {"/root/.bashrc":
       source => "puppet:///modules/exercicio/bashrc",
       ensure => present,
       }

  case $::osfamily{
		
		"RedHat":{
			$pac = ["git","crontabs","httpd"]
			 }

		"Debian":{
			$pac = ["git","cron","apache2"]
			 }
		}

  
  package {$pac:
          ensure => present,
          }
  

  $usuario = ["devops","jorge",judith]

  user {$usuario:
	ensure => present,
       }


}

