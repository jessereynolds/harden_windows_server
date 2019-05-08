# harden_windows_server autogenerated by os_compliance
# number of controls: 319
class harden_windows_server (
  Boolean $ensure_enforce_password_history_is_set_to_24_or_more_passwords = false,
  Boolean $ensure_maximum_password_age_is_set_to_60_or_fewer_days_but_not_0 = false,
  Boolean $ensure_minimum_password_age_is_set_to_1_or_more_days = false,
  Boolean $ensure_minimum_password_length_is_set_to_14_or_more_characters = false,
  Boolean $ensure_password_must_meet_complexity_requirements_is_set_to_enabled = false,
  Boolean $ensure_store_passwords_using_reversible_encryption_is_set_to_disabled = false,
  Boolean $ensure_account_lockout_duration_is_set_to_15_or_more_minutes = false,
  Boolean $ensure_account_lockout_threshold_is_set_to_10_or_fewer_invalid_logon_attempts_but_not_0 = false,
  Boolean $ensure_reset_account_lockout_counter_after_is_set_to_15_or_more_minutes = false,
  Boolean $ensure_access_credential_manager_as_a_trusted_caller_is_set_to_no_one = false,
  Boolean $configure_access_this_computer_from_the_network = false,
  Boolean $ensure_act_as_part_of_the_operating_system_is_set_to_no_one = false,
  Boolean $ensure_adjust_memory_quotas_for_a_process_is_set_to_administrators_local_service_network_service = false,
  Boolean $ensure_allow_log_on_locally_is_set_to_administrators = false,
  Boolean $configure_allow_log_on_through_remote_desktop_services = false,
  Boolean $ensure_back_up_files_and_directories_is_set_to_administrators = false,
  Boolean $ensure_change_the_system_time_is_set_to_administrators_local_service = false,
  Boolean $ensure_change_the_time_zone_is_set_to_administrators_local_service = false,
  Boolean $ensure_create_a_pagefile_is_set_to_administrators = false,
  Boolean $ensure_create_a_token_object_is_set_to_no_one = false,
  Boolean $ensure_create_global_objects_is_set_to_administrators_local_service_network_service_service = false,
  Boolean $ensure_create_permanent_shared_objects_is_set_to_no_one = false,
  Boolean $configure_create_symbolic_links = false,
  Boolean $ensure_debug_programs_is_set_to_administrators = false,
  Boolean $configure_deny_access_to_this_computer_from_the_network = false,
  Boolean $ensure_deny_log_on_as_a_batch_job_to_include_guests = false,
  Boolean $ensure_deny_log_on_as_a_service_to_include_guests = false,
  Boolean $ensure_deny_log_on_locally_to_include_guests = false,
  Boolean $configure_deny_log_on_through_remote_desktop_services = false,
  Boolean $configure_enable_computer_and_user_accounts_to_be_trusted_for_delegation = false,
  Boolean $ensure_force_shutdown_from_a_remote_system_is_set_to_administrators = false,
  Boolean $ensure_generate_security_audits_is_set_to_local_service_network_service = false,
  Boolean $configure_impersonate_a_client_after_authentication = false,
  Boolean $ensure_increase_scheduling_priority_is_set_to_administrators = false,
  Boolean $ensure_load_and_unload_device_drivers_is_set_to_administrators = false,
  Boolean $ensure_lock_pages_in_memory_is_set_to_no_one = false,
  Boolean $configure_manage_auditing_and_security_log = false,
  Boolean $ensure_modify_an_object_label_is_set_to_no_one = false,
  Boolean $ensure_modify_firmware_environment_values_is_set_to_administrators = false,
  Boolean $ensure_perform_volume_maintenance_tasks_is_set_to_administrators = false,
  Boolean $ensure_profile_single_process_is_set_to_administrators = false,
  Boolean $ensure_profile_system_performance_is_set_to_administrators_nt_service_wdiservicehost = false,
  Boolean $ensure_replace_a_process_level_token_is_set_to_local_service_network_service = false,
  Boolean $ensure_restore_files_and_directories_is_set_to_administrators = false,
  Boolean $ensure_shut_down_the_system_is_set_to_administrators = false,
  Boolean $ensure_take_ownership_of_files_or_other_objects_is_set_to_administrators = false,
  Boolean $ensure_accounts_administrator_account_status_is_set_to_disabled_ms_only = false,
  Boolean $ensure_accounts_guest_account_status_is_set_to_disabled_ms_only = false,
  Boolean $ensure_accounts_limit_local_account_use_of_blank_passwords_to_console_logon_only_is_set_to_enabled = false,
  Boolean $configure_accounts_rename_administrator_account = false,
  Boolean $configure_accounts_rename_guest_account = false,
  Boolean $ensure_audit_force_audit_policy_subcategory_settings_windows_vista_or_later_to_override_audit_policy_category_settings_is_set_to_enabled = false,
  Boolean $ensure_audit_shut_down_system_immediately_if_unable_to_log_security_audits_is_set_to_disabled = false,
  Boolean $ensure_devices_allowed_to_format_and_eject_removable_media_is_set_to_administrators = false,
  Boolean $ensure_devices_prevent_users_from_installing_printer_drivers_is_set_to_enabled = false,
  Boolean $ensure_domain_member_digitally_encrypt_or_sign_secure_channel_data_always_is_set_to_enabled = false,
  Boolean $ensure_domain_member_digitally_encrypt_secure_channel_data_when_possible_is_set_to_enabled = false,
  Boolean $ensure_domain_member_digitally_sign_secure_channel_data_when_possible_is_set_to_enabled = false,
  Boolean $ensure_domain_member_disable_machine_account_password_changes_is_set_to_disabled = false,
  Boolean $ensure_domain_member_maximum_machine_account_password_age_is_set_to_30_or_fewer_days_but_not_0 = false,
  Boolean $ensure_domain_member_require_strong_windows_2000_or_later_session_key_is_set_to_enabled = false,
  Boolean $ensure_interactive_logon_do_not_display_last_user_name_is_set_to_enabled = false,
  Boolean $ensure_interactive_logon_do_not_require_ctrlaltdel_is_set_to_disabled = false,
  Boolean $configure_interactive_logon_message_text_for_users_attempting_to_log_on = false,
  Boolean $configure_interactive_logon_message_title_for_users_attempting_to_log_on = false,
  Boolean $ensure_interactive_logon_prompt_user_to_change_password_before_expiration_is_set_to_between_5_and_14_days = false,
  Boolean $ensure_interactive_logon_require_domain_controller_authentication_to_unlock_workstation_is_set_to_enabled_ms_only = false,
  Boolean $ensure_interactive_logon_smart_card_removal_behavior_is_set_to_lock_workstation_or_higher = false,
  Boolean $ensure_microsoft_network_client_digitally_sign_communications_always_is_set_to_enabled = false,
  Boolean $ensure_microsoft_network_client_digitally_sign_communications_if_server_agrees_is_set_to_enabled = false,
  Boolean $ensure_microsoft_network_client_send_unencrypted_password_to_third_party_smb_servers_is_set_to_disabled = false,
  Boolean $ensure_microsoft_network_server_amount_of_idle_time_required_before_suspending_session_is_set_to_15_or_fewer_minutes_but_not_0 = false,
  Boolean $ensure_microsoft_network_server_digitally_sign_communications_always_is_set_to_enabled = false,
  Boolean $ensure_microsoft_network_server_digitally_sign_communications_if_client_agrees_is_set_to_enabled = false,
  Boolean $ensure_microsoft_network_server_disconnect_clients_when_logon_hours_expire_is_set_to_enabled = false,
  Boolean $ensure_microsoft_network_server_server_spn_target_name_validation_level_is_set_to_accept_if_provided_by_client_or_higher_ms_only = false,
  Boolean $ensure_network_access_allow_anonymous_sidname_translation_is_set_to_disabled = false,
  Boolean $ensure_network_access_do_not_allow_anonymous_enumeration_of_sam_accounts_is_set_to_enabled_ms_only = false,
  Boolean $ensure_network_access_do_not_allow_anonymous_enumeration_of_sam_accounts_and_shares_is_set_to_enabled_ms_only = false,
  Boolean $ensure_network_access_let_everyone_permissions_apply_to_anonymous_users_is_set_to_disabled = false,
  Boolean $configure_network_access_named_pipes_that_can_be_accessed_anonymously = false,
  Boolean $configure_network_access_remotely_accessible_registry_paths = false,
  Boolean $configure_network_access_remotely_accessible_registry_paths_and_sub_paths = false,
  Boolean $ensure_network_access_restrict_anonymous_access_to_named_pipes_and_shares_is_set_to_enabled = false,
  Boolean $ensure_network_access_shares_that_can_be_accessed_anonymously_is_set_to_none = false,
  Boolean $ensure_network_access_sharing_and_security_model_for_local_accounts_is_set_to_classic_local_users_authenticate_as_themselves = false,
  Boolean $ensure_network_security_allow_local_system_to_use_computer_identity_for_ntlm_is_set_to_enabled = false,
  Boolean $ensure_network_security_allow_localsystem_null_session_fallback_is_set_to_disabled = false,
  Boolean $ensure_network_security_allow_pku2u_authentication_requests_to_this_computer_to_use_online_identities_is_set_to_disabled = false,
  Boolean $ensure_network_security_configure_encryption_types_allowed_for_kerberos_is_set_to_aes128_hmac_sha1_aes256_hmac_sha1_future_encryption_types = false,
  Boolean $ensure_network_security_do_not_store_lan_manager_hash_value_on_next_password_change_is_set_to_enabled = false,
  Boolean $ensure_network_security_force_logoff_when_logon_hours_expire_is_set_to_enabled = false,
  Boolean $ensure_network_security_lan_manager_authentication_level_is_set_to_send_ntlmv2_response_only_refuse_lm_ntlm = false,
  Boolean $ensure_network_security_ldap_client_signing_requirements_is_set_to_negotiate_signing_or_higher = false,
  Boolean $ensure_network_security_minimum_session_security_for_ntlm_ssp_based_including_secure_rpc_clients_is_set_to_require_ntlmv2_session_security_require_128_bit_encryption = false,
  Boolean $ensure_network_security_minimum_session_security_for_ntlm_ssp_based_including_secure_rpc_servers_is_set_to_require_ntlmv2_session_security_require_128_bit_encryption = false,
  Boolean $ensure_shutdown_allow_system_to_be_shut_down_without_having_to_log_on_is_set_to_disabled = false,
  Boolean $ensure_system_objects_require_case_insensitivity_for_non_windows_subsystems_is_set_to_enabled = false,
  Boolean $ensure_system_objects_strengthen_default_permissions_of_internal_system_objects_eg_symbolic_links_is_set_to_enabled = false,
  Boolean $ensure_system_settings_optional_subsystems_is_set_to_defined_blank = false,
  Boolean $ensure_user_account_control_admin_approval_mode_for_the_built_in_administrator_account_is_set_to_enabled = false,
  Boolean $ensure_user_account_control_allow_uiaccess_applications_to_prompt_for_elevation_without_using_the_secure_desktop_is_set_to_disabled = false,
  Boolean $ensure_user_account_control_behavior_of_the_elevation_prompt_for_administrators_in_admin_approval_mode_is_set_to_prompt_for_consent_on_the_secure_desktop = false,
  Boolean $ensure_user_account_control_behavior_of_the_elevation_prompt_for_standard_users_is_set_to_automatically_deny_elevation_requests = false,
  Boolean $ensure_user_account_control_detect_application_installations_and_prompt_for_elevation_is_set_to_enabled = false,
  Boolean $ensure_user_account_control_only_elevate_uiaccess_applications_that_are_installed_in_secure_locations_is_set_to_enabled = false,
  Boolean $ensure_user_account_control_run_all_administrators_in_admin_approval_mode_is_set_to_enabled = false,
  Boolean $ensure_user_account_control_switch_to_the_secure_desktop_when_prompting_for_elevation_is_set_to_enabled = false,
  Boolean $ensure_user_account_control_virtualize_file_and_registry_write_failures_to_per_user_locations_is_set_to_enabled = false,
  Boolean $ensure_windows_firewall_domain_firewall_state_is_set_to_on_recommended = false,
  Boolean $ensure_windows_firewall_domain_inbound_connections_is_set_to_block_default = false,
  Boolean $ensure_windows_firewall_domain_outbound_connections_is_set_to_allow_default = false,
  Boolean $ensure_windows_firewall_domain_settings_display_a_notification_is_set_to_no = false,
  Boolean $ensure_windows_firewall_domain_logging_name_is_set_to_systemroot_system32_logfiles_firewall_domainfwlog = false,
  Boolean $ensure_windows_firewall_domain_logging_size_limit_kb_is_set_to_16384_kb_or_greater = false,
  Boolean $ensure_windows_firewall_domain_logging_log_dropped_packets_is_set_to_yes = false,
  Boolean $ensure_windows_firewall_domain_logging_log_successful_connections_is_set_to_yes = false,
  Boolean $ensure_windows_firewall_private_firewall_state_is_set_to_on_recommended = false,
  Boolean $ensure_windows_firewall_private_inbound_connections_is_set_to_block_default = false,
  Boolean $ensure_windows_firewall_private_outbound_connections_is_set_to_allow_default = false,
  Boolean $ensure_windows_firewall_private_settings_display_a_notification_is_set_to_no = false,
  Boolean $ensure_windows_firewall_private_logging_name_is_set_to_systemroot_system32_logfiles_firewall_privatefwlog = false,
  Boolean $ensure_windows_firewall_private_logging_size_limit_kb_is_set_to_16384_kb_or_greater = false,
  Boolean $ensure_windows_firewall_private_logging_log_dropped_packets_is_set_to_yes = false,
  Boolean $ensure_windows_firewall_private_logging_log_successful_connections_is_set_to_yes = false,
  Boolean $ensure_windows_firewall_public_firewall_state_is_set_to_on_recommended = false,
  Boolean $ensure_windows_firewall_public_inbound_connections_is_set_to_block_default = false,
  Boolean $ensure_windows_firewall_public_outbound_connections_is_set_to_allow_default = false,
  Boolean $ensure_windows_firewall_public_settings_display_a_notification_is_set_to_no = false,
  Boolean $ensure_windows_firewall_public_settings_apply_local_firewall_rules_is_set_to_no = false,
  Boolean $ensure_windows_firewall_public_settings_apply_local_connection_security_rules_is_set_to_no = false,
  Boolean $ensure_windows_firewall_public_logging_name_is_set_to_systemroot_system32_logfiles_firewall_publicfwlog = false,
  Boolean $ensure_windows_firewall_public_logging_size_limit_kb_is_set_to_16384_kb_or_greater = false,
  Boolean $ensure_windows_firewall_public_logging_log_dropped_packets_is_set_to_yes = false,
  Boolean $ensure_windows_firewall_public_logging_log_successful_connections_is_set_to_yes = false,
  Boolean $ensure_audit_credential_validation_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_application_group_management_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_computer_account_management_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_other_account_management_events_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_security_group_management_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_user_account_management_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_process_creation_is_set_to_success = false,
  Boolean $ensure_audit_account_lockout_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_logoff_is_set_to_success = false,
  Boolean $ensure_audit_logon_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_other_logonlogoff_events_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_special_logon_is_set_to_success = false,
  Boolean $ensure_audit_other_object_access_events_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_audit_policy_change_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_authentication_policy_change_is_set_to_success = false,
  Boolean $ensure_audit_authorization_policy_change_is_set_to_success = false,
  Boolean $ensure_audit_sensitive_privilege_use_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_ipsec_driver_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_other_system_events_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_security_state_change_is_set_to_success = false,
  Boolean $ensure_audit_security_system_extension_is_set_to_success_and_failure = false,
  Boolean $ensure_audit_system_integrity_is_set_to_success_and_failure = false,
  Boolean $ensure_laps_admpwd_gpo_extension_cse_is_installed_ms_only = false,
  Boolean $ensure_do_not_allow_password_expiration_time_longer_than_required_by_policy_is_set_to_enabled_ms_only = false,
  Boolean $ensure_enable_local_admin_password_management_is_set_to_enabled_ms_only = false,
  Boolean $ensure_password_settings_password_complexity_is_set_to_enabled_large_letters_small_letters_numbers_special_characters_ms_only = false,
  Boolean $ensure_password_settings_password_length_is_set_to_enabled_15_or_more_ms_only = false,
  Boolean $ensure_password_settings_password_age_days_is_set_to_enabled_30_or_fewer_ms_only = false,
  Boolean $ensure_apply_uac_restrictions_to_local_accounts_on_network_logons_is_set_to_enabled_ms_only = false,
  Boolean $ensure_configure_smb_v1_client_is_set_to_enabled_bowser_mrxsmb20_nsi = false,
  Boolean $ensure_configure_smb_v1_client_driver_is_set_to_enabled_disable_driver = false,
  Boolean $ensure_configure_smb_v1_server_is_set_to_disabled = false,
  Boolean $ensure_enable_structured_exception_handling_overwrite_protection_sehop_is_set_to_enabled = false,
  Boolean $ensure_wdigest_authentication_is_set_to_disabled = false,
  Boolean $ensure_mss_autoadminlogon_enable_automatic_logon_not_recommended_is_set_to_disabled = false,
  Boolean $ensure_mss_disableipsourcerouting_ipv6_ip_source_routing_protection_level_protects_against_packet_spoofing_is_set_to_enabled_highest_protection_source_routing_is_completely_disabled = false,
  Boolean $ensure_mss_disableipsourcerouting_ip_source_routing_protection_level_protects_against_packet_spoofing_is_set_to_enabled_highest_protection_source_routing_is_completely_disabled = false,
  Boolean $ensure_mss_enableicmpredirect_allow_icmp_redirects_to_override_ospf_generated_routes_is_set_to_disabled = false,
  Boolean $ensure_mss_nonamereleaseondemand_allow_the_computer_to_ignore_netbios_name_release_requests_except_from_wins_servers_is_set_to_enabled = false,
  Boolean $ensure_mss_safedllsearchmode_enable_safe_dll_search_mode_recommended_is_set_to_enabled = false,
  Boolean $ensure_mss_screensavergraceperiod_the_time_in_seconds_before_theeen_saver_grace_period_expires_0_recommended_is_set_to_enabled_5_or_fewer_seconds = false,
  Boolean $ensure_mss_warninglevel_percentage_threshold_for_the_security_event_log_at_which_the_system_will_generate_a_warning_is_set_to_enabled_90_or_less = false,
  Boolean $set_netbios_node_type_to_p_node_ensure_netbt_parameter_nodetype_is_set_to_0x2_2_ms_only = false,
  Boolean $ensure_turn_off_multicast_name_resolution_is_set_to_enabled_ms_only = false,
  Boolean $ensure_prohibit_installation_and_configuration_of_network_bridge_on_your_dns_domain_network_is_set_to_enabled = false,
  Boolean $ensure_require_domain_users_to_elevate_when_setting_a_networks_location_is_set_to_enabled = false,
  Boolean $ensure_hardened_unc_paths_is_set_to_enabled_with_require_mutual_authentication_and_require_integrity_set_for_all_netlogon_and_sysvol_shares = false,
  Boolean $ensure_include_command_line_in_process_creation_events_is_set_to_disabled = false,
  Boolean $ensure_allow_remote_access_to_the_plug_and_play_interface_is_set_to_disabled = false,
  Boolean $ensure_configure_registry_policy_processing_do_not_apply_during_periodic_background_processing_is_set_to_enabled_false = false,
  Boolean $ensure_configure_registry_policy_processing_process_even_if_the_group_policy_objects_have_not_changed_is_set_to_enabled_true = false,
  Boolean $ensure_turn_off_background_refresh_of_group_policy_is_set_to_disabled = false,
  Boolean $ensure_turn_off_downloading_of_print_drivers_over_http_is_set_to_enabled = false,
  Boolean $ensure_turn_off_internet_download_for_web_publishing_and_online_ordering_wizards_is_set_to_enabled = false,
  Boolean $ensure_turn_off_printing_over_http_is_set_to_enabled = false,
  Boolean $ensure_always_use_classic_logon_is_set_to_enabled = false,
  Boolean $ensure_require_a_password_when_a_computer_wakes_on_battery_is_set_to_enabled = false,
  Boolean $ensure_require_a_password_when_a_computer_wakes_plugged_in_is_set_to_enabled = false,
  Boolean $ensure_configure_offer_remote_assistance_is_set_to_disabled = false,
  Boolean $ensure_configure_solicited_remote_assistance_is_set_to_disabled = false,
  Boolean $ensure_enable_rpc_endpoint_mapper_client_authentication_is_set_to_enabled_ms_only = false,
  Boolean $ensure_disallow_autoplay_for_non_volume_devices_is_set_to_enabled = false,
  Boolean $ensure_set_the_default_behavior_for_autorun_is_set_to_enabled_do_not_execute_any_autorun_commands = false,
  Boolean $ensure_turn_off_autoplay_is_set_to_enabled_all_drives = false,
  Boolean $ensure_do_not_display_the_password_reveal_button_is_set_to_enabled = false,
  Boolean $ensure_enumerate_administrator_accounts_on_elevation_is_set_to_disabled = false,
  Boolean $ensure_turn_off_desktop_gadgets_is_set_to_enabled = false,
  Boolean $ensure_turn_off_user_installed_desktop_gadgets_is_set_to_enabled = false,
  Boolean $ensure_emet_552_or_higher_is_installed = false,
  Boolean $ensure_default_action_and_mitigation_settings_is_set_to_enabled_plus_subsettings = false,
  Boolean $ensure_default_protections_for_internet_explorer_is_set_to_enabled = false,
  Boolean $ensure_default_protections_for_popular_software_is_set_to_enabled = false,
  Boolean $ensure_default_protections_for_recommended_software_is_set_to_enabled = false,
  Boolean $ensure_system_aslr_is_set_to_enabled_application_opt_in = false,
  Boolean $ensure_system_dep_is_set_to_enabled_application_opt_out = false,
  Boolean $ensure_system_sehop_is_set_to_enabled_application_opt_out = false,
  Boolean $ensure_application_control_event_log_behavior_when_the_log_file_reaches_its_maximum_size_is_set_to_disabled = false,
  Boolean $ensure_application_specify_the_maximum_log_file_size_kb_is_set_to_enabled_32768_or_greater = false,
  Boolean $ensure_security_control_event_log_behavior_when_the_log_file_reaches_its_maximum_size_is_set_to_disabled = false,
  Boolean $ensure_security_specify_the_maximum_log_file_size_kb_is_set_to_enabled_196608_or_greater = false,
  Boolean $ensure_setup_control_event_log_behavior_when_the_log_file_reaches_its_maximum_size_is_set_to_disabled = false,
  Boolean $ensure_setup_specify_the_maximum_log_file_size_kb_is_set_to_enabled_32768_or_greater = false,
  Boolean $ensure_system_control_event_log_behavior_when_the_log_file_reaches_its_maximum_size_is_set_to_disabled = false,
  Boolean $ensure_system_specify_the_maximum_log_file_size_kb_is_set_to_enabled_32768_or_greater = false,
  Boolean $ensure_turn_off_data_execution_prevention_for_explorer_is_set_to_disabled = false,
  Boolean $ensure_turn_off_heap_termination_on_corruption_is_set_to_disabled = false,
  Boolean $ensure_turn_off_shell_protocol_protected_mode_is_set_to_disabled = false,
  Boolean $ensure_prevent_the_usage_of_onedrive_for_file_storage_is_set_to_enabled = false,
  Boolean $ensure_prevent_the_usage_of_onedrive_for_file_storage_on_windows_81_is_set_to_enabled = false,
  Boolean $ensure_do_not_allow_passwords_to_be_saved_is_set_to_enabled = false,
  Boolean $ensure_do_not_allow_drive_redirection_is_set_to_enabled = false,
  Boolean $ensure_always_prompt_for_password_upon_connection_is_set_to_enabled = false,
  Boolean $ensure_require_secure_rpc_communication_is_set_to_enabled = false,
  Boolean $ensure_set_client_connection_encryption_level_is_set_to_enabled_high_level = false,
  Boolean $ensure_do_not_delete_temp_folders_upon_exit_is_set_to_disabled = false,
  Boolean $ensure_do_not_use_temporary_folders_per_session_is_set_to_disabled = false,
  Boolean $ensure_prevent_downloading_of_enclosures_is_set_to_enabled = false,
  Boolean $ensure_allow_indexing_of_encrypted_files_is_set_to_disabled = false,
  Boolean $ensure_turn_off_windows_defender_antivirus_is_set_to_disabled = false,
  Boolean $ensure_configure_default_consent_is_set_to_enabled_always_ask_before_sending_data = false,
  Boolean $ensure_allow_user_control_over_installs_is_set_to_disabled = false,
  Boolean $ensure_always_install_with_elevated_privileges_is_set_to_disabled_computer = false,
  Boolean $ensure_turn_on_powershell_script_block_logging_is_set_to_disabled = false,
  Boolean $ensure_turn_on_powershell_traiption_is_set_to_disabled = false,
  Boolean $ensure_allow_basic_authentication_is_set_to_disabled_winrm_client = false,
  Boolean $ensure_allow_unencrypted_traffic_is_set_to_disabled_winrm_client = false,
  Boolean $ensure_disallow_digest_authentication_is_set_to_enabled = false,
  Boolean $ensure_allow_basic_authentication_is_set_to_disabled_winrm_service = false,
  Boolean $ensure_allow_unencrypted_traffic_is_set_to_disabled_winrm_service = false,
  Boolean $ensure_disallow_winrm_from_storing_runas_credentials_is_set_to_enabled = false,
  Boolean $ensure_configure_automatic_updates_is_set_to_enabled = false,
  Boolean $ensure_configure_automatic_updates_scheduled_install_day_is_set_to_0_every_day = false,
  Boolean $ensure_do_not_adjust_default_option_to_install_updates_and_shut_down_in_shut_down_windows_dialog_box_is_set_to_disabled = false,
  Boolean $ensure_do_not_display_install_updates_and_shut_down_option_in_shut_down_windows_dialog_box_is_set_to_disabled = false,
  Boolean $ensure_no_auto_restart_with_logged_on_users_for_scheduled_automatic_updates_installations_is_set_to_disabled = false,
  Boolean $ensure_reschedule_automatic_updates_scheduled_installations_is_set_to_enabled_1_minute = false,
  Boolean $ensure_enableeen_saver_is_set_to_enabled = false,
  Boolean $ensure_force_specificeen_saver_screen_saver_executable_name_is_set_to_enablednsav = false,
  Boolean $ensure_password_protect_theeen_saver_is_set_to_enabled = false,
  Boolean $ensure_screen_saver_timeout_is_set_to_enabled_900_seconds_or_fewer_but_not_0 = false,
  Boolean $ensure_do_not_preserve_zone_information_in_file_attachments_is_set_to_disabled = false,
  Boolean $ensure_notify_antivirus_programs_when_opening_attachments_is_set_to_enabled = false,
  Boolean $ensure_prevent_users_from_sharing_files_within_their_profile_is_set_to_enabled = false,
  Boolean $ensure_always_install_with_elevated_privileges_is_set_to_disabled_user = false,
  Boolean $ensure_accounts_block_microsoft_accounts_is_set_to_users_cant_add_or_log_on_with_microsoft_accounts = false,
  Boolean $ensure_interactive_logon_machine_inactivity_limit_is_set_to_900_or_fewer_seconds_but_not_0 = false,
  Boolean $ensure_audit_removable_storage_is_set_to_success_and_failure = false,
  Boolean $ensure_prevent_enabling_lockeen_camera_is_set_to_enabled = false,
  Boolean $ensure_prevent_enabling_lockeen_slide_show_is_set_to_enabled = false,
  Boolean $ensure_minimize_the_number_of_simultaneous_connections_to_the_internet_or_a_windows_domain_is_set_to_enabled = false,
  Boolean $ensure_remote_host_allows_delegation_of_non_exportable_credentials_is_set_to_enabled = false,
  Boolean $ensure_boot_start_driver_initialization_policy_is_set_to_enabled_good_unknown_and_bad_but_critical = false,
  Boolean $ensure_do_not_display_network_selection_ui_is_set_to_enabled = false,
  Boolean $ensure_do_not_enumerate_connected_users_on_domain_joined_computers_is_set_to_enabled = false,
  Boolean $ensure_enumerate_local_users_on_domain_joined_computers_is_set_to_disabled_ms_only = false,
  Boolean $ensure_turn_off_app_notifications_on_the_lockeen_is_set_to_enabled = false,
  Boolean $ensure_turn_off_picture_password_sign_in_is_set_to_enabled = false,
  Boolean $ensure_turn_on_convenience_pin_sign_in_is_set_to_disabled = false,
  Boolean $ensure_allow_microsoft_accounts_to_be_optional_is_set_to_enabled = false,
  Boolean $ensure_configure_local_setting_override_for_reporting_to_microsoft_maps_is_set_to_disabled = false,
  Boolean $ensure_turn_on_behavior_monitoring_is_set_to_enabled = false,
  Boolean $ensure_scan_removable_drives_is_set_to_enabled = false,
  Boolean $ensure_turn_on_e_mail_scanning_is_set_to_enabled = false,
  Boolean $ensure_configure_windows_defender_smartscreen_is_set_to_enabled_warn_and_prevent_bypass = false,
  Boolean $ensure_automatically_send_memory_dumps_for_os_generated_error_reports_is_set_to_disabled = false,
  Boolean $ensure_sign_in_last_interactive_user_automatically_after_a_system_initiated_restart_is_set_to_disabled = false,
  Boolean $ensure_turn_off_toast_notifications_on_the_lockeen_is_set_to_enabled = false,
  Boolean $ensure_access_this_computer_from_the_network_is_set_to_administrators_authenticated_users_ms_only = false,
  Boolean $ensure_allow_log_on_through_remote_desktop_services_is_set_to_administrators_remote_desktop_users_ms_only = false,
  Boolean $ensure_create_symbolic_links_is_set_to_administrators_nt_virtual_machine_virtual_machines_ms_only = false,
  Boolean $ensure_deny_access_to_this_computer_from_the_network_is_set_to_guests_local_account_and_member_of_administrators_group_ms_only = false,
  Boolean $ensure_deny_log_on_through_remote_desktop_services_is_set_to_guests_local_account_ms_only = false,
  Boolean $ensure_enable_computer_and_user_accounts_to_be_trusted_for_delegation_is_set_to_no_one_ms_only = false,
  Boolean $ensure_impersonate_a_client_after_authentication_is_set_to_administrators_local_service_network_service_service_and_when_the_web_server_iis_role_with_web_services_role_service_is_installed_iis_iusrs_ms_only = false,
  Boolean $ensure_manage_auditing_and_security_log_is_set_to_administrators_ms_only = false,
  Boolean $configure_network_access_named_pipes_that_can_be_accessed_anonymously_ms_only = false,
  Boolean $ensure_network_access_restrict_clients_allowed_to_make_remote_calls_to_sam_is_set_to_administrators_remote_access_allow_ms_only = false,
  Boolean $ensure_audit_pnp_activity_is_set_to_success = false,
  Boolean $ensure_audit_group_membership_is_set_to_success = false,
  Boolean $ensure_allow_input_personalization_is_set_to_disabled = false,
  Boolean $ensure_turn_on_windows_defender_protection_against_potentially_unwanted_applications_is_set_to_enabled = false,
  Boolean $ensure_enable_insecure_guest_logons_is_set_to_disabled = false,
  Boolean $ensure_prohibit_use_of_internet_connection_sharing_on_your_dns_domain_network_is_set_to_enabled = false,
  Boolean $ensure_continue_experiences_on_this_device_is_set_to_disabled = false,
  Boolean $ensure_block_user_from_showing_account_details_on_sign_in_is_set_to_enabled = false,
  Boolean $ensure_untrusted_font_blocking_is_set_to_enabled_block_untrusted_fonts_and_log_events = false,
  Boolean $ensure_configure_enhanced_anti_spoofing_is_set_to_enabled = false,
  Boolean $ensure_turn_off_microsoft_consumer_experiences_is_set_to_enabled = false,
  Boolean $ensure_require_pin_for_pairing_is_set_to_enabled = false,
  Boolean $ensure_allow_telemetry_is_set_to_enabled_0_security_enterprise_only_or_enabled_1_basic = false,
  Boolean $ensure_disable_pre_release_features_or_settings_is_set_to_disabled = false,
  Boolean $ensure_do_not_show_feedback_notifications_is_set_to_enabled = false,
  Boolean $ensure_toggle_user_control_over_insider_builds_is_set_to_disabled = false,
  Boolean $ensure_block_all_consumer_microsoft_account_user_authentication_is_set_to_enabled = false,
  Boolean $ensure_configure_attack_surface_reduction_rules_is_set_to_enabled = false,
  Boolean $ensure_configure_attack_surface_reduction_rules_set_the_state_for_each_asr_rule_is_configured = false,
  Boolean $ensure_prevent_users_and_apps_from_accessing_dangerous_websites_is_set_to_enabled_block = false,
  Boolean $ensure_prevent_users_from_modifying_settings_is_set_to_enabled = false,
  Boolean $ensure_allow_windows_ink_workspace_is_set_to_enabled_on_but_disallow_access_above_lock_or_disabled_but_not_enabled_on = false,
  Boolean $ensure_manage_preview_builds_is_set_to_enabled_disable_preview_builds = false,
  Boolean $ensure_select_when_preview_builds_and_feature_updates_are_received_is_set_to_enabled_semi_annual_channel_180_or_more_days = false,
  Boolean $ensure_select_when_quality_updates_are_received_is_set_to_enabled_0_days = false,
  Boolean $ensure_configure_windows_spotlight_on_lockeen_is_set_to_disabled = false,
  Boolean $ensure_do_not_suggest_third_party_content_in_windows_spotlight_is_set_to_enabled = false,
) {

  include harden_windows_server::configure
}
