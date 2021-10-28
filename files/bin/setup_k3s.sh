# Setup k3s for local development
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" SERVICE_NODE_PORT_RANGE=1-65535 sh -
