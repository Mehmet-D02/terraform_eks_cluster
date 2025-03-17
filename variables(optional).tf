variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "eks-cluster"
}

variable "eks_node_group_name" {
  description = "EKS Node Group Name"
  type        = string
  default     = "eks-node-group"
}

variable "eks_instance_type" {
  description = "Instance type for EKS nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "eks_capacity_type" {
  description = "Capacity type for EKS nodes"
  type        = string
  default     = "ON_DEMAND"
}

variable "eks_version" {
  description = "EKS Cluster Version"
  type        = string
  default     = "1.32"
}

variable "eks_ami_type" {
  description = "EKS Node AMI Type"
  type        = string
  default     = "AL2_x86_64"
}

variable "eks_disk_size" {
  description = "Disk size for EKS worker nodes"
  type        = number
  default     = 20
}

variable "eks_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "eks_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 2
}

variable "eks_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 5
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_a_cidr" {
  description = "CIDR block for Public Subnet A"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  description = "CIDR block for Public Subnet B"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_a_cidr" {
  description = "CIDR block for Private Subnet A"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_b_cidr" {
  description = "CIDR block for Private Subnet B"
  type        = string
  default     = "10.0.4.0/24"
}

variable "availability_zone_a" {
  description = "Availability Zone A"
  type        = string
  default     = "eu-central-1a"
}

variable "availability_zone_b" {
  description = "Availability Zone B"
  type        = string
  default     = "eu-central-1b"
}

