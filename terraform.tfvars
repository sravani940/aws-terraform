ami_id = "ami-0557a15b87f6559cf"
inst_type = "t2.micro"
key_name = "demoapp"
sg_ids = ["sg-0ac1fbdf3eeaebf0d"]
subnet_id = "subnet-08551d5a583ebe0b3"
region = "ap-south-1"

 "aws_s3_bucket" "user" 
  bucket-name = "sravani-us-east-1-tfstates"

  # create the rds instance
resource "aws_db_instance" "db_instance" {
  engine                  = "postgres"
  engine_version          = "12.7"
  multi_az                = false
  identifier              = "rds-db"
  username                = "master"
  password                = "master12345"
  instance_class          = "db.t2.micro"
  allocated_storage       = 20
  db_subnet_group_name    = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.database_security_group.id]
  availability_zone       = data.aws_availability_zones.available_zones.names[0]
  db_name                 ="testdb" 
  skip_final_snapshot     = true
}