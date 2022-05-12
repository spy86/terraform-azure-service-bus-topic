###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The location/region where the storage account is created. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type = string
}
###########################
# Service Bus Topic groups vars
###########################
variable "servicebus_topic_name" {
  description = "Name."
  type = string
}
variable "servicebus_topic_enable_partitioning" {
  description = "Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Defaults to false. Changing this forces a new resource to be created."
  type = bool
  default = false
}
variable "servicebus_topic_default_message_ttl" {
  description = "The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself."
  type = string
  default = "P10675199DT2H48M5.4775807S"
}
variable "servicebus_topic_max_size_in_megabytes" {
  description = "Integer value which controls the size of memory allocated for the topic."
  type = number
  default = 1024
}
variable "servicebus_topic_requires_duplicate_detection" {
  description = "Boolean flag which controls whether the Topic requires duplicate detection. Defaults to false. Changing this forces a new resource to be created."
  type = bool
  default = false
}
variable "servicebus_topic_duplicate_detection_history_time_window" {
  description = "The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes. (PT10M)"
  type = string
  default = "PT10M"
}
variable "servicebus_topic_enable_batched_operations" {
  description = "Boolean flag which controls if server-side batched operations are enabled. Defaults to false."
  type = bool
  default = false
}
variable "servicebus_topic_support_ordering" {
  description = "Boolean flag which controls whether the Topic supports ordering. Defaults to false."
  type = bool
  default = false
}
variable "servicebus_topic_auto_delete_on_idle" {
  description = "The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes."
  type = string
  default = "P10675199DT2H48M5.4775807S"
}
variable "servicebus_topic_enable_express" {
  description = "Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage. Defaults to false."
  type = bool
  default = false
}
variable "servicebus_namespace_name" {
  description = "Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created."
  type = string
}
variable "servicebus_topic_authorization_rule_listen" {
  description = "Grants listen access to this this Authorization Rule. Defaults to false."
  type = bool
  default = true
}
variable "servicebus_topic_authorization_rule_send" {
  description = "Grants send access to this this Authorization Rule. Defaults to false."
  type = bool
  default = true
}
variable "servicebus_topic_authorization_rule_manage" {
  description = "Grants manage access to this this Authorization Rule. When this property is true - both listen and send must be too. Defaults to false."
  type = bool
  default = false
}