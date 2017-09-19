#init.pp
class harden_windows_server (
  Boolean $is_domain_controller = false,
  #1
  Boolean $ensure_enforce_password_history_is_set_to_24_or_more_passwords = true,
  Boolean $ensure_maximum_password_age_is_set_to_60_or_fewer_days_but_not_0 = true,
  Boolean $ensure_minimum_password_age_is_set_to_1_or_more_days = true,
  Boolean $ensure_minimum_password_length_is_set_to_14_or_more_characters = true,
  Boolean $ensure_password_must_meet_complexity_requirements_is_set_to_enabled = true,
  Boolean $ensure_store_passwords_using_reversible_encryption_is_set_to_disabled = true,
  Boolean $ensure_account_lockout_duration_is_set_to_15_or_more_minutes = true,
  Boolean $ensure_account_lockout_threshold_is_set_to_10_or_fewer_invalid_logon_attempts_but_not_0 = true,
  Boolean $ensure_reset_account_lockout_counter_after_is_set_to_15_or_more_minutes = true,
  #2.2
  Boolean $ensure_access_credential_manager_as_a_trusted_caller_is_set_to_no_one = true,
  Boolean $configure_access_this_computer_from_the_network = true,
  Boolean $ensure_act_as_part_of_the_operating_system_is_set_to_no_one = true,
  Boolean $ensure_add_workstations_to_domain_is_set_to_administrators = true,
  Boolean $ensure_adjust_memory_quotas_for_a_process_is_set_to_administrators_local_service_network_service = true,
  Boolean $configure_allow_log_on_locally = true,
  Boolean $configure_allow_log_on_through_remote_desktop_services = true,
  Boolean $ensure_back_up_files_and_directories_is_set_to_administrators = true,
  Boolean $ensure_change_the_system_time_is_set_to_administrators_local_service = true,
  Boolean $ensure_change_the_time_zone_is_set_to_administrators_local_service = true,
  Boolean $ensure_create_a_pagefile_is_set_to_administrators = true,
  Boolean $ensure_create_a_token_object_is_set_to_no_one = true,
  Boolean $ensure_create_global_objects_is_set_to_administrators_local_service_network_service_service = true,
  Boolean $ensure_create_permanent_shared_objects_is_set_to_no_one = true,
  Boolean $configure_create_symbolic_links = true,
  Boolean $ensure_debug_programs_is_set_to_administrators = true,
  Boolean $configure_deny_access_to_this_computer_from_the_network = true,
  Boolean $ensure_deny_log_on_as_a_batch_job_to_include_guests = true,
  Boolean $ensure_deny_log_on_as_a_service_to_include_guests = true,
  Boolean $ensure_deny_log_on_locally_to_include_guests = true,
  Boolean $ensure_deny_log_on_through_remote_desktop_services_to_include_guests_local_account = true,
  Boolean $configure_enable_computer_and_user_acounts_to_be_trusted_for_delegation = true,
  Boolean $ensure_force_shutdown_from_a_remote_system_is_set_to_administrators = true,
  Boolean $ensure_generate_security_audits_is_set_to_local_service_network_service = true,
  Boolean $configure_impersonate_a_client_after_authentication = true,
  Boolean $ensure_increase_scheduling_priority_is_set_to_administrators = true,
  Boolean $ensure_load_and_unload_device_drivers_is_set_to_administrators = true,
  Boolean $ensure_lock_pages_in_menory_is_set_to_no_one = true,
  Boolean $ensure_log_on_as_a_batch_job_is_set_to_administrators = false, #LEVEL 2
  Boolean $configure_manage_auditing_and_security_log = true,
  Boolean $ensure_modify_an_object_label_is_set_to_no_one = true,
  Boolean $ensure_modify_firmware_environment_values_is_set_to_administrators = true,
  Boolean $ensure_perform_volume_maintenance_tasks_is_set_to_administrators = true,
  Boolean $ensure_profile_single_process_is_set_to_administrators = true,
  Boolean $ensure_profile_system_performance_is_set_to_administrators_nt_service_wdiservicehost = true,
  Boolean $ensure_replace_a_process_level_token_is_set_to_local_service_network_service = true,
  Boolean $ensure_restore_files_and_directories_is_set_to_administrators = true,
  Boolean $ensure_shut_down_the_system_is_set_to_administrators = true,
  Boolean $ensure_synchronize_directory_service_data_is_set_to_no_one = true,
  Boolean $ensure_take_ownership_of_files_or_other_objects_is_set_to_administrators = true,
  #2.3
  Boolean $ensure_accounts_administrator_account_status_is_set_to_disabled = true,
  Boolean $ensure_accounts_guest_account_status_is_set_to_disabled = true,
  Boolean $ensure_accounts_limit_local_account_use_of_blank_password_to_console_logon_only_is_set_to_enabled = true,
  Boolean $configure_accounts_rename_administrator_account = true,
  Boolean $configure_accounts_rename_guest_account = true,
  Boolean $ensure_audit_force_audit_policy_subcategory_settings_to_override_audit_policy_category_settings = true,
  Boolean $ensure_audit_shut_down_system_immediately_if_unable_to_log_security_audits_is_set_to_disabled = true,
  Boolean $ensure_devices_allowed_to_format_and_eject_removable_media_is_set_to_administrators = true,
  Boolean $ensure_devices_prevent_users_from_installing_printer_drivers_is_set_to_enabled = true,
  Boolean $ensure_domain_controller_allow_server_operators_to_schedule_tasks_is_set_to_disabled = true,
  Boolean $ensure_domain_controller_ldap_server_signing_requirements_is_set_to_require_signing = true,
  Boolean $ensure_domain_controller_refuse_machine_account_password_changes_is_set_to_disabled = true,
  Boolean $ensure_domain_member_digitally_encrypt_or_sign_secure_channel_data_always_is_set_to_enabled = true,
  Boolean $ensure_domain_member_digitally_encrypt_or_sign_secure_channel_data_when_possible_is_set_to_enabled = true,
  Boolean $ensure_domain_member_digitally_sign_secure_channel_data_when_possible_is_set_to_enabled = true,
  Boolean $ensure_domain_member_disable_machine_account_password_changes_is_set_to_disabled = true,
  Boolean $ensure_domain_member_maximum_machine_account_password_age_is_set_to_30_or_fewer_days_but_not_0 = true,
  Boolean $ensure_domain_member_require_strong_session_key_windows_2000_or_later_is_set_to_enabled = true,
  Boolean $ensure_interactive_logon_do_not_display_last_user_name_is_set_to_enabled = true,
  Boolean $ensure_interactive_logon_do_not_require_ctrl_alt_del_is_set_to_disabled = true,
  Boolean $configure_interactive_logon_message_text_for_users_attempting_to_log_on = true,
  Boolean $configure_interactive_logon_message_title_for_users_attempting_to_log_on = true,
  Boolean $ensure_interactive_logon_number_of_previous_logons_to_cache_is_set_to_4_or_fewer_logons = false, #LEVEL 2
  Boolean $ensure_interactive_logon_prompt_user_to_change_password_before_expiration_is_set_to_between_5_and_14_days = true,
  Boolean $ensure_interactive_logon_require_domain_controller_authentication_to_unlock_workstation_is_set_to_enabled = true,
  Boolean $ensure_interactive_logon_smart_card_removal_behavior_is_set_to_lock_workstation_or_higher = true,
  Boolean $ensure_microsoft_network_client_digitally_sign_communications_always_is_set_to_enabled = true,
  Boolean $ensure_microsoft_network_client_digitally_sign_communications_if_server_agrees_is_set_to_enabled = true,
  Boolean $ensure_microsoft_network_client_send_unencrypted_password_to_third_party_smb_servers_is_set_to_disabled = true,
  Boolean $ensure_microsoft_network_server_idle_time_required_before_suspending_session_is_set_to_15_or_fewer_minutes = true,
  Boolean $ensure_microsoft_network_server_digitally_sign_communications_always_is_set_to_enabled = true,
  Boolean $ensure_microsoft_network_server_digitally_sign_communications_if_client_agrees_is_set_to_enabled = true,
  Boolean $ensure_microsoft_network_server_disconnect_clients_when_logon_hours_expire_is_set_to_enabled = true,
  Boolean $ensure_microsoft_network_server_spn_target_name_validation_level_is_set_to_accept_if_provided_by_client = true,
  Boolean $ensure_network_access_allow_anonymous_sid_name_tranlation_is_set_to_disabled = true,
  Boolean $ensure_network_access_do_not_allow_anonymous_enumeration_of_sam_accounts_is_set_to_enabled = true,
  Boolean $ensure_network_access_do_not_allow_anonymous_enumeration_of_sam_accounts_and_shared_is_set_to_enabled = true,
  Boolean $ensure_network_access_do_not_allow_storage_of_password_and_credentials_for_authentication_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_network_access_let_everyone_permissions_apply_to_anonymous_users_is_set_to_disabled = true,
  Boolean $configure_network_access_named_pipes_that_can_be_accessed_anonymously = true,
  Boolean $configure_network_access_remotely_accessible_registry_paths = true,
  Boolean $configure_network_access_remotely_accessible_registry_paths_and_sub_paths = true,
  Boolean $ensure_network_access_restrict_anonymous_access_to_named_pipes_and_shares_is_set_to_enabled = true,
  Boolean $ensure_network_access_shares_that_can_be_accessed_anonymously_is_set_to_none = true,
  Boolean $ensure_network_access_sharing_and_security_model_for_local_accounts_is_set_to_classic = true,
  Boolean $ensure_network_security_allow_local_system_to_use_computer_identity_for_ntlm_is_set_to_enabled = true,
  Boolean $ensure_network_security_allow_localsystem_null_session_fallback_is_set_to_disabled = true,
  Boolean $ensure_network_security_allow_pku2u_authentication_requests_to_use_online_identities_is_set_to_disabled = true,
  Boolean $ensure_network_security_configure_encryption_types_allow_for_kerberos = true,
  Boolean $ensure_network_security_do_not_store_lan_manager_hash_value_on_next_password_change_is_set_to_enabled = true,
  Boolean $ensure_network_security_force_logoff_when_logon_hours_expire_is_set_to_enabled = true,
  Boolean $ensure_network_security_lan_manager_authentication_level_is_set_to_send_ntlmv2_response_only = true,
  Boolean $ensure_network_security_ldap_client_signing_requirements_is_set_to_negotiate_signing = true,
  Boolean $ensure_network_security_minimum_session_security_for_ntlm_ssp_based_clients = true,
  Boolean $ensure_network_security_minimum_session_security_for_ntlm_ssp_based_servers = true,
  Boolean $ensure_shutdown_allow_system_to_be_shutdown_without_having_to_logon_is_set_to_disabled = true,
  Boolean $ensure_system_objects_require_case_insensitivity_for_non_windows_subsystems_is_enabled = true,
  Boolean $ensure_system_objects_strengthen_default_permissions_of_internal_system_objects_is_enabled = true,
  Boolean $ensure_system_settings_optional_subsystems_is_set_to_defined_blank = true,
  Boolean $ensure_user_account_control_admin_approval_mode_for_the_admin_account_is_enabled = true,
  Boolean $ensure_user_account_control_allow_uiaccess_applications_to_prompt_for_elevation_is_disabled = true,
  Boolean $ensure_user_account_control_behavior_of_the_elevation_prompt_for_administrators_in_admin_approval_mode = true,
  Boolean $ensure_user_account_control_behavior_of_the_elevation_prompt_for_standard_users = true,
  Boolean $ensure_user_account_control_detect_application_installations_and_prompt_for_elevation_is_enabled = true,
  Boolean $ensure_user_account_control_only_elevate_uiaccess_applications_that_are_installed_in_secure_locations = true,
  Boolean $ensure_user_account_control_run_all_administrators_in_admin_approval_mode_is_enabled = true,
  Boolean $ensure_user_account_control_switch_to_the_secure_desktop_when_prompting_for_elevation_is_enabled = true,
  Boolean $ensure_user_account_control_virtualize_file_and_registry_write_failures_to_per_user_location_is_enabled = true,
  #9
  Boolean $ensure_windows_firewall_domain_firewall_state_is_set_to_on_recommended = true,
  Boolean $ensure_windows_firewall_domain_inbound_connections_is_set_to_block_default = true,
  Boolean $ensure_windows_firewall_domain_outbound_connections_is_set_to_allow_default = true,
  Boolean $ensure_windows_firewall_domain_settings_display_a_notification_is_set_to_no = true,
  Boolean $ensure_windows_firewall_domain_settings_apply_local_firewall_rules_is_set_to_yes_default = true,
  Boolean $ensure_windows_firewall_domain_settings_apply_local_connection_security_rules_is_yes = true,
  Boolean $ensure_windows_firewall_domain_logging_name_is_set_to_domainfwlog = true,
  Boolean $ensure_windows_firewall_domain_logging_size_limit_is_16384_or_greater = true,
  Boolean $ensure_windows_firewall_domain_logging_log_dropped_packets_is_set_to_yes = true,
  Boolean $ensure_windows_firewall_domain_logging_log_successful_connections_is_set_to_yes = true,
  Boolean $ensure_windows_firewall_private_firewall_state_is_set_to_on_recommended = true,
  Boolean $ensure_windows_firewall_private_inbound_connections_is_set_to_block_default = true,
  Boolean $ensure_windows_firewall_private_outbound_connections_is_set_to_allow_default = true,
  Boolean $ensure_windows_firewall_private_settings_display_a_notification_is_set_to_no = true,
  Boolean $ensure_windows_firewall_private_settings_apply_local_firewall_rules_is_set_to_yes_default = true,
  Boolean $ensure_windows_firewall_private_settings_apply_local_connection_security_rules_is_set_to_yes_default = true,
  Boolean $ensure_windows_firewall_private_logging_name_is_set_to_privatefwlog = true,
  Boolean $ensure_windows_firewall_private_logging_size_limit_is_set_to_16384_or_greater = true,
  Boolean $ensure_windows_firewall_private_logging_log_dropped_packets_is_set_to_yes = true,
  Boolean $ensure_windows_firewall_private_logging_log_successful_connections_is_set_to_yes = true,
  Boolean $ensure_windows_firewall_public_firewall_state_is_set_to_on_recommended = true,
  Boolean $ensure_windows_firewall_public_inbound_connections_is_set_to_block_default = true,
  Boolean $ensure_windows_firewall_public_outbound_connections_is_set_to_allow_default = true,
  Boolean $ensure_windows_firewall_public_settings_display_a_notification_is_set_to_yes = true,
  Boolean $ensure_windows_firewall_public_settings_apply_local_firewall_rules_is_set_to_no = true,
  Boolean $ensure_windows_firewall_public_settings_apply_local_connection_security_rules_is_set_to_no = true,
  Boolean $ensure_windows_firewall_public_logging_name_is_set_to_publicfwlog = true,
  Boolean $ensure_windows_firewall_public_logging_size_limit_is_set_to_16384_or_greater = true,
  Boolean $ensure_windows_firewall_public_logging_log_dropped_packets_is_set_to_yes = true,
  Boolean $ensure_windows_firewall_public_logging_log_successful_connections_is_set_to_yes = true,
  #17
  Boolean $ensure_audit_credential_validation_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_application_group_management_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_computer_account_management_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_distribution_group_management_is_set_to_success_and_failure = true, #DC ONLY
  Boolean $ensure_audit_other_account_management_events_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_security_group_management_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_user_account_management_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_process_creation_is_set_to_success = true,
  Boolean $ensure_audit_directory_service_access_is_set_to_success_and_failure = true, #DC ONLY
  Boolean $ensure_audit_directory_service_changes_is_set_to_success_and_failure = true, #DC ONLY
  Boolean $ensure_audit_account_lockout_is_set_to_success = true,
  Boolean $ensure_audit_logoff_is_set_to_success = true,
  Boolean $ensure_audit_logon_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_other_logon_logoff_events_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_special_logon_is_set_to_success = true,
  Boolean $ensure_audit_audit_policy_change_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_authentication_policy_change_is_set_to_success = true,
  Boolean $ensure_audit_sensitive_privilege_use_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_ipsec_driver_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_other_system_events_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_security_state_change_is_set_to_success = true,
  Boolean $ensure_audit_security_system_extension_is_set_to_success_and_failure = true,
  Boolean $ensure_audit_system_integrity_is_set_to_success_and_failure = true,
  #18.2
  Boolean $ensure_laps_admpwd_gpo_extension_cse_is_installed = true, #MS ONLY
  Boolean $ensure_do_not_allow_password_expiration_time_longer_than_required_by_policy_is_set_to_enabled = true,
  Boolean $ensure_enable_local_admin_password_management_is_set_to_enabled = true,
  Boolean $ensure_password_settings_password_complexity_is_set_to_enabled_large_letters_small_letters_numbers_special_characters = true,
  Boolean $ensure_password_settings_password_length_is_set_to_enabled_15_or_more = true,
  Boolean $ensure_password_settings_password_age_days_is_set_to_enabled_30_or_fewer = true,
  #18.3
  Boolean $ensure_mss_autoadminlogon_enable_automatic_logon_not_recommended_is_set_to_disabled = true,
  Boolean $ensure_mss_disableipsourcerouting_ipv6_ip_source_routing_protection_level_is_set_to_enabled_highest_protection_source_routing_disabled = true,
  Boolean $ensure_mss_disableipsourcerouting_ip_source_routing_protection_level_is_set_to_enabled_highest_protection_source_routing_disabled = true,
  Boolean $ensure_mss_enableicmpredirect_allow_icmp_redirects_to_override_ospf_generated_routes_is_set_to_disabled = true,
  Boolean $ensure_mss_keepalivetime_how_often_keepalive_packets_are_sent_in_millisecondsis_set_to_enabled_300000_or_5_minutes = false, #LEVEL 2
  Boolean $ensure_mss_nonamereleaseondemand_allow_the_computer_to_ignore_netbios_name_release_requests_except_from_wins_server_is_enabled = true,
  Boolean $ensure_mss_performrouterdiscovery_allow_irdp_to_detect_and_configure_default_gateway_addresses_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_mss_safediisearchmode_enable_safe_dll_search_mode_is_set_to_enabled = true,
  Boolean $ensure_mss_screensavergraceperiod_the_time_in_seconds_before_the_screen_saver_grace_period_expired_is_set_to_enabled_5_or_fewer = true,
  Boolean $ensure_mss_tcpmaxdataretranmissions_ipv6_how_many_times_unacknowledged_data_is_retransmitted_is_set_to_enabled_3 = true,
  Boolean $ensure_mss_tcpmaxdataretransmissions_how_many_times_unacknowledged_data_is_retransmitted_is_set_to_enabled_3 = true,
  Boolean $ensure_mss_warninglevel_percentage_threshold_for_the_security_event_log_is_set_to_enabled_90_or_less = true,
  #18.4 - 18.6
  Boolean $ensure_turn_on_mapper_io_lltdio_driver_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_turn_on_responder_rspndr_driver_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_turn_off_microsoft_peer_to_peer_networking_services_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_prohibit_installation_and_configuration_of_network_bridge_on_your_dns_domain_network_is_set_to_enabled = true,
  Boolean $ensure_require_domain_users_to_elevate_when_setting_a_networks_location_is_set_to_enabled = true,
  Boolean $ensure_hardened_unc_paths_is_set_to_enabled_with_require_mutual_authentication_and_require_integrity_for_all_netlogon_and_sysvol_shares = true,
  Boolean $disable_ipv6_ensure_tcpip6_parameter_disabledcomponents_is_set_to_0xff255 = false, #LEVEL 2
  Boolean $ensure_configuration_of_wireless_settings_using_windows_connect_now_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_prohibit_access_of_the_windows_connect_now_wizards_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_apply_uac_restrictions_to_local_accounts_on_network_logons_is_set_to_enabled = true,
  Boolean $ensure_wdigest_authentication_is_set_to_disabled = true,
  #18.8
  Boolean $ensure_include_command_line_in_process_creation_events_is_set_to_disabled = true,
  Boolean $ensure_allow_remote_access_to_the_plug_and_play_interface_is_set_to_disabled = true,
  Boolean $ensure_configure_registry_policy_processing_do_not_apply_during_periodic_background_processing_is_set_to_enabled_false = true,
  Boolean $ensure_configure_registry_policy_processing_process_even_if_the_group_policy_objects_have_not_changed_is_set_to_enabled_true = true,
  Boolean $ensure_turn_off_background_refresh_of_group_policy_is_set_to_disabled = true,
  Boolean $ensure_turn_off_downloading_of_print_drivers_over_http_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_handwriting_personalization_data_sharing_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_handwriting_recognition_error_reporting_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_internet_connection_wizard_if_url_connection_is_referring_to_microsoftcom_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_internet_download_for_web_publishing_and_online_ordering_wizards_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_internet_file_association_service_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_printing_over_http_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_registration_if_url_connection_is_referring_to_microsoftcom_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_search_companion_content_file_updates_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_the_order_prints_picture_task_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_the_publish_to_web_task_for_files_and_folders_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_the_windows_messenger_customer_experience_improvement_program_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_windows_customer_experience_improvement_program_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_turn_off_windows_error_reporting_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_always_use_classic_logon = true, #MS ONLY
  Boolean $ensure_require_a_password_when_a_computer_wakes_on_battery_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_require_a_password_when_a_computer_wakes_plugged_in_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_configure_offer_remote_assistance_is_set_to_disabled = true,
  Boolean $ensure_configure_solicited_remote_assistance_is_set_to_disabled = true,
  Boolean $ensure_enable_rpc_endpoint_mapper_client_authentication_is_set_to_enabled = true, #MS ONLY
  Boolean $ensure_restrict_unauthenticated_rpc_clients_is_set_to_enabled_authenticatied = false, #LEVEL 2 MS ONLY
  Boolean $ensure_microsoft_support_diagnostic_tool_turn_on_msdt_interactive_communication_with_support_provider_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_enable_disable_perftrack_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_enable_windows_ntp_client_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_enable_windows_ntp_server_is_set_to_disabled = false, #LEVEL 2 MS ONLY
  #18.9
  Boolean $ensure_disallow_autoplay_for_non_volume_devices_is_set_to_enabled = true,
  Boolean $ensure_set_the_default_behavior_for_autorun_is_set_to_enabled_do_not_execute_any_autorun_commands = true,
  Boolean $ensure_turn_off_autoplay_is_set_to_enabled_all_drives = true,
  Boolean $ensure_do_not_display_the_password_reveal_button_is_set_to_enabled = true,
  Boolean $ensure_enumerate_administrator_accounts_on_elevation_is_set_to_disabled = true,
  Boolean $ensure_turn_off_desktop_gadgets_is_set_to_enabled = true,
  Boolean $ensure_turn_off_user_installed_desktop_gadgets_is_set_to_enabled = true,
  Boolean $ensure_emet_551_or_higher_is_installed = true,
  Boolean $ensure_default_action_and_mitigation_settings_is_set_to_enabled_plus_subsettings = true,
  Boolean $ensure_default_protections_for_internet_explorer_is_set_to_enabled = true,
  Boolean $ensure_default_protections_for_popular_software_is_set_to_enabled = true,
  Boolean $ensure_default_protections_for_recommended_software_is_set_to_enabled = true,
  Boolean $ensure_system_aslr_is_set_to_enabled_application_opt_in = true,
  Boolean $ensure_system_dep_is_set_to_enabled_application_opt_out = true,
  Boolean $ensure_system_sehop_is_set_to_enabled_application_opt_out = true,
  Boolean $ensure_application_control_event_log_behavior_when_the_log_file_reaches_its_maximum_size_is_set_to_disabled = true,
  Boolean $ensure_application_specify_the_maximum_log_file_size_kb_is_set_to_enabled_32768_or_greater = true,
  Boolean $ensure_security_control_event_log_behavior_when_the_log_file_reaches_its_maximum_size_is_set_to_disabled = true,
  Boolean $ensure_security_specify_the_maximum_log_file_size_kb_is_set_to_enabled_196608_or_greater = true,
  Boolean $ensure_setup_control_event_log_behavior_when_the_log_reaches_its_maximum_size_is_set_to_disabled = true,
  Boolean $ensure_setup_specify_the_maximum_log_file_size_kb_is_set_to_enabled_32768_or_greater = true,
  Boolean $ensure_system_control_event_log_behavior_when_the_log_file_reaches_its_maximum_size_is_set_to_disabled = true,
  Boolean $ensure_system_specify_the_maximum_log_file_size_kb_is_set_to_enabled_32768_or_greater = true,
  Boolean $ensure_turn_off_data_execution_prevention_for_explorer_is_set_to_disabled = true,
  Boolean $ensure_turn_off_heap_termination_on_corruption_is_set_to_disabled = true,
  Boolean $ensure_turn_off_shell_protocol_proteted_mode_is_set_to_disabled = true,
  Boolean $ensure_turn_off_location_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_prevent_the_usage_of_onedrive_for_filestorage_is_set_to_enabled = true,
  Boolean $ensure_prevent_the_usage_of_onedrive_for_file_storage_on_windows_81_is_set_to_enabled = true,
  Boolean $ensure_do_not_allow_passwords_to_be_saved_is_set_to_enabled = true,
  Boolean $ensure_restrict_remote_desktop_services_users_to_a_single_remote_desktop_services_session_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_do_not_allow_com_port_redirection_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_do_not_allow_drive_redirection_is_set_to_enabled = true,
  Boolean $ensure_do_not_allow_lpt_port_redirection_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_do_not_allow_supported_plug_and_play_device_redirection_is_set_to_enabled = false, #LEVEL 2
  Boolean $ensure_always_prompt_for_password_upon_connection_is_set_to_enabled = true,
  Boolean $ensure_require_secure_rpc_communication_is_set_to_enabled = true,
  Boolean $ensure_set_client_connection_encryption_level_is_set_to_enabled_high_level = true,
  Boolean $ensure_set_time_limit_for_active_but_idle_remote_desktop_services_sessions_is_set_to_enabled_15_minutes_or_less = false, #LEVEL 2
  Boolean $ensure_set_time_limit_for_disconnected_sessions_is_set_to_enabled_1_minute = false, #LEVEL 2
  Boolean $ensure_do_not_delete_temp_folders_upon_exit_is_set_to_disabled = true,
  Boolean $ensure_do_not_use_temporary_folders_per_session_is_set_to_disabled = true,
  Boolean $ensure_prevent_downloading_of_enclosures_is_set_to_enabled = true,
  Boolean $ensure_allow_indexing_of_encrypted_files_is_set_to_disabled = true,
  Boolean $ensure_join_microsoft_maps_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_configure_default_consent_is_set_to_enabled_always_ask_before_sending_data = true,
  Boolean $ensure_allow_user_control_over_installs_is_set_to_disabled = true,
  Boolean $ensure_always_install_with_elevated_privileges_is_set_to_disabled = true,
  Boolean $ensure_prevent_internet_explorer_security_prompt_for_windows_installer_scripts_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_turn_on_powershell_script_block_logging_is_set_to_disabled = true,
  Boolean $ensure_turn_on_powershell_transcription_is_set_to_disabled = true,
  Boolean $ensure_allow_basic_authentication_is_set_to_disabled = true,
  Boolean $ensure_allow_unencrypted_traffic_is_set_to_disabled = true,
  Boolean $ensure_disallow_digest_authentication_is_set_to_enabled = true,
  Boolean $ensure_allow_basic_authentication_is_set_to_disabled = true,
  Boolean $ensure_allow_remote_server_management_through_winrm_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_allow_unencrypted_traffic_is_set_to_disabled = true,
  Boolean $ensure_disallow_winrm_from_storing_runas_credentials_is_set_to_enabled = true,
  Boolean $ensure_allow_remote_shell_access_is_set_to_disabled = false, #LEVEL 2
  Boolean $ensure_configure_automatic_updates_is_set_to_enabled = true,
  Boolean $ensure_configure_automatic_updates_scheduled_install_day_is_set_to_0_every_day = true,
  Boolean $ensure_do_not_adjust_default_option_to_install_updates_and_shut_down_in_shut_down_windows_dialog_box_is_set_to_disabled = true,
  Boolean $ensure_do_not_display_install_updates_and_shut_down_option_in_shut_down_windows_dialog_box_is_set_to_disabled = true,
  Boolean $ensure_no_auto_restart_with_logged_on_users_for_scheduled_automatic_updates_installations_is_set_to_disabled = true,
  Boolean $ensure_reschedule_automatic_updates_scheduled_installations_is_set_to_enabled_1_minute = true,
  ) {

  include harden_windows_server::configure
}
