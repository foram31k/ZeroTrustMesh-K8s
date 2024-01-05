//Variables
variable "project_id" {
  type        = string
  description = "GCloud project_id"
}

variable "region" {
  type        = string
  description = "GCloud region/location"
}

variable "zone" {
  type        = string
  description = "Zone under specific region"
}

variable "cluster_name" {
  type        = string
  description = "Name of Kubernetes cluster"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "env" {
  type        = string
  description = "Set environment label eg. dev,test"
}

variable "asm_namespace" {
  type        = string
  description = "Namespace for Anthos Service Mesh (ASM) gateway"
  default     = "asm-gateway"
}

variable "app_namespace" {
  type = string
  description = "Namespace for Demo Application, here bookinfo app"
  //Repo to BookInfo app https://github.com/istio/istio/tree/master/samples/bookinfo
}