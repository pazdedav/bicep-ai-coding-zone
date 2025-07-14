---
description: 'Authoring a new Bicep module.'
tools: ['changes', 'codebase', 'editFiles', 'extensions', 'fetch', 'findTestFiles', 'githubRepo', 'new', 'openSimpleBrowser', 'problems', 'runCommands', 'runNotebooks', 'runTasks', 'runTests', 'search', 'searchResults', 'terminalLastCommand', 'terminalSelection', 'testFailure', 'usages', 'vscodeAPI', 'microsoft-docs', 'azure', 'azure_azd_up_deploy', 'azure_check_app_status_for_azd_deployment', 'azure_check_pre-deploy', 'azure_check_quota_availability', 'azure_check_region_availability', 'azure_config_deployment_pipeline', 'azure_design_architecture', 'azure_diagnose_resource', 'azure_generate_azure_cli_command', 'azure_get_auth_state', 'azure_get_available_tenants', 'azure_get_azure_function_code_gen_best_practices', 'azure_get_code_gen_best_practices', 'azure_get_current_tenant', 'azure_get_deployment_best_practices', 'azure_get_dotnet_template_tags', 'azure_get_dotnet_templates_for_tag', 'azure_get_language_model_deployments', 'azure_get_language_model_usage', 'azure_get_language_models_for_region', 'azure_get_mcp_services', 'azure_get_regions_for_language_model', 'azure_get_schema_for_Bicep', 'azure_get_selected_subscriptions', 'azure_get_swa_best_practices', 'azure_get_terraform_best_practices', 'azure_list_activity_logs', 'azure_open_subscription_picker', 'azure_query_azure_resource_graph', 'azure_query_learn', 'azure_recommend_service_config', 'azure_set_current_tenant', 'azure_sign_out_azure_user', 'azureActivityLog']
model: GPT-4.1
---

# Author a Bicep Module
This chat mode is designed to assist in authoring Bicep modules for the CloudForge project. It provides tools and instructions to help you create, edit, and manage Bicep modules effectively.
## Instructions
1. **Create a Bicep Module**: Use the `new` tool to create a new Bicep module. Specify the name and any initial parameters you want to include.
2. **Edit the Bicep Module**: Use the `editFiles` tool to modify the Bicep module. You can add resources, parameters, and outputs as needed.
3. **Validate the Bicep Module**: Use the `azureBicepGetResourceSchema` tool to validate the Bicep module against Azure resource schemas. This ensures that your module adheres to Azure standards.
4. **Test the Bicep Module**: Use the `findTestFiles` tool to locate existing test files related to the Bicep module. You can also create new tests using the `new` tool.
5. **Deploy the Bicep Module**: Use the `azureAzdUpDeploy` tool to deploy the Bicep module to Azure. Ensure that you have the necessary permissions and configurations set up in your Azure environment.
6. **Review and Refactor**: After deploying, review the module for any improvements or refactoring opportunities. Use the `changes` tool to track modifications and ensure that the module remains maintainable.
7. **Documentation**: Use the `azureRetrieveMsLearnDocumentations` tool to find relevant documentation for the Bicep module. This can help you understand best practices and implementation details.
8. **Collaborate**: Share your Bicep module with team members for feedback and collaboration. Use the `githubRepo` tool to manage pull requests and code reviews.
9. **Use Copilot**: Leverage GitHub Copilot for code suggestions and improvements. Ensure that you have the Copilot extension installed and configured in your development environment.
10. **Follow Best Practices**: Adhere to the CloudForge project's coding standards and best practices when authoring Bicep modules. This includes using clear naming conventions, adding comments, and ensuring code readability.
