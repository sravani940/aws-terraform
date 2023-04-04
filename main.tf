
resource "aws_instance" "demo_ec2" {
  ami                    = var.ami_id
  instance_type          = var.inst_type
  key_name               = var.key_name
  vpc_security_group_ids = var.sg_ids
  subnet_id              = var.subnet_id

  tags = {
    Name = "terrform-demo-ec2"
    Environment = "training"
  }
}
# code to create aws_s3_bucket

resource "aws_s3_bucket" "s3_tf" {
   bucket = var.bucket

 versioning{
    enabled = true
}

}

resource "aws_db_subnet_group" "mydb_subnet_group" {
  name          = var.name
  subnet_ids    = var.subnet_ids
  }

resource "aws_db_instance" "mydb_subnet_group" {
  identifier          = var.identifier
  engine              = var.engine
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  allocated_storage   = var.allocated_storage
  storage_type        = var.storage_type
  storage_encrypted   = var.storage_encrypted
  db_subnet_group_name = var.db_subnet_group_name
  db_name              = var.db_name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  publicly_accessible  = var.publicly_accessible
}




