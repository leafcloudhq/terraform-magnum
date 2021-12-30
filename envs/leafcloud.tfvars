external_network    = "external"
keypair             = "id_rsa"
keypair_name        = "stack1_key"
master_flavor       = "ec1.medium"
flavor              = "ec1.large"
volume_driver       = ""
floating_ip_enabled = true
master_count        = 1
node_count          = 1
master_lb_enabled   = false
create_timeout      = 600


template_labels = {
  container_infra_prefix  = "ghcr.io/stackhpc/"
  monitoring_enabled      = "true"
  auto_scaling_enabled    = "true"
  auto_healing_enabled    = "true"
  auto_healing_controller = "magnum-auto-healer"
  magnum_auto_healer_tag  = "v1.20.0"
  ingress_controller      = "nginx"
  vnic_type               = "direct"
}

clusters = {
  "stack1" = {
    template            = "k8s-1.21.2"
    floating_ip_enabled = "true"
    labels = {
    }
  }
}

bastion = {
  count = 0
}

kubeconfig = "stack1"
