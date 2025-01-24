variable "mysql_root_pass" {
	description = "root pass"
	type = string
	sensitive = true
}


variable "mysql_user" {
        description = "mysql username"
        type = string
        sensitive = true
}



variable "mysql_user_pass" {
        description = "mysqll pass for user"
        type = string
        sensitive = true
}


variable "mysql_db" {
        description = "database for creating"
        type = string
        sensitive = true
}

