

env         = "dev"
domain_name = "devops11.online"
zone_id     = "Z00196431INWTJ0O5YT57"

db_instances = {
  # domain_name = "devops11.online"
  # zone_id     = "Z00196431INWTJ0O5YT57"
  mongodb = {
    # zone_id     = "Z00196431INWTJ0O5YT57"
    # domain_name = "devops11.online"
    app_port      = 8080
    instance_type = "t3.small"
  }
  mysql = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port = 3306
    instance_type = "t3.small"
  }
  rabbitmq = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port = 5672
    instance_type = "t3.small"
  }
  redis = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port = 6379
    instance_type = "t3.small"
    }
}


env         = "dev"
domain_name = "devops11.online"
zone_id     = "Z00196431INWTJ0O5YT57"

app_instances = {
  # domain_name = "devops11.online"
  # zone_id     = "Z00196431INWTJ0O5YT57"
  cart = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }

  catalogue = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }

  user = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }
  shipping = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }
  payment = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 8080
    instance_type = "t3.small"
  }
}


env         = "dev"
domain_name = "devops11.online"
zone_id     = "Z00196431INWTJ0O5YT57"


web_instances = {
  # domain_name = "devops11.online"
  # zone_id     = "Z00196431INWTJ0O5YT57"
  frontend = {
    # domain_name = "devops11.online"
    # zone_id     = "Z00196431INWTJ0O5YT57"
    app_port      = 80
    instance_type = "t3.small"
  }
}
