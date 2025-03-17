# EKS Worker Node Group Tanımı
resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "eks-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = [
    aws_subnet.private_subnet_a.id,
    aws_subnet.private_subnet_b.id
  ]

  instance_types = ["t3.medium"]  
  capacity_type  = "ON_DEMAND"    

  version = "1.32"  

  ami_type = "AL2_x86_64"  
  
  disk_size = 20  

  scaling_config {
    desired_size = 2  # Initial number of nodes
    max_size     = 5  # Maximum number of nodes
    min_size     = 2  # Minimum number of nodes
  }

  labels = {
    environment = "test"
    role        = "worker"
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_worker_node_policy,
    aws_iam_role_policy_attachment.eks_cni_policy,
    aws_iam_role_policy_attachment.eks_ec2_container_registry_readonly,
    aws_eks_cluster.eks_cluster
  ]
}
