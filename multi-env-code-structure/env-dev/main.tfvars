

env         = "dev"
domain_name = "devops11.online"
zone_id     = "Z00196431INWTJ0O5YT57"

db_instances = {
  zone_id     = "Z00196431INWTJ0O5YT57"
  mongodb = {
    app_port      = 8080
    instance_type = "t3.small"
  }
  mysql = {
    zone_id     = "Z00196431INWTJ0O5YT57"
    app_port = 3306
    instance_type = "t3.small"
  }
  rabbitmq = {
    zone_id     = "Z00196431INWTJ0O5YT57"
    app_port = 5672
    instance_type = "t3.small"
  }
  redis = {
    zone_id     = "Z00196431INWTJ0O5YT57"
    app_port = 6379
    instance_type = "t3.small"
    }
}

app_instances = {
  zone_id     = "Z00196431INWTJ0O5YT57"
  cart = {
    app_port      = 8080
    instance_type = "t3.small"
  }

  catalogue = {
    zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }

  user = {
    zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }
  shipping = {
    zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }
  payment = {
    zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }
}




web_instances = {
  zone_id     = "Z00196431INWTJ0O5YT57"
  frontend = {
    app_port      = 80
    instance_type = "t3.small"
  }
}
