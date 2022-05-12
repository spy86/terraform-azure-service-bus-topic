output "name" {
  description = "Specifies the name of the ServiceBus Topic resource . Changing this forces a new resource to be created."
  value = "${azurerm_servicebus_topic.main.name}"
}
output "primary_send_and_listen_connection_string" {
  description = "The Primary Connection String for the ServiceBus Topic authorization Rule."
  value = "${azurerm_servicebus_topic_authorization_rule.main.primary_connection_string}"
  sensitive = false
}
output "secondary_send_and_listen_connection_string" {
  description = "The Secondary Connection String for the ServiceBus Topic authorization Rule."
  value = "${azurerm_servicebus_topic_authorization_rule.main.secondary_connection_string}"
  sensitive = false
}
output "primary_send_and_listen_shared_access_key" {
  description = "The Primary Key for the ServiceBus Topic authorization Rule."
  value = "${azurerm_servicebus_topic_authorization_rule.main.primary_key}"
  sensitive = true
}
output "secondary_send_and_listen_shared_access_key" {
  description = "The Secondary Key for the ServiceBus Topic authorization Rule."
  value = "${azurerm_servicebus_topic_authorization_rule.main.secondary_key}"
  sensitive = true
}