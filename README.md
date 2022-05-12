<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_servicebus_topic.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_topic) | resource |
| [azurerm_servicebus_topic_authorization_rule.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_topic_authorization_rule) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/resource_group) | data source |
| [azurerm_servicebus_namespace.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/servicebus_namespace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where the storage account is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the storage account. | `string` | n/a | yes |
| <a name="input_servicebus_namespace_name"></a> [servicebus\_namespace\_name](#input\_servicebus\_namespace\_name) | Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_servicebus_topic_authorization_rule_listen"></a> [servicebus\_topic\_authorization\_rule\_listen](#input\_servicebus\_topic\_authorization\_rule\_listen) | Grants listen access to this this Authorization Rule. Defaults to false. | `bool` | `true` | no |
| <a name="input_servicebus_topic_authorization_rule_manage"></a> [servicebus\_topic\_authorization\_rule\_manage](#input\_servicebus\_topic\_authorization\_rule\_manage) | Grants manage access to this this Authorization Rule. When this property is true - both listen and send must be too. Defaults to false. | `bool` | `false` | no |
| <a name="input_servicebus_topic_authorization_rule_send"></a> [servicebus\_topic\_authorization\_rule\_send](#input\_servicebus\_topic\_authorization\_rule\_send) | Grants send access to this this Authorization Rule. Defaults to false. | `bool` | `true` | no |
| <a name="input_servicebus_topic_auto_delete_on_idle"></a> [servicebus\_topic\_auto\_delete\_on\_idle](#input\_servicebus\_topic\_auto\_delete\_on\_idle) | The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_topic_default_message_ttl"></a> [servicebus\_topic\_default\_message\_ttl](#input\_servicebus\_topic\_default\_message\_ttl) | The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_topic_duplicate_detection_history_time_window"></a> [servicebus\_topic\_duplicate\_detection\_history\_time\_window](#input\_servicebus\_topic\_duplicate\_detection\_history\_time\_window) | The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes. (PT10M) | `string` | `"PT10M"` | no |
| <a name="input_servicebus_topic_enable_batched_operations"></a> [servicebus\_topic\_enable\_batched\_operations](#input\_servicebus\_topic\_enable\_batched\_operations) | Boolean flag which controls if server-side batched operations are enabled. Defaults to false. | `bool` | `false` | no |
| <a name="input_servicebus_topic_enable_express"></a> [servicebus\_topic\_enable\_express](#input\_servicebus\_topic\_enable\_express) | Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage. Defaults to false. | `bool` | `false` | no |
| <a name="input_servicebus_topic_enable_partitioning"></a> [servicebus\_topic\_enable\_partitioning](#input\_servicebus\_topic\_enable\_partitioning) | Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Defaults to false. Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_servicebus_topic_max_size_in_megabytes"></a> [servicebus\_topic\_max\_size\_in\_megabytes](#input\_servicebus\_topic\_max\_size\_in\_megabytes) | Integer value which controls the size of memory allocated for the topic. | `number` | `1024` | no |
| <a name="input_servicebus_topic_name"></a> [servicebus\_topic\_name](#input\_servicebus\_topic\_name) | Name. | `string` | n/a | yes |
| <a name="input_servicebus_topic_requires_duplicate_detection"></a> [servicebus\_topic\_requires\_duplicate\_detection](#input\_servicebus\_topic\_requires\_duplicate\_detection) | Boolean flag which controls whether the Topic requires duplicate detection. Defaults to false. Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_servicebus_topic_support_ordering"></a> [servicebus\_topic\_support\_ordering](#input\_servicebus\_topic\_support\_ordering) | Boolean flag which controls whether the Topic supports ordering. Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Specifies the name of the ServiceBus Topic resource . Changing this forces a new resource to be created. |
| <a name="output_primary_send_and_listen_connection_string"></a> [primary\_send\_and\_listen\_connection\_string](#output\_primary\_send\_and\_listen\_connection\_string) | The Primary Connection String for the ServiceBus Topic authorization Rule. |
| <a name="output_primary_send_and_listen_shared_access_key"></a> [primary\_send\_and\_listen\_shared\_access\_key](#output\_primary\_send\_and\_listen\_shared\_access\_key) | The Primary Key for the ServiceBus Topic authorization Rule. |
| <a name="output_secondary_send_and_listen_connection_string"></a> [secondary\_send\_and\_listen\_connection\_string](#output\_secondary\_send\_and\_listen\_connection\_string) | The Secondary Connection String for the ServiceBus Topic authorization Rule. |
| <a name="output_secondary_send_and_listen_shared_access_key"></a> [secondary\_send\_and\_listen\_shared\_access\_key](#output\_secondary\_send\_and\_listen\_shared\_access\_key) | The Secondary Key for the ServiceBus Topic authorization Rule. |
<!-- END_TF_DOCS -->