# s3 bucket for initial-cluster etcd proxy discovery
# and two-stage cloudinit user-data files
resource "aws_s3_bucket" "coreos-cluster-cloudinit" {
    bucket = "AWS-ACCOUNT-coreos-cluster-cloudinit"
    acl = "private"

    tags {
        Name = "Cloudinit"
    }
}
# s3 bucket for application configuration, code, units etcd. Shared by all cluster nodes
resource "aws_s3_bucket" "coreos-cluster-config" {
    bucket = "AWS-ACCOUNT-coreos-cluster-config"
    acl = "private"

    tags {
        Name = "Config"
    }
}

# s3 bucket for jenkins backup data
resource "aws_s3_bucket" "jenkins" {
    bucket = "AWS-ACCOUNT-jenkins"
    acl = "private"

    tags {
        Name = "Jenkins"
    }
}

# s3 bucket for private docker registry
resource "aws_s3_bucket" "dockerhub" {
    bucket = "AWS-ACCOUNT-dockerhub"
    acl = "private"

    tags {
        Name = "Dockerhub"
    }
}

# s3 bucket for log data backup
resource "aws_s3_bucket" "logs" {
    bucket = "AWS-ACCOUNT-logs"
    acl = "private"

    tags {
        Name = "Logs"
    }
}
