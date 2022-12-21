resource "aws_db_instance" "terraformrds" {
    engine = "mysql"
    engine_version = "8.0.28"
    allocated_storage = 20
    instance_class = "db.t3.micro"
    storage_type = "gp2"
    identifier = "mydb"
    username = "admin"
    password = "password119"
    publicly_accessible = true
    skip_final_snapshot = true

    tags = {
        name = "terraformrds"
    }

}