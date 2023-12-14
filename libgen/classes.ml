class instance : object
  val archivable : bool
  val class_name : string
  val name : string
  val parent : instance
  val roblox_locked : bool
  val source_asset_id : int
  method add_tag : string -> unit
  method clear_all_children : unit -> unit
  method clone : unit -> instance
  method destroy : unit -> unit
  method find_first_ancestor : string -> instance
  method find_first_ancestor_of_class : string -> instance
  method find_first_ancestor_which_is_a : string -> instance
  method find_first_child : string -> bool -> instance
  method find_first_child_of_class : string -> instance
  method find_first_child_which_is_a : string -> bool -> instance
  method find_first_descendant : string -> instance
  method get_actor : unit -> actor
  method get_attribute : string -> variant
  method get_attribute_changed_signal : string -> rbx_script_signal
  method get_attributes : unit -> dictionary
  method get_children : unit -> objects
  method get_debug_id : int -> string
  method get_descendants : unit -> array
  method get_full_name : unit -> string
  method get_property_changed_signal : string -> rbx_script_signal
  method get_tags : unit -> array
  method has_tag : string -> bool
  method is_a : string -> bool
  method is_ancestor_of : instance -> bool
  method is_descendant_of : instance -> bool
  method is_property_modified : string -> bool
  method remove_tag : string -> unit
  method reset_property_to_default : string -> unit
  method set_attribute : string -> variant -> unit
  method wait_for_child : string -> double -> instance
end

class accessory_description : instance
  val accessory_type : accessory_type
  val asset_id : int
  val instance : instance
  val is_layered : bool
  val order : int
  val puffiness : float
end

class account_service : instance
  method device_integrity_available : unit -> bool
  method get_device_integrity_token : string -> string
end

class accoutrement : instance
  val attachment_forward : vector_3
  val attachment_point : c_frame
  val attachment_pos : vector_3
  val attachment_right : vector_3
  val attachment_up : vector_3
end

class accessory : accoutrement
  val accessory_type : accessory_type
end

class hat : accoutrement
end

class ad_portal : instance
  val portal_invalid_reason : string
  val portal_version : int
  val status : ad_unit_status
  method teleport_confirmed : int -> player -> unit
  method teleport_rejected : bool -> bool -> unit
end

class ad_service : instance
  method get_ad_teleport_info : unit -> tuple
  method get_report_ad_info : unit -> array
  method return_to_publisher_experience : ad_teleport_method -> unit
end

class advanced_dragger : instance
end

class analytics_service : instance
  method fire_custom_event : instance -> string -> variant -> unit
  method fire_in_game_economy_event : instance -> string -> analytics_economy_action -> string -> int -> string -> variant -> variant -> unit
  method fire_log_event : instance -> analytics_log_level -> string -> variant -> variant -> unit
  method fire_player_progression_event : instance -> string -> analytics_progression_status -> variant -> variant -> variant -> unit
end

class animation : instance
  val animation_id : content
end

class animation_clip : instance
  val guid : string
  val loop : bool
  val priority : animation_priority
end

class curve_animation : animation_clip
end

class keyframe_sequence : animation_clip
  val authored_hip_height : float
  method add_keyframe : instance -> unit
  method get_keyframes : unit -> objects
  method remove_keyframe : instance -> unit
end

class animation_clip_provider : instance
  method get_mem_stats : unit -> dictionary
  method register_active_animation_clip : animation_clip -> content
  method register_animation_clip : animation_clip -> content
  method get_animation_clip_async : content -> animation_clip
  method get_animations : int -> instance
  method get_clip_evaluator_async : content -> clip_evaluator
end

class animation_controller : instance
end

class animation_from_video_creator_service : instance
  method create_job : string -> string
  method download_job_result : string -> string -> string
  method full_process : string -> function -> string
  method get_job_status : string -> string
end

class animation_from_video_creator_studio_service : instance
  method is_age_restricted : unit -> bool
  method create_animation_by_uploading_video : function -> string
  method import_video_with_prompt : unit -> string
end

class animation_rig_data : instance
  method load_from_humanoid : instance -> bool
end

class animation_stream_track : instance
  val animation : tracker_stream_animation
  val is_playing : bool
  val priority : animation_priority
  val weight_current : float
  val weight_target : float
  method adjust_weight : float -> float -> unit
  method get_tracker_data : unit -> tuple
  method play : float -> float -> unit
  method stop : float -> unit
  method toggle_pause : bool -> unit
end

class animation_track : instance
  val animation : animation
  val is_playing : bool
  val length : float
  val looped : bool
  val priority : animation_priority
  val speed : float
  val time_position : float
  val weight_current : float
  val weight_target : float
  method adjust_speed : float -> unit
  method adjust_weight : float -> float -> unit
  method get_marker_reached_signal : string -> rbx_script_signal
  method get_time_of_keyframe : string -> double
  method play : float -> float -> float -> unit
  method stop : float -> unit
end

class animator : instance
  val evaluation_throttled : bool
  val prefer_lod_enabled : bool
  val root_motion : c_frame
  val root_motion_weight : float
  method apply_joint_velocities : variant -> unit
  method get_playing_animation_tracks : unit -> array
  method get_playing_animation_tracks_core_script : unit -> array
  method load_animation : animation -> animation_track
  method load_animation_core_script : animation -> animation_track
  method load_stream_animation : tracker_stream_animation -> animation_stream_track
  method load_stream_animation_for_selfie_view_deprecated : tracker_stream_animation -> player -> animation_stream_track
  method register_evaluation_parallel_callback : function -> unit
  method step_animations : float -> unit
end

class app_update_service : instance
  method can_perform_binary_update : unit -> bool
  method check_for_update : function -> unit
  method disable_duar : unit -> unit
  method disable_duar_and_open_survey : string -> unit
  method perform_managed_update : unit -> bool
end

class asset_counter_service : instance
end

class asset_delivery_proxy : instance
  val interface : string
  val port : int
  val start_server : bool
end

class asset_import_service : instance
  method get_all_presets : unit -> map
  method get_preset : string -> map
  method remove_preset : string -> unit
  method save_preset : string -> dictionary -> bool
  method start_session_with_path : string -> asset_import_session
  method pick_file_with_prompt : unit -> string
  method pick_multiple_files_with_prompt : unit -> array
  method start_session_with_prompt : unit -> asset_import_session
end

class asset_import_session : instance
  method apply_preset : dictionary -> unit
  method apply_settings : unit -> unit
  method cancel : unit -> unit
  method create_preset_from_data : instance -> map
  method get_current_status_table : unit -> dictionary
  method get_filename : unit -> string
  method get_import_tree : unit -> instance
  method get_instance : int -> instance
  method get_rig_visualization : unit -> instance
  method has_animation : unit -> bool
  method is_avatar : unit -> bool
  method is_gltf : unit -> bool
  method is_r_15 : unit -> bool
  method reset : unit -> unit
  method upload : unit -> unit
  method uses_custom_rest_pose_lua : unit -> bool
end

class asset_manager_service : instance
  method get_mesh_id_from_alias_name : string -> int
  method get_mesh_id_from_asset_id : int -> int
  method get_texture_id_from_alias_name : string -> int
  method get_texture_id_from_asset_id : int -> int
  method has_unpublished_changes_for_linked_source : string -> bool
  method insert_audio : int -> string -> unit
  method insert_image : int -> unit
  method insert_linked_source_as_local_script : string -> unit
  method insert_linked_source_as_module_script : string -> unit
  method insert_linked_source_as_script : string -> unit
  method insert_mesh : string -> bool -> unit
  method insert_meshes_with_location : array -> unit
  method insert_model : int -> unit
  method insert_package : int -> unit
  method insert_video : int -> string -> unit
  method open_linked_source : string -> unit
  method open_place : int -> unit
  method refresh_linked_source : string -> unit
  method revert_linked_source_to_last_published_version : string -> unit
  method show_package_details : int -> unit
  method update_all_packages : int -> unit
  method view_package_on_website : int -> unit
  method add_new_place : unit -> int
  method create_alias : int -> int -> string -> unit
  method delete_alias : string -> unit
  method publish_linked_source : int -> string -> unit
  method remove_place : int -> unit
  method rename_alias : int -> int -> string -> string -> unit
  method rename_model : int -> string -> unit
  method rename_place : int -> string -> unit
end

class asset_patch_settings : instance
  val content_id : string
  val output_path : string
  val patch_id : string
end

class asset_service : instance
  method deserialize_instance : string -> instance
  method get_bundle_details_sync : int -> dictionary
  method register_ugc_validation_function : function -> unit
  method create_editable_image_async : content -> editable_image
  method create_editable_mesh_async : content -> editable_mesh
  method create_editable_mesh_from_part_async : instance -> editable_mesh
  method create_place_async : string -> int -> string -> int
  method create_place_in_player_inventory_async : instance -> string -> int -> string -> int
  method get_asset_ids_for_package : int -> array
  method get_bundle_details_async : int -> dictionary
  method get_game_places_async : unit -> instance
  method prompt_create_asset_async : player -> instance -> asset_type -> tuple
  method prompt_import_animation_clip_from_video_async : player -> function -> tuple
  method save_place_async : unit -> unit
  method search_audio : audio_search_params -> audio_pages
end

class atmosphere : instance
  val color : color_3
  val decay : color_3
  val density : float
  val glare : float
  val haze : float
  val offset : float
end

class attachment : instance
  val axis : vector_3
  val c_frame : c_frame
  val orientation : vector_3
  val position : vector_3
  val secondary_axis : vector_3
  val visible : bool
  val world_axis : vector_3
  val world_c_frame : c_frame
  val world_orientation : vector_3
  val world_position : vector_3
  val world_secondary_axis : vector_3
  method get_constraints : unit -> objects
end

class bone : attachment
  val transform : c_frame
  val transformed_c_frame : c_frame
  val transformed_world_c_frame : c_frame
end

class audio_analyzer : instance
  val peak_level : float
  val rms_level : float
  method get_connected_wires : string -> array
  method get_spectrum : unit -> array
end

class audio_chorus : instance
  val depth : float
  val mix : float
  val rate : float
  method get_connected_wires : string -> array
end

class audio_compressor : instance
  val attack : float
  val makeup_gain : float
  val ratio : float
  val release : float
  val threshold : float
  method get_connected_wires : string -> array
end

class audio_device_input : instance
  val access_type : access_modifier_type
  val active : bool
  val is_ready : bool
  val muted : bool
  val player : player
  method get_connected_wires : string -> array
  method get_user_id_access_list : unit -> array
  method set_user_id_access_list : array -> unit
end

class audio_device_output : instance
  val player : player
  method get_connected_wires : string -> array
end

class audio_distortion : instance
  val level : float
  method get_connected_wires : string -> array
end

class audio_echo : instance
  val delay_time : float
  val dry_level : float
  val feedback : float
  val wet_level : float
  method get_connected_wires : string -> array
end

class audio_emitter : instance
  val audio_interaction_group : string
  method get_audibility_for : audio_listener -> float
  method get_connected_wires : string -> array
  method get_interacting_listeners : unit -> array
end

class audio_equalizer : instance
  val high_gain : float
  val low_gain : float
  val mid_gain : float
  val mid_range : number_range
  method get_connected_wires : string -> array
end

class audio_fader : instance
  val volume : float
  method get_connected_wires : string -> array
end

class audio_flanger : instance
  val depth : float
  val mix : float
  val rate : float
  method get_connected_wires : string -> array
end

class audio_listener : instance
  val audio_interaction_group : string
  method get_audibility_of : audio_emitter -> float
  method get_connected_wires : string -> array
  method get_interacting_emitters : unit -> array
end

class audio_pitch_shifter : instance
  val pitch : float
  method get_connected_wires : string -> array
end

class audio_player : instance
  val asset_id : string
  val auto_load : bool
  val is_playing : bool
  val is_ready : bool
  val loop_region : number_range
  val looping : bool
  val playback_region : number_range
  val playback_speed : double
  val time_length : double
  val time_position : double
  method get_connected_wires : string -> array
  method play : unit -> unit
  method stop : unit -> unit
end

class audio_reverb : instance
  val decay_ratio : float
  val decay_time : float
  val density : float
  val diffusion : float
  val dry_level : float
  val early_delay_time : float
  val high_cut_frequency : float
  val late_delay_time : float
  val low_shelf_frequency : float
  val low_shelf_gain : float
  val reference_frequency : float
  val wet_level : float
  method get_connected_wires : string -> array
end

class audio_search_params : instance
  val album : string
  val artist : string
  val audio_sub_type : audio_sub_type
  val max_duration : int
  val min_duration : int
  val search_keyword : string
  val tag : string
  val title : string
end

class avatar_chat_service : instance
  val client_features : int
  val client_features_initialized : bool
  val server_features : int
  method is_enabled : int -> avatar_chat_service_feature -> bool
  method is_place_enabled : unit -> bool
  method is_universe_enabled : unit -> bool
  method poll_client_features : unit -> int
  method poll_server_features : unit -> int
  method get_client_features_async : unit -> int
  method get_server_features_async : unit -> int
end

class avatar_creation_service : instance
  method prompt_create_avatar_async : player -> humanoid_description -> tuple
end

class avatar_editor_service : instance
  method get_accessory_type : avatar_asset_type -> accessory_type
  method no_prompt_create_outfit : humanoid_description -> humanoid_rig_type -> string -> bool
  method no_prompt_delete_outfit : int -> bool
  method no_prompt_rename_outfit : int -> string -> bool
  method no_prompt_save_avatar : humanoid_description -> humanoid_rig_type -> dictionary -> int -> bool
  method no_prompt_save_avatar_thumbnail_customization : avatar_thumbnail_customization_type -> int -> float -> float -> float -> bool
  method no_prompt_set_favorite : int -> avatar_item_type -> bool -> bool
  method no_prompt_update_outfit : int -> humanoid_description -> humanoid_rig_type -> bool
  method perform_create_outfit_with_description : humanoid_description -> string -> unit
  method perform_delete_outfit : unit -> unit
  method perform_rename_outfit : string -> unit
  method perform_save_avatar_with_description : humanoid_description -> array -> array -> unit
  method perform_set_favorite : unit -> unit
  method perform_update_outfit : humanoid_description -> unit
  method prompt_allow_inventory_read_access : unit -> unit
  method prompt_create_outfit : humanoid_description -> humanoid_rig_type -> unit
  method prompt_delete_outfit : int -> unit
  method prompt_rename_outfit : int -> unit
  method prompt_save_avatar : humanoid_description -> humanoid_rig_type -> unit
  method prompt_set_favorite : int -> avatar_item_type -> bool -> unit
  method prompt_update_outfit : int -> humanoid_description -> humanoid_rig_type -> unit
  method set_allow_inventory_read_access : bool -> unit
  method signal_create_outfit_failed : unit -> unit
  method signal_create_outfit_permission_denied : unit -> unit
  method signal_delete_outfit_failed : unit -> unit
  method signal_delete_outfit_permission_denied : unit -> unit
  method signal_rename_outfit_failed : unit -> unit
  method signal_rename_outfit_permission_denied : unit -> unit
  method signal_save_avatar_failed : unit -> unit
  method signal_save_avatar_permission_denied : unit -> unit
  method signal_set_favorite_failed : unit -> unit
  method signal_set_favorite_permission_denied : unit -> unit
  method signal_update_outfit_failed : unit -> unit
  method signal_update_outfit_permission_denied : unit -> unit
  method check_apply_default_clothing : humanoid_description -> humanoid_description
  method conform_to_avatar_rules : humanoid_description -> humanoid_description
  method get_avatar_rules : unit -> dictionary
  method get_batch_item_details : array -> avatar_item_type -> array
  method get_favorite : int -> avatar_item_type -> bool
  method get_inventory : array -> inventory_pages
  method get_item_details : int -> avatar_item_type -> dictionary
  method get_outfit_details : int -> dictionary
  method get_outfits : outfit_source -> outfit_type -> outfit_pages
  method get_recommended_assets : avatar_asset_type -> int -> array
  method get_recommended_bundles : int -> array
  method search_catalog : catalog_search_params -> catalog_pages
end

class avatar_import_service : instance
  method import_fbx_animation_from_file_path_user_may_choose_model : string -> instance -> function -> instance
  method import_fbx_animation_user_may_choose_model : instance -> function -> instance
  method import_fbx_rig_without_scene_load : bool -> instance
  method import_loaded_fbx_animation : bool -> instance
  method load_rig_and_detect_type : function -> instance
end

class backpack : instance
end

class badge_service : instance
  method award_badge : int -> int -> bool
  method get_badge_info_async : int -> dictionary
  method user_has_badge_async : int -> int -> bool
end

class base_import_data : instance
  val id : string
  val import_name : string
  val should_import : bool
  method create_preset_from_data : unit -> map
  method get_statuses : unit -> dictionary
  method get_statuses_deprecated : unit -> dictionary
end

class animation_import_data : base_import_data
end

class facs_import_data : base_import_data
end

class group_import_data : base_import_data
  val anchored : bool
  val import_as_model_asset : bool
  val insert_in_workspace : bool
end

class joint_import_data : base_import_data
end

class material_import_data : base_import_data
  val diffuse_file_path : string
  val is_pbr : bool
  val metalness_file_path : string
  val normal_file_path : string
  val roughness_file_path : string
end

class mesh_import_data : base_import_data
  val anchored : bool
  val cage_manifold : bool
  val cage_mesh_intersected_preview : bool
  val cage_mesh_not_intersected : bool
  val cage_no_overlapping_vertices : bool
  val cage_non_manifold_preview : bool
  val cage_overlapping_vertices_preview : bool
  val cage_uv_matched : bool
  val cage_uv_mis_matched_preview : bool
  val dimensions : vector_3
  val double_sided : bool
  val ignore_vertex_colors : bool
  val irrelevant_cage_modified_preview : bool
  val mesh_hole_detected_preview : bool
  val mesh_no_hole_detected : bool
  val no_irrelevant_cage_modified : bool
  val no_outer_cage_far_extended_from_mesh : bool
  val outer_cage_far_extended_from_mesh_preview : bool
  val polygon_count : float
  val use_imported_pivot : bool
end

class root_import_data : base_import_data
  val add_model_to_inventory : bool
  val anchored : bool
  val animation_id_for_rest_pose : float
  val existing_package_id : string
  val file_dimensions : vector_3
  val import_as_model_asset : bool
  val import_as_package : bool
  val insert_in_workspace : bool
  val insert_with_scene_position : bool
  val invert_negative_faces : bool
  val merge_meshes : bool
  val polygon_count : float
  val rest_pose : rest_pose
  val rig_scale : rig_scale
  val rig_type : rig_type
  val rig_visualization : bool
  val scale_unit : mesh_scale_unit
  val use_scene_origin_as_c_frame : bool
  val use_scene_origin_as_pivot : bool
  val uses_cages : bool
  val validate_ugc_body : bool
  val world_forward : normal_id
  val world_up : normal_id
end

class base_player_gui : instance
  method get_gui_objects_at_position : int -> int -> objects
  method get_gui_objects_in_circle : vector_2 -> float -> objects
end

class core_gui : base_player_gui
  val selection_image_object : gui_object
  val version : int
  method set_user_gui_rendering : bool -> instance -> normal_id -> float -> unit
  method take_screenshot : unit -> unit
  method toggle_recording : unit -> unit
end

class player_gui : base_player_gui
  val current_screen_orientation : screen_orientation
  val screen_orientation : screen_orientation
  val selection_image_object : gui_object
end

class starter_gui : base_player_gui
  val process_user_input : bool
  val rtl_text_support : rtl_text_support
  val screen_orientation : screen_orientation
  val show_development_gui : bool
  val virtual_cursor_mode : virtual_cursor_mode
  method get_core_gui_enabled : core_gui_type -> bool
  method register_get_core : string -> function -> unit
  method register_set_core : string -> function -> unit
  method set_core : string -> variant -> unit
  method set_core_gui_enabled : core_gui_type -> bool -> unit
  method get_core : string -> variant
end

class base_remote_event : instance
end

class remote_event : base_remote_event
  method fire_all_clients : tuple -> unit
  method fire_client : player -> tuple -> unit
  method fire_server : tuple -> unit
end

class unreliable_remote_event : base_remote_event
  method fire_all_clients : tuple -> unit
  method fire_client : player -> tuple -> unit
  method fire_server : tuple -> unit
end

class base_wrap : instance
  val cage_mesh_id : content
  val cage_origin : c_frame
  val cage_origin_world : c_frame
  val hsr_asset_id : content
  val import_origin : c_frame
  val import_origin_world : c_frame
  method get_cage_offset : unit -> vector_3
  method get_faces : cage_type -> array
  method get_vertices : cage_type -> array
  method is_hsr_ready : unit -> bool
  method modify_vertices : cage_type -> array -> unit
end

class wrap_layer : base_wrap
  val auto_skin : wrap_layer_auto_skin
  val bind_offset : c_frame
  val color : color_3
  val debug_mode : wrap_layer_debug_mode
  val enabled : bool
  val order : int
  val puffiness : float
  val reference_mesh_id : content
  val reference_origin : c_frame
  val reference_origin_world : c_frame
  val shrink_factor : float
end

class wrap_target : base_wrap
  val color : color_3
  val debug_mode : wrap_target_debug_mode
  val stiffness : float
end

class beam : instance
  val attachment_0 : attachment
  val attachment_1 : attachment
  val brightness : float
  val color : color_sequence
  val curve_size_0 : float
  val curve_size_1 : float
  val enabled : bool
  val face_camera : bool
  val light_emission : float
  val light_influence : float
  val segments : int
  val texture : content
  val texture_length : float
  val texture_mode : texture_mode
  val texture_speed : float
  val transparency : number_sequence
  val width_0 : float
  val width_1 : float
  val z_offset : float
  method set_texture_offset : float -> unit
end

class bindable_event : instance
  method fire : tuple -> unit
end

class bindable_function : instance
  method invoke : tuple -> tuple
end

class body_mover : instance
end

class body_angular_velocity : body_mover
  val angular_velocity : vector_3
  val max_torque : vector_3
  val p : float
end

class body_force : body_mover
  val force : vector_3
end

class body_gyro : body_mover
  val c_frame : c_frame
  val d : float
  val max_torque : vector_3
  val p : float
end

class body_position : body_mover
  val d : float
  val max_force : vector_3
  val p : float
  val position : vector_3
  method get_last_force : unit -> vector_3
end

class body_thrust : body_mover
  val force : vector_3
  val location : vector_3
end

class body_velocity : body_mover
  val max_force : vector_3
  val p : float
  val velocity : vector_3
  method get_last_force : unit -> vector_3
  method last_force : unit -> vector_3
end

class rocket_propulsion : body_mover
  val cartoon_factor : float
  val max_speed : float
  val max_thrust : float
  val max_torque : vector_3
  val target : base_part
  val target_offset : vector_3
  val target_radius : float
  val thrust_d : float
  val thrust_p : float
  val turn_d : float
  val turn_p : float
  method abort : unit -> unit
  method fire : unit -> unit
end

class body_part_description : instance
  val asset_id : int
  val body_part : body_part
  val color : color_3
  val instance : instance
end

class breakpoint : instance
  val condition : string
  val continue_execution : bool
  val enabled : bool
  val id : int
  val line : int
  val log_message : string
  val meta_breakpoint_id : int
  val remove_on_hit : bool
  val script : string
  val valid : bool
  val verified : bool
end

class browser_service : instance
  method close_browser_window : unit -> unit
  method copy_auth_cookie_from_browser_to_engine : unit -> unit
  method emit_hybrid_event : string -> string -> string -> unit
  method execute_java_script : string -> unit
  method open_browser_window : string -> unit
  method open_native_overlay : string -> string -> unit
  method open_we_chat_auth_window : unit -> unit
  method return_to_java_script : string -> bool -> string -> unit
  method send_command : string -> unit
end

class bubble_chat_message_properties : instance
  val background_color_3 : color_3
  val background_transparency : double
  val font_face : font
  val tail_visible : bool
  val text_color_3 : color_3
  val text_size : int
end

class bulk_import_service : instance
  method launch_bulk_import : int -> unit
  method show_bulk_import_view : unit -> unit
end

class cacheable_content_provider : instance
end

class hsr_data_content_provider : cacheable_content_provider
end

class mesh_content_provider : cacheable_content_provider
  method get_content_memory_data : unit -> dictionary
end

class solid_model_content_provider : cacheable_content_provider
end

class callout_service : instance
  method attach_callout : string -> string -> instance -> unit
  method define_callout : string -> string -> string -> string -> unit
  method detach_callouts_by_definition_id : string -> unit
end

class camera : instance
  val c_frame : c_frame
  val camera_subject : instance
  val camera_type : camera_type
  val diagonal_field_of_view : float
  val field_of_view : float
  val field_of_view_mode : field_of_view_mode
  val focus : c_frame
  val head_locked : bool
  val head_scale : float
  val max_axis_field_of_view : float
  val near_plane_z : float
  val vr_tilt_and_roll_enabled : bool
  val viewport_size : vector_2
  method get_parts_obscuring_target : array -> objects -> objects
  method get_render_c_frame : unit -> c_frame
  method get_roll : unit -> float
  method screen_point_to_ray : float -> float -> float -> ray
  method set_image_server_view : c_frame -> unit
  method set_roll : float -> unit
  method viewport_point_to_ray : float -> float -> float -> ray
  method world_to_screen_point : vector_3 -> tuple
  method world_to_viewport_point : vector_3 -> tuple
  method zoom : float -> bool
  method zoom_to_extents : c_frame -> vector_3 -> unit
end

class capture_service : instance
  method delete_capture : string -> unit
  method on_capture_began : unit -> unit
  method on_capture_ended : unit -> unit
  method on_save_prompt_finished : int -> dictionary -> unit
  method on_share_prompt_finished : int -> bool -> unit
  method prompt_save_captures_to_gallery : array -> function -> unit
  method prompt_share_capture : content -> string -> function -> function -> unit
  method retrieve_captures : unit -> array
  method save_capture_to_external_storage : string -> unit
  method save_screenshot_capture : unit -> unit
  method get_capture_size_async : content -> vector_2
end

class change_history_service : instance
  method finish_recording : string -> finish_recording_operation -> dictionary? -> unit
  method get_can_redo : unit -> tuple
  method get_can_undo : unit -> tuple
  method is_recording_in_progress : string? -> bool
  method redo : unit -> unit
  method reset_waypoints : unit -> unit
  method set_enabled : bool -> unit
  method set_waypoint : string -> unit
  method try_begin_recording : string -> string? -> string?
  method undo : unit -> unit
end

class character_appearance : instance
end

class body_colors : character_appearance
  val head_color : brick_color
  val head_color_3 : color_3
  val left_arm_color : brick_color
  val left_arm_color_3 : color_3
  val left_leg_color : brick_color
  val left_leg_color_3 : color_3
  val right_arm_color : brick_color
  val right_arm_color_3 : color_3
  val right_leg_color : brick_color
  val right_leg_color_3 : color_3
  val torso_color : brick_color
  val torso_color_3 : color_3
end

class character_mesh : character_appearance
  val base_texture_id : int
  val body_part : body_part
  val mesh_id : int
  val overlay_texture_id : int
end

class clothing : character_appearance
  val color_3 : color_3
end

class pants : clothing
  val pants_template : content
end

class shirt : clothing
  val shirt_template : content
end

class shirt_graphic : character_appearance
  val color_3 : color_3
  val graphic : content
end

class skin : character_appearance
  val skin_color : brick_color
end

class chat : instance
  val bubble_chat_enabled : bool
  val load_default_chat : bool
  method chat : instance -> string -> chat_color -> unit
  method chat_local : instance -> string -> chat_color -> unit
  method get_should_use_lua_chat : unit -> bool
  method invoke_chat_callback : chat_callback_type -> tuple -> tuple
  method register_chat_callback : chat_callback_type -> function -> unit
  method set_bubble_chat_settings : variant -> unit
  method can_user_chat_async : int -> bool
  method can_users_chat_async : int -> int -> bool
  method filter_string_async : string -> player -> player -> string
  method filter_string_for_broadcast : string -> player -> string
end

class chatbot_ui_service : instance
  method display_content : string -> dictionary -> unit
  method get_settings : unit -> dictionary
end

class click_detector : instance
  val cursor_icon : content
  val max_activation_distance : float
end

class drag_detector : click_detector
  val activated_cursor_icon : content
  val apply_at_center_of_mass : bool
  val axis : vector_3
  val drag_frame : c_frame
  val drag_style : drag_detector_drag_style
  val enabled : bool
  val gamepad_mode_switch_key_code : key_code
  val keyboard_mode_switch_key_code : key_code
  val max_drag_angle : float
  val max_drag_translation : vector_3
  val max_force : float
  val max_torque : float
  val min_drag_angle : float
  val min_drag_translation : vector_3
  val orientation : vector_3
  val reference_instance : instance
  val response_style : drag_detector_response_style
  val responsiveness : float
  val run_locally : bool
  val secondary_axis : vector_3
  val trackball_radial_pull_factor : float
  val trackball_roll_factor : float
  val vr_switch_key_code : key_code
  val world_axis : vector_3
  val world_secondary_axis : vector_3
  method add_constraint_function : int -> function -> rbx_script_connection
  method get_reference_frame : unit -> c_frame
  method restart_drag : unit -> unit
  method set_drag_style_function : function -> unit
end

class clouds : instance
  val color : color_3
  val cover : float
  val density : float
  val enabled : bool
end

class cluster_packet_cache : instance
end

class collaborator : instance
  val c_frame : c_frame
  val collaborator_color : int
  val cur_doc_guid : string
  val cur_script_line_number : int
  val user_id : int
  val username : string
end

class collaborators_service : instance
end

class collection_service : instance
  method add_tag : instance -> string -> unit
  method get_all_tags : unit -> array
  method get_instance_added_signal : string -> rbx_script_signal
  method get_instance_removed_signal : string -> rbx_script_signal
  method get_tagged : string -> objects
  method get_tags : instance -> array
  method has_tag : instance -> string -> bool
  method remove_tag : instance -> string -> unit
end

class command_instance : instance
  val allow_gui_access_points : bool
  val checked : bool
  val default_shortcut : string
  val display_name : string
  val enabled : bool
  val icon : string
  val name : string
  val permission : command_permission
  val status_tip : string
  method enable_gui_access : string -> string -> string -> unit
  method register_execution_callback : function -> unit
end

class command_service : instance
  method execute : string -> variant -> variant
  method register_command : plugin -> string -> string -> command_permission -> command_instance
end

class configuration : instance
end

class configure_server_service : instance
end

class constraint : instance
  val active : bool
  val attachment_0 : attachment
  val attachment_1 : attachment
  val color : brick_color
  val enabled : bool
  val visible : bool
end

class align_orientation : constraint
  val align_type : align_type
  val c_frame : c_frame
  val look_at_position : vector_3
  val max_angular_velocity : float
  val max_torque : float
  val mode : orientation_alignment_mode
  val primary_axis : vector_3
  val primary_axis_only : bool
  val reaction_torque_enabled : bool
  val responsiveness : float
  val rigidity_enabled : bool
  val secondary_axis : vector_3
end

class align_position : constraint
  val apply_at_center_of_mass : bool
  val force_limit_mode : force_limit_mode
  val force_relative_to : actuator_relative_to
  val max_axes_force : vector_3
  val max_force : float
  val max_velocity : float
  val mode : position_alignment_mode
  val position : vector_3
  val reaction_force_enabled : bool
  val responsiveness : float
  val rigidity_enabled : bool
end

class angular_velocity : constraint
  val angular_velocity : vector_3
  val max_torque : float
  val reaction_torque_enabled : bool
  val relative_to : actuator_relative_to
end

class animation_constraint : constraint
  val is_kinematic : bool
  val max_force : float
  val max_torque : float
  val transform : c_frame
end

class ball_socket_constraint : constraint
  val limits_enabled : bool
  val max_friction_torque : float
  val radius : float
  val restitution : float
  val twist_limits_enabled : bool
  val twist_lower_angle : float
  val twist_upper_angle : float
  val upper_angle : float
end

class hinge_constraint : constraint
  val actuator_type : actuator_type
  val angular_responsiveness : float
  val angular_speed : float
  val angular_velocity : float
  val current_angle : float
  val limits_enabled : bool
  val lower_angle : float
  val motor_max_acceleration : float
  val motor_max_torque : float
  val radius : float
  val restitution : float
  val servo_max_torque : float
  val softlock_servo_upon_reaching_target : bool
  val target_angle : float
  val upper_angle : float
end

class line_force : constraint
  val apply_at_center_of_mass : bool
  val inverse_square_law : bool
  val magnitude : float
  val max_force : float
  val reaction_force_enabled : bool
end

class linear_velocity : constraint
  val force_limit_mode : force_limit_mode
  val force_limits_enabled : bool
  val line_direction : vector_3
  val line_velocity : float
  val max_axes_force : vector_3
  val max_force : float
  val max_planar_axes_force : vector_2
  val plane_velocity : vector_2
  val primary_tangent_axis : vector_3
  val relative_to : actuator_relative_to
  val secondary_tangent_axis : vector_3
  val vector_velocity : vector_3
  val velocity_constraint_mode : velocity_constraint_mode
end

class plane_constraint : constraint
end

class plane : plane_constraint
end

class rigid_constraint : constraint
end

class rod_constraint : constraint
  val current_distance : float
  val length : float
  val limit_angle_0 : float
  val limit_angle_1 : float
  val limits_enabled : bool
  val thickness : float
end

class rope_constraint : constraint
  val current_distance : float
  val length : float
  val restitution : float
  val thickness : float
  val winch_enabled : bool
  val winch_force : float
  val winch_responsiveness : float
  val winch_speed : float
  val winch_target : float
end

class sliding_ball_constraint : constraint
  val actuator_type : actuator_type
  val current_position : float
  val limits_enabled : bool
  val linear_responsiveness : float
  val lower_limit : float
  val motor_max_acceleration : float
  val motor_max_force : float
  val restitution : float
  val servo_max_force : float
  val size : float
  val softlock_servo_upon_reaching_target : bool
  val speed : float
  val target_position : float
  val upper_limit : float
  val velocity : float
end

class cylindrical_constraint : sliding_ball_constraint
  val angular_actuator_type : actuator_type
  val angular_limits_enabled : bool
  val angular_responsiveness : float
  val angular_restitution : float
  val angular_speed : float
  val angular_velocity : float
  val current_angle : float
  val inclination_angle : float
  val lower_angle : float
  val motor_max_angular_acceleration : float
  val motor_max_torque : float
  val rotation_axis_visible : bool
  val servo_max_torque : float
  val softlock_angular_servo_upon_reaching_target : bool
  val target_angle : float
  val upper_angle : float
  val world_rotation_axis : vector_3
end

class prismatic_constraint : sliding_ball_constraint
end

class spring_constraint : constraint
  val coils : float
  val current_length : float
  val damping : float
  val free_length : float
  val limits_enabled : bool
  val max_force : float
  val max_length : float
  val min_length : float
  val radius : float
  val stiffness : float
  val thickness : float
end

class torque : constraint
  val relative_to : actuator_relative_to
  val torque : vector_3
end

class torsion_spring_constraint : constraint
  val coils : float
  val current_angle : float
  val damping : float
  val limits_enabled : bool
  val max_angle : float
  val max_torque : float
  val radius : float
  val restitution : float
  val stiffness : float
end

class universal_constraint : constraint
  val limits_enabled : bool
  val max_angle : float
  val radius : float
  val restitution : float
end

class vector_force : constraint
  val apply_at_center_of_mass : bool
  val force : vector_3
  val relative_to : actuator_relative_to
end

class content_provider : instance
  val base_url : string
  val request_queue_size : int
  method calculate_num_triangles_in_mesh_sync : string -> int
  method get_asset_fetch_status : content -> asset_fetch_status
  method get_asset_fetch_status_changed_signal : content -> rbx_script_signal
  method get_detailed_failed_requests : unit -> array
  method get_failed_requests : unit -> array
  method list_encrypted_assets : unit -> array
  method register_default_encryption_key : string -> unit
  method register_default_session_key : string -> unit
  method register_encrypted_asset : content -> string -> unit
  method register_session_encrypted_asset : content -> string -> unit
  method set_base_url : string -> unit
  method unregister_default_encryption_key : unit -> unit
  method unregister_encrypted_asset : content -> unit
  method calculate_num_triangles_in_mesh : string -> int
  method preload_async : array -> function -> unit
end

class context_action_service : instance
  method bind_action : string -> function -> bool -> tuple -> unit
  method bind_action_at_priority : string -> function -> bool -> int -> tuple -> unit
  method bind_activate : user_input_type -> tuple -> unit
  method bind_core_action : string -> function -> bool -> tuple -> unit
  method bind_core_action_at_priority : string -> function -> bool -> int -> tuple -> unit
  method bind_core_activate : user_input_type -> tuple -> unit
  method call_function : string -> user_input_state -> instance -> tuple
  method fire_action_button_found_signal : string -> instance -> unit
  method get_all_bound_action_info : unit -> dictionary
  method get_all_bound_core_action_info : unit -> dictionary
  method get_bound_action_info : string -> dictionary
  method get_bound_core_action_info : string -> dictionary
  method get_current_local_tool_icon : unit -> string
  method set_description : string -> string -> unit
  method set_image : string -> string -> unit
  method set_position : string -> u_dim_2 -> unit
  method set_title : string -> string -> unit
  method unbind_action : string -> unit
  method unbind_activate : user_input_type -> key_code -> unit
  method unbind_all_actions : unit -> unit
  method unbind_core_action : string -> unit
  method unbind_core_activate : user_input_type -> key_code -> unit
  method get_button : string -> instance
end

class controller : instance
  method bind_button : button -> string -> unit
  method get_button : button -> bool
  method unbind_button : button -> unit
end

class humanoid_controller : controller
end

class skateboard_controller : controller
  val steer : float
  val throttle : float
end

class vehicle_controller : controller
end

class controller_base : instance
  val active : bool
  val balance_rigidity_enabled : bool
  val move_speed_factor : float
end

class air_controller : controller_base
  val balance_max_torque : float
  val balance_speed : float
  val linear_impulse : vector_3
  val maintain_angular_momentum : bool
  val maintain_linear_momentum : bool
  val move_max_force : float
  val turn_max_torque : float
  val turn_speed_factor : float
end

class climb_controller : controller_base
  val acceleration_time : float
  val balance_max_torque : float
  val balance_speed : float
  val move_max_force : float
end

class ground_controller : controller_base
  val acceleration_lean : float
  val acceleration_time : float
  val balance_max_torque : float
  val balance_speed : float
  val deceleration_time : float
  val friction : float
  val friction_weight : float
  val ground_offset : float
  val stand_force : float
  val stand_speed : float
  val turn_speed_factor : float
end

class swim_controller : controller_base
  val acceleration_time : float
  val pitch_max_torque : float
  val pitch_speed_factor : float
  val roll_max_torque : float
  val roll_speed_factor : float
end

class controller_manager : instance
  val active_controller : controller_base
  val base_move_speed : float
  val base_turn_speed : float
  val climb_sensor : controller_sensor
  val facing_direction : vector_3
  val ground_sensor : controller_sensor
  val moving_direction : vector_3
  val root_part : base_part
end

class controller_service : instance
end

class cookies_service : instance
end

class core_packages : instance
end

class core_script_debugging_manager_helper : instance
end

class core_script_sync_service : instance
  method get_script_file_path : instance -> variant
end

class creation_db_service : instance
end

class cross_dm_script_change_listener : instance
  method is_watching_script_line : string -> int -> bool
  method start_watching_script_line : string -> int -> int -> unit
end

class custom_event : instance
  method get_attached_receivers : unit -> objects
  method set_value : float -> unit
end

class custom_event_receiver : instance
  val source : instance
  method get_current_value : unit -> float
end

class data_model_mesh : instance
  val offset : vector_3
  val scale : vector_3
  val vertex_color : vector_3
end

class bevel_mesh : data_model_mesh
end

class block_mesh : bevel_mesh
end

class cylinder_mesh : bevel_mesh
end

class editable_mesh : data_model_mesh
  val mesh_version : int
  method add_triangle : int -> int -> int -> int
  method add_vertex : vector_3 -> int
  method find_closest_point_on_surface : vector_3 -> tuple
  method find_closest_vertex : vector_3 -> int
  method find_vertices_within_sphere : vector_3 -> float -> array
  method get_adjacent_triangles : int -> array
  method get_adjacent_vertices : int -> array
  method get_position : int -> vector_3
  method get_triangle_vertices : int -> tuple
  method get_triangles : unit -> array
  method get_uv : int -> vector_2
  method get_vertex_color : int -> color_3
  method get_vertex_color_alpha : int -> float
  method get_vertex_normal : int -> vector_3
  method get_vertices : unit -> array
  method raycast_local : vector_3 -> vector_3 -> tuple
  method remove_triangle : int -> unit
  method remove_vertex : int -> unit
  method set_position : int -> vector_3 -> unit
  method set_uv : int -> vector_2 -> unit
  method set_vertex_color : int -> color_3 -> unit
  method set_vertex_color_alpha : int -> float -> unit
  method set_vertex_normal : int -> vector_3 -> unit
  method create_mesh_part_async : collision_fidelity -> mesh_part
end

class file_mesh : data_model_mesh
  val mesh_id : content
  val texture_id : content
end

class special_mesh : file_mesh
  val mesh_type : mesh_type
end

class data_model_patch_service : instance
  method get_patch : string -> instance
  method register_patch : string -> string -> string -> int -> unit
  method update_patch : int -> string -> function -> unit
end

class data_model_session : instance
  val current_data_model_type : studio_data_model_type
  val session_id : string
end

class data_store_get_options : instance
  val use_cache : bool
end

class data_store_increment_options : instance
  method get_metadata : unit -> dictionary
  method set_metadata : dictionary -> unit
end

class data_store_info : instance
  val created_time : int
  val data_store_name : string
  val updated_time : int
end

class data_store_key : instance
  val key_name : string
end

class data_store_key_info : instance
  val created_time : int
  val updated_time : int
  val version : string
  method get_metadata : unit -> dictionary
  method get_user_ids : unit -> array
end

class data_store_object_version_info : instance
  val created_time : int
  val is_deleted : bool
  val version : string
end

class data_store_options : instance
  val all_scopes : bool
  method set_experimental_features : dictionary -> unit
end

class data_store_service : instance
  val automatic_retry : bool
  method get_data_store : string -> string -> instance -> global_data_store
  method get_global_data_store : unit -> global_data_store
  method get_ordered_data_store : string -> string -> ordered_data_store
  method get_request_budget_for_request_type : data_store_request_type -> int
  method list_data_stores_async : string -> int -> string -> data_store_listing_pages
end

class data_store_set_options : instance
  method get_metadata : unit -> dictionary
  method set_metadata : dictionary -> unit
end

class debris : instance
  method add_item : instance -> double -> unit
  method set_legacy_max_items : bool -> unit
end

class debug_settings : instance
  val data_model : int
  val instance_count : int
  val is_script_stack_tracing_enabled : bool
  val job_count : int
  val player_count : int
  val report_sound_warnings : bool
  val roblox_version : string
  val tick_count_precise_override : tick_count_sample_method
end

class debuggable_plugin_watcher : instance
end

class debugger_breakpoint : instance
  val condition : string
  val continue_execution : bool
  val is_enabled : bool
  val line : int
  val log_expression : string
  val is_context_dependent_breakpoint : bool
end

class debugger_connection : instance
  val error_message : string
  val has_error : bool
  val id : int
  val is_paused : bool
  method add_breakpoint : string -> int -> breakpoint -> unit
  method close : unit -> unit
  method evaluate_watch : string -> stack_frame -> function -> int
  method get_frame_by_id : int -> stack_frame
  method get_source : string -> function -> int
  method get_thread_by_id : int -> thread_state
  method get_threads : function -> int
  method get_variable_by_id : int -> debugger_variable
  method pause : thread_state -> function -> int
  method populate : instance -> function -> int
  method remove_breakpoint : breakpoint -> unit
  method resume : thread_state -> function -> int
  method set_exception_break_mode : debugger_exception_break_mode -> function -> int
  method set_variable : debugger_variable -> string -> function -> int
  method step : thread_state -> function -> int
  method step_in : thread_state -> function -> int
  method step_out : thread_state -> function -> int
  method update_selected_frame : int -> int -> unit
end

class local_debugger_connection : debugger_connection
end

class debugger_connection_manager : instance
  val timeout : double
  method connect_local : data_model -> int
  method connect_remote : string -> int -> int
  method focus_connection : debugger_connection -> unit
  method get_connection_by_id : int -> debugger_connection
end

class debugger_lua_response : instance
  val is_error : bool
  val is_success : bool
  val message : string
  val request_id : int
  val status : debugger_status
  method get_arg : unit -> variant
end

class debugger_manager : instance
  val debugging_enabled : bool
  method add_debugger : instance -> instance
  method enable_debugging : unit -> unit
  method get_debuggers : unit -> objects
  method resume : unit -> unit
end

class debugger_ui_service : instance
  method edit_breakpoint : int -> unit
  method edit_watch : string -> unit
  method is_connection_for_play_data_model : int -> bool
  method open_exception_message_popup : string -> int -> unit
  method open_script_at_line : string -> int -> int -> bool -> unit
  method pause : unit -> unit
  method remove_script_line_markers : int -> bool -> unit
  method resume : unit -> unit
  method set_current_thread_id : int -> unit
  method set_script_line_marker : string -> int -> int -> bool -> unit
  method set_watch_expressions : array -> unit
end

class debugger_variable : instance
  val name : string
  val populated : bool
  val type : string
  val value : string
  val variable_id : int
  val variables_count : int
  method get_variable_by_index : int -> debugger_variable
  method get_variable_by_name : string -> debugger_variable
end

class debugger_watch : instance
  val expression : string
end

class device_id_service : instance
  method get_device_id : unit -> string
end

class dialog : instance
  val behavior_type : dialog_behavior_type
  val conversation_distance : float
  val goodbye_choice_active : bool
  val goodbye_dialog : string
  val in_use : bool
  val initial_prompt : string
  val purpose : dialog_purpose
  val tone : dialog_tone
  val trigger_distance : float
  val trigger_offset : vector_3
  method get_current_players : unit -> objects
  method set_player_is_using : instance -> bool -> unit
  method signal_dialog_choice_selected : instance -> instance -> unit
end

class dialog_choice : instance
  val goodbye_choice_active : bool
  val goodbye_dialog : string
  val response_dialog : string
  val user_dialog : string
end

class drafts_service : instance
  method discard_edits : objects -> unit
  method get_draft_status : instance -> draft_status_code
  method get_editors : instance -> objects
  method restore_scripts : objects -> unit
  method show_diffs_against_base : objects -> unit
  method show_diffs_against_server : objects -> unit
  method commit_edits : objects -> unit
  method get_drafts : unit -> objects
  method update_to_latest_version : objects -> unit
end

class dragger : instance
  method axis_rotate : axis -> unit
  method mouse_down : instance -> vector_3 -> objects -> unit
  method mouse_move : ray -> unit
  method mouse_up : unit -> unit
end

class dragger_service : instance
  val align_dragged_objects : bool
  val angle_snap_enabled : bool
  val angle_snap_increment : float
  val animate_hover : bool
  val collisions_enabled : bool
  val dragger_coordinate_space : dragger_coordinate_space
  val dragger_movement_mode : dragger_movement_mode
  val geometry_snap_color : color_3
  val hover_animate_frequency : float
  val hover_line_thickness : int
  val hover_thickness : float
  val joints_enabled : bool
  val linear_snap_enabled : bool
  val linear_snap_increment : float
  val pivot_snap_to_geometry : bool
  val show_hover : bool
  val show_pivot_indicator : bool
end

class editable_image : instance
  val size : vector_2
  method copy : vector_2 -> vector_2 -> editable_image
  method crop : vector_2 -> vector_2 -> unit
  method draw_circle : vector_2 -> int -> color_3 -> float -> unit
  method draw_image : vector_2 -> editable_image -> image_combine_type -> unit
  method draw_line : vector_2 -> vector_2 -> color_3 -> float -> unit
  method draw_rectangle : vector_2 -> vector_2 -> color_3 -> float -> unit
  method read_pixels : vector_2 -> vector_2 -> array
  method resize : vector_2 -> unit
  method rotate : float -> bool -> unit
  method write_pixels : vector_2 -> vector_2 -> array -> unit
end

class engine_api_cloud_processing_service : instance
end

class euler_rotation_curve : instance
  val rotation_order : rotation_order
  method get_angles_at_time : float -> array
  method get_rotation_at_time : float -> c_frame
  method x : unit -> float_curve
  method y : unit -> float_curve
  method z : unit -> float_curve
end

class event_ingest_service : instance
  method send_event_deferred : string -> string -> string -> dictionary -> unit
  method send_event_immediately : string -> string -> string -> dictionary -> unit
  method set_rbx_event : string -> string -> string -> dictionary -> unit
  method set_rbx_event_stream : string -> string -> string -> dictionary -> unit
end

class experience_auth_service : instance
  method scope_check_ui_complete : string -> array -> scope_check_result -> dictionary -> unit
end

class experience_invite_options : instance
  val invite_message_id : string
  val invite_user : int
  val launch_data : string
  val prompt_message : string
end

class experience_notification_service : instance
  method create_user_notification_async : string -> user_notification -> instance
end

class experience_service : instance
  method launch_experience : dictionary -> string
  method launch_experience_from_source : dictionary -> string -> string
  method launch_experience_from_source_with_callback : dictionary -> string -> function -> unit
  method register_for_experience_join : function -> rbx_script_connection
  method register_for_experience_leave : function -> rbx_script_connection
end

class experience_state_capture_service : instance
  val is_in_capture_mode : bool
  method reset_highlight : unit -> unit
  method toggle_capture_mode : unit -> unit
end

class explosion : instance
  val blast_pressure : float
  val blast_radius : float
  val destroy_joint_radius_percent : float
  val explosion_type : explosion_type
  val position : vector_3
  val time_scale : float
  val visible : bool
end

class face_animator_service : instance
  val audio_animation_enabled : bool
  val face_tracking_status_enum : tracker_face_tracking_status
  val flip_head_orientation : bool
  val video_animation_enabled : bool
  method get_tracker_lod_controller : unit -> tracker_lod_controller
  method init : bool -> bool -> unit
  method is_started : unit -> bool
  method start : unit -> unit
  method step : unit -> unit
  method stop : unit -> unit
end

class face_controls : instance
  val chin_raiser : float
  val chin_raiser_upper_lip : float
  val corrugator : float
  val eyes_look_down : float
  val eyes_look_left : float
  val eyes_look_right : float
  val eyes_look_up : float
  val flat_pucker : float
  val funneler : float
  val jaw_drop : float
  val jaw_left : float
  val jaw_right : float
  val left_brow_lowerer : float
  val left_cheek_puff : float
  val left_cheek_raiser : float
  val left_dimpler : float
  val left_eye_closed : float
  val left_eye_upper_lid_raiser : float
  val left_inner_brow_raiser : float
  val left_lip_corner_down : float
  val left_lip_corner_puller : float
  val left_lip_stretcher : float
  val left_lower_lip_depressor : float
  val left_nose_wrinkler : float
  val left_outer_brow_raiser : float
  val left_upper_lip_raiser : float
  val lip_presser : float
  val lips_together : float
  val lower_lip_suck : float
  val mouth_left : float
  val mouth_right : float
  val pucker : float
  val right_brow_lowerer : float
  val right_cheek_puff : float
  val right_cheek_raiser : float
  val right_dimpler : float
  val right_eye_closed : float
  val right_eye_upper_lid_raiser : float
  val right_inner_brow_raiser : float
  val right_lip_corner_down : float
  val right_lip_corner_puller : float
  val right_lip_stretcher : float
  val right_lower_lip_depressor : float
  val right_nose_wrinkler : float
  val right_outer_brow_raiser : float
  val right_upper_lip_raiser : float
  val tongue_down : float
  val tongue_out : float
  val tongue_up : float
  val upper_lip_suck : float
end

class face_instance : instance
  val face : normal_id
end

class decal : face_instance
  val color_3 : color_3
  val local_transparency_modifier : float
  val texture : content
  val transparency : float
  val z_index : int
end

class texture : decal
  val offset_studs_u : float
  val offset_studs_v : float
  val studs_per_tile_u : float
  val studs_per_tile_v : float
end

class facial_animation_recording_service : instance
  val biometric_data_consent : bool
  method is_age_restricted : unit -> bool
  method check_or_request_camera_permission : unit -> string
end

class facial_animation_streaming_service_stats : instance
  method get : string -> int
  method get_with_player_id : string -> int -> int
end

class facial_animation_streaming_service_v_2 : instance
  val service_state : int
  method get_stats : unit -> facial_animation_streaming_service_stats
  method is_audio_enabled : int -> bool
  method is_place_enabled : int -> bool
  method is_server_enabled : int -> bool
  method is_video_enabled : int -> bool
  method resolve_state_for_user : int -> int
end

class facial_animation_streaming_subsession_stats : instance
end

class feature : instance
  val face_id : normal_id
  val in_out : in_out
  val left_right : left_right
  val top_bottom : top_bottom
end

class hole : feature
end

class motor_feature : feature
end

class file : instance
  val size : int
  method get_binary_contents : unit -> string
  method get_temporary_id : unit -> content
end

class fire : instance
  val color : color_3
  val enabled : bool
  val heat : float
  val secondary_color : color_3
  val size : float
  val time_scale : float
  method fast_forward : int -> unit
end

class flag_stand_service : instance
end

class float_curve : instance
  val length : int
  method get_key_at_index : int -> float_curve_key
  method get_key_indices_at_time : float -> array
  method get_keys : unit -> array
  method get_value_at_time : float -> float?
  method insert_key : float_curve_key -> array
  method remove_key_at_index : int -> int -> int
  method set_keys : array -> int
end

class flyweight_service : instance
end

class csg_dictionary_service : flyweight_service
end

class non_replicated_csg_dictionary_service : flyweight_service
end

class folder : instance
end

class force_field : instance
  val visible : bool
end

class friend_service : instance
  method get_platform_friends : unit -> array
end

class functional_test : instance
  val description : string
  method error : string -> unit
  method failed : string -> unit
  method pass : string -> unit
  method passed : string -> unit
  method warn : string -> unit
end

class game_pass_service : instance
end

class game_settings : instance
  val video_capture_enabled : bool
  val video_recording : bool
end

class gamepad_service : instance
  val gamepad_cursor_enabled : bool
  method disable_gamepad_cursor : unit -> unit
  method enable_gamepad_cursor : instance -> unit
  method get_gamepad_cursor_position : unit -> vector_2
  method set_gamepad_cursor_position : vector_2 -> unit
end

class geometry : instance
end

class geometry_service : instance
  method calculate_constraints_to_preserve : instance -> array -> dictionary -> array
  method hash_mesh_async : content -> string
  method intersect_async : instance -> array -> dictionary -> array
  method stitch_meshes_async : array -> content
  method subtract_async : instance -> array -> dictionary -> array
  method union_async : instance -> array -> dictionary -> array
end

class get_text_bounds_params : instance
  val font : font
  val size : float
  val text : string
  val width : float
end

class global_data_store : instance
  method get_async : string -> data_store_get_options -> tuple
  method increment_async : string -> int -> array -> data_store_increment_options -> variant
  method remove_async : string -> tuple
  method set_async : string -> variant -> array -> data_store_set_options -> variant
  method update_async : string -> function -> tuple
end

class data_store : global_data_store
  method get_version_async : string -> string -> tuple
  method list_keys_async : string -> int -> string -> bool -> data_store_key_pages
  method list_versions_async : string -> sort_direction -> int -> int -> int -> data_store_version_pages
  method remove_version_async : string -> string -> unit
end

class ordered_data_store : global_data_store
  method get_sorted_async : bool -> int -> variant -> variant -> instance
end

class google_analytics_configuration : instance
end

class group_service : instance
  method get_allies_async : int -> standard_pages
  method get_enemies_async : int -> standard_pages
  method get_group_info_async : int -> variant
  method get_groups_async : int -> array
end

class gui_base : instance
end

class gui_base_2_d : gui_base
  val absolute_position : vector_2
  val absolute_rotation : float
  val absolute_size : vector_2
  val auto_localize : bool
  val clipped_rect : rect
  val is_not_occluded : bool
  val raw_rect_2_d : rect
  val root_localization_table : localization_table
  val selection_behavior_down : selection_behavior
  val selection_behavior_left : selection_behavior
  val selection_behavior_right : selection_behavior
  val selection_behavior_up : selection_behavior
  val selection_group : bool
  val total_group_scale : float
end

class gui_object : gui_base_2_d
  val active : bool
  val anchor_point : vector_2
  val automatic_size : automatic_size
  val background_color_3 : color_3
  val background_transparency : float
  val border_color_3 : color_3
  val border_mode : border_mode
  val border_size_pixel : int
  val clips_descendants : bool
  val gui_state : gui_state
  val interactable : bool
  val layout_order : int
  val next_selection_down : gui_object
  val next_selection_left : gui_object
  val next_selection_right : gui_object
  val next_selection_up : gui_object
  val position : u_dim_2
  val rotation : float
  val selectable : bool
  val selection_image_object : gui_object
  val selection_order : int
  val size : u_dim_2
  val size_constraint : size_constraint
  val transparency : float
  val visible : bool
  val z_index : int
  method tween_position : u_dim_2 -> easing_direction -> easing_style -> float -> bool -> function -> bool
  method tween_size : u_dim_2 -> easing_direction -> easing_style -> float -> bool -> function -> bool
  method tween_size_and_position : u_dim_2 -> u_dim_2 -> easing_direction -> easing_style -> float -> bool -> function -> bool
end

class canvas_group : gui_object
  val group_color_3 : color_3
  val group_transparency : float
end

class frame : gui_object
  val style : frame_style
end

class gui_button : gui_object
  val auto_button_color : bool
  val modal : bool
  val selected : bool
  val style : button_style
end

class image_button : gui_button
  val content_image_size : vector_2
  val hover_image : content
  val image : content
  val image_color_3 : color_3
  val image_rect_offset : vector_2
  val image_rect_size : vector_2
  val image_transparency : float
  val is_loaded : bool
  val pressed_image : content
  val resample_mode : resampler_mode
  val scale_type : scale_type
  val slice_center : rect
  val slice_scale : float
  val tile_size : u_dim_2
  method set_enable_content_image_size_changed_events : bool -> unit
end

class text_button : gui_button
  val content_text : string
  val font : font
  val font_face : font
  val line_height : float
  val localization_match_identifier : string
  val localization_matched_source_text : string
  val localized_text : string
  val max_visible_graphemes : int
  val rich_text : bool
  val text : string
  val text_bounds : vector_2
  val text_color_3 : color_3
  val text_direction : text_direction
  val text_fits : bool
  val text_scaled : bool
  val text_size : float
  val text_stroke_color_3 : color_3
  val text_stroke_transparency : float
  val text_transparency : float
  val text_truncate : text_truncate
  val text_wrapped : bool
  val text_x_alignment : text_x_alignment
  val text_y_alignment : text_y_alignment
  method set_text_from_input : string -> unit
end

class gui_label : gui_object
end

class image_label : gui_label
  val content_image_size : vector_2
  val image : content
  val image_color_3 : color_3
  val image_rect_offset : vector_2
  val image_rect_size : vector_2
  val image_transparency : float
  val is_loaded : bool
  val resample_mode : resampler_mode
  val scale_type : scale_type
  val slice_center : rect
  val slice_scale : float
  val tile_size : u_dim_2
  method set_enable_content_image_size_changed_events : bool -> unit
end

class text_label : gui_label
  val content_text : string
  val font : font
  val font_face : font
  val line_height : float
  val localization_match_identifier : string
  val localization_matched_source_text : string
  val localized_text : string
  val max_visible_graphemes : int
  val rich_text : bool
  val text : string
  val text_bounds : vector_2
  val text_color_3 : color_3
  val text_direction : text_direction
  val text_fits : bool
  val text_scaled : bool
  val text_size : float
  val text_stroke_color_3 : color_3
  val text_stroke_transparency : float
  val text_transparency : float
  val text_truncate : text_truncate
  val text_wrapped : bool
  val text_x_alignment : text_x_alignment
  val text_y_alignment : text_y_alignment
  method set_text_from_input : string -> unit
end

class scrolling_frame : gui_object
  val absolute_canvas_size : vector_2
  val absolute_window_size : vector_2
  val automatic_canvas_size : automatic_size
  val bottom_image : content
  val canvas_position : vector_2
  val canvas_size : u_dim_2
  val elastic_behavior : elastic_behavior
  val horizontal_bar_rect : rect
  val horizontal_scroll_bar_inset : scroll_bar_inset
  val max_canvas_position : vector_2
  val mid_image : content
  val scroll_bar_image_color_3 : color_3
  val scroll_bar_image_transparency : float
  val scroll_bar_thickness : int
  val scroll_velocity : vector_2
  val scrolling_direction : scrolling_direction
  val scrolling_enabled : bool
  val top_image : content
  val vertical_bar_rect : rect
  val vertical_scroll_bar_inset : scroll_bar_inset
  val vertical_scroll_bar_position : vertical_scroll_bar_position
  method clear_inertial_scrolling : unit -> unit
  method get_sampled_inertial_velocity : unit -> vector_2
  method scroll_to_top : unit -> unit
end

class text_box : gui_object
  val clear_text_on_focus : bool
  val content_text : string
  val cursor_position : int
  val font : font
  val font_face : font
  val line_height : float
  val localization_match_identifier : string
  val localization_matched_source_text : string
  val manual_focus_release : bool
  val max_visible_graphemes : int
  val multi_line : bool
  val overlay_native_input : bool
  val placeholder_color_3 : color_3
  val placeholder_text : string
  val return_key_type : return_key_type
  val rich_text : bool
  val selection_start : int
  val show_native_input : bool
  val text : string
  val text_bounds : vector_2
  val text_color_3 : color_3
  val text_direction : text_direction
  val text_editable : bool
  val text_fits : bool
  val text_input_type : text_input_type
  val text_scaled : bool
  val text_size : float
  val text_stroke_color_3 : color_3
  val text_stroke_transparency : float
  val text_transparency : float
  val text_truncate : text_truncate
  val text_wrapped : bool
  val text_x_alignment : text_x_alignment
  val text_y_alignment : text_y_alignment
  method capture_focus : unit -> unit
  method is_focused : unit -> bool
  method release_focus : bool -> unit
  method reset_keyboard_mode : unit -> unit
  method set_text_from_input : string -> unit
end

class video_frame : gui_object
  val is_loaded : bool
  val looped : bool
  val playing : bool
  val resolution : vector_2
  val time_length : double
  val time_position : double
  val video : content
  val volume : float
  method pause : unit -> unit
  method play : unit -> unit
end

class viewport_frame : gui_object
  val ambient : color_3
  val current_camera : camera
  val image_color_3 : color_3
  val image_transparency : float
  val is_mirrored : bool
  val light_color : color_3
  val light_direction : vector_3
  method capture_snapshot_async : unit -> content
end

class layer_collector : gui_base_2_d
  val enabled : bool
  val reset_on_spawn : bool
  val z_index_behavior : z_index_behavior
end

class billboard_gui : layer_collector
  val active : bool
  val adornee : instance
  val always_on_top : bool
  val brightness : float
  val clips_descendants : bool
  val current_distance : float
  val distance_lower_limit : float
  val distance_step : float
  val distance_upper_limit : float
  val extents_offset : vector_3
  val extents_offset_world_space : vector_3
  val light_influence : float
  val max_distance : float
  val player_to_hide_from : instance
  val size : u_dim_2
  val size_offset : vector_2
  val studs_offset : vector_3
  val studs_offset_world_space : vector_3
  method get_screen_space_bounds : unit -> variant
end

class plugin_gui : layer_collector
  val title : string
  method bind_to_close : function -> unit
  method get_relative_mouse_position : unit -> vector_2
end

class dock_widget_plugin_gui : plugin_gui
  val host_widget_was_restored : bool
  method request_raise : unit -> unit
end

class q_widget_plugin_gui : plugin_gui
end

class screen_gui : layer_collector
  val clip_to_device_safe_area : bool
  val display_order : int
  val ignore_gui_inset : bool
  val on_top_of_core_blur : bool
  val safe_area_compatibility : safe_area_compatibility
  val screen_insets : screen_insets
end

class gui_main : screen_gui
end

class surface_gui_base : layer_collector
  val active : bool
  val adornee : instance
  val face : normal_id
end

class ad_gui : surface_gui_base
  val ad_shape : ad_shape
  val enable_video_ads : bool
  val fallback_image : content
  val status : ad_unit_status
end

class surface_gui : surface_gui_base
  val always_on_top : bool
  val brightness : float
  val canvas_size : vector_2
  val clips_descendants : bool
  val horizontal_curvature : float
  val light_influence : float
  val max_distance : float
  val pixels_per_stud : float
  val shape : surface_gui_shape
  val sizing_mode : surface_gui_sizing_mode
  val tool_punch_through_distance : float
  val z_offset : float
end

class gui_base_3_d : gui_base
  val color_3 : color_3
  val transparency : float
  val visible : bool
end

class floor_wire : gui_base_3_d
  val cycle_offset : float
  val from : base_part
  val studs_between_textures : float
  val texture : content
  val texture_size : vector_2
  val to : base_part
  val velocity : float
  val wire_radius : float
end

class instance_adornment : gui_base_3_d
  val adornee : instance
end

class selection_box : instance_adornment
  val line_thickness : float
  val studio_selection_box : bool
  val surface_color_3 : color_3
  val surface_transparency : float
end

class pv_adornment : gui_base_3_d
  val adornee : pv_instance
end

class handle_adornment : pv_adornment
  val adorn_culling_mode : adorn_culling_mode
  val always_on_top : bool
  val c_frame : c_frame
  val size_relative_offset : vector_3
  val z_index : int
end

class box_handle_adornment : handle_adornment
  val size : vector_3
end

class cone_handle_adornment : handle_adornment
  val height : float
  val radius : float
end

class cylinder_handle_adornment : handle_adornment
  val angle : float
  val height : float
  val inner_radius : float
  val radius : float
end

class image_handle_adornment : handle_adornment
  val image : content
  val size : vector_2
end

class line_handle_adornment : handle_adornment
  val length : float
  val thickness : float
end

class sphere_handle_adornment : handle_adornment
  val radius : float
end

class wireframe_handle_adornment : handle_adornment
  val scale : vector_3
  method add_line : vector_3 -> vector_3 -> unit
  method add_lines : array -> unit
  method add_path : array -> bool -> unit
  method clear : unit -> unit
end

class parabola_adornment : pv_adornment
  val a : float
  val b : float
  val c : float
  val range : float
  val thickness : float
  method find_part_on_parabola : objects -> tuple
end

class selection_sphere : pv_adornment
  val surface_color_3 : color_3
  val surface_transparency : float
end

class part_adornment : gui_base_3_d
  val adornee : base_part
end

class handles_base : part_adornment
end

class arc_handles : handles_base
  val axes : axes
end

class handles : handles_base
  val faces : faces
  val style : handles_style
end

class surface_selection : part_adornment
  val target_surface : normal_id
end

class selection_lasso : gui_base_3_d
  val humanoid : humanoid
end

class selection_part_lasso : selection_lasso
  val part : base_part
end

class selection_point_lasso : selection_lasso
  val point : vector_3
end

class path_2_d : gui_base
  val absolute_size : vector_2
  val color : color_3
  val position : u_dim_2
  val selected_control_point : int
  val thickness : float
  val transparency : float
  val visible : bool
  method get_control_points : unit -> array
  method get_position_on_curve : float -> u_dim_2
  method get_position_on_curve_arc_length : float -> u_dim_2
  method get_segment_count : unit -> int
  method get_tangent_on_curve : float -> vector_2
  method get_tangent_on_curve_arc_length : float -> vector_2
  method set_control_points : array -> unit
end

class gui_service : instance
  val auto_select_gui_enabled : bool
  val core_effect_folder : folder
  val core_gui_folder : folder
  val core_gui_navigation_enabled : bool
  val gui_navigation_enabled : bool
  val menu_is_open : bool
  val preferred_transparency : float
  val reduced_motion_enabled : bool
  val selected_core_object : gui_object
  val selected_object : gui_object
  val topbar_inset : rect
  val touch_controls_enabled : bool
  method add_center_dialog : instance -> center_dialog_type -> function -> function -> unit
  method add_key : string -> unit
  method add_selection_parent : string -> instance -> unit
  method add_selection_tuple : string -> tuple -> unit
  method add_special_key : special_key -> unit
  method broadcast_notification : string -> int -> unit
  method clear_error : unit -> unit
  method close_inspect_menu : unit -> unit
  method close_stats_based_on_input_string : string -> bool
  method force_ten_foot_interface : bool -> unit
  method get_brick_count : unit -> int
  method get_closest_dialog_to_position : vector_3 -> instance
  method get_emotes_menu_open : unit -> bool
  method get_error_code : unit -> connection_error
  method get_error_type : unit -> connection_error
  method get_gameplay_paused_notification_enabled : unit -> bool
  method get_gui_inset : unit -> tuple
  method get_gui_is_visible : gui_type -> bool
  method get_hardware_safe_viewport : unit -> vector_2
  method get_inspect_menu_enabled : unit -> bool
  method get_notification_type_list : unit -> dictionary
  method get_resolution_scale : unit -> int
  method get_safe_zone_offsets : unit -> dictionary
  method get_ui_message : unit -> string
  method inspect_player_from_humanoid_description : instance -> string -> unit
  method inspect_player_from_user_id : int -> unit
  method inspect_player_from_user_id_with_ctx : int -> string -> unit
  method is_memory_tracker_enabled : unit -> bool
  method is_ten_foot_interface : unit -> bool
  method remove_center_dialog : instance -> unit
  method remove_key : string -> unit
  method remove_selection_group : string -> unit
  method remove_special_key : special_key -> unit
  method select : instance -> unit
  method send_ui_occlusion_metrics_for_query_region : u_dim_2 -> u_dim_2 -> string -> unit
  method set_emotes_menu_open : bool -> unit
  method set_gameplay_paused_notification_enabled : bool -> unit
  method set_global_gui_inset : int -> int -> int -> int -> unit
  method set_hardware_safe_area_insets : float -> float -> float -> float -> unit
  method set_inspect_menu_enabled : bool -> unit
  method set_menu_is_open : bool -> string -> unit
  method set_purchase_prompt_is_shown : bool -> unit
  method set_safe_zone_offsets : float -> float -> float -> float -> unit
  method set_topbar_inset : rect -> unit
  method set_ui_message : ui_message_type -> string -> unit
  method show_stats_based_on_input_string : string -> bool
  method toggle_fullscreen : unit -> unit
  method toggle_gui_is_visible_for_captures : gui_type -> unit
  method toggle_gui_is_visible_if_allowed : gui_type -> unit
  method get_screen_resolution : unit -> vector_2
end

class guid_registry_service : instance
end

class haptic_service : instance
  method get_motor : user_input_type -> vibration_motor -> tuple
  method is_motor_supported : user_input_type -> vibration_motor -> bool
  method is_vibration_supported : user_input_type -> bool
  method set_motor : user_input_type -> vibration_motor -> tuple -> unit
end

class heightmap_importer_service : instance
  method cancel_import_heightmap : unit -> unit
  method is_valid_colormap : content -> tuple
  method is_valid_heightmap : content -> tuple
  method set_import_heightmap_paused : bool -> unit
  method get_heightmap_preview_async : content -> tuple
  method import_heightmap : region_3 -> content -> content -> material -> unit
end

class hidden_surface_removal_asset : instance
end

class highlight : instance
  val adornee : instance
  val depth_mode : highlight_depth_mode
  val enabled : bool
  val fill_color : color_3
  val fill_transparency : float
  val line_thickness : int
  val outline_color : color_3
  val outline_transparency : float
  val reserved_id : reserved_highlight_id
end

class hopper : instance
end

class http_rbx_api_service : instance
  method get_documentation_url : string -> string
  method get_async : string -> throttling_priority -> http_request_type -> string
  method get_async_full_url : string -> throttling_priority -> http_request_type -> string
  method post_async : string -> string -> throttling_priority -> http_content_type -> http_request_type -> string
  method post_async_full_url : string -> string -> throttling_priority -> http_content_type -> http_request_type -> string
  method request_async : dictionary -> throttling_priority -> http_content_type -> http_request_type -> string
  method request_limited_async : dictionary -> throttling_priority -> http_content_type -> http_request_type -> string
end

class http_request : instance
  method cancel : unit -> unit
  method start : function -> unit
end

class http_service : instance
  val http_enabled : bool
  method generate_guid : bool -> string
  method get_http_enabled : unit -> bool
  method get_secret : string -> secret
  method get_user_agent : unit -> string
  method json_decode : string -> variant
  method json_encode : variant -> string
  method request_internal : dictionary -> instance
  method set_http_enabled : bool -> unit
  method url_encode : string -> string
  method get_async : string -> bool -> variant -> string
  method post_async : string -> string -> http_content_type -> bool -> variant -> string
  method request_async : dictionary -> dictionary
end

class humanoid : instance
  val auto_jump_enabled : bool
  val auto_rotate : bool
  val automatic_scaling_enabled : bool
  val break_joints_on_death : bool
  val camera_offset : vector_3
  val display_distance_type : humanoid_display_distance_type
  val display_name : string
  val evaluate_state_machine : bool
  val floor_material : material
  val health : float
  val health_display_distance : float
  val health_display_type : humanoid_health_display_type
  val hip_height : float
  val internal_display_name : string
  val jump : bool
  val jump_height : float
  val jump_power : float
  val max_health : float
  val max_slope_angle : float
  val move_direction : vector_3
  val name_display_distance : float
  val name_occlusion : name_occlusion
  val platform_stand : bool
  val requires_neck : bool
  val rig_type : humanoid_rig_type
  val root_part : base_part
  val seat_part : base_part
  val sit : bool
  val target_point : vector_3
  val use_jump_power : bool
  val walk_speed : float
  val walk_to_part : base_part
  val walk_to_point : vector_3
  method add_accessory : instance -> unit
  method build_rig_from_attachments : unit -> unit
  method cache_defaults : unit -> unit
  method change_state : humanoid_state_type -> unit
  method equip_tool : instance -> unit
  method get_accessories : unit -> array
  method get_accessory_handle_scale : instance -> body_part_r_15 -> vector_3
  method get_applied_description : unit -> humanoid_description
  method get_body_part_r_15 : instance -> body_part_r_15
  method get_limb : instance -> limb
  method get_move_velocity : unit -> vector_3
  method get_state : unit -> humanoid_state_type
  method get_state_enabled : humanoid_state_type -> bool
  method move : vector_3 -> bool -> unit
  method move_to : vector_3 -> instance -> unit
  method remove_accessories : unit -> unit
  method replace_body_part_r_15 : body_part_r_15 -> base_part -> bool
  method set_click_to_walk_enabled : bool -> unit
  method set_state_enabled : humanoid_state_type -> bool -> unit
  method take_damage : float -> unit
  method unequip_tools : unit -> unit
  method apply_description : humanoid_description -> asset_type_verification -> unit
  method apply_description_client_server : humanoid_description -> unit
  method apply_description_reset : humanoid_description -> asset_type_verification -> unit
  method play_emote : string -> bool
  method play_emote_and_get_anim_track_by_id : int -> tuple
end

class humanoid_description : instance
  val accessory_blob : string
  val back_accessory : string
  val body_type_scale : float
  val climb_animation : int
  val depth_scale : float
  val face : int
  val face_accessory : string
  val fall_animation : int
  val front_accessory : string
  val graphic_t_shirt : int
  val hair_accessory : string
  val hat_accessory : string
  val head : int
  val head_color : color_3
  val head_scale : float
  val height_scale : float
  val idle_animation : int
  val jump_animation : int
  val left_arm : int
  val left_arm_color : color_3
  val left_leg : int
  val left_leg_color : color_3
  val mood_animation : int
  val neck_accessory : string
  val number_emotes_loaded : int
  val pants : int
  val proportion_scale : float
  val right_arm : int
  val right_arm_color : color_3
  val right_leg : int
  val right_leg_color : color_3
  val run_animation : int
  val shirt : int
  val shoulders_accessory : string
  val swim_animation : int
  val torso : int
  val torso_color : color_3
  val waist_accessory : string
  val walk_animation : int
  val width_scale : float
  method add_emote : string -> int -> unit
  method get_accessories : bool -> array
  method get_emotes : unit -> dictionary
  method get_equipped_emotes : unit -> array
  method remove_emote : string -> unit
  method set_accessories : array -> bool -> unit
  method set_emotes : dictionary -> unit
  method set_equipped_emotes : array -> unit
end

class ik_control : instance
  val chain_root : instance
  val enabled : bool
  val end_effector : instance
  val end_effector_offset : c_frame
  val offset : c_frame
  val pole : instance
  val priority : int
  val smooth_time : float
  val target : instance
  val type : ik_control_type
  val weight : float
  method get_chain_count : unit -> int
  method get_chain_length : unit -> float
  method get_node_local_c_frame : int -> c_frame
  method get_node_world_c_frame : int -> c_frame
  method get_raw_final_target : unit -> c_frame
  method get_smoothed_final_target : unit -> c_frame
end

class i_legacy_studio_bridge : instance
end

class legacy_studio_bridge : i_legacy_studio_bridge
end

class ixp_service : instance
  method clear_user_layers : unit -> unit
  method get_browser_tracker_layer_loading_status : unit -> ixp_loading_status
  method get_browser_tracker_layer_variables : string -> dictionary
  method get_browser_tracker_status_for_layer : string -> ixp_loading_status?
  method get_registered_user_layers_to_status : unit -> dictionary
  method get_user_layer_loading_status : unit -> ixp_loading_status
  method get_user_layer_variables : string -> dictionary
  method get_user_status_for_layer : string -> ixp_loading_status?
  method initialize_user_layers : int -> unit
  method log_browser_tracker_layer_exposure : string -> unit
  method log_user_layer_exposure : string -> unit
  method register_user_layers : variant -> unit
end

class incremental_patch_builder : instance
  val add_paths_to_bundle : bool
  val build_debounce_period : double
  val high_compression : bool
  val serialize_patch : bool
  val zstd_compression : bool
end

class input_object : instance
  val delta : vector_3
  val key_code : key_code
  val position : vector_3
  val user_input_state : user_input_state
  val user_input_type : user_input_type
  method is_modifier_key_down : modifier_key -> bool
end

class insert_service : instance
  val allow_client_insert_models : bool
  method get_local_file_contents : string -> string
  method load_local_asset : string -> instance
  method load_package_asset : content -> objects
  method create_mesh_part_async : content -> collision_fidelity -> render_fidelity -> mesh_part
  method get_collection : int -> array
  method get_free_decals : string -> int -> array
  method get_free_models : string -> int -> array
  method get_latest_asset_version_async : int -> int
  method get_user_sets : int -> array
  method load_asset : int -> instance
  method load_asset_version : int -> instance
  method load_asset_with_format : int -> string -> objects
  method load_package_asset_async : content -> objects
end

class joint_instance : instance
  val active : bool
  val c_0 : c_frame
  val c_1 : c_frame
  val enabled : bool
  val part_0 : base_part
  val part_1 : base_part
end

class dynamic_rotate : joint_instance
  val base_angle : float
end

class rotate_p : dynamic_rotate
end

class rotate_v : dynamic_rotate
end

class glue : joint_instance
  val f_0 : vector_3
  val f_1 : vector_3
  val f_2 : vector_3
  val f_3 : vector_3
end

class manual_surface_joint_instance : joint_instance
end

class manual_glue : manual_surface_joint_instance
end

class manual_weld : manual_surface_joint_instance
end

class motor : joint_instance
  val current_angle : float
  val desired_angle : float
  val max_velocity : float
  method set_desired_angle : float -> unit
end

class motor_6_d : motor
  val child_name : string
  val parent_name : string
  val transform : c_frame
end

class rotate : joint_instance
end

class snap : joint_instance
end

class velocity_motor : joint_instance
  val current_angle : float
  val desired_angle : float
  val hole : hole
  val max_velocity : float
end

class weld : joint_instance
end

class joints_service : instance
  method clear_join_after_move_joints : unit -> unit
  method create_join_after_move_joints : unit -> unit
  method set_join_after_move_instance : instance -> unit
  method set_join_after_move_target : instance -> unit
  method show_permissible_joints : unit -> unit
end

class keyboard_service : instance
end

class keyframe : instance
  val time : float
  method add_marker : instance -> unit
  method add_pose : instance -> unit
  method get_markers : unit -> objects
  method get_poses : unit -> objects
  method remove_marker : instance -> unit
  method remove_pose : instance -> unit
end

class keyframe_marker : instance
  val value : string
end

class keyframe_sequence_provider : instance
  method get_mem_stats : unit -> dictionary
  method register_active_keyframe_sequence : instance -> content
  method register_keyframe_sequence : instance -> content
  method get_animations : int -> instance
  method get_keyframe_sequence_async : content -> instance
end

class lsp_file_sync_service : instance
end

class language_service : instance
end

class light : instance
  val brightness : float
  val color : color_3
  val enabled : bool
  val shadows : bool
end

class point_light : light
  val range : float
end

class spot_light : light
  val angle : float
  val face : normal_id
  val range : float
end

class surface_light : light
  val angle : float
  val face : normal_id
  val range : float
end

class lighting : instance
  val ambient : color_3
  val brightness : float
  val clock_time : float
  val color_shift_bottom : color_3
  val color_shift_top : color_3
  val environment_diffuse_scale : float
  val environment_specular_scale : float
  val exposure_compensation : float
  val fog_color : color_3
  val fog_end : float
  val fog_start : float
  val geographic_latitude : float
  val global_shadows : bool
  val outdoor_ambient : color_3
  val shadow_softness : float
  val technology : technology
  val temp_use_new_sky_removal_behaviour : bool
  val time_of_day : string
  method get_minutes_after_midnight : unit -> double
  method get_moon_direction : unit -> vector_3
  method get_moon_phase : unit -> float
  method get_sun_direction : unit -> vector_3
  method set_minutes_after_midnight : double -> unit
end

class live_scripting_service : instance
end

class local_storage_service : instance
  method flush : unit -> unit
  method get_item : string -> string
  method set_item : string -> string -> unit
  method when_loaded : function -> unit
end

class app_storage_service : local_storage_service
end

class user_storage_service : local_storage_service
end

class localization_service : instance
  val force_play_mode_game_locale_id : string
  val force_play_mode_roblox_locale_id : string
  val is_text_scraper_running : bool
  val roblox_force_play_mode_game_locale_id : string
  val roblox_force_play_mode_roblox_locale_id : string
  val roblox_locale_id : string
  val system_locale_id : string
  method get_corescript_localizations : unit -> objects
  method get_table_entries : instance -> array
  method get_translator_for_player : instance -> instance
  method set_roblox_locale_id : string -> unit
  method start_text_scraper : unit -> unit
  method stop_text_scraper : unit -> unit
  method get_country_region_for_player_async : instance -> string
  method get_translator_for_locale_async : string -> instance
  method get_translator_for_player_async : instance -> instance
  method prompt_download_game_table_to_csv : instance -> unit
  method prompt_export_to_cs_vs : unit -> unit
  method prompt_import_from_cs_vs : unit -> unit
  method prompt_upload_csv_to_game_table : unit -> instance
end

class localization_table : instance
  val source_locale_id : string
  method get_entries : unit -> array
  method get_translator : string -> instance
  method remove_entry : string -> string -> string -> unit
  method remove_entry_value : string -> string -> string -> string -> unit
  method remove_target_locale : string -> unit
  method set_entries : variant -> unit
  method set_entry_context : string -> string -> string -> string -> unit
  method set_entry_example : string -> string -> string -> string -> unit
  method set_entry_key : string -> string -> string -> string -> unit
  method set_entry_source : string -> string -> string -> string -> unit
  method set_entry_value : string -> string -> string -> string -> string -> unit
  method set_is_exempt_from_ugc_analytics : bool -> unit
end

class cloud_localization_table : localization_table
end

class lod_data_entity : instance
  val entity_lod_enabled : bool
end

class lod_data_service : instance
end

class log_reporter_service : instance
  method report_log : string -> string -> bool
end

class log_service : instance
  method clear_output : unit -> unit
  method execute_script : string -> unit
  method get_http_result_history : unit -> array
  method get_log_history : unit -> array
  method request_http_result_approved : unit -> unit
  method request_server_http_result : unit -> unit
  method request_server_output : unit -> unit
end

class login_service : instance
  method logout : unit -> unit
  method prompt_login : unit -> unit
end

class lua_settings : instance
end

class lua_source_container : instance
  val current_editor : instance
  val runtime_source : string
end

class base_script : lua_source_container
  val disabled : bool
  val enabled : bool
  val linked_source : content
  val run_context : run_context
end

class core_script : base_script
end

class script : base_script
  val source : protected_string
  method get_hash : unit -> string
end

class local_script : script
end

class module_script : lua_source_container
  val linked_source : content
  val source : protected_string
end

class lua_web_service : instance
end

class luau_script_analyzer_service : instance
end

class marker_curve : instance
  val length : int
  method get_marker_at_index : int -> dictionary
  method get_markers : unit -> array
  method insert_marker_at_time : float -> string -> array
  method remove_marker_at_index : int -> int -> int
end

class marketplace_service : instance
  method player_can_make_purchases : instance -> bool
  method prepare_collectibles_purchase : instance -> int -> string -> string -> string -> int -> unit
  method prompt_bundle_purchase : instance -> int -> unit
  method prompt_collectibles_purchase : instance -> int -> string -> string -> string -> int -> unit
  method prompt_game_pass_purchase : instance -> int -> unit
  method prompt_native_purchase : instance -> string -> unit
  method prompt_native_purchase_with_local_player : string -> unit
  method prompt_premium_purchase : instance -> unit
  method prompt_product_purchase : instance -> int -> bool -> currency_type -> unit
  method prompt_purchase : instance -> int -> bool -> currency_type -> unit
  method prompt_roblox_purchase : int -> bool -> unit
  method prompt_subscription_purchase : player -> string -> unit
  method prompt_third_party_purchase : instance -> string -> unit
  method report_asset_sale : string -> int -> unit
  method report_robux_upsell_started : unit -> unit
  method signal_asset_type_purchased : instance -> asset_type -> unit
  method signal_client_purchase_success : string -> int -> int -> unit
  method signal_mock_purchase_premium : unit -> unit
  method signal_prompt_bundle_purchase_finished : instance -> int -> bool -> unit
  method signal_prompt_game_pass_purchase_finished : instance -> int -> bool -> unit
  method signal_prompt_premium_purchase_finished : bool -> unit
  method signal_prompt_product_purchase_finished : int -> int -> bool -> unit
  method signal_prompt_purchase_finished : instance -> int -> bool -> unit
  method signal_prompt_subscription_purchase_finished : string -> bool -> unit
  method signal_server_lua_dialog_closed : bool -> unit
  method get_developer_products_async : unit -> instance
  method get_product_info : int -> info_type -> dictionary
  method get_robux_balance : unit -> int
  method get_subscription_product_info_async : string -> dictionary
  method get_subscription_purchase_info_async : string -> dictionary
  method get_user_subscription_payment_history_async : player -> string -> array
  method get_user_subscription_status_async : player -> string -> dictionary
  method perform_purchase : info_type -> int -> int -> string -> bool -> string -> string -> string -> string -> dictionary
  method perform_purchase_v_2 : info_type -> int -> int -> string -> bool -> dictionary -> dictionary
  method perform_subscription_purchase : string -> string
  method player_owns_asset : instance -> int -> bool
  method player_owns_bundle : player -> int -> bool
  method user_owns_game_pass_async : int -> int -> bool
end

class material_generation_service : instance
  method start_session : unit -> material_generation_session
  method generate_material_variants_async : string -> int -> objects
  method get_accounting_balance_async : unit -> double
  method refill_accounting_balance_async : unit -> double
  method upload_material_variants_async : objects -> unit
end

class material_generation_session : instance
  method generate_images_async : string -> dictionary -> tuple
  method generate_material_maps_async : string -> dictionary
  method upload_material_async : string -> dictionary
end

class material_service : instance
  val asphalt_name : string
  val basalt_name : string
  val brick_name : string
  val cardboard_name : string
  val carpet_name : string
  val ceramic_tiles_name : string
  val clay_roof_tiles_name : string
  val cobblestone_name : string
  val concrete_name : string
  val corroded_metal_name : string
  val cracked_lava_name : string
  val diamond_plate_name : string
  val fabric_name : string
  val foil_name : string
  val glacier_name : string
  val granite_name : string
  val grass_name : string
  val ground_name : string
  val ice_name : string
  val leafy_grass_name : string
  val leather_name : string
  val limestone_name : string
  val marble_name : string
  val metal_name : string
  val mud_name : string
  val pavement_name : string
  val pebble_name : string
  val plaster_name : string
  val plastic_name : string
  val rock_name : string
  val roof_shingles_name : string
  val rubber_name : string
  val salt_name : string
  val sand_name : string
  val sandstone_name : string
  val slate_name : string
  val smooth_plastic_name : string
  val snow_name : string
  val use_2022_materials : bool
  val wood_name : string
  val wood_planks_name : string
  method get_base_material_override : material -> string
  method get_material_override_changed : material -> rbx_script_signal
  method get_material_variant : material -> string -> material_variant
  method get_override_status : material -> property_status
  method set_base_material_override : material -> string -> unit
end

class material_variant : instance
  val base_material : material
  val color_map : content
  val custom_physical_properties : physical_properties
  val material_pattern : material_pattern
  val metalness_map : content
  val normal_map : content
  val roughness_map : content
  val studs_per_tile : float
end

class mem_storage_connection : instance
  method disconnect : unit -> unit
end

class mem_storage_service : instance
  method bind : string -> function -> mem_storage_connection
  method bind_and_fire : string -> function -> mem_storage_connection
  method call : string -> variant -> variant
  method fire : string -> string -> unit
  method get_item : string -> string -> string
  method has_item : string -> bool
  method remove_item : string -> bool
  method set_item : string -> string -> unit
end

class memory_store_hash_map : instance
  method get_async : string -> variant
  method list_items_async : int -> memory_store_hash_map_pages
  method remove_async : string -> unit
  method set_async : string -> variant -> int -> bool
  method update_async : string -> function -> int -> variant
end

class memory_store_queue : instance
  method add_async : variant -> int -> double -> unit
  method read_async : int -> bool -> double -> tuple
  method remove_async : string -> unit
end

class memory_store_service : instance
  method get_hash_map : string -> memory_store_hash_map
  method get_queue : string -> int -> memory_store_queue
  method get_sorted_map : string -> memory_store_sorted_map
end

class memory_store_sorted_map : instance
  method get_async : string -> tuple
  method get_range_async : sort_direction -> int -> variant -> variant -> array
  method remove_async : string -> unit
  method set_async : string -> variant -> int -> variant -> bool
  method update_async : string -> function -> int -> tuple
end

class message : instance
  val text : string
end

class hint : message
end

class message_bus_connection : instance
  method disconnect : unit -> unit
end

class message_bus_service : instance
  method call : string -> variant -> variant
  method get_last : string -> variant
  method get_message_id : string -> string -> string
  method get_protocol_method_request_message_id : string -> string -> string
  method get_protocol_method_response_message_id : string -> string -> string
  method make_request : string -> string -> variant -> function -> variant -> unit
  method publish : string -> variant -> unit
  method publish_protocol_method_request : string -> string -> variant -> variant -> unit
  method publish_protocol_method_response : string -> string -> variant -> int -> variant -> unit
  method set_request_handler : string -> string -> function -> unit
  method subscribe : string -> function -> bool -> bool -> instance
  method subscribe_to_protocol_method_request : string -> string -> function -> bool -> bool -> instance
  method subscribe_to_protocol_method_response : string -> string -> function -> bool -> bool -> instance
end

class messaging_service : instance
  method publish_async : string -> variant -> unit
  method subscribe_async : string -> function -> rbx_script_connection
end

class meta_breakpoint : instance
  val condition : string
  val continue_execution : bool
  val enabled : bool
  val id : int
  val is_logpoint : bool
  val line : int
  val log_message : string
  val remove_on_hit : bool
  val script : string
  val valid : bool
  method get_context_breakpoints : unit -> dictionary
  method remove : function -> int
  method set_child_breakpoint_enabled_by_script_and_context : string -> int -> bool -> unit
  method set_context_enabled : int -> bool -> unit
  method set_continue_execution : bool -> unit
  method set_enabled : bool -> unit
  method set_line : int -> function -> int
  method set_remove_on_hit : bool -> unit
end

class meta_breakpoint_context : instance
end

class meta_breakpoint_manager : instance
  method add_breakpoint : instance -> int -> instance -> instance
  method get_breakpoint_by_id : int -> meta_breakpoint
  method remove_breakpoint_by_id : int -> unit
end

class mouse : instance
  val hit : c_frame
  val icon : content
  val origin : c_frame
  val target : base_part
  val target_filter : instance
  val target_surface : normal_id
  val unit_ray : ray
  val view_size_x : int
  val view_size_y : int
  val x : int
  val y : int
end

class player_mouse : mouse
end

class plugin_mouse : mouse
end

class mouse_service : instance
end

class multiple_document_interface_instance : instance
  val focused_data_model_session : instance
end

class network_marker : instance
end

class network_peer : instance
  method set_outgoing_kbps_limit : int -> unit
end

class network_client : network_peer
end

class network_server : network_peer
  method encrypt_string_for_player_id : string -> int -> string
end

class network_replicator : instance
  method get_player : unit -> instance
end

class client_replicator : network_replicator
  method request_rcc_profiler_data : int -> int -> unit
  method request_server_script_profiling : bool -> int? -> unit
  method request_server_script_profiling_data : unit -> unit
  method request_server_stats : bool -> unit
end

class server_replicator : network_replicator
end

class network_settings : instance
  val emulated_total_memory_in_mb : int
  val free_memory_m_bytes : float
  val http_proxy_enabled : bool
  val http_proxy_url : string
  val incoming_replication_lag : double
  val print_join_size_breakdown : bool
  val print_physics_errors : bool
  val print_stream_instance_quota : bool
  val randomize_join_instance_order : bool
  val render_streamed_regions : bool
  val show_active_animation_asset : bool
end

class no_collision_constraint : instance
  val enabled : bool
  val part_0 : base_part
  val part_1 : base_part
end

class notification_service : instance
  val is_connected : bool
  val is_lua_chat_enabled : bool
  val is_lua_game_details_enabled : bool
  val selected_theme : string
  method action_enabled : app_shell_action_type -> unit
  method action_taken : app_shell_action_type -> unit
  method cancel_all_notification : int -> unit
  method cancel_notification : int -> int -> unit
  method schedule_notification : int -> int -> string -> int -> unit
  method switched_to_app_shell_feature : app_shell_feature -> unit
  method get_scheduled_notifications : int -> array
end

class omni_recommendations_service : instance
  method clear_session_id : unit -> unit
  method get_session_id : unit -> string
  method make_request : string -> http_request
end

class open_cloud_api_v_1 : instance
  method create_model : string -> open_cloud_model
  method create_user_notification_async : string -> open_cloud_model -> open_cloud_model
end

class open_cloud_service : instance
  method get_api_v_1 : unit -> open_cloud_api_v_1
  method register_open_cloud : string -> string -> function -> unit
  method registration_complete : unit -> unit
  method http_request_async : dictionary -> dictionary
  method invoke_async : string -> string -> dictionary -> dictionary
end

class operation_graph : instance
end

class pv_instance : instance
  val origin : c_frame
  val pivot_offset : c_frame
  method get_pivot : unit -> c_frame
  method pivot_to : c_frame -> unit
end

class base_part : pv_instance
  val anchored : bool
  val assembly_angular_velocity : vector_3
  val assembly_center_of_mass : vector_3
  val assembly_linear_velocity : vector_3
  val assembly_mass : float
  val assembly_root_part : base_part
  val back_surface : surface_type
  val bottom_surface : surface_type
  val brick_color : brick_color
  val c_frame : c_frame
  val can_collide : bool
  val can_query : bool
  val can_touch : bool
  val cast_shadow : bool
  val center_of_mass : vector_3
  val collision_group : string
  val color : color_3
  val current_physical_properties : physical_properties
  val custom_physical_properties : physical_properties
  val enable_fluid_forces : bool
  val extents_c_frame : c_frame
  val extents_size : vector_3
  val front_surface : surface_type
  val left_surface : surface_type
  val local_transparency_modifier : float
  val locked : bool
  val mass : float
  val massless : bool
  val material : material
  val material_variant : string
  val orientation : vector_3
  val pivot_offset : c_frame
  val position : vector_3
  val receive_age : float
  val reflectance : float
  val resize_increment : int
  val resizeable_faces : faces
  val right_surface : surface_type
  val root_priority : int
  val rotation : vector_3
  val size : vector_3
  val top_surface : surface_type
  val transparency : float
  method angular_acceleration_to_torque : vector_3 -> vector_3 -> vector_3
  method apply_angular_impulse : vector_3 -> unit
  method apply_impulse : vector_3 -> unit
  method apply_impulse_at_position : vector_3 -> vector_3 -> unit
  method can_collide_with : base_part -> bool
  method can_set_network_ownership : unit -> tuple
  method get_closest_point_on_surface : vector_3 -> vector_3
  method get_connected_parts : bool -> objects
  method get_joints : unit -> objects
  method get_mass : unit -> float
  method get_network_owner : unit -> instance
  method get_network_ownership_auto : unit -> bool
  method get_no_collision_constraints : unit -> objects
  method get_root_part : unit -> instance
  method get_touching_parts : unit -> objects
  method get_velocity_at_position : vector_3 -> vector_3
  method is_grounded : unit -> bool
  method resize : normal_id -> int -> bool
  method set_network_owner : player -> unit
  method set_network_ownership_auto : unit -> unit
  method torque_to_angular_acceleration : vector_3 -> vector_3 -> vector_3
  method intersect_async : objects -> collision_fidelity -> render_fidelity -> instance
  method subtract_async : objects -> collision_fidelity -> render_fidelity -> instance
  method union_async : objects -> collision_fidelity -> render_fidelity -> instance
end

class corner_wedge_part : base_part
end

class form_factor_part : base_part
end

class part : form_factor_part
  val shape : part_type
end

class flag_stand : part
  val team_color : brick_color
end

class platform : part
end

class seat : part
  val disabled : bool
  val occupant : humanoid
  method sit : instance -> unit
end

class skateboard_platform : part
  val controller : skateboard_controller
  val controlling_humanoid : humanoid
  val steer : int
  val sticky_wheels : bool
  val throttle : int
  method apply_specific_impulse : vector_3 -> unit
end

class spawn_location : part
  val allow_team_change_on_touch : bool
  val duration : int
  val enabled : bool
  val neutral : bool
  val team_color : brick_color
end

class wedge_part : form_factor_part
end

class terrain : base_part
  val decoration : bool
  val grass_length : float
  val last_used_modification_method : terrain_acquisition_method
  val material_colors : binary_string
  val max_extents : region_3_int_16
  val shorelines_upgraded : bool
  val smooth_voxels_upgraded : bool
  val water_color : color_3
  val water_reflectance : float
  val water_transparency : float
  val water_wave_size : float
  val water_wave_speed : float
  method can_shorelines_be_upgraded : unit -> bool
  method can_smooth_voxels_be_upgraded : unit -> bool
  method cell_center_to_world : int -> int -> int -> vector_3
  method cell_corner_to_world : int -> int -> int -> vector_3
  method clear : unit -> unit
  method copy_region : region_3_int_16 -> terrain_region
  method count_cells : unit -> int
  method fill_ball : vector_3 -> float -> material -> unit
  method fill_block : c_frame -> vector_3 -> material -> unit
  method fill_cylinder : c_frame -> float -> float -> material -> unit
  method fill_region : region_3 -> float -> material -> unit
  method fill_wedge : c_frame -> vector_3 -> material -> unit
  method get_material_color : material -> color_3
  method get_terrain_wireframe : c_frame -> vector_3 -> array
  method paste_region : terrain_region -> vector_3_int_16 -> bool -> unit
  method read_voxel_channels : region_3 -> float -> array -> dictionary
  method read_voxels : region_3 -> float -> tuple
  method replace_material : region_3 -> float -> material -> material -> unit
  method replace_material_in_transform : c_frame -> vector_3 -> material -> material -> unit
  method replace_material_in_transform_subregion : c_frame -> vector_3 -> material -> material -> region_3_int_16 -> unit
  method set_material_color : material -> color_3 -> unit
  method set_material_in_transform : c_frame -> vector_3 -> material -> unit
  method set_material_in_transform_subregion : c_frame -> vector_3 -> material -> region_3_int_16 -> unit
  method smooth_region : region_3 -> float -> float -> tuple
  method world_to_cell : vector_3 -> vector_3
  method world_to_cell_prefer_empty : vector_3 -> vector_3
  method world_to_cell_prefer_solid : vector_3 -> vector_3
  method write_voxel_channels : region_3 -> float -> dictionary -> unit
  method write_voxels : region_3 -> float -> array -> array -> unit
end

class triangle_mesh_part : base_part
  val collision_fidelity : collision_fidelity
  val fluid_fidelity : fluid_fidelity
  val mesh_size : vector_3
end

class mesh_part : triangle_mesh_part
  val double_sided : bool
  val has_joint_offset : bool
  val has_skinned_mesh : bool
  val joint_offset : vector_3
  val mesh_id : content
  val render_fidelity : render_fidelity
  val texture_id : content
  method apply_mesh : instance -> unit
end

class part_operation : triangle_mesh_part
  val render_fidelity : render_fidelity
  val smoothing_angle : float
  val triangle_count : int
  val use_part_color : bool
  method substitute_geometry : instance -> unit
end

class intersect_operation : part_operation
end

class negate_operation : part_operation
end

class union_operation : part_operation
end

class truss_part : base_part
  val style : style
end

class vehicle_seat : base_part
  val are_hinges_detected : int
  val disabled : bool
  val heads_up_display : bool
  val max_speed : float
  val occupant : humanoid
  val steer : int
  val steer_float : float
  val throttle : int
  val throttle_float : float
  val torque : float
  val turn_speed : float
  method sit : instance -> unit
end

class model : pv_instance
  val level_of_detail : model_level_of_detail
  val model_streaming_mode : model_streaming_mode
  val primary_part : base_part
  val scale : float
  val world_pivot : c_frame
  method add_persistent_player : player -> unit
  method get_bounding_box : unit -> tuple
  method get_extents_size : unit -> vector_3
  method get_persistent_players : unit -> objects
  method get_scale : unit -> float
  method move_to : vector_3 -> unit
  method remove_persistent_player : player -> unit
  method scale_to : float -> unit
  method translate_by : vector_3 -> unit
end

class actor : model
  method bind_to_message : string -> function -> rbx_script_connection
  method bind_to_message_parallel : string -> function -> rbx_script_connection
  method send_message : string -> tuple -> unit
end

class backpack_item : model
  val texture_id : content
end

class hopper_bin : backpack_item
  val active : bool
  val bin_type : bin_type
  method disable : unit -> unit
  method toggle_select : unit -> unit
end

class tool : backpack_item
  val can_be_dropped : bool
  val enabled : bool
  val grip : c_frame
  val grip_forward : vector_3
  val grip_pos : vector_3
  val grip_right : vector_3
  val grip_up : vector_3
  val manual_activation_only : bool
  val requires_handle : bool
  val tool_tip : string
  method activate : unit -> unit
  method deactivate : unit -> unit
end

class flag : tool
  val team_color : brick_color
end

class status : model
end

class world_root : model
  method are_parts_touching_others : objects -> float -> bool
  method blockcast : c_frame -> vector_3 -> vector_3 -> raycast_params -> raycast_result
  method bulk_move_to : objects -> array -> bulk_move_mode -> unit
  method cache_current_terrain : string -> vector_3 -> float -> string
  method clear_cached_terrain : string -> bool
  method get_part_bounds_in_box : c_frame -> vector_3 -> overlap_params -> objects
  method get_part_bounds_in_radius : vector_3 -> float -> overlap_params -> objects
  method get_parts_in_part : base_part -> overlap_params -> objects
  method ik_move_to : base_part -> c_frame -> float -> float -> ik_collisions_mode -> unit
  method raycast : vector_3 -> vector_3 -> raycast_params -> raycast_result
  method raycast_cached_terrain : string -> vector_3 -> vector_3 -> bool -> raycast_result
  method set_insert_point : vector_3 -> bool -> unit
  method shapecast : base_part -> vector_3 -> raycast_params -> raycast_result
  method spherecast : vector_3 -> float -> vector_3 -> raycast_params -> raycast_result
end

class workspace : world_root
  val air_density : float
  val allow_third_party_sales : bool
  val avatar_unification_mode : avatar_unification_mode
  val client_animator_throttling : client_animator_throttling_mode
  val current_camera : camera
  val distributed_game_time : double
  val editor_live_scripting : editor_live_scripting
  val fallen_parts_destroy_height : float
  val fluid_forces : fluid_forces
  val global_wind : vector_3
  val gravity : float
  val ik_control_constraint_support : ik_control_constraint_support
  val interpolation_throttling : interpolation_throttling_mode
  val mesh_part_heads_and_accessories : mesh_part_heads_and_accessories
  val model_streaming_behavior : model_streaming_behavior
  val physics_stepping_method : physics_stepping_method
  val player_character_destroy_behavior : player_character_destroy_behavior
  val primal_physics_solver : primal_physics_solver
  val reject_character_deletions : reject_character_deletions
  val replicate_instance_destroy_setting : replicate_instance_destroy_setting
  val retargeting : animator_retargeting_mode
  val signal_behavior : signal_behavior
  val stream_out_behavior : stream_out_behavior
  val streaming_enabled : bool
  val streaming_integrity_mode : streaming_integrity_mode
  val streaming_min_radius : int
  val streaming_target_radius : int
  val terrain : terrain
  val touches_use_collision_groups : bool
  method calculate_jump_distance : float -> float -> float -> float
  method calculate_jump_height : float -> float -> float
  method calculate_jump_power : float -> float -> float
  method experimental_solver_is_enabled : unit -> bool
  method get_num_awake_parts : unit -> int
  method get_physics_throttling : unit -> int
  method get_real_physics_fps : unit -> double
  method get_server_time_now : unit -> double
  method join_to_outsiders : objects -> joint_creation_mode -> unit
  method pgs_is_enabled : unit -> bool
  method set_avatar_unification_mode : avatar_unification_mode -> unit
  method set_mesh_part_heads_and_accessories : mesh_part_heads_and_accessories -> unit
  method set_physics_throttle_enabled : bool -> unit
  method unjoin_from_outsiders : objects -> unit
  method zoom_to_extents : unit -> unit
end

class world_model : world_root
end

class package_link : instance
  val auto_update : bool
  val creator : string
  val default_name : string
  val package_asset_name : string
  val package_id : content
  val permission_level : package_permission
  val serialized_default_attributes : binary_string
  val status : string
  val version_number : int
end

class package_service : instance
end

class package_ui_service : instance
  method convert_to_package_upload : string -> objects -> objects -> unit
  method get_package_info : int -> dictionary
  method publish_package : instance -> unit
  method set_package_version : instance -> int -> instance
end

class pages : instance
  val is_finished : bool
  method get_current_page : unit -> array
  method advance_to_next_page_async : unit -> unit
end

class audio_pages : pages
end

class catalog_pages : pages
end

class data_store_key_pages : pages
  val cursor : string
end

class data_store_listing_pages : pages
  val cursor : string
end

class data_store_pages : pages
end

class data_store_version_pages : pages
end

class friend_pages : pages
end

class inventory_pages : pages
end

class emotes_pages : inventory_pages
end

class memory_store_hash_map_pages : pages
end

class outfit_pages : pages
end

class standard_pages : pages
end

class part_operation_asset : instance
end

class particle_emitter : instance
  val acceleration : vector_3
  val brightness : float
  val color : color_sequence
  val drag : float
  val emission_direction : normal_id
  val enabled : bool
  val flipbook_framerate : number_range
  val flipbook_incompatible : string
  val flipbook_layout : particle_flipbook_layout
  val flipbook_mode : particle_flipbook_mode
  val flipbook_start_random : bool
  val lifetime : number_range
  val light_emission : float
  val light_influence : float
  val locked_to_part : bool
  val orientation : particle_orientation
  val rate : float
  val rot_speed : number_range
  val rotation : number_range
  val shape : particle_emitter_shape
  val shape_in_out : particle_emitter_shape_in_out
  val shape_partial : float
  val shape_style : particle_emitter_shape_style
  val size : number_sequence
  val speed : number_range
  val spread_angle : vector_2
  val squash : number_sequence
  val texture : content
  val time_scale : float
  val transparency : number_sequence
  val velocity_inheritance : float
  val wind_affects_drag : bool
  val z_offset : float
  method clear : unit -> unit
  method emit : int -> unit
  method fast_forward : int -> unit
end

class patch_bundler_file_watch : instance
end

class patch_mapping : instance
  val flatten_tree : bool
  val patch_id : string
  val target_path : string
end

class path : instance
  val status : path_status
  method get_waypoints : unit -> array
  method check_occlusion_async : int -> int
  method compute_async : vector_3 -> vector_3 -> unit
end

class pathfinding_link : instance
  val attachment_0 : attachment
  val attachment_1 : attachment
  val is_bidirectional : bool
  val label : string
end

class pathfinding_modifier : instance
  val label : string
  val pass_through : bool
end

class pathfinding_service : instance
  method create_path : dictionary -> instance
  method find_path_async : vector_3 -> vector_3 -> instance
end

class paused_state : instance
  val all_threads_paused : bool
  val reason : debugger_pause_reason
  val thread_id : int
end

class paused_state_breakpoint : paused_state
  val breakpoint : breakpoint
end

class paused_state_exception : paused_state
  val exception_text : string
end

class permissions_service : instance
  method get_is_third_party_asset_allowed : unit -> bool
  method get_is_third_party_purchase_allowed : unit -> bool
  method get_is_third_party_teleport_allowed : unit -> bool
  method get_permissions : string -> array
  method set_permissions : string -> array -> unit
end

class physics_service : instance
  method collision_group_set_collidable : string -> string -> bool -> unit
  method collision_groups_are_collidable : string -> string -> bool
  method get_max_collision_groups : unit -> int
  method get_registered_collision_groups : unit -> array
  method ik_solve : base_part -> c_frame -> float -> float -> unit
  method is_collision_group_registered : string -> bool
  method local_ik_solve : base_part -> c_frame -> float -> float -> unit
  method register_collision_group : string -> unit
  method rename_collision_group : string -> string -> unit
  method unregister_collision_group : string -> unit
end

class physics_settings : instance
  val allow_sleep : bool
  val are_anchors_shown : bool
  val are_assemblies_shown : bool
  val are_assembly_centers_of_mass_shown : bool
  val are_awake_parts_highlighted : bool
  val are_body_types_shown : bool
  val are_collision_costs_shown : bool
  val are_constraint_forces_shown_for_selected_or_hovered_instances : bool
  val are_constraint_torques_shown_for_selected_or_hovered_instances : bool
  val are_contact_forces_shown_for_selected_or_hovered_assemblies : bool
  val are_contact_islands_shown : bool
  val are_contact_points_shown : bool
  val are_gravity_forces_shown_for_selected_or_hovered_assemblies : bool
  val are_joint_coordinates_shown : bool
  val are_magnitudes_shown_for_drawn_forces_and_torques : bool
  val are_mechanisms_shown : bool
  val are_model_coords_shown : bool
  val are_non_anchors_shown : bool
  val are_owners_shown : bool
  val are_part_coords_shown : bool
  val are_regions_shown : bool
  val are_solver_islands_shown : bool
  val are_terrain_replication_regions_shown : bool
  val are_timesteps_shown : bool
  val are_unaligned_parts_shown : bool
  val are_world_coords_shown : bool
  val disable_cs_gv_2 : bool
  val disable_cs_gv_3_for_plugins : bool
  val fluid_force_draw_scale : float
  val force_cs_gv_2 : bool
  val force_draw_scale : float
  val is_interpolation_throttle_shown : bool
  val is_receive_age_shown : bool
  val is_tree_shown : bool
  val physics_environmental_throttle : enviromental_physics_throttle
  val show_decomposition_geometry : bool
  val show_fluid_forces_for_selected_or_hovered_mechanisms : bool
  val solver_convergence_metric_type : solver_convergence_metric_type
  val solver_convergence_visualization_mode : solver_convergence_visualization_mode
  val throttle_adjust_time : double
  val use_cs_gv_2 : bool
end

class place_stats_service : instance
end

class places_service : instance
  method start_play_solo : unit -> unit
  method stop_play_solo : unit -> unit
end

class platform_cloud_storage_service : instance
  method is_user_data_available : unit -> bool
  method get_user_data_async : string -> dictionary
  method set_user_data_async : string -> dictionary -> unit
end

class platform_friends_service : instance
  method is_invite_friends_enabled : unit -> bool
  method is_profile_enabled : unit -> bool
  method show_invite_friends_ui : unit -> unit
  method show_profile : string -> unit
  method get_party_members : unit -> array
end

class player : instance
  val account_age : int
  val auto_jump_enabled : bool
  val camera_max_zoom_distance : float
  val camera_min_zoom_distance : float
  val camera_mode : camera_mode
  val can_load_character_appearance : bool
  val character : model
  val character_appearance_id : int
  val chat_mode : chat_mode
  val dev_camera_occlusion_mode : dev_camera_occlusion_mode
  val dev_computer_camera_mode : dev_computer_camera_movement_mode
  val dev_computer_movement_mode : dev_computer_movement_mode
  val dev_enable_mouse_lock : bool
  val dev_touch_camera_mode : dev_touch_camera_movement_mode
  val dev_touch_movement_mode : dev_touch_movement_mode
  val display_name : string
  val follow_user_id : int
  val gameplay_paused : bool
  val guest : bool
  val has_verified_badge : bool
  val health_display_distance : float
  val locale_id : string
  val maximum_simulation_radius : float
  val membership_type : membership_type
  val name_display_distance : float
  val neutral : bool
  val os_platform : string
  val platform_name : string
  val replication_focus : instance
  val respawn_location : spawn_location
  val simulation_radius : float
  val team : team
  val team_color : brick_color
  val teleported : bool
  val teleported_in : bool
  val unfiltered_chat : bool
  val user_id : int
  val vr_device : string
  val vr_enabled : bool
  method add_to_block_list : array -> unit
  method clear_character_appearance : unit -> unit
  method distance_from_character : vector_3 -> float
  method get_friend_status : player -> friend_status
  method get_game_session_id : unit -> string
  method get_join_data : unit -> dictionary
  method get_mouse : unit -> mouse
  method get_network_ping : unit -> float
  method get_under_13 : unit -> bool
  method has_appearance_loaded : unit -> bool
  method is_verified : unit -> bool
  method kick : string -> unit
  method move : vector_3 -> bool -> unit
  method remove_character : unit -> unit
  method request_friendship : player -> unit
  method revoke_friendship : player -> unit
  method set_account_age : int -> unit
  method set_block_list_initialized : unit -> unit
  method set_character_appearance_json : string -> unit
  method set_experience_settings_locale_id : string -> unit
  method set_membership_type : membership_type -> unit
  method set_moderation_access_key : string -> unit
  method set_super_safe_chat : bool -> unit
  method update_player_blocked : int -> bool -> unit
  method get_friends_online : int -> array
  method get_rank_in_group : int -> int
  method get_role_in_group : int -> string
  method is_friends_with : int -> bool
  method is_in_group : int -> bool
  method load_character : unit -> unit
  method load_character_blocking : unit -> unit
  method load_character_with_humanoid_description : humanoid_description -> unit
  method request_stream_around_async : vector_3 -> double -> unit
end

class player_emulator_service : instance
  val custom_policies_enabled : bool
  val emulated_country_code : string
  val emulated_game_locale : string
  val player_emulation_enabled : bool
  val serialized_emulated_policy_info : binary_string
  method get_emulated_policy_info : unit -> dictionary
  method region_code_will_have_automatic_non_custom_policies : string -> bool
  method set_emulated_policy_info : dictionary -> unit
end

class player_scripts : instance
  method clear_computer_camera_movement_modes : unit -> unit
  method clear_computer_movement_modes : unit -> unit
  method clear_touch_camera_movement_modes : unit -> unit
  method clear_touch_movement_modes : unit -> unit
  method get_registered_computer_camera_movement_modes : unit -> array
  method get_registered_computer_movement_modes : unit -> array
  method get_registered_touch_camera_movement_modes : unit -> array
  method get_registered_touch_movement_modes : unit -> array
  method register_computer_camera_movement_mode : computer_camera_movement_mode -> unit
  method register_computer_movement_mode : computer_movement_mode -> unit
  method register_touch_camera_movement_mode : touch_camera_movement_mode -> unit
  method register_touch_movement_mode : touch_movement_mode -> unit
end

class player_view_service : instance
  method get_device_camera_c_frame : player -> c_frame
end

class players : instance
  val bubble_chat : bool
  val character_auto_loads : bool
  val classic_chat : bool
  val local_player : player
  val max_players : int
  val max_players_internal : int
  val preferred_players : int
  val preferred_players_internal : int
  val respawn_time : float
  val use_strafing_animations : bool
  method chat : string -> unit
  method create_local_player : unit -> player
  method get_player_by_user_id : int -> player
  method get_player_from_character : model -> player
  method get_players : unit -> objects
  method report_abuse : player -> string -> string -> unit
  method report_abuse_v_3 : player -> string -> unit
  method reset_local_player : unit -> unit
  method set_chat_style : chat_style -> unit
  method set_local_player_info : int -> string -> string -> membership_type -> bool -> unit
  method team_chat : string -> unit
  method whisper_chat : string -> instance -> unit
  method create_humanoid_model_from_description : humanoid_description -> humanoid_rig_type -> asset_type_verification -> model
  method create_humanoid_model_from_user_id : int -> model
  method get_character_appearance_info_async : int -> dictionary
  method get_friends_async : int -> friend_pages
  method get_humanoid_description_from_outfit_id : int -> humanoid_description
  method get_humanoid_description_from_user_id : int -> humanoid_description
  method get_name_from_user_id_async : int -> string
  method get_user_id_from_name_async : string -> int
  method get_user_thumbnail_async : int -> thumbnail_type -> thumbnail_size -> tuple
end

class plugin : instance
  val collision_enabled : bool
  val grid_size : float
  val host_data_model_type : studio_data_model_type
  val host_data_model_type_is_current : bool
  val multiple_document_interface_instance : multiple_document_interface_instance
  val uses_asset_insertion_drag : bool
  method activate : bool -> unit
  method create_plugin_action : string -> string -> string -> string -> bool -> plugin_action
  method create_plugin_menu : string -> string -> string -> plugin_menu
  method create_toolbar : string -> plugin_toolbar
  method deactivate : unit -> unit
  method get_item : string -> variant -> variant
  method get_join_mode : unit -> joint_creation_mode
  method get_mouse : unit -> plugin_mouse
  method get_selected_ribbon_tool : unit -> ribbon_tool
  method get_setting : string -> variant
  method intersect : objects -> instance
  method invoke : string -> tuple -> unit
  method is_activated : unit -> bool
  method is_activated_with_exclusive_mouse : unit -> bool
  method negate : objects -> objects
  method on_invoke : string -> function -> instance
  method on_set_item : string -> function -> instance
  method open_script : lua_source_container -> int -> unit
  method open_wiki_page : string -> unit
  method pause_sound : instance -> unit
  method play_sound : instance -> double -> unit
  method resume_sound : instance -> unit
  method save_selected_to_roblox : unit -> unit
  method select_ribbon_tool : ribbon_tool -> u_dim_2 -> unit
  method separate : objects -> objects
  method set_item : string -> variant -> unit
  method set_ready : unit -> unit
  method set_setting : string -> variant -> unit
  method start_decal_drag : instance -> unit
  method start_drag : dictionary -> unit
  method stop_all_sounds : unit -> unit
  method union : objects -> instance
  method create_dock_widget_plugin_gui : string -> dock_widget_plugin_gui_info -> dock_widget_plugin_gui
  method create_q_widget_plugin_gui : string -> dictionary -> q_widget_plugin_gui
  method import_fbx_animation : instance -> bool -> instance
  method import_fbx_rig : bool -> instance
  method prompt_for_existing_asset_id : string -> int
  method prompt_save_selection : string -> bool
end

class plugin_action : instance
  val action_id : string
  val allow_binding : bool
  val checked : bool
  val default_shortcut : string
  val enabled : bool
  val status_tip : string
  val text : string
end

class plugin_capabilities : instance
  val manifest : string
end

class plugin_debug_service : instance
end

class plugin_drag_event : instance
  val data : string
  val mime_type : string
  val position : vector_2
  val sender : string
end

class plugin_gui_service : instance
end

class plugin_management_service : instance
  method set_auto_update : int -> bool -> unit
  method get_ota_plugin_version : string -> int
end

class plugin_manager : instance
  method export_place : string -> unit
  method export_selection : string -> unit
end

class plugin_manager_interface : instance
  method export_place : string -> unit
  method export_selection : string -> unit
end

class plugin_menu : instance
  val icon : string
  val title : string
  method add_action : instance -> unit
  method add_menu : instance -> unit
  method add_new_action : string -> string -> string -> instance
  method add_separator : unit -> unit
  method clear : unit -> unit
  method show_async : unit -> instance
end

class plugin_policy_service : instance
  method get_plugin_policy : string -> dictionary
end

class plugin_toolbar : instance
  method create_button : string -> string -> string -> string -> instance
  method create_popup_button : string -> string -> string -> string -> instance
end

class plugin_toolbar_button : instance
  val clickable_when_viewport_hidden : bool
  val enabled : bool
  val icon : content
  method set_active : bool -> unit
end

class points_service : instance
end

class policy_service : instance
  val is_luobu_server : tri_state_boolean
  val luobu_whitelisted : tri_state_boolean
  method get_policy_info_for_player_async : instance -> dictionary
  method get_policy_info_for_server_roblox_only_async : unit -> dictionary
end

class pose_base : instance
  val easing_direction : pose_easing_direction
  val easing_style : pose_easing_style
  val weight : float
end

class number_pose : pose_base
  val value : double
end

class pose : pose_base
  val c_frame : c_frame
  method add_sub_pose : instance -> unit
  method get_sub_poses : unit -> objects
  method remove_sub_pose : instance -> unit
end

class post_effect : instance
  val enabled : bool
end

class bloom_effect : post_effect
  val intensity : float
  val size : float
  val threshold : float
end

class blur_effect : post_effect
  val size : float
end

class color_correction_effect : post_effect
  val brightness : float
  val contrast : float
  val saturation : float
  val tint_color : color_3
end

class depth_of_field_effect : post_effect
  val far_intensity : float
  val focus_distance : float
  val in_focus_radius : float
  val near_intensity : float
end

class sun_rays_effect : post_effect
  val intensity : float
  val spread : float
end

class process_instance_physics_service : instance
end

class proximity_prompt : instance
  val action_text : string
  val auto_localize : bool
  val clickable_prompt : bool
  val enabled : bool
  val exclusivity : proximity_prompt_exclusivity
  val gamepad_key_code : key_code
  val hold_duration : float
  val keyboard_key_code : key_code
  val max_activation_distance : float
  val object_text : string
  val requires_line_of_sight : bool
  val root_localization_table : localization_table
  val style : proximity_prompt_style
  val ui_offset : vector_2
  method input_hold_begin : unit -> unit
  method input_hold_end : unit -> unit
end

class proximity_prompt_service : instance
  val enabled : bool
  val max_prompts_visible : int
end

class publish_service : instance
  method publish_descendant_assets : instance -> bool
  method create_asset_and_wait_for_asset_id : objects -> string -> asset_creator_type -> int -> string -> string -> string -> int -> int
  method publish_cage_mesh_async : instance -> cage_type -> content
end

class rbx_analytics_service : instance
  method add_global_points_field : string -> int -> unit
  method add_global_points_tag : string -> string -> unit
  method deprecated_track_event : string -> string -> string -> int -> unit
  method deprecated_track_event_with_args : string -> string -> string -> dictionary -> int -> unit
  method get_client_id : unit -> string
  method get_play_session_id : unit -> string
  method get_session_id : unit -> string
  method release_rbx_event_stream : string -> unit
  method remove_global_points_field : string -> unit
  method remove_global_points_tag : string -> unit
  method report_counter : string -> int -> unit
  method report_influx_series : string -> dictionary -> int -> unit
  method report_stats : string -> float -> unit
  method report_to_diag_by_country_code : string -> string -> double -> unit
  method send_event_deferred : string -> string -> string -> dictionary -> unit
  method send_event_immediately : string -> string -> string -> dictionary -> unit
  method set_rbx_event : string -> string -> string -> dictionary -> unit
  method set_rbx_event_stream : string -> string -> string -> dictionary -> unit
  method track_event : string -> string -> string -> int -> unit
  method track_event_with_args : string -> string -> string -> dictionary -> int -> unit
  method update_heartbeat_object : dictionary -> unit
end

class reflection_metadata : instance
end

class reflection_metadata_callbacks : instance
end

class reflection_metadata_classes : instance
end

class reflection_metadata_enums : instance
end

class reflection_metadata_events : instance
end

class reflection_metadata_functions : instance
end

class reflection_metadata_item : instance
  val browsable : bool
  val class_category : string
  val client_only : bool
  val constraint : string
  val deprecated : bool
  val editing_disabled : bool
  val editor_type : string
  val f_flag : string
  val is_backend : bool
  val property_order : int
  val script_context : string
  val server_only : bool
  val slider_scaling : string
  val ui_maximum : double
  val ui_minimum : double
  val ui_num_ticks : double
end

class reflection_metadata_class : reflection_metadata_item
  val explorer_image_index : int
  val explorer_order : int
  val insertable : bool
  val preferred_parent : string
  val service_visibility : service_visibility
end

class reflection_metadata_enum : reflection_metadata_item
end

class reflection_metadata_enum_item : reflection_metadata_item
end

class reflection_metadata_member : reflection_metadata_item
end

class reflection_metadata_properties : instance
end

class reflection_metadata_yield_functions : instance
end

class reflection_service : instance
  method get_property_names : string -> array
end

class remote_cursor_service : instance
end

class remote_debugger_server : instance
end

class remote_function : instance
  method invoke_client : player -> tuple -> tuple
  method invoke_server : tuple -> tuple
end

class render_settings : instance
  val auto_frm_level : int
  val eager_bulk_execution : bool
  val edit_quality_level : quality_level
  val enable_vr_mode : bool
  val enable_frm : bool
  val export_merge_by_material : bool
  val frame_rate_manager : framerate_manager_mode
  val graphics_mode : graphics_mode
  val mesh_cache_size : int
  val mesh_part_detail_level : mesh_part_detail_level
  val quality_level : quality_level
  val reload_assets : bool
  val render_csg_triangles_debug : bool
  val show_bounding_boxes : bool
  val view_mode : view_mode
  method get_max_quality_level : unit -> int
end

class rendering_test : instance
  val c_frame : c_frame
  val comparison_diff_threshold : int
  val comparison_method : rendering_test_comparison_method
  val comparison_psnr_threshold : float
  val description : string
  val field_of_view : float
  val orientation : vector_3
  val perf_test : bool
  val position : vector_3
  val quality_level : int
  val should_skip : bool
  val ticket : string
  val timeout : int
  method renderdoc_trigger_capture : unit -> unit
end

class replicated_first : instance
  method is_default_loading_gui_removed : unit -> bool
  method is_finished_replicating : unit -> bool
  method remove_default_loading_screen : unit -> unit
  method set_default_loading_gui_removed : unit -> unit
end

class replicated_storage : instance
end

class ribbon_notification_service : instance
  method on_notification_update_from_plugin : string -> string -> unit
end

class roblox_plugin_gui_service : instance
end

class roblox_replicated_storage : instance
end

class roblox_server_storage : instance
end

class romark_service : instance
  method end_remote_romark_test : unit -> unit
end

class rotation_curve : instance
  val length : int
  method get_key_at_index : int -> rotation_curve_key
  method get_key_indices_at_time : float -> array
  method get_keys : unit -> array
  method get_value_at_time : float -> coordinate_frame?
  method insert_key : rotation_curve_key -> array
  method remove_key_at_index : int -> int -> int
  method set_keys : array -> int
end

class rt_messaging_service : instance
end

class run_service : instance
  val client_git_hash : string
  method bind_to_render_step : string -> int -> function -> unit
  method get_core_script_version : unit -> string
  method get_roblox_client_channel : unit -> string
  method get_roblox_version : unit -> string
  method is_client : unit -> bool
  method is_edit : unit -> bool
  method is_run_mode : unit -> bool
  method is_running : unit -> bool
  method is_server : unit -> bool
  method is_studio : unit -> bool
  method pause : unit -> unit
  method run : unit -> unit
  method set_3_d_rendering_enabled : bool -> unit
  method set_roblox_gui_focused : bool -> unit
  method stop : unit -> unit
  method unbind_from_render_step : string -> unit
  method set_throttle_framerate_enabled : bool -> unit
end

class runtime_script_service : instance
end

class safety_service : instance
  method take_screenshot : dictionary -> int
end

class screenshot_hud : instance
  val camera_button_icon : content
  val camera_button_position : u_dim_2
  val close_button_position : u_dim_2
  val close_when_screenshot_taken : bool
  val experience_name_overlay_enabled : bool
  val hide_core_gui_for_captures : bool
  val hide_player_gui_for_captures : bool
  val overlay_font : font
  val username_overlay_enabled : bool
  val visible : bool
end

class script_builder : instance
end

class sync_script_builder : script_builder
  val compile_target : compile_target
  val coverage_info : bool
  val debug_info : bool
  val pack_as_source : bool
end

class script_change_service : instance
end

class script_clone_watcher : instance
end

class script_clone_watcher_helper : instance
end

class script_commit_service : instance
end

class script_context : instance
  val scripts_disabled : bool
  method add_core_script_local : string -> instance -> unit
  method clear_script_profiling_data : unit -> unit
  method deserialize_script_profiler_string : string -> dictionary
  method get_coverage_stats : unit -> array
  method get_script_profiling_data : unit -> string
  method save_script_profiling_data : string -> unit
  method set_timeout : double -> unit
  method start_script_profiling : int? -> unit
  method stop_script_profiling : unit -> string
end

class script_debugger : instance
  val current_line : int
  val is_debugging : bool
  val is_paused : bool
  val script : instance
  method add_watch : string -> instance
  method get_breakpoints : unit -> objects
  method get_globals : int -> map
  method get_locals : int -> map
  method get_stack : unit -> array
  method get_upvalues : int -> map
  method get_watch_value : instance -> variant
  method get_watches : unit -> objects
  method set_breakpoint : int -> bool -> instance
  method set_global : string -> variant -> int -> unit
  method set_local : string -> variant -> int -> unit
  method set_upvalue : string -> variant -> int -> unit
end

class script_document : instance
  method get_internal_uri : unit -> string
  method get_line : int? -> string
  method get_line_count : unit -> int
  method get_script : unit -> lua_source_container
  method get_selected_text : unit -> string
  method get_selection : unit -> tuple
  method get_selection_end : unit -> tuple
  method get_selection_start : unit -> tuple
  method get_text : int? -> int? -> int? -> int? -> string
  method get_viewport : unit -> tuple
  method has_selected_text : unit -> bool
  method is_command_bar : unit -> bool
  method close_async : unit -> tuple
  method edit_text_async : string -> int -> int -> int -> int -> tuple
  method force_set_selection_async : int -> int -> int? -> int? -> tuple
  method request_set_selection_async : int -> int -> int? -> int? -> tuple
end

class script_editor_service : instance
  method deregister_autocomplete_callback : string -> unit
  method deregister_script_analysis_callback : string -> unit
  method find_script_document : lua_source_container -> script_document
  method force_reload_source : string -> string -> unit
  method get_editor_source : lua_source_container -> string
  method get_script_documents : unit -> objects
  method register_autocomplete_callback : string -> int -> function -> unit
  method register_script_analysis_callback : string -> int -> function -> unit
  method edit_source_async_with_ranges : lua_source_container -> string -> int -> int -> int -> int -> tuple
  method open_script_document_async : lua_source_container -> tuple
  method update_source_async : lua_source_container -> function -> unit
end

class script_registration_service : instance
  method get_source_container_by_script_guid : string -> lua_source_container
end

class script_runtime : instance
end

class script_service : instance
end

class selection : instance
  val active_instance : instance
  val render_mode : selection_render_mode
  val selection_box_thickness : float
  val selection_line_thickness : int
  val selection_thickness : float
  val show_active_instance_highlight : bool
  method add : objects -> unit
  method clear_terrain_selection_hack : unit -> unit
  method get : unit -> objects
  method remove : objects -> unit
  method set : objects -> unit
  method set_terrain_selection_hack : vector_3 -> vector_3 -> unit
end

class selection_highlight_manager : instance
end

class sensor_base : instance
  val update_type : sensor_update_type
end

class buoyancy_sensor : sensor_base
  val fully_submerged : bool
  val touching_surface : bool
end

class controller_sensor : sensor_base
end

class controller_part_sensor : controller_sensor
  val hit_frame : c_frame
  val hit_normal : vector_3
  val search_distance : float
  val sensed_part : base_part
  val sensor_mode : sensor_mode
end

class server_script_service : instance
  val load_string_enabled : bool
end

class server_storage : instance
end

class service_provider : instance
  method find_service : string -> instance
  method get_service : string -> instance
end

class data_model : service_provider
  val creator_id : int
  val creator_type : creator_type
  val game_id : int
  val genre : genre
  val is_sf_flags_loaded : bool
  val job_id : string
  val place_id : int
  val place_version : int
  val private_server_id : string
  val private_server_owner_id : int
  val workspace : workspace
  method bind_to_close : function -> unit
  method define_fast_flag : string -> bool -> bool
  method define_fast_int : string -> int -> int
  method define_fast_string : string -> string -> string
  method get_engine_feature : string -> bool
  method get_fast_flag : string -> bool
  method get_fast_int : string -> int
  method get_fast_string : string -> string
  method get_jobs_info : unit -> array
  method get_objects : content -> objects
  method get_objects_all_or_none : content -> bool -> objects
  method get_objects_list : array -> array
  method get_play_session_id : unit -> string
  method is_content_loaded : unit -> bool
  method is_loaded : unit -> bool
  method is_universe_metadata_loaded : unit -> bool
  method load : content -> unit
  method open_screenshots_folder : unit -> unit
  method open_videos_folder : unit -> unit
  method report_in_google_analytics : string -> string -> string -> int -> unit
  method set_fast_flag_for_testing : string -> bool -> bool
  method set_fast_int_for_testing : string -> int -> int
  method set_fast_string_for_testing : string -> string -> string
  method set_flag_version : string -> int -> unit
  method set_is_loaded : bool -> int? -> unit
  method set_place_id : int -> unit
  method set_universe_id : int -> unit
  method shutdown : unit -> unit
  method get_objects_async : content -> objects
  method http_get_async : string -> http_request_type -> string
  method http_post_async : string -> string -> string -> http_request_type -> string
  method insert_objects_and_join_if_legacy_async : content -> objects
end

class generic_settings : service_provider
end

class analystics_settings : generic_settings
end

class global_settings : generic_settings
  method get_f_flag : string -> bool
  method get_f_variable : string -> string
end

class user_settings : generic_settings
  method is_user_feature_enabled : string -> bool
  method reset : unit -> unit
  method save_state : unit -> unit
end

class service_visibility_service : instance
  val hidden_services : binary_string
  val visible_services : binary_string
end

class session_service : instance
  method acquire_context_focus : string -> unit
  method generate_session_info_string : bool -> bool -> bool -> bool -> string
  method get_created_timestamp_utc_ms : string -> int
  method get_metadata : string -> string -> variant
  method get_root_sid : unit -> string
  method get_session_tag : string -> string
  method is_context_focused : string -> bool
  method release_context_focus : string -> unit
  method remove_metadata : string -> string -> string -> unit
  method remove_session : string -> string -> unit
  method remove_sessions_with_metadata_key : string -> unit
  method replace_session : string -> string -> unit
  method session_exists : string -> bool
  method set_metadata : string -> string -> variant -> string -> unit
  method set_session : string -> string -> string -> string -> unit
end

class shared_table_registry : instance
  method get_shared_table : string -> shared_table
  method set_shared_table : string -> shared_table? -> unit
end

class shoreline_upgrader_service : instance
  method cancel : unit -> unit
  method start : unit -> unit
end

class sky : instance
  val celestial_bodies_shown : bool
  val moon_angular_size : float
  val moon_texture_id : content
  val skybox_bk : content
  val skybox_dn : content
  val skybox_ft : content
  val skybox_lf : content
  val skybox_rt : content
  val skybox_up : content
  val star_count : int
  val sun_angular_size : float
  val sun_texture_id : content
end

class smoke : instance
  val color : color_3
  val enabled : bool
  val opacity : float
  val rise_velocity : float
  val size : float
  val time_scale : float
  method fast_forward : int -> unit
end

class smooth_voxels_upgrader_service : instance
  method cancel : unit -> unit
  method start : unit -> unit
end

class snippet_service : instance
end

class social_service : instance
  method hide_self_view : unit -> unit
  method invoke_game_invite_prompt_closed : instance -> array -> unit
  method invoke_iris_invite : instance -> string -> array -> unit
  method invoke_iris_invite_prompt_closed : instance -> unit
  method prompt_game_invite : instance -> instance -> unit
  method prompt_phone_book : instance -> string -> unit
  method show_self_view : self_view_position -> unit
  method can_send_call_invite_async : instance -> bool
  method can_send_game_invite_async : instance -> int -> bool
end

class sound : instance
  val channel_count : int
  val is_loaded : bool
  val is_paused : bool
  val is_playing : bool
  val is_spatial : bool
  val loop_region : number_range
  val looped : bool
  val play_on_remove : bool
  val playback_loudness : double
  val playback_region : number_range
  val playback_regions_enabled : bool
  val playback_speed : float
  val playing : bool
  val roll_off_gain : float
  val roll_off_max_distance : float
  val roll_off_min_distance : float
  val roll_off_mode : roll_off_mode
  val sound_group : sound_group
  val sound_id : content
  val time_length : double
  val time_position : double
  val usage_context_permission : usage_context
  val volume : float
  method pause : unit -> unit
  method play : unit -> unit
  method resume : unit -> unit
  method stop : unit -> unit
end

class sound_effect : instance
  val enabled : bool
  val priority : int
end

class chorus_sound_effect : sound_effect
  val depth : float
  val mix : float
  val rate : float
end

class compressor_sound_effect : sound_effect
  val attack : float
  val gain_makeup : float
  val ratio : float
  val release : float
  val side_chain : instance
  val threshold : float
end

class custom_sound_effect : sound_effect
end

class asset_sound_effect : custom_sound_effect
end

class channel_selector_sound_effect : custom_sound_effect
  val channel : int
end

class distortion_sound_effect : sound_effect
  val level : float
end

class echo_sound_effect : sound_effect
  val delay : float
  val dry_level : float
  val feedback : float
  val wet_level : float
end

class equalizer_sound_effect : sound_effect
  val high_gain : float
  val low_gain : float
  val mid_gain : float
end

class flange_sound_effect : sound_effect
  val depth : float
  val mix : float
  val rate : float
end

class pitch_shift_sound_effect : sound_effect
  val octave : float
end

class reverb_sound_effect : sound_effect
  val decay_time : float
  val density : float
  val diffusion : float
  val dry_level : float
  val wet_level : float
end

class tremolo_sound_effect : sound_effect
  val depth : float
  val duty : float
  val frequency : float
end

class sound_group : instance
  val volume : float
end

class sound_service : instance
  val ambient_reverb : reverb_type
  val distance_factor : float
  val doppler_scale : float
  val respect_filtering_enabled : bool
  val rolloff_scale : float
  val volumetric_audio : volumetric_audio
  method begin_recording : unit -> bool
  method get_input_device : unit -> tuple
  method get_input_devices : unit -> tuple
  method get_listener : unit -> tuple
  method get_output_device : unit -> tuple
  method get_output_devices : unit -> tuple
  method get_sound_memory_data : unit -> dictionary
  method play_local_sound : instance -> unit
  method set_input_device : string -> string -> unit
  method set_listener : listener_type -> tuple -> unit
  method set_output_device : string -> string -> unit
  method set_recording_device : int -> bool
  method end_recording : unit -> dictionary
  method get_recording_devices : unit -> dictionary
end

class sparkles : instance
  val color : color_3
  val enabled : bool
  val sparkle_color : color_3
  val time_scale : float
  method fast_forward : int -> unit
end

class spawner_service : instance
end

class stack_frame : instance
  val frame_id : int
  val frame_name : string
  val frame_type : debugger_frame_type
  val globals : debugger_variable
  val line : int
  val locals : debugger_variable
  val populated : bool
  val script : string
  val upvalues : debugger_variable
end

class standalone_plugin_scripts : instance
end

class starter_gear : instance
end

class starter_pack : instance
end

class starter_player : instance
  val allow_custom_animations : bool
  val animation_compositor_mode : animation_compositor_mode
  val auto_jump_enabled : bool
  val avatar_joint_upgrade : avatar_joint_upgrade
  val camera_max_zoom_distance : float
  val camera_min_zoom_distance : float
  val camera_mode : camera_mode
  val character_jump_height : float
  val character_jump_power : float
  val character_max_slope_angle : float
  val character_use_jump_power : bool
  val character_walk_speed : float
  val death_style : death_style
  val dev_camera_occlusion_mode : dev_camera_occlusion_mode
  val dev_computer_camera_movement_mode : dev_computer_camera_movement_mode
  val dev_computer_movement_mode : dev_computer_movement_mode
  val dev_touch_camera_movement_mode : dev_touch_camera_movement_mode
  val dev_touch_movement_mode : dev_touch_movement_mode
  val enable_dynamic_heads : load_dynamic_heads
  val enable_mouse_lock_option : bool
  val game_settings_asset_id_face : int
  val game_settings_asset_id_head : int
  val game_settings_asset_id_left_arm : int
  val game_settings_asset_id_left_leg : int
  val game_settings_asset_id_pants : int
  val game_settings_asset_id_right_arm : int
  val game_settings_asset_id_right_leg : int
  val game_settings_asset_id_shirt : int
  val game_settings_asset_id_tee_shirt : int
  val game_settings_asset_id_torso : int
  val game_settings_avatar : game_avatar_type
  val game_settings_r_15_collision : r_15_collision_type
  val game_settings_scale_range_body_type : number_range
  val game_settings_scale_range_head : number_range
  val game_settings_scale_range_height : number_range
  val game_settings_scale_range_proportion : number_range
  val game_settings_scale_range_width : number_range
  val health_display_distance : float
  val humanoid_state_machine_mode : humanoid_state_machine_mode
  val load_character_appearance : bool
  val load_character_layered_clothing : load_character_layered_clothing
  val lua_character_controller : character_control_mode
  val name_display_distance : float
  val user_emotes_enabled : bool
  method clear_defaults : unit -> unit
end

class starter_player_scripts : instance
end

class starter_character_scripts : starter_player_scripts
end

class stats : instance
  val contacts_count : int
  val data_receive_kbps : float
  val data_send_kbps : float
  val heartbeat_time_ms : float
  val instance_count : int
  val moving_primitives_count : int
  val physics_receive_kbps : float
  val physics_send_kbps : float
  val physics_step_time_ms : float
  val primitives_count : int
  method get_browser_tracker_id : unit -> string
  method get_memory_usage_mb_for_tag : developer_memory_tag -> float
  method get_total_memory_usage_mb : unit -> float
  method get_paginated_memory_by_texture : texture_query_type -> int -> int -> dictionary
end

class stats_item : instance
  val display_name : string
  method get_value : unit -> double
  method get_value_string : unit -> string
end

class running_average_item_double : stats_item
end

class running_average_item_int : stats_item
end

class running_average_time_interval_item : stats_item
end

class total_count_time_interval_item : stats_item
end

class stop_watch_reporter : instance
  method finish_task : int -> unit
  method send_report : string -> unit
  method start_task : string -> string -> int
end

class streaming_service : instance
  method get_ephemeral_variable : string -> variant
  method get_instance : string -> string -> instance
  method invoke_command : string -> string -> variant -> unit
  method register_command : string -> function -> unit
  method register_context_collector : string -> function -> unit
  method register_sequential_command : string -> function -> unit
  method set_ephemeral_variable : string -> variant -> int -> unit
  method set_plugin_info_callback : function -> unit
  method unregister_command : string -> unit
  method unregister_context_collector : string -> unit
  method execute_command_async : string -> string -> variant -> unit
end

class studio : instance
  val "todo"_color : color_3
  val "function"_color : color_3
  val "local"_color : color_3
  val "nil"_color : color_3
  val "self"_color : color_3
  val active_color : color_3
  val active_hover_over_color : color_3
  val always_save_script_changes : bool
  val animate_hover_over : bool
  val auto_clean_empty_line : bool
  val auto_closing_brackets : bool
  val auto_closing_quotes : bool
  val auto_delete_closing_brackets_and_quotes : bool
  val auto_indent_rule : auto_indent_rule
  val auto_recovery_enabled : bool
  val auto_recovery_interval_(minutes) : int
  val auto_recovery_path : q_dir
  val automatically_commit_locked_scripts_when_you_save_or_publish_to_roblox : bool
  val automatically_trigger_ai_code_completion : bool
  val background_color : color_3
  val basic_objects_display_mode : list_display_mode
  val bool_color : color_3
  val bracket_color : color_3
  val built_in_function_color : color_3
  val camera_mouse_wheel_speed : float
  val camera_pan_speed : float
  val camera_shift_speed : float
  val camera_speed : float
  val camera_speed_adjust_binding : camera_speed_adjust_binding
  val camera_zoom_to_mouse_position : bool
  val camera_adaptive_speed : bool
  val camera_tween_focus : bool
  val clear_output_on_start : bool
  val command_bar_local_state : bool
  val comment_color : color_3
  val current_line_highlight_color : color_3
  val debugger_current_line_color : color_3
  val debugger_error_line_color : color_3
  val default_script_file_dir : q_dir
  val deprecated_objects_shown : bool
  val display_language : string
  val doc_view_code_background_color : color_3
  val enable_autocomplete : bool
  val enable_autocomplete_doc_view : bool
  val enable_core_script_debugger : bool
  val enable_http_sandboxing : bool
  val enable_internal_beta_features : bool
  val enable_internal_features : bool
  val enable_script_analysis : bool
  val enable_scrollbar_markers : bool
  val enable_signature_help : bool
  val enable_signature_help_doc_view : bool
  val enable_temporary_tabs : bool
  val enable_temporary_tabs_in_explorer : bool
  val enable_type_hover : bool
  val enable_indentation_rulers : bool
  val enable_on_type_autocomplete : bool
  val error_color : color_3
  val find_selection_background_color : color_3
  val font : q_font
  val format_on_paste : bool
  val format_on_type : bool
  val free_camera_speed_scroll : bool
  val function_name_color : color_3
  val highlight_current_line : bool
  val highlight_occurances : bool
  val hint_color : color_3
  val hover_animate_speed : hover_animate_speed
  val hover_box_thickness : float
  val hover_line_thickness : int
  val hover_over_color : color_3
  val icon_override_dir : q_dir
  val indent_using_spaces : bool
  val indentation_ruler_color : color_3
  val information_color : color_3
  val keyword_color : color_3
  val large_file_line_count_threshold : int
  val large_file_threshold : int
  val line_thickness : float
  val local_assets_folder : q_dir
  val lua_debugger_enabled : bool
  val lua_debugger_enabled_at_startup : bool
  val luau_keyword_color : color_3
  val main_volume : float
  val matching_word_background_color : color_3
  val maximum_output_lines : int
  val menu_item_background_color : color_3
  val method_color : color_3
  val number_color : color_3
  val only_play_audio_from_window_in_focus : bool
  val operator_color : color_3
  val output_font : q_font
  val output_layout_mode : output_layout_mode
  val permission_level_shown : permission_level_shown
  val physical_draggers_select_scope_by_default : bool
  val pivot_snap_to_geometry_color : color_3
  val plugin_debugging_enabled : bool
  val plugins_dir : q_dir
  val primary_text_color : color_3
  val property_color : color_3
  val reload_builtin_plugins_on_change : bool
  val reload_local_plugins_on_change : bool
  val respect_studio_shortcuts_when_game_has_focus : bool
  val ruler_color : color_3
  val rulers : string
  val runtime_undo_behavior : runtime_undo_behavior
  val script_editor_color_preset : studio_script_editor_color_presets
  val script_editor_scrollbar_background_color : color_3
  val script_editor_scrollbar_handle_color : color_3
  val script_editor_menu_border_color : color_3
  val script_editor_should_show_plugin_methods : bool
  val script_timeout_length : int
  val scroll_past_last_line : bool
  val secondary_text_color : color_3
  val select_color : color_3
  val select/hover_color : color_3
  val selected_menu_item_background_color : color_3
  val selected_text_color : color_3
  val selection_background_color : color_3
  val selection_box_thickness : float
  val selection_color : color_3
  val selection_line_thickness : int
  val server_audio_behavior : server_audio_behavior
  val set_pivot_of_imported_parts : bool
  val show_core_gui_in_explorer_while_playing : bool
  val show_diagnostics_bar : bool
  val show_file_sync_service : bool
  val show_hidden_objects_in_explorer : bool
  val show_hover_over : bool
  val show_light_guides : bool
  val show_navigation_labels : bool
  val show_navigation_mesh : bool
  val show_pathfinding_links : bool
  val show_plugin_gui_service_in_explorer : bool
  val show_singly_selected_attachment_parent_frame : bool
  val show_whitespace : bool
  val show_plus_button_on_hover_in_explorer : bool
  val show_core_packages_in_explorer : bool
  val skip_closing_brackets_and_quotes : bool
  val string_color : color_3
  val tab_width : int
  val text_color : color_3
  val text_wrapping : bool
  val theme : instance
  val use_bounding_box_move_handles : bool
  val warning_color : color_3
  val whitespace_color : color_3
  method get_available_themes : unit -> array
end

class studio_asset_service : instance
  method convert_to_package_upload : string -> objects -> objects -> unit
  method fire_on_ugc_submit_completed : bool -> unit
  method publish_package : instance -> dictionary -> unit
  method show_save_to_roblox : objects -> variant -> bool -> unit
  method request_avatar_autosetup_async : content -> content -> function -> instance
  method serialize_instances : objects -> string
end

class studio_attachment : instance
  val auto_hide_parent : bool
  val is_arrow_visible : bool
  val offset : vector_2
  val source_anchor_point : vector_2
  val target_anchor_point : vector_2
end

class studio_callout : instance
  val anchor_point : vector_2
  val is_arrow_visible : bool
  val is_next_visible : bool
  val row_name : string
  val text : string
  val title : string
  method set_on_next_clicked : function -> unit
end

class studio_data : instance
  val enable_script_collab_by_default_on_load : bool
end

class studio_device_emulator_service : instance
  val has_multi_touch_started : bool
  val is_multi_touch_emulation_on : bool
  val is_multi_touch_enabled : bool
  val pivot_position : vector_2
  method get_max_num_touches : unit -> int
  method get_touch_in_bounds : int -> bool
  method get_touch_position : int -> vector_2
  method emulate_pc_device_with_resolution : string -> vector_2 -> bool
  method get_current_device_id : unit -> string
  method get_current_orientation : unit -> screen_orientation
  method has_device_with_id : string -> bool
  method set_current_device_id : string -> unit
  method set_current_orientation : screen_orientation -> unit
end

class studio_object_base : instance
end

class studio_widget : studio_object_base
  method set_fixed_size : int -> int -> unit
end

class studio_publish_service : instance
  val publish_locked : bool
  method clear_upload_names : unit -> unit
  method publish_as : int -> int -> int -> bool -> variant -> unit
  method publish_then_turn_on_team_create : unit -> unit
  method refresh_document_display_name : unit -> unit
  method set_team_create_on_publish_info : bool -> string -> unit
  method set_universe_display_name : string -> unit
  method set_upload_names : string -> string -> unit
  method show_save_or_publish_place_to_roblox : bool -> bool -> studio_close_mode -> unit
end

class studio_script_debug_event_listener : instance
end

class studio_sdk_service : instance
  method get_sdk : unit -> instance
  method set_sdk : instance -> unit
end

class studio_service : instance
  val active_script : instance
  val align_dragged_objects : bool
  val dragger_solve_constraints : bool
  val grid_size : float
  val hover_instance : instance
  val installed_plugin_data : string
  val pivot_snap_to_geometry : bool
  val rotate_increment : float
  val show_constraint_details : bool
  val studio_locale_id : string
  val use_local_space : bool
  method animation_id_selected : int -> unit
  method copy_to_clipboard : string -> unit
  method get_badge_configure_url : int -> string
  method get_badge_upload_url : unit -> string
  method get_class_icon : string -> dictionary
  method get_place_is_persisted_to_cloud : unit -> bool
  method get_resource_by_category : string -> dictionary
  method get_startup_asset_id : unit -> string
  method get_startup_plugin_id : unit -> string
  method get_terms_of_use_url : unit -> string
  method get_user_id : unit -> int
  method gizmo_raycast : vector_3 -> vector_3 -> raycast_params -> raycast_result
  method has_internal_permission : unit -> bool
  method is_plugin_installed : int -> bool
  method is_plugin_up_to_date : int -> int -> bool
  method open_in_browser_donotuse : string -> unit
  method request_close : studio_close_mode -> unit
  method set_plugin_enabled : int -> bool -> unit
  method show_place_version_history_dialog : int -> unit
  method show_publish_to_roblox : unit -> unit
  method uninstall_plugin : int -> unit
  method update_plugin_management : unit -> unit
  method prompt_import_file : array -> instance
  method prompt_import_files : array -> objects
  method try_install_plugin : int -> int -> unit
end

class studio_theme : instance
  method get_color : studio_style_guide_color -> studio_style_guide_modifier -> color_3
end

class studio_widgets_service : instance
  method apply_fill_in_box : studio_widget -> unit
  method apply_highlight : studio_widget -> string? -> unit
  method apply_shadows : unit -> unit
  method apply_spotlight : studio_widget -> string? -> unit
  method attach_plugin_gui : studio_widget -> plugin_gui -> studio_attachment -> unit
  method get_widget_from_label : string -> studio_widget
  method get_widget_from_plugin_gui : plugin_gui -> studio_widget
  method hide_spotlight : unit -> unit
end

class style_base : instance
  method get_style_rules : unit -> objects
  method insert_style_rule : style_rule -> int? -> unit
  method set_style_rules : objects -> unit
end

class style_rule : style_base
  val selector : string
  val selector_error : string
  method get_properties : unit -> dictionary
  method get_properties_resolved : unit -> dictionary
  method get_property : string -> variant
  method get_property_resolved : string -> variant
  method set_properties : dictionary -> unit
  method set_property : string -> variant -> unit
end

class style_sheet : style_base
  method get_derives : unit -> objects
  method set_derives : objects -> unit
end

class style_derive : instance
  val style_sheet : style_sheet
end

class style_link : instance
  val style_sheet : style_sheet
end

class styling_service : instance
  method get_applied_styles : instance -> array
  method get_style_info : style_rule -> dictionary
  method get_style_sheet_derives_chain : style_sheet -> objects
  method get_style_sheet_info : style_sheet -> dictionary
end

class surface_appearance : instance
  val alpha_mode : alpha_mode
  val color_map : content
  val metalness_map : content
  val normal_map : content
  val roughness_map : content
  val texture_pack : content
end

class task_scheduler : instance
  val scheduler_duty_cycle : double
  val scheduler_rate : double
  val thread_pool_config : thread_pool_config
  val thread_pool_size : int
end

class team : instance
  val auto_assignable : bool
  val child_order : int
  val team_color : brick_color
  method get_players : unit -> objects
end

class team_create_data : instance
end

class team_create_publish_service : instance
end

class team_create_service : instance
  method close_game_if_user_doesnt_have_perms : unit -> unit
end

class teams : instance
  method get_teams : unit -> objects
end

class teleport_async_result : instance
  val private_server_id : string
  val reserved_server_access_code : string
end

class teleport_options : instance
  val reserved_server_access_code : string
  val server_instance_id : string
  val should_reserve_server : bool
  method get_teleport_data : unit -> variant
  method set_teleport_data : variant -> unit
end

class teleport_service : instance
  method block : unit -> unit
  method get_arriving_teleport_gui : unit -> instance
  method get_local_player_teleport_data : unit -> variant
  method get_teleport_setting : string -> variant
  method set_teleport_gui : instance -> unit
  method set_teleport_setting : string -> variant -> unit
  method teleport : int -> instance -> variant -> instance -> unit
  method teleport_cancel : unit -> unit
  method teleport_to_place_instance : int -> string -> instance -> string -> variant -> instance -> unit
  method teleport_to_private_server : int -> string -> objects -> string -> variant -> instance -> unit
  method teleport_to_spawn_by_name : int -> string -> instance -> variant -> instance -> unit
  method get_player_place_instance_async : int -> tuple
  method reserve_server : int -> tuple
  method teleport_async : int -> objects -> instance -> instance
  method teleport_party_async : int -> objects -> variant -> instance -> string
  method unblock_async : unit -> tuple
end

class temporary_cage_mesh_provider : instance
end

class temporary_script_service : instance
end

class terrain_detail : instance
  val color_map : content
  val face : terrain_face
  val material_pattern : material_pattern
  val metalness_map : content
  val normal_map : content
  val roughness_map : content
  val studs_per_tile : float
end

class terrain_region : instance
  val size_in_cells : vector_3
  method apply_transform : c_frame -> vector_3 -> unit
  method apply_transform_subregion : c_frame -> vector_3 -> region_3_int_16 -> terrain_region
  method get_region_wireframe : unit -> array
end

class test_service : instance
  val auto_runs : bool
  val description : string
  val error_count : int
  val execute_with_studio_run : bool
  val is_30_fps_throttle_enabled : bool
  val is_physics_environmental_throttled : bool
  val is_sleep_allowed : bool
  val number_of_players : int
  val simulate_seconds_lag : double
  val test_count : int
  val timeout : double
  val warn_count : int
  method check : bool -> string -> instance -> int -> unit
  method checkpoint : string -> instance -> int -> unit
  method done : unit -> unit
  method error : string -> instance -> int -> unit
  method fail : string -> instance -> int -> unit
  method message : string -> instance -> int -> unit
  method require : bool -> string -> instance -> int -> unit
  method scope_time : unit -> dictionary
  method warn : bool -> string -> instance -> int -> unit
  method is_feature_enabled : string -> bool
  method run : unit -> unit
end

class text_box_service : instance
end

class text_channel : instance
  method display_system_message : string -> string -> text_chat_message
  method add_user_async : int -> tuple
  method send_async : string -> string -> text_chat_message
end

class text_chat_command : instance
  val autocomplete_visible : bool
  val enabled : bool
  val primary_alias : string
  val secondary_alias : string
end

class text_chat_configurations : instance
end

class bubble_chat_configuration : text_chat_configurations
  val adornee_name : string
  val background_color_3 : color_3
  val background_transparency : double
  val bubble_duration : float
  val bubbles_spacing : float
  val enabled : bool
  val font : font
  val font_face : font
  val local_player_studs_offset : vector_3
  val max_bubbles : float
  val max_distance : float
  val minimize_distance : float
  val tail_visible : bool
  val text_color_3 : color_3
  val text_size : int
  val vertical_studs_offset : float
end

class chat_input_bar_configuration : text_chat_configurations
  val absolute_position : vector_2
  val absolute_position_write : vector_2
  val absolute_size : vector_2
  val absolute_size_write : vector_2
  val autocomplete_enabled : bool
  val background_color_3 : color_3
  val background_transparency : double
  val enabled : bool
  val font_face : font
  val is_focused : bool
  val is_focused_write : bool
  val keyboard_key_code : key_code
  val placeholder_color_3 : color_3
  val target_text_channel : text_channel
  val text_box : text_box
  val text_color_3 : color_3
  val text_size : int
  val text_stroke_color_3 : color_3
  val text_stroke_transparency : double
end

class chat_window_configuration : text_chat_configurations
  val absolute_position : vector_2
  val absolute_position_write : vector_2
  val absolute_size : vector_2
  val absolute_size_write : vector_2
  val background_color_3 : color_3
  val background_transparency : double
  val enabled : bool
  val font_face : font
  val height_scale : float
  val horizontal_alignment : horizontal_alignment
  val text_color_3 : color_3
  val text_size : int
  val text_stroke_color_3 : color_3
  val text_stroke_transparency : double
  val vertical_alignment : vertical_alignment
  val width_scale : float
end

class text_chat_message : instance
  val bubble_chat_message_properties : bubble_chat_message_properties
  val message_id : string
  val metadata : string
  val prefix_text : string
  val status : text_chat_message_status
  val text : string
  val text_channel : text_channel
  val text_source : text_source
  val timestamp : date_time
  val translation : string
end

class text_chat_message_properties : instance
  val prefix_text : string
  val text : string
  val translation : string
end

class text_chat_service : instance
  val chat_translation_enabled : bool
  val chat_translation_ftux_shown : bool
  val chat_translation_toggle_enabled : bool
  val chat_version : chat_version
  val create_default_commands : bool
  val create_default_text_channels : bool
  method display_bubble : instance -> string -> unit
  method can_user_chat_async : int -> bool
  method can_users_chat_async : int -> int -> bool
end

class text_filter_result : instance
  method get_chat_for_user_async : int -> string
  method get_non_chat_string_for_broadcast_async : unit -> string
  method get_non_chat_string_for_user_async : int -> string
end

class text_filter_translated_result : instance
  val source_language : string
  val source_text : text_filter_result
  method get_translation_for_locale : string -> text_filter_result
  method get_translations : unit -> dictionary
end

class text_service : instance
  method get_font_memory_data : unit -> dictionary
  method get_text_size : string -> int -> font -> vector_2 -> vector_2
  method set_resolution_scale : float -> unit
  method filter_and_translate_string_async : string -> int -> array -> text_filter_context -> instance
  method filter_string_async : string -> int -> text_filter_context -> instance
  method get_family_info_async : content -> dictionary
  method get_text_bounds_async : get_text_bounds_params -> vector_2
end

class text_source : instance
  val can_send : bool
  val user_id : int
end

class texture_generation_mesh_handler : instance
  method prepare_instances_for_texturing_async : objects -> texture_generation_mesh_handler_unwrap_mode -> string
end

class third_party_user_service : instance
  method get_user_platform_id : unit -> string
  method get_user_platform_name : unit -> string
  method have_active_user : unit -> bool
  method is_over_13 : unit -> bool
  method return_to_engagement : unit -> unit
  method show_account_picker : unit -> unit
  method register_active_user : user_input_type -> int
end

class thread_state : instance
  val frame_count : int
  val populated : bool
  val thread_id : int
  val thread_name : string
  method get_frame : int -> instance
end

class timer_service : instance
end

class toast_notification_service : instance
  method hide_notification : string -> unit
  method show_notification : string -> string -> unit
end

class touch_input_service : instance
end

class touch_transmitter : instance
end

class tracer_service : instance
  method finish_span : string -> unit
  method start_span : string -> string -> string
end

class tracker_lod_controller : instance
  val audio_mode : tracker_lod_flag_mode
  val video_extrapolation_mode : tracker_extrapolation_flag_mode
  val video_lod_mode : tracker_lod_value_mode
  val video_mode : tracker_lod_flag_mode
  method get_extrapolation : unit -> int
  method get_video_lod : unit -> int
  method is_audio_enabled : unit -> bool
  method is_video_enabled : unit -> bool
end

class tracker_stream_animation : instance
end

class trail : instance
  val attachment_0 : attachment
  val attachment_1 : attachment
  val brightness : float
  val color : color_sequence
  val enabled : bool
  val face_camera : bool
  val lifetime : float
  val light_emission : float
  val light_influence : float
  val max_length : float
  val min_length : float
  val texture : content
  val texture_length : float
  val texture_mode : texture_mode
  val transparency : number_sequence
  val width_scale : number_sequence
  method clear : unit -> unit
end

class translator : instance
  val locale_id : string
  method format_by_key : string -> variant -> string
  method roblox_only_translate : instance -> string -> string
  method translate : instance -> string -> string
end

class tutorial_service : instance
  method get_main_view_session_id : unit -> string
  method get_studio_widget_from_label : string -> studio_widget
  method get_tutorial_id_to_launch : unit -> string
  method has_user_completed_tutorial : unit -> bool
  method hide_widgets : string -> bool
  method prompt_close_place : unit -> unit
  method set_tutorial_completion_status : bool -> unit
  method should_launch_tutorial : unit -> bool
  method show_widgets : string -> bool
end

class tween_base : instance
  val playback_state : playback_state
  method cancel : unit -> unit
  method pause : unit -> unit
  method play : unit -> unit
end

class tween : tween_base
  val instance : instance
  val tween_info : tween_info
end

class tween_service : instance
  method create : instance -> tween_info -> dictionary -> tween
  method get_value : float -> easing_style -> easing_direction -> float
end

class ugc_avatar_service : instance
end

class ugc_validation_service : instance
  method calculate_editable_mesh_unique_uv_count : editable_mesh -> int
  method check_editable_mesh_in_camera_frustum : editable_mesh -> vector_3 -> c_frame -> c_frame -> bool
  method get_dynamic_head_editable_mesh_inactive_controls : editable_mesh -> array -> tuple
  method get_editable_image_size : editable_image -> vector_2
  method get_editable_mesh_tri_count : editable_mesh -> int
  method get_editable_mesh_vert_colors : editable_mesh -> array
  method get_editable_mesh_verts : editable_mesh -> array
  method get_property_value : instance -> string -> variant
  method register_ugc_validation_function : function -> unit
  method reset_collision_fidelity : instance -> collision_fidelity -> unit
  method set_mesh_id_blocking : instance -> string -> unit
  method validate_dynamic_head_editable_mesh : editable_mesh -> bool
  method validate_editable_image_num_texture_channels : editable_image -> int -> bool
  method validate_editable_image_size : editable_image -> bool
  method validate_editable_mesh_bounds : editable_mesh -> vector_3 -> vector_3 -> c_frame -> c_frame -> bool
  method validate_editable_mesh_cage_mesh_intersection : editable_mesh -> editable_mesh -> editable_mesh -> tuple
  method validate_editable_mesh_cage_non_manifold_and_holes : editable_mesh -> tuple
  method validate_editable_mesh_cage_uv_triangle_area : editable_mesh -> bool
  method validate_editable_mesh_full_body_cage_deletion : editable_mesh -> bool
  method validate_editable_mesh_mis_match_uv : editable_mesh -> editable_mesh -> bool
  method validate_editable_mesh_overlapping_vertices : editable_mesh -> bool
  method validate_editable_mesh_triangle_area : editable_mesh -> bool
  method validate_editable_mesh_triangles : editable_mesh -> bool
  method validate_editable_mesh_uv_space : editable_mesh -> bool
  method validate_editable_mesh_uv_values_in_reference : array -> editable_mesh -> bool
  method validate_editable_mesh_unique_uv_count : editable_mesh -> int -> bool
  method validate_editable_mesh_vert_colors : editable_mesh -> bool -> bool
  method validate_skinned_editable_mesh : editable_mesh -> bool
  method calculate_unique_uv_count : string -> int
  method can_load_asset : string -> bool
  method check_mesh_in_camera_frustum : string -> vector_3 -> c_frame -> c_frame -> bool
  method compare_texture_overlap_byte_string : string -> string -> array
  method compare_texture_overlap_texture_id : string -> string -> array
  method fetch_asset_with_format : content -> string -> objects
  method get_dynamic_head_mesh_inactive_controls : string -> array -> tuple
  method get_mesh_tri_count : string -> int
  method get_mesh_vert_colors : string -> array
  method get_mesh_verts : string -> array
  method get_texture_size : string -> vector_2
  method validate_cage_mesh_intersection : string -> string -> string -> tuple
  method validate_cage_non_manifold_and_holes : string -> tuple
  method validate_cage_uv_triangle_area : string -> bool
  method validate_dynamic_head_mesh : string -> bool
  method validate_full_body_cage_deletion : string -> bool
  method validate_image_transparency_threshold_byte_string : string -> float -> bool
  method validate_image_transparency_threshold_texture_id : string -> float -> bool
  method validate_mesh_bounds : string -> vector_3 -> vector_3 -> c_frame -> c_frame -> bool
  method validate_mesh_triangle_area : string -> bool
  method validate_mesh_triangles : string -> bool
  method validate_mesh_vert_colors : string -> bool -> bool
  method validate_mis_match_uv : string -> string -> bool
  method validate_num_texture_channels : string -> int -> bool
  method validate_overlapping_vertices : string -> bool
  method validate_skinned_mesh : string -> bool
  method validate_texture_alpha : string -> int -> bool
  method validate_texture_alpha_byte_string : string -> int -> bool
  method validate_texture_size : string -> bool
  method validate_uv_space : string -> bool
  method validate_uv_values_in_reference : array -> string -> bool
  method validate_unique_uv_count : string -> int -> bool
end

class ui_base : instance
end

class ui_component : ui_base
end

class ui_constraint : ui_component
end

class ui_aspect_ratio_constraint : ui_constraint
  val aspect_ratio : float
  val aspect_type : aspect_type
  val dominant_axis : dominant_axis
end

class ui_size_constraint : ui_constraint
  val max_size : vector_2
  val min_size : vector_2
end

class ui_text_size_constraint : ui_constraint
  val max_text_size : int
  val min_text_size : int
end

class ui_corner : ui_component
  val corner_radius : u_dim
end

class ui_flex_item : ui_component
  val flex_mode : ui_flex_mode
  val grow_ratio : float
  val item_line_alignment : item_line_alignment
  val shrink_ratio : float
end

class ui_gradient : ui_component
  val color : color_sequence
  val enabled : bool
  val offset : vector_2
  val rotation : float
  val transparency : number_sequence
end

class ui_layout : ui_component
end

class ui_grid_style_layout : ui_layout
  val absolute_content_size : vector_2
  val fill_direction : fill_direction
  val horizontal_alignment : horizontal_alignment
  val sort_order : sort_order
  val vertical_alignment : vertical_alignment
end

class ui_grid_layout : ui_grid_style_layout
  val absolute_cell_count : vector_2
  val absolute_cell_size : vector_2
  val cell_padding : u_dim_2
  val cell_size : u_dim_2
  val fill_direction_max_cells : int
  val start_corner : start_corner
end

class ui_list_layout : ui_grid_style_layout
  val horizontal_flex : ui_flex_alignment
  val item_line_alignment : item_line_alignment
  val padding : u_dim
  val vertical_flex : ui_flex_alignment
  val wraps : bool
end

class ui_page_layout : ui_grid_style_layout
  val animated : bool
  val circular : bool
  val current_page : gui_object
  val easing_direction : easing_direction
  val easing_style : easing_style
  val gamepad_input_enabled : bool
  val padding : u_dim
  val scroll_wheel_input_enabled : bool
  val touch_input_enabled : bool
  val tween_time : float
  method jump_to : instance -> unit
  method jump_to_index : int -> unit
  method next : unit -> unit
  method previous : unit -> unit
end

class ui_table_layout : ui_grid_style_layout
  val fill_empty_space_columns : bool
  val fill_empty_space_rows : bool
  val major_axis : table_major_axis
  val padding : u_dim_2
end

class ui_padding : ui_component
  val padding_bottom : u_dim
  val padding_left : u_dim
  val padding_right : u_dim
  val padding_top : u_dim
end

class ui_scale : ui_component
  val scale : float
end

class ui_stroke : ui_component
  val apply_stroke_mode : apply_stroke_mode
  val color : color_3
  val enabled : bool
  val line_join_mode : line_join_mode
  val thickness : float
  val transparency : float
end

class unvalidated_asset_service : instance
  method append_temp_asset_id : int -> int -> vector_3 -> vector_3 -> string -> unit
  method append_vantage_point : int -> int -> vector_3 -> vector_3 -> bool
  method upgrade_temp_asset_id : int -> int -> int -> bool
end

class user_game_settings : instance
  val all_tutorials_disabled : bool
  val camera_mode : custom_camera_mode
  val camera_y_inverted : bool
  val chat_translation_enabled : bool
  val chat_translation_ftux_shown : bool
  val chat_translation_toggle_enabled : bool
  val chat_visible : bool
  val computer_camera_movement_mode : computer_camera_movement_mode
  val computer_movement_mode : computer_movement_mode
  val control_mode : control_mode
  val default_camera_id : string
  val fullscreen : bool
  val gamepad_camera_sensitivity : float
  val graphics_quality_level : int
  val has_ever_used_vr : bool
  val is_using_camera_y_inverted : bool
  val is_using_gamepad_camera_sensitivity : bool
  val master_volume : float
  val micro_profiler_web_server_enabled : bool
  val micro_profiler_web_server_ip : string
  val micro_profiler_web_server_port : int
  val mouse_sensitivity : float
  val mouse_sensitivity_first_person : vector_2
  val mouse_sensitivity_third_person : vector_2
  val on_screen_profiler_enabled : bool
  val onboardings_completed : string
  val performance_stats_visible : bool
  val player_height : float
  val preferred_transparency : float
  val rcc_profiler_record_frame_rate : int
  val rcc_profiler_record_time_frame : int
  val reduced_motion : bool
  val rotation_type : rotation_type
  val saved_quality_level : saved_quality_setting
  val start_maximized : bool
  val start_screen_position : vector_2
  val start_screen_size : vector_2
  val touch_camera_movement_mode : touch_camera_movement_mode
  val touch_movement_mode : touch_movement_mode
  val ui_navigation_key_bind_enabled : bool
  val used_core_gui_is_visible_toggle : bool
  val used_custom_gui_is_visible_toggle : bool
  val used_hide_hud_shortcut : bool
  val vr_comfort_setting : vr_comfort_setting
  val vr_enabled : bool
  val vr_rotation_intensity : int
  val vr_safety_bubble_mode : vr_safety_bubble_mode
  val vr_smooth_rotation_enabled : bool
  val vr_smooth_rotation_enabled_custom_option : bool
  val vr_third_person_follow_cam_enabled : bool
  val vr_third_person_follow_cam_enabled_custom_option : bool
  val vignette_enabled : bool
  val vignette_enabled_custom_option : bool
  method get_camera_y_invert_value : unit -> int
  method get_onboarding_completed : string -> bool
  method get_tutorial_state : string -> bool
  method in_full_screen : unit -> bool
  method in_studio_mode : unit -> bool
  method reset_onboarding_completed : string -> unit
  method set_camera_y_invert_visible : unit -> unit
  method set_gamepad_camera_sensitivity_visible : unit -> unit
  method set_onboarding_completed : string -> unit
  method set_tutorial_state : string -> bool -> unit
end

class user_input_service : instance
  val accelerometer_enabled : bool
  val bottom_bar_size : vector_2
  val gamepad_enabled : bool
  val gyroscope_enabled : bool
  val keyboard_enabled : bool
  val legacy_input_events_enabled : bool
  val mouse_behavior : mouse_behavior
  val mouse_delta_sensitivity : float
  val mouse_enabled : bool
  val mouse_icon : content
  val mouse_icon_enabled : bool
  val nav_bar_size : vector_2
  val on_screen_keyboard_animation_duration : double
  val on_screen_keyboard_position : vector_2
  val on_screen_keyboard_size : vector_2
  val on_screen_keyboard_visible : bool
  val override_mouse_icon_behavior : override_mouse_icon_behavior
  val right_bar_size : vector_2
  val status_bar_size : vector_2
  val touch_enabled : bool
  val vr_enabled : bool
  method gamepad_supports : user_input_type -> key_code -> bool
  method get_connected_gamepads : unit -> array
  method get_device_acceleration : unit -> input_object
  method get_device_gravity : unit -> input_object
  method get_device_rotation : unit -> tuple
  method get_device_type : unit -> device_type
  method get_focused_text_box : unit -> text_box
  method get_gamepad_connected : user_input_type -> bool
  method get_gamepad_state : user_input_type -> array
  method get_image_for_key_code : key_code -> content
  method get_keys_pressed : unit -> array
  method get_last_input_type : unit -> user_input_type
  method get_mouse_buttons_pressed : unit -> array
  method get_mouse_delta : unit -> vector_2
  method get_mouse_location : unit -> vector_2
  method get_navigation_gamepads : unit -> array
  method get_platform : unit -> platform
  method get_string_for_key_code : key_code -> string
  method get_supported_gamepad_key_codes : user_input_type -> array
  method is_gamepad_button_down : user_input_type -> key_code -> bool
  method is_key_down : key_code -> bool
  method is_mouse_button_pressed : user_input_type -> bool
  method is_navigation_gamepad : user_input_type -> bool
  method recenter_user_head_c_frame : unit -> unit
  method send_app_ui_sizes : vector_2 -> vector_2 -> vector_2 -> vector_2 -> unit
  method set_navigation_gamepad : user_input_type -> bool -> unit
end

class user_notification : instance
  val id : string
  val payload : user_notification_payload
end

class user_notification_payload : instance
  val analytics_data : user_notification_payload_analytics_data
  val join_experience : user_notification_payload_join_experience
  val message_id : string
  val type : string
  method get_parameters : unit -> variant
  method set_parameters : variant -> unit
end

class user_notification_payload_analytics_data : instance
  val category : string
end

class user_notification_payload_join_experience : instance
  val launch_data : string
end

class user_notification_payload_parameter_value : instance
  val int_64_value : int
  val string_value : string
end

class user_service : instance
  method get_user_infos_by_user_ids_async : array -> array
end

class vr_service : instance
  val automatic_scaling : vr_scaling
  val did_pointer_hit : bool
  val fade_out_view_on_collision : bool
  val gui_input_user_c_frame : user_c_frame
  val laser_distance : float
  val pointer_hit_c_frame : c_frame
  val quest_asw_state : bool
  val quest_display_refresh_rate : float
  val third_person_follow_cam_enabled : bool
  val vr_device_available : bool
  val vr_device_name : string
  val vr_enabled : bool
  val vr_session_state : vr_session_state
  method get_touchpad_mode : vr_touchpad -> vr_touchpad_mode
  method get_user_c_frame : user_c_frame -> c_frame
  method get_user_c_frame_enabled : user_c_frame -> bool
  method is_maquettes : unit -> bool
  method is_vr_app_build : unit -> bool
  method recenter_user_head_c_frame : unit -> unit
  method request_navigation : c_frame -> user_c_frame -> unit
  method set_touchpad_mode : vr_touchpad -> vr_touchpad_mode -> unit
end

class vr_status_service : instance
end

class value_base : instance
end

class binary_string_value : value_base
end

class bool_value : value_base
  val value : bool
end

class brick_color_value : value_base
  val value : brick_color
end

class c_frame_value : value_base
  val value : c_frame
end

class color_3_value : value_base
  val value : color_3
end

class double_constrained_value : value_base
  val constrained_value : double
  val max_value : double
  val min_value : double
  val value : double
end

class int_constrained_value : value_base
  val constrained_value : int
  val max_value : int
  val min_value : int
  val value : int
end

class int_value : value_base
  val value : int
end

class number_value : value_base
  val value : double
end

class object_value : value_base
  val value : instance
end

class ray_value : value_base
  val value : ray
end

class string_value : value_base
  val value : string
end

class vector_3_value : value_base
  val value : vector_3
end

class vector_3_curve : instance
  method get_value_at_time : float -> array
  method x : unit -> float_curve
  method y : unit -> float_curve
  method z : unit -> float_curve
end

class version_control_service : instance
  val script_collab_enabled : bool
end

class video_capture_service : instance
  val active : bool
  val camera_id : string
  method get_camera_devices : unit -> map
end

class video_service : instance
end

class virtual_input_manager : instance
  val additional_lua_state : string
  method dump : unit -> unit
  method handle_gamepad_axis_input : int -> key_code -> float -> float -> float -> unit
  method handle_gamepad_button_input : int -> key_code -> int -> unit
  method handle_gamepad_connect : int -> unit
  method handle_gamepad_disconnect : int -> unit
  method send_accelerometer_event : float -> float -> float -> unit
  method send_gravity_event : float -> float -> float -> unit
  method send_gyroscope_event : float -> float -> float -> float -> unit
  method send_key_event : bool -> key_code -> bool -> instance -> unit
  method send_mouse_button_event : int -> int -> int -> bool -> instance -> int -> unit
  method send_mouse_move_event : float -> float -> instance -> unit
  method send_mouse_wheel_event : float -> float -> bool -> instance -> unit
  method send_text_input_character_event : string -> instance -> unit
  method send_touch_event : int -> int -> float -> float -> unit
  method set_input_types_to_ignore : variant -> unit
  method start_playing : string -> unit
  method start_playing_json : string -> unit
  method start_recording : unit -> unit
  method stop_playing : unit -> unit
  method stop_recording : unit -> unit
  method send_roblox_event : string -> string -> string -> unit
  method send_theme_change_event : string -> unit
  method wait_for_input_events_processed : unit -> unit
end

class virtual_user : instance
  method button_1_down : vector_2 -> c_frame -> unit
  method button_1_up : vector_2 -> c_frame -> unit
  method button_2_down : vector_2 -> c_frame -> unit
  method button_2_up : vector_2 -> c_frame -> unit
  method capture_controller : unit -> unit
  method click_button_1 : vector_2 -> c_frame -> unit
  method click_button_2 : vector_2 -> c_frame -> unit
  method move_mouse : vector_2 -> c_frame -> unit
  method set_key_down : string -> unit
  method set_key_up : string -> unit
  method start_recording : unit -> unit
  method stop_recording : unit -> string
  method type_key : string -> unit
end

class visibility_check_dispatcher : instance
end

class visibility_service : instance
end

class visit : instance
end

class voice_chat_internal : instance
  method get_channel_id : unit -> string
  method get_group_id : unit -> string
  method get_session_id : unit -> string
  method get_voice_experience_id : unit -> string
  method is_context_voice_enabled : unit -> bool
  method log_publisher_web_rtc_stats : unit -> bool
  method log_subscription_web_rtc_stats : unit -> bool
  method subscribe_block : int -> bool
  method subscribe_retry : int -> bool
  method subscribe_unblock : int -> bool
  method is_voice_enabled_for_user_id_async : int -> bool
end

class voice_chat_service : instance
  val enable_default_voice : bool
  val use_audio_api : audio_api_rollout
  val use_new_audio_api : bool
  val use_new_control_paths : bool
  val use_new_join_flow : bool
  val voice_chat_enabled_for_place_on_rcc : bool
  val voice_chat_enabled_for_universe_on_rcc : bool
  method is_voice_enabled_for_user_id_async : int -> bool
end

class weld_constraint : instance
  val active : bool
  val enabled : bool
  val part_0 : base_part
  val part_1 : base_part
end

class wire : instance
  val connected : bool
  val source_instance : instance
  val source_name : string
  val target_instance : instance
  val target_name : string
end

