/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/wiki/SyntaxHighlighter:Donate
 *
 * @version
 * 2.0.320 (May 03 2009)
 * 
 * @copyright
 * Copyright (C) 2004-2009 Alex Gorbatchev.
 *
 * @license
 * This file is part of SyntaxHighlighter.
 * 
 * SyntaxHighlighter is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * SyntaxHighlighter is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with SyntaxHighlighter.  If not, see <http://www.gnu.org/copyleft/lesser.html>.
 */
SyntaxHighlighter.brushes.GnuProlog = function()
{
	var funcs	=	'is abolish abort absolute_file_name  absolute_file_name add_linedit_completion add_stream_alias add_stream_mirror alias  alias  append  append append architecture arg argument_counter argument_list argument_value asserta assertz at_end_of_stream at_end_of_stream atom atom_chars atom_codes atom_concat atom_hash atom_length atom_property atomic back_quotes  backtracks  bagof binary  bind_variables bip_name  block  block_device  bof  boolean  bounded  bounds  break buffering  buffering  built_in  built_in built_in built_in_fd  built_in_fd built_in_fd call call call_det call_with_args callable catch change_directory char_code char_conversion  char_conversion char_conversion character_count character_device  choice_size  clause close close close_input_atom_stream close_input_chars_stream close_input_codes_stream close_output_atom_stream close_output_chars_stream close_output_codes_stream compare compound consult copy_term cpu_time create_pipe current  current_alias current_atom current_bip_name current_char_conversion current_input current_mirror current_op current_output current_predicate current_prolog_flag current_stream date_time debug  debug debugging decompose_file_name delete delete_directory delete_file directory  directory_files discontiguous display display display_to_atom display_to_chars display_to_codes double_quotes  dynamic  dynamic   end_of_stream  end_of_term  ensure_linked ensure_loaded environ eof  eof_action  eof_action  eof_code  error  exclude  exec exec execute  expand_term extended  extra_cstr  fail  fail fct_name  fd_all_different fd_at_least_one fd_at_most_one fd_atleast fd_atmost fd_cardinality fd_cardinality fd_dom fd_domain fd_domain fd_domain_bool fd_element fd_element_var fd_exactly fd_has_extra_cstr fd_has_vector fd_labeling fd_labeling fd_labelingff fd_max fd_max_integer  fd_max_integer fd_maximize fd_min fd_minimize fd_not_prime fd_only_one fd_prime fd_relation fd_relationc fd_set_vector_max fd_size fd_use_vector fd_var fd_vector_max fifo  file_exists file_name  file_permission file_property find_linedit_completion findall first_fail  float flush_output flush_output for force  foreign foreign fork_prolog format format format_to_atom format_to_chars format_to_codes from  full  functor g_array  g_array_auto  g_array_extend  g_array_size g_assign g_assignb g_dec g_dec g_dec g_deco g_inc g_inc g_inc g_inco g_link g_read g_reset_bit g_set_bit g_test_reset_bit g_test_set_bit generic_var get get0 get_byte get_byte get_char get_char get_code get_code get_key get_key get_key_no_echo get_key_no_echo get_linedit_prompt get_print_stream get_seed gplc half  halt halt hash  hexgplc host_name hostname_address ignore_ops  include infix_op  initialization input  integer integer_rounding_function   jump    keysort keysort   largest  last last_modification  last_read_start_line_column leash length  length line  line_count line_position linedit list list_or_partial_list listing listing load loose  lower_upper make_directory max  max_arity  max_atom  max_depth  max_integer  max_list max_regret  max_unget  member memberchk middle  min  min_integer  min_list mirror  mirror  mode  most_constrained  multifile multifile_warning  name name_query_vars name_singleton_vars namevars  native_code  needs_quotes  needs_scan  new_atom new_atom new_atom next  nl nl nodebug non_fd_var non_generic_var none  none  nonvar nospy nospyall notrace nth number number_atom number_chars number_codes numbervars  numbervars numbervars once op op open open open_input_atom_stream open_input_chars_stream open_input_codes_stream open_output_atom_stream open_output_chars_stream open_output_codes_stream os_error  os_version output  partial_list peek_byte peek_byte peek_char peek_char peek_code peek_code permission  permutation phrase phrase popen portray portray_clause portray_clause portrayed  position  postfix_op  predicate_property prefix prefix_op  print print print_to_atom print_to_chars print_to_codes priority  private  prolog_copyright  prolog_date  prolog_file  prolog_file_name prolog_line  prolog_name  prolog_pid prolog_version  public  public punct  put put_byte put_byte put_char put_char put_code put_code quoted  random  random random randomize read  read  read read read_atom read_atom read_from_atom read_from_chars read_from_codes read_integer read_integer read_number read_number read_pl_state_file read_term read_term read_term_from_atom read_term_from_chars read_term_from_codes read_token read_token read_token_from_atom read_token_from_chars read_token_from_codes real_file_name  real_time regular  remove_stream_mirror rename_file reorder  repeat reposition  reposition  reset  retract retractall return  reverse search  see seeing seek seen select select send_signal set_bip_name set_input set_linedit_prompt set_output set_prolog_flag set_prolog_flag set_seed set_stream_buffering set_stream_eof_action set_stream_line_column set_stream_position set_stream_type setarg setarg setof shell shell shell singleton_warning  singletons  size  skip sleep smallest  socket  socket socket_accept socket_accept socket_bind socket_close socket_connect socket_listen sort sort sort0 sort0 space_args  spawn spawn spy spypoint_condition sr_change_options sr_close sr_current_descriptor sr_error_from_exception sr_get_error_counters sr_get_file_name sr_get_include_list sr_get_include_stream_list sr_get_module sr_get_position sr_get_size_counters sr_get_stream sr_open sr_read_term sr_set_error_counters sr_write_error sr_write_error sr_write_error sr_write_message sr_write_message sr_write_message standard  static  statistics statistics stop stream_line_column stream_position stream_property strict_iso  string  sub_atom sublist suffix sum_list suspicious_warning  syntax_error  syntax_error  syntax_error_info system system system_time tab tell telling temporary_file temporary_name term_ref text  throw tight  told top_level trace true type  type  unget_byte unget_byte unget_char unget_char unget_code unget_code unify_with_occurs_check unknown  unknown  unlink user  user user_input user_output user_time value_method  var  var variable_method  variable_names  variables  vector_max  wait wam_debug warning  working_directory write  write  write write write_canonical write_canonical write_canonical_to_atom write_canonical_to_chars write_canonical_to_codes write_pl_state_file write_term write_term write_term_to_atom write_term_to_chars write_term_to_codes write_to_atom write_to_chars write_to_codes writeq writeq writeq_to_atom writeq_to_chars writeq_to_codes';


	this.regexList = [
		{ regex: SyntaxHighlighter.regexLib.multiLineCComments,		css: 'comments' },			// multiline comments
		{ regex: /%.*$/gm,											css: 'comments' },			// one line comments
		{ regex: SyntaxHighlighter.regexLib.doubleQuotedString,		css: 'string' },			// double quoted strings
		{ regex: SyntaxHighlighter.regexLib.singleQuotedString,		css: 'string' },			// single quoted strings
		{ regex: /[A-Z]+[a-zA-Z]*/g,									css: 'variable' },		// variables
		{ regex: new RegExp(this.getKeywords(funcs), 'gmi'),		css: 'functions' },			// common functions
		];

};

SyntaxHighlighter.brushes.GnuProlog.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.GnuProlog.aliases	= ['prolog'];
