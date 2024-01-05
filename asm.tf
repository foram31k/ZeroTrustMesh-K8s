#Create namespace for gateway resources
resource "kubernetes_namespace" "asm-ingress" {
    wait_for_default_service_account = false

  metadata {
    name = var.asm_namespace

    labels = {
      "istio.io/rev"="asm-managed"
    }
  }
  timeouts {}
}