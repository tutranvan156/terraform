resource "random_password" "password" {
    length = 16
    special = true
}

resource "aws_db_instance" "database" {
    allocated_storage = 20
    engine = "postgres"
    engine_version = "12.7"
    instance_class = "db.t2.micro"
    identifier = "${var.project}-db-instance"
    name = "db_name"
    username = "vantu"
    password = random_password.password.result
    db_subnet_group_name = var.vpc.database_subnet_group
    vpc_security_group_ids = [var.sg.db]
    skip_final_snapshot = true
}
