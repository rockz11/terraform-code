

env         = "dev"
domain_name = "devops11.online"
zone_id     = "Z00196431INWTJ0O5YT57"

db_instances = {

  mongodb = {

    app_port      = 8080
    instance_type = "t3.small"
    volume_size   = 20
  }
  mysql = {

    app_port = 3306
    instance_type = "t3.small"
    volume_size   = 20
  }
  rabbitmq = {

    app_port = 5672
    instance_type = "t3.small"
    volume_size   = 20
  }
  redis = {

    app_port = 6379
    instance_type = "t3.small"
    volume_size   = 20
    }
}


#
app_instances = {

  cart = {

    app_port      = 8080
    instance_type = "t3.small"
    volume_size   = 20
  }

  catalogue = {

    app_port      = 8080
    instance_type = "t3.small"
    volume_size   = 20
  }

  user = {

    app_port      = 8080
    instance_type = "t3.small"
    volume_size   = 20
  }
  shipping = {

    app_port      = 8080
    instance_type = "t3.small"
    volume_size   = 20
  }
  payment = {

    app_port      = 8080
    instance_type = "t3.small"
    volume_size   = 20
  }
}



web_instances = {

  frontend = {

    app_port      = 80
    instance_type = "t3.small"
    volume_size   = 20
  }
}
