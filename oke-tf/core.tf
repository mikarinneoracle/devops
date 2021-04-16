## This configuration was generated by terraform-provider-oci

resource oci_core_internet_gateway export_oke-igw-quick-gitops-3b1dfc242 {
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:47.909Z"
  }
  display_name = "oke-igw-quick-gitops-3b1dfc242"
  enabled      = "true"
  freeform_tags = {
  }
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_public_ip export_Floating-IP-for-VIP-public-vip-on-LB-ocid1-loadbalancer-oc1-eu-frankfurt-1-aaaaaaaazcadsiwflmfz7sxhol5g5p6vbp4qvoptzewmt66qjpo7ggpkanqq {
  compartment_id = var.compartment_ocid
  defined_tags = {
  }
  display_name = "Floating IP for VIP public-vip on LB ocid1.loadbalancer.oc1.eu-frankfurt-1.aaaaaaaazcadsiwflmfz7sxhol5g5p6vbp4qvoptzewmt66qjpo7ggpkanqq"
  freeform_tags = {
  }
  lifetime      = "RESERVED"
  private_ip_id = oci_core_private_ip.export_VNIC-for-LB-ocid1-loadbalancer-oc1-eu-frankfurt-1-aaaaaaaazcadsiwflmfz7sxhol5g5p6vbp4qvoptzewmt66qjpo7ggpkanqq.id
  #public_ip_pool_id = <<Optional value not found in discovery>>
}

resource oci_core_public_ip export_Floating-Public-IP-for-cluster-ocid1-cluster-oc1-eu-frankfurt-1-aaaaaaaafbvc3xmp56g2zqcjjnvnpyvehwpqcpocm7ah7rydrcme6wec7tjq {
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:49:01.940Z"
  }
  display_name = "Floating Public IP for cluster ocid1.cluster.oc1.eu-frankfurt-1.aaaaaaaafbvc3xmp56g2zqcjjnvnpyvehwpqcpocm7ah7rydrcme6wec7tjq"
  freeform_tags = {
  }
  lifetime      = "RESERVED"
  private_ip_id = oci_core_private_ip.export_Service-VNIC-for-cluster-ocid1-cluster-oc1-eu-frankfurt-1-aaaaaaaafbvc3xmp56g2zqcjjnvnpyvehwpqcpocm7ah7rydrcme6wec7tjq.id
  #public_ip_pool_id = <<Optional value not found in discovery>>
}

resource oci_core_service_gateway export_oke-igw-quick-gitops-3b1dfc242_1 {
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:50.185Z"
  }
  display_name = "oke-igw-quick-gitops-3b1dfc242"
  freeform_tags = {
  }
  #route_table_id = <<Optional value not found in discovery>>
  services {
    service_id = "ocid1.service.oc1.eu-frankfurt-1.aaaaaaaa7ncsqkj6lkz36dehifizupyn6qjqsmtepsegs23yyntnsy7qrvea"
  }
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_subnet export_oke-nodesubnet-quick-gitops-3b1dfc242-regional {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.0.10.0/24"
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:54.014Z"
  }
  dhcp_options_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_dhcp_options_id
  display_name    = "oke-nodesubnet-quick-gitops-3b1dfc242-regional"
  dns_label       = "sub71d6532e1"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  prohibit_internet_ingress  = "true"
  prohibit_public_ip_on_vnic = "true"
  route_table_id             = oci_core_route_table.export_oke-private-routetable-gitops-3b1dfc242.id
  security_list_ids = [
    oci_core_security_list.export_oke-nodeseclist-quick-gitops-3b1dfc242.id,
  ]
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_subnet export_oke-svclbsubnet-quick-gitops-3b1dfc242-regional {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.0.20.0/24"
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:53.593Z"
  }
  dhcp_options_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_dhcp_options_id
  display_name    = "oke-svclbsubnet-quick-gitops-3b1dfc242-regional"
  dns_label       = "lbsub1e2e1d328"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_route_table_id
  security_list_ids = [
    oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_subnet export_oke-k8sendpoint-subnet-quick-gitops-3b1dfc242-regional {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.0.0.0/28"
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:53.225Z"
  }
  dhcp_options_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_dhcp_options_id
  display_name    = "oke-k8sendpoint-subnet-quick-gitops-3b1dfc242-regional"
  dns_label       = "sub04c66b760"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_route_table_id
  security_list_ids = [
    oci_core_security_list.export_oke-k8sApiEndpoint-quick-gitops-3b1dfc242.id,
  ]
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_private_ip export_VNIC-for-LB-ocid1-loadbalancer-oc1-eu-frankfurt-1-aaaaaaaazcadsiwflmfz7sxhol5g5p6vbp4qvoptzewmt66qjpo7ggpkanqq {
  defined_tags = {
  }
  display_name = "VNIC for LB ocid1.loadbalancer.oc1.eu-frankfurt-1.aaaaaaaazcadsiwflmfz7sxhol5g5p6vbp4qvoptzewmt66qjpo7ggpkanqq"
  freeform_tags = {
  }
  #hostname_label = <<Optional value not found in discovery>>
  ip_address = "10.0.20.145"
  #vlan_id = <<Optional value not found in discovery>>
  vnic_id = "ocid1.vnic.oc1.eu-frankfurt-1.abtheljrcdpmeluz44hjj5emjaqqtdggy33tjyozqq2ibsnweg6ydc65fgya"
}

resource oci_core_private_ip export_VNIC-for-LB-ocid1-loadbalancer-oc1-eu-frankfurt-1-aaaaaaaazcadsiwflmfz7sxhol5g5p6vbp4qvoptzewmt66qjpo7ggpkanqq_1 {
  defined_tags = {
  }
  display_name = "VNIC for LB ocid1.loadbalancer.oc1.eu-frankfurt-1.aaaaaaaazcadsiwflmfz7sxhol5g5p6vbp4qvoptzewmt66qjpo7ggpkanqq"
  freeform_tags = {
  }
  #hostname_label = <<Optional value not found in discovery>>
  ip_address = "10.0.20.170"
  #vlan_id = <<Optional value not found in discovery>>
  vnic_id = "ocid1.vnic.oc1.eu-frankfurt-1.abtheljsmram2yj5q22bufohp3j5iuq7ybxanee6aljw6jkyyl3yguvubdoq"
}

resource oci_core_private_ip export_Service-VNIC-for-cluster-ocid1-cluster-oc1-eu-frankfurt-1-aaaaaaaafbvc3xmp56g2zqcjjnvnpyvehwpqcpocm7ah7rydrcme6wec7tjq {
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:49:00.702Z"
  }
  display_name = "Service VNIC for cluster ocid1.cluster.oc1.eu-frankfurt-1.aaaaaaaafbvc3xmp56g2zqcjjnvnpyvehwpqcpocm7ah7rydrcme6wec7tjq"
  freeform_tags = {
  }
  hostname_label = "host-10-0-0-8"
  ip_address     = "10.0.0.8"
  #vlan_id = <<Optional value not found in discovery>>
  vnic_id = "ocid1.vnic.oc1.eu-frankfurt-1.abtheljta5yulruairrtcszeqf4pa7zup4vmgsyj67j7n6arn5pqu3wm7noa"
}

resource oci_core_vcn export_oke-vcn-quick-gitops-3b1dfc242 {
  #cidr_block = <<Optional value not found in discovery>>
  cidr_blocks = [
    "10.0.0.0/16",
  ]
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:47.386Z"
  }
  display_name = "oke-vcn-quick-gitops-3b1dfc242"
  dns_label    = "gitops"
  freeform_tags = {
  }
  #is_ipv6enabled = <<Optional value not found in discovery>>
}

resource oci_core_default_dhcp_options export_Default-DHCP-Options-for-oke-vcn-quick-gitops-3b1dfc242 {
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:47.386Z"
  }
  display_name = "Default DHCP Options for oke-vcn-quick-gitops-3b1dfc242"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_dhcp_options_id
  options {
    custom_dns_servers = [
    ]
    #search_domain_names = <<Optional value not found in discovery>>
    server_type = "VcnLocalPlusInternet"
    type        = "DomainNameServer"
  }
  options {
    #custom_dns_servers = <<Optional value not found in discovery>>
    search_domain_names = [
      "gitops.oraclevcn.com",
    ]
    #server_type = <<Optional value not found in discovery>>
    type = "SearchDomain"
  }
}

resource oci_core_nat_gateway export_oke-ngw-quick-gitops-3b1dfc242 {
  block_traffic  = "false"
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:48.260Z"
  }
  display_name = "oke-ngw-quick-gitops-3b1dfc242"
  freeform_tags = {
  }
  public_ip_id = "ocid1.publicip.oc1.eu-frankfurt-1.aaaaaaaa3le3whdy3oh2fgbezpksavboiaxfbtl7rmh4x7wibaaoufab62ia"
  vcn_id       = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_route_table export_oke-private-routetable-gitops-3b1dfc242 {
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:51.873Z"
  }
  display_name = "oke-private-routetable-gitops-3b1dfc242"
  freeform_tags = {
  }
  route_rules {
    description       = "traffic to the internet"
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_nat_gateway.export_oke-ngw-quick-gitops-3b1dfc242.id
  }
  route_rules {
    description       = "traffic to OCI services"
    destination       = "all-fra-services-in-oracle-services-network"
    destination_type  = "SERVICE_CIDR_BLOCK"
    network_entity_id = oci_core_service_gateway.export_oke-igw-quick-gitops-3b1dfc242_1.id
  }
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_default_route_table export_oke-public-routetable-gitops-3b1dfc242 {
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:47.386Z"
  }
  display_name = "oke-public-routetable-gitops-3b1dfc242"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_route_table_id
  route_rules {
    description       = "traffic to/from internet"
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.export_oke-igw-quick-gitops-3b1dfc242.id
  }
}

resource oci_core_security_list export_oke-nodeseclist-quick-gitops-3b1dfc242 {
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:52.790Z"
  }
  display_name = "oke-nodeseclist-quick-gitops-3b1dfc242"
  egress_security_rules {
    description      = "Allow pods on one worker node to communicate with pods on other worker nodes"
    destination      = "10.0.10.0/24"
    destination_type = "CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "all"
    stateless = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "Access to Kubernetes API Endpoint"
    destination      = "10.0.0.0/28"
    destination_type = "CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "6"
    stateless = "false"
    tcp_options {
      max = "6443"
      min = "6443"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "Kubernetes worker to control plane communication"
    destination      = "10.0.0.0/28"
    destination_type = "CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "6"
    stateless = "false"
    tcp_options {
      max = "12250"
      min = "12250"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "Path discovery"
    destination      = "10.0.0.0/28"
    destination_type = "CIDR_BLOCK"
    icmp_options {
      code = "4"
      type = "3"
    }
    protocol  = "1"
    stateless = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "Allow nodes to communicate with OKE to ensure correct start-up and continued functioning"
    destination      = "all-fra-services-in-oracle-services-network"
    destination_type = "SERVICE_CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "6"
    stateless = "false"
    tcp_options {
      max = "443"
      min = "443"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "ICMP Access from Kubernetes Control Plane"
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    icmp_options {
      code = "4"
      type = "3"
    }
    protocol  = "1"
    stateless = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "Worker Nodes access to Internet"
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "all"
    stateless = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  freeform_tags = {
  }
  ingress_security_rules {
    description = "Allow pods on one worker node to communicate with pods on other worker nodes"
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "all"
    source      = "10.0.10.0/24"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    description = "Path discovery"
    icmp_options {
      code = "4"
      type = "3"
    }
    protocol    = "1"
    source      = "10.0.0.0/28"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    description = "TCP access from Kubernetes Control Plane"
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "10.0.0.0/28"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    description = "Inbound SSH traffic to worker nodes"
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "22"
      min = "22"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    #description = <<Optional value not found in discovery>>
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "10.0.20.0/24"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "30942"
      min = "30942"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    #description = <<Optional value not found in discovery>>
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "10.0.20.0/24"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "10256"
      min = "10256"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_security_list export_oke-k8sApiEndpoint-quick-gitops-3b1dfc242 {
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:52.275Z"
  }
  display_name = "oke-k8sApiEndpoint-quick-gitops-3b1dfc242"
  egress_security_rules {
    description      = "Allow Kubernetes Control Plane to communicate with OKE"
    destination      = "all-fra-services-in-oracle-services-network"
    destination_type = "SERVICE_CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "6"
    stateless = "false"
    tcp_options {
      max = "443"
      min = "443"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "All traffic to worker nodes"
    destination      = "10.0.10.0/24"
    destination_type = "CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "6"
    stateless = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    description      = "Path discovery"
    destination      = "10.0.10.0/24"
    destination_type = "CIDR_BLOCK"
    icmp_options {
      code = "4"
      type = "3"
    }
    protocol  = "1"
    stateless = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  freeform_tags = {
  }
  ingress_security_rules {
    description = "External access to Kubernetes API endpoint"
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "6443"
      min = "6443"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    description = "Kubernetes worker to Kubernetes API endpoint communication"
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "10.0.10.0/24"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "6443"
      min = "6443"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    description = "Kubernetes worker to control plane communication"
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "10.0.10.0/24"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "12250"
      min = "12250"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  ingress_security_rules {
    description = "Path discovery"
    icmp_options {
      code = "4"
      type = "3"
    }
    protocol    = "1"
    source      = "10.0.10.0/24"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    #tcp_options = <<Optional value not found in discovery>>
    #udp_options = <<Optional value not found in discovery>>
  }
  vcn_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.id
}

resource oci_core_default_security_list export_oke-svclbseclist-quick-gitops-3b1dfc242 {
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/mika.rinne@oracle.com"
    "Oracle-Tags.CreatedOn" = "2021-04-09T11:48:47.386Z"
  }
  display_name = "oke-svclbseclist-quick-gitops-3b1dfc242"
  egress_security_rules {
    #description = <<Optional value not found in discovery>>
    destination      = "10.0.10.0/24"
    destination_type = "CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "6"
    stateless = "false"
    tcp_options {
      max = "30942"
      min = "30942"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  egress_security_rules {
    #description = <<Optional value not found in discovery>>
    destination      = "10.0.10.0/24"
    destination_type = "CIDR_BLOCK"
    #icmp_options = <<Optional value not found in discovery>>
    protocol  = "6"
    stateless = "false"
    tcp_options {
      max = "10256"
      min = "10256"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  freeform_tags = {
  }
  ingress_security_rules {
    #description = <<Optional value not found in discovery>>
    #icmp_options = <<Optional value not found in discovery>>
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "80"
      min = "80"
      #source_port_range = <<Optional value not found in discovery>>
    }
    #udp_options = <<Optional value not found in discovery>>
  }
  manage_default_resource_id = oci_core_vcn.export_oke-vcn-quick-gitops-3b1dfc242.default_security_list_id
}

