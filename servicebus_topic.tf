locals {
  auth_rule_name = "SendAndListenSharedAccessKey"
}

data "azurerm_servicebus_namespace" "main" {
  name                = "${var.servicebus_namespace_name}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
}


resource "azurerm_servicebus_topic" "main" {
  name         = "${var.servicebus_topic_name}"
  namespace_id = "${data.azurerm_servicebus_namespace.main.id}"

  enable_partitioning                     = "${var.servicebus_topic_enable_partitioning}"
  default_message_ttl                     = "${var.servicebus_topic_default_message_ttl}"
  max_size_in_megabytes                   = "${var.servicebus_topic_max_size_in_megabytes}"
  requires_duplicate_detection            = "${var.servicebus_topic_requires_duplicate_detection}"
  duplicate_detection_history_time_window = "${var.servicebus_topic_duplicate_detection_history_time_window}"
  enable_batched_operations               = "${var.servicebus_topic_enable_batched_operations}"
  support_ordering                        = "${var.servicebus_topic_support_ordering}"
  auto_delete_on_idle                     = "${var.servicebus_topic_auto_delete_on_idle}"
  enable_express                          = "${var.servicebus_topic_enable_express}"
}

resource "azurerm_servicebus_topic_authorization_rule" "main" {
  name     = "${local.auth_rule_name}"
  topic_id = "${azurerm_servicebus_topic.main.id}"

  listen = "${var.servicebus_topic_authorization_rule_listen}"
  send   = "${var.servicebus_topic_authorization_rule_send}"
  manage = "${var.servicebus_topic_authorization_rule_manage}"
}