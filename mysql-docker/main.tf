terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}


resource "docker_image" "mysql" {
	name = "mysql:latest"
}

resource "docker_container" "mysql" {
	name = "mysql_cont"
	image = docker_image.mysql.image_id

	env = [
		"MYSQL_ROOT_PASSWORD=${var.mysql_root_pass}",
		"MYSQL_USER=${var.mysql_user}",
		"MYSQL_PASSWORD=${var.mysql_user_pass}",
		"MYSQL_DATABASE=${var.mysql_db}"

	]

	ports {
		internal = 3306
		external = 3306
	}
}
