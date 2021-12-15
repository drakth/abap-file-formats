INTERFACE zif_aff_doma_v1 PUBLIC.

  "! <p class="shorttext">Plus - Minus sign for domains</p>
  "! Plus - Minus sign for domains
  TYPES ty_sign                 TYPE c.

  "! <p class="shorttext">Case sensiive flag for domains</p>
  "! Case sensiive flag for domains
  TYPES ty_case_sensitive       TYPE c.

  "! <p class="shorttext">Data type for the domain</p>
  "! Data type for the domain
  TYPES ty_data_type            TYPE c LENGTH 4.

  "! <p class="shorttext">No Characters</p>
  "! Number of Characters
  TYPES ty_numb_char            TYPE c LENGTH 6.

  "! <p class="shorttext">Decimals</p>
  "! Decimals
  TYPES ty_decimals             TYPE c LENGTH 6.

  "! <p class="shorttext">Output Length</p>
  "! Output Length
  TYPES ty_output_length        TYPE c LENGTH 6.

  "! <p class="shorttext">Convertion Routine</p>
  "! Convertion Routine
  TYPES ty_conv_routine         TYPE c LENGTH 5.

  "! <p class="shorttext">Value table</p>
  "! Value table
  TYPES ty_value_table          TYPE c LENGTH 30.

  "! <p class="shorttext">Single Values</p>
  "! Single Values
  BEGIN OF ty_single_value,
    "! <p class="shorttext">Fixed value</p>
    "! Value
    fixed_value                 TYPE c LENGTH 10,
    "! <p class="shorttext">Description</p>
    "! Description
    description                 TYPE zif_aff_types_v1=>ty_header_60_src,
  END OF ty_single_value.

  TYPES ty_single_values        TYPE STANDARD TABLE OF ty_single_value WITH DEFAULT KEY.

  "! <p class="shorttext">Interval values</p>
  "! Interval values
  BEGIN OF ty_intervals_value,
    "! <p class="shorttext">Low limit of the interval</p>
    "! Low value for the interval
    low_limit                   TYPE c LENGTH 10,
    "! <p class="shorttext">High limit of the interval</p>
    "! High value for the interval
    "! $required
    high_limit                  TYPE c LENGTH 10,
    "! <p class="shorttext">Description</p>
    "! Description
    description                 TYPE zif_aff_types_v1=>ty_header_60_src,
  END OF ty_intervals_value.

  TYPES ty_intervals_values     TYPE STANDARD TABLE OF ty_intervals_value WITH DEFAULT KEY.

  TYPES:
    "! <p class="shorttext">Domain Properties</p>
    "! Domain properties
    BEGIN OF ty_main,
      "! $required
      format_version            TYPE zif_aff_types_v1=>ty_format_version,
      "! <p class="shorttext">Header</p>
      "! header
      "! $required
      header                    TYPE zif_aff_types_v1=>ty_header_60_src,
      "! <p class="shorttext">Descriptions</p>
      "! Descriptions maintained in SE11
      descriptions              TYPE zif_aff_oo_types_v1=>ty_descriptions,

      "! Plus, minus sign
      sign                      TYPE ty_sign,

      "! Set if case sensitive
      case_sensitive            TYPE ty_case_sensitive,

      "! $required
      data_type                 TYPE ty_data_type,

      "! $required
      num_chars                 TYPE ty_numb_char,

      "! Set if decimal
      decimals                  TYPE ty_decimals,

      "! Set the oputput length
      output_length             TYPE ty_output_length,

      "! Convertion Routine
      conv_rout                 TYPE ty_conv_routine,

      "! Valule table
      value_table               TYPE ty_value_table,

      "! Single values
      single_val                TYPE ty_single_values,

      "! Interval values
      intervals_val             TYPE ty_intervals_values,
    END OF ty_main.

ENDINTERFACE.