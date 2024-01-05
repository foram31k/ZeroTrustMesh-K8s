# Create namespace to deploy demo app
resource "kubernetes_namespace" "demo-app" {
    wait_for_default_service_account = false

  metadata {
    name = var.app_namespace

    labels = {
      "istio.io/rev"="asm-managed"
    }
  }
  timeouts {}
}