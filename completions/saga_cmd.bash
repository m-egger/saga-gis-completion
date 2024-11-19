# saga_cmd bash completion file

# ------------------------------------------------------------------------------
# Copyright (c) 2024 Manfred Egger
# This software is released under the MIT License.
# See the LICENSE file for more details.
#
# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2024 Manfred Egger
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# INFO:
# This script provides bash command completion for saga_cmd.
# The completion lists are generated dynamically during execution,
# The tool libraries and option flags are predefined to speed up the completion.
# The completion requires the following order: saga_cmd <opt> <library> <tool> <parameter>.
# ------------------------------------------------------------------------------
# SAGA Version: 9.6.0
# ------------------------------------------------------------------------------

saga_opts="-h -v -s -C -u -c -f"
saga_opts_long="--help --version --story --config  --utf8 --cores --flags"

tool_libs="climate_tools contrib_perego db_odbc db_pgsql docs_html docs_pdf garden_fractals garden_webservices grid_analysis grid_calculus grid_calculus_bsl grid_filter grid_gridding grid_spline grids_tools grid_tools grid_visualisation imagery_classification imagery_isocluster imagery_maxent imagery_opencv imagery_photogrammetry imagery_segmentation imagery_svm imagery_tools imagery_vigra io_esri_e00 io_gdal io_gps io_grid io_grid_image io_pdal io_shapes io_table io_virtual io_webservices pj_georeference pj_proj4 pointcloud_tools shapes_grid shapes_lines shapes_points shapes_polygons shapes_tools shapes_transect sim_air_flow sim_cellular_automata sim_ecosystems_hugget sim_erosion sim_geomorphology sim_hydrology sim_ihacres sim_landscape_evolution sim_qm_of_esp sim_rivflow statistics_grid statistics_kriging statistics_points statistics_regression table_calculus table_tools ta_channels ta_cliffmetrics ta_compound ta_hydrology ta_lighting ta_morphometry ta_preprocessor ta_profiles ta_slope_stability tin_tools _tool_chains_uncategorized tta_tools vis_3d_viewer"

_get_tool_params(){
  local lib=$1
  local id=$2
  local key=${lib}_${id}

  case $key in 
    climate_tools_0)
      echo "-VARIABLE -X_SOURCE -X_GRIDS -X_GRIDS_CHECK -X_TABLE -H_METHOD -V_METHOD -COEFFICIENTS -LINEAR_SORTED -SPLINE_ALL -TREND_ORDER -SURFACE -RESULT"
      return
      ;;
    climate_tools_1)
      echo "-VARIABLE -X_SOURCE -X_GRIDS -X_GRIDS_CHECK -X_TABLE -H_METHOD -V_METHOD -COEFFICIENTS -LINEAR_SORTED -SPLINE_ALL -TREND_ORDER -POINTS -ZFIELD -RESULT -NAME"
      return
      ;;
    climate_tools_2)
      echo "-ORBPAR -START -STOP -STEP"
      return
      ;;
    climate_tools_3)
      echo "-SOLARRAD -START -STOP -STEP -LAT"
      return
      ;;
    climate_tools_4)
      echo "-SOLARRAD -START -STOP -STEP -DLAT -DAY"
      return
      ;;
    climate_tools_5)
      echo "-SOLARRAD -ALBEDO -FIELD -YEAR -DLAT"
      return
      ;;
    climate_tools_6)
      echo "-TABLE -RESULT -T -T_MIN -T_MAX -RH -SR -WS -P -DATE -ET -LAT -METHOD"
      return
      ;;
    climate_tools_7)
      echo "-DAYS -JD -ET -P -HOURS -LAT"
      return
      ;;
    climate_tools_8)
      echo "-T -T_DEFAULT -T_MIN -T_MIN_DEFAULT -T_MAX -T_MAX_DEFAULT -RH -RH_DEFAULT -SR -SR_DEFAULT -WS -WS_DEFAULT -P -P_DEFAULT -ET -METHOD -SR_EST -SUNSHINE -TIME -MONTH -DAY -LAT"
      return
      ;;
    climate_tools_9)
      echo "-TARGET -SUNRISE -SUNSET -LENGTH -DAY -TIME"
      return
      ;;
    climate_tools_10)
      echo "-TMEAN -TMIN -TMAX -P -BIO_01 -BIO_02 -BIO_03 -BIO_04 -BIO_05 -BIO_06 -BIO_07 -BIO_08 -BIO_09 -BIO_10 -BIO_11 -BIO_12 -BIO_13 -BIO_14 -BIO_15 -BIO_16 -BIO_17 -BIO_18 -BIO_19 -QUARTER_COLDEST -QUARTER_WARMEST -QUARTER_DRIEST -QUARTER_WETTEST -SEASONALITY"
      return
      ;;
    climate_tools_11)
      echo "-T -TMIN -TMAX -P -SWC -SWC_DEFAULT -SWC_SURFACE -SW1_RESIST -LAT_DEF -SMT -SMP -LGS -FIRST -LAST -TLH -DT_MIN -SW_MIN -LGS_MIN -SMT_MIN -TLH_MAX_DIFF"
      return
      ;;
    climate_tools_13)
      echo "-BOUNDARY -WIND -OBSERVED -B_GRID -WINDCORR -B_SOURCE -B_CONST -B_MAX -B_STEPS -KERNEL_TYPE -KERNEL_SIZE"
      return
      ;;
    climate_tools_14)
      echo "-TMIN -TMAX -FREQUENCY -DT_MEAN -DT_MAX -DT_STDV -TMIN_MEAN -TMIN_MIN"
      return
      ;;
    climate_tools_15)
      echo "-GSL -GST -FROST -NIVAL_TEMP -TREE_TEMP -ATB"
      return
      ;;
    climate_tools_17)
      echo "-T -P -DAYS -MEAN -MAXIMUM -QUANTILE -QUANT_VAL -TIME -MONTH"
      return
      ;;
    climate_tools_18)
      echo "-TMEAN -TBASE -NGDD -TSUM -FIRST -LAST -TARGET -TTARGET"
      return
      ;;
    climate_tools_19)
      echo "-T -P -CLASSES -METHOD"
      return
      ;;
    climate_tools_20)
      echo "-T -TMIN -TMAX -P -SWC -SWC_DEFAULT -SWC_SURFACE -SW1_RESIST -LAT_DEF -SNOW -ETP -SW_0 -SW_1"
      return
      ;;
    climate_tools_21)
      echo "-WEATHER -ATmean -ATmax -SIrel -PHENOLOGY -SUMMARY -LATITUDE -LIMIT -DToptimum -DTminimum -FAminimum -DayLength -DDminimum -DDtotal -Risk_DayMax -Risk_Decay -YD_Begin -YD_End_Onset -YD_End"
      return
      ;;
    climate_tools_22)
      echo "-ATmean -ATmax -SIrel -GENERATIONS -ONSET -ONSET_FILIAL_1 -ONSET_SISTER_1 -ONSET_FILIAL_2 -ONSET_SISTER_2 -ONSET_FILIAL_3 -ONSET_SISTER_3 -BTSUM_FILIAL_1 -BTSUM_SISTER_1 -BTSUM_FILIAL_2 -BTSUM_SISTER_2 -BTSUM_FILIAL_3 -BTSUM_SISTER_3 -LAT_GRID -LAT_CONST -DToptimum -DTminimum -FAminimum -DayLength -DDminimum -DDtotal -Risk_DayMax -Risk_Decay -YD_Begin -YD_End_Onset -YD_End"
      return
      ;;
    climate_tools_23)
      echo "-ATmean -ATmax -SIrel -GENERATIONS -ONSET -ONSET_FILIAL_1 -ONSET_SISTER_1 -ONSET_FILIAL_2 -ONSET_SISTER_2 -ONSET_FILIAL_3 -ONSET_SISTER_3 -BTSUM_FILIAL_1 -BTSUM_SISTER_1 -BTSUM_FILIAL_2 -BTSUM_SISTER_2 -BTSUM_FILIAL_3 -BTSUM_SISTER_3 -LAT_GRID -LAT_CONST -DToptimum -DTminimum -FAminimum -DayLength -DDminimum -DDtotal -Risk_DayMax -Risk_Decay -YD_Begin -YD_End_Onset -YD_End -ATSUM_EFF -RISK -RESET -DAY"
      return
      ;;
    climate_tools_24)
      echo "-TAVG -TMIN -TMAX -PSUM -SNOW -SW_0 -SW_1 -LAT_GRID -LAT_CONST -SWC -SWC_DEFAULT -SWC_SURFACE -SWT_RESIST -RESET -DAY"
      return
      ;;
    climate_tools_25)
      echo "-COVERS -HEIGHTS -GROUND -WIND -CBASE -COVER -BLOCKS -INTERVAL -MINCOVER"
      return
      ;;
    climate_tools_26)
      echo "-TEMP -TGROUND -LAPSE -TEXTREME -TIME -EXTREME"
      return
      ;;
    climate_tools_27)
      echo "-P -P_DEFAULT -Z -Z_DEFAULT -T -T_DEFAULT -L -L_DEFAULT -DEM -P_ADJ"
      return
      ;;
    climate_tools_28)
      echo "-IRRADIANCE -IRRADIANCE_DEFAULT -ALBEDO -ALBEDO_DEFAULT -EMISSIVITY -EMISSIVITY_DEFAULT -CONVECTION -CONVECTION_DEFAULT -T_AIR -T_AIR_DEFAULT -T_SKY -T_SKY_DEFAULT -T_INITIAL -T_INITIAL_DEFAULT -LST -UNIT -ITERATIONS"
      return
      ;;
    climate_tools_29)
      echo "-T -T_DEFAULT -P -P_DEFAULT -IN_VP -IN_VP_DEFAULT -IN_SH -IN_SH_DEFAULT -IN_RH -IN_RH_DEFAULT -IN_DP -IN_DP_DEFAULT -OUT_VPSAT -OUT_VP -OUT_VPDIF -OUT_RH -OUT_SH -OUT_DP -OUT_DPDIF -CONVERSION -VPSAT_METHOD"
      return
      ;;
    climate_tools_30)
      echo "-LORES_DEM -LORES_T -LORES_LAPSE -LORES_SLT -HIRES_DEM -HIRES_T -LAPSE_METHOD -REGRS_SUMMARY -REGRS_LAPSE -LIMIT_LAPSE -CONST_LAPSE"
      return
      ;;
    climate_tools_31)
      echo "-LATITUDE -SOLARRAD -MONTH -DAY -SUNSHINE"
      return
      ;;
    climate_tools_32)
      echo "-POINTS -DEM -TEMPERATURE -SLT -FIELD_T -FIELD_Z -INTERPOLATION -IDW_POWER -LAPSE_METHOD -REGRS_SUMMARY -REGRS_LAPSE -LIMIT_LAPSE -CONST_LAPSE"
      return
      ;;
    climate_tools_temperature_downscaling)
      echo "-LORES_DEM -LORES_LAPSE -LORES_T -HIRES_DEM -HIRES_T -LAPSE_METHOD -CONST_LAPSE -REGRS_LAPSE -LIMIT_LAPSE -MINIM_LAPSE"
      return
      ;;
    contrib_perego_0)
      echo "-INPUT -RESULT -RX -RY -THRESH"
      return
      ;;
    contrib_perego_1)
      echo "-INPUT -RESULT -RX -RY -THRESH"
      return
      ;;
    contrib_perego_2)
      echo "-INPUT -RESULT -RX -RY -THRESH"
      return
      ;;
    contrib_perego_3)
      echo "-INPUT -MASK -RESULT -V -RX -RY"
      return
      ;;
    contrib_perego_4)
      echo "-INPUT -MASK -RESULT -V -RX -RY"
      return
      ;;
    contrib_perego_5)
      echo "-INPUT -MASK -RESULT3 -RESULT1 -RESULT2 -STRIPES -ANG -R -D"
      return
      ;;
    contrib_perego_6)
      echo "-INPUT -MASK -RESULT3 -RESULT1 -RESULT2 -STRIPES -ANG -R -D -MIN -MAX -MMIN -MMAX"
      return
      ;;
    contrib_perego_7)
      echo "-INPUT -RESULT -ANG -R1 -R2"
      return
      ;;
    db_odbc_0)
      echo "-DSN -USER -PASSWORD"
      return
      ;;
    db_odbc_1)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -TRANSACT"
      return
      ;;
    db_odbc_2)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -SOURCE -TRANSACT"
      return
      ;;
    db_odbc_3)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -SQL -COMMIT -STOP"
      return
      ;;
    db_odbc_4)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -FIELDS -TABLE"
      return
      ;;
    db_odbc_5)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -TABLE -SOURCE"
      return
      ;;
    db_odbc_6)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -TABLE -TABLE_PK -TABLE_NN -TABLE_UQ -NAME -EXISTS"
      return
      ;;
    db_odbc_7)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -TABLE"
      return
      ;;
    db_odbc_8)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -TABLE -TABLES -FIELDS -WHERE -GROUP -HAVING -ORDER -DISTINCT"
      return
      ;;
    db_odbc_9)
      echo "-SOURCES -CONNECTED"
      return
      ;;
    db_odbc_10)
      echo "-ODBC_DSN -ODBC_USR -ODBC_PWD -TABLES"
      return
      ;;
    db_odbc_11)
      echo "-TRANSACT"
      return
      ;;
    db_pgsql_0)
      echo "-CONNECTIONS"
      return
      ;;
    db_pgsql_1)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD"
      return
      ;;
    db_pgsql_2)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TRANSACT"
      return
      ;;
    db_pgsql_3)
      echo "-TRANSACT"
      return
      ;;
    db_pgsql_4)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -SAVEPOINT"
      return
      ;;
    db_pgsql_5)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TRANSACT -SAVEPOINT"
      return
      ;;
    db_pgsql_6)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -SQL -TABLES -OUTPUT -STOP"
      return
      ;;
    db_pgsql_10)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TABLES"
      return
      ;;
    db_pgsql_11)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TABLE -DB_TABLE -VERBOSE"
      return
      ;;
    db_pgsql_12)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TABLE -DB_TABLE"
      return
      ;;
    db_pgsql_13)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TABLE -TABLE_PK -TABLE_NN -TABLE_UQ -NAME -EXISTS"
      return
      ;;
    db_pgsql_14)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -DB_TABLE"
      return
      ;;
    db_pgsql_15)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TABLE -TABLES -FIELDS -WHERE -GROUP -HAVING -ORDER -DISTINCT"
      return
      ;;
    db_pgsql_16)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TABLE -WHERE -HAVING -ORDER -DISTINCT"
      return
      ;;
    db_pgsql_20)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -SHAPES -COLLECTION -DB_TABLE"
      return
      ;;
    db_pgsql_21)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -SHAPES -SHAPES_PK -SHAPES_NN -SHAPES_UQ -NAME -EXISTS -CRS_CODE -CRS_AUTHORITY"
      return
      ;;
    db_pgsql_22)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -DB_TABLE -CRS_CODE -CRS_AUTHORITY"
      return
      ;;
    db_pgsql_23)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -SHAPES -GEO_TABLE -GEO_KEY -JOIN_TABLE -JOIN_KEY -WHERE"
      return
      ;;
    db_pgsql_24)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -SHAPES -GEO_TABLE -GEO_KEY -JOIN_TABLE -JOIN_KEY -FIELDS -WHERE -GROUP -HAVING -ORDER -DISTINCT"
      return
      ;;
    db_pgsql_30)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -GRIDS -DB_TABLE -WHERE -MULTIPLE"
      return
      ;;
    db_pgsql_31)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -GRIDS -TABLE -NAME -GRID_NAME -CRS_CODE -CRS_AUTHORITY"
      return
      ;;
    db_pgsql_32)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -TABLES -CRS_CODE -CRS_AUTHORITY"
      return
      ;;
    db_pgsql_33)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -GRID -DB_TABLE -RID"
      return
      ;;
    db_pgsql_34)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD -GRIDS -NAME -EXISTS -CRS_CODE -CRS_AUTHORITY"
      return
      ;;
    db_pgsql_35)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD"
      return
      ;;
    db_pgsql_36)
      echo "-PG_HOST -PG_PORT -PG_DB -PG_USER -PG_PWD"
      return
      ;;
    docs_html_1)
      echo "-FILENAME -LIST -SHAPES"
      return
      ;;
    docs_pdf_0)
      echo "-SHAPES -SUBTITLE -FILENAME -PAPER_SIZE -COLOR_LINE -COLOR_FILL -LAYOUT_MODE -LAYOUT_BREAK -COLUMNS -CELL_MODE -CELL_HEIGHT"
      return
      ;;
    docs_pdf_1)
      echo "-SHAPES -FIELD -TABLE -PDF -OUTPUTPATH"
      return
      ;;
    docs_pdf_2)
      echo "-DEM -LINES -SECTIONS -NUMPOINTS -INTERVAL -STEP -PDF -OUTPUTPATH -WIDTH -SLOPE -THRESHOLD"
      return
      ;;
    garden_fractals_0)
      echo "-TABLE -ITERATIONS -NVALUES -SEED -RANGE_MIN -RANGE_MAX -STEP"
      return
      ;;
    garden_fractals_1)
      echo "-RESULT -TYPE -ANGLE -MINSIZE -METHOD -VARRANGE_MIN -VARRANGE_MAX"
      return
      ;;
    garden_fractals_3)
      echo "-INPUT -RESULT -DSIZE"
      return
      ;;
    garden_fractals_5)
      echo "-GRID -NX -NY -H -METHOD -M"
      return
      ;;
    garden_webservices_0)
      echo "-MAP -LEGENDS -SERVER -VERSION -LEGEND -USERNAME -PASSWORD"
      return
      ;;
    grid_analysis_0)
      echo "-DEST_TYPE -DEST_POINTS -DEST_GRID -COST -COST_BMIN -COST_MIN -DIR_MAXCOST -DIR_UNIT -DIR_K -ACCUMULATED -ALLOCATION -THRESHOLD"
      return
      ;;
    grid_analysis_5)
      echo "-SOURCE -DEM -VALUES -POINTS -LINE"
      return
      ;;
    grid_analysis_6)
      echo "-A -B -DIST -DIR -C"
      return
      ;;
    grid_analysis_7)
      echo "-INPUT -RESULT"
      return
      ;;
    grid_analysis_8)
      echo "-INPUT -NDC -RELATIVE -FRAGMENTATION -CVN -DIVERSITY -DOMINANCE -MAXNUMCLASS -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_analysis_9)
      echo "-GRIDS -RESULT -CRITERIA"
      return
      ;;
    grid_analysis_10)
      echo "-GRIDS -TABLE -OUTPUT"
      return
      ;;
    grid_analysis_11)
      echo "-GRIDS -OUTPUT -ORDERED -WEIGHTS"
      return
      ;;
    grid_analysis_12)
      echo "-INPUT -MAXNUMCLASS -RESULT"
      return
      ;;
    grid_analysis_13)
      echo "-INPUT -INPUT2 -RESULTGRID -RESULTTABLE -MAXNUMCLASS"
      return
      ;;
    grid_analysis_14)
      echo "-SAND -SILT -CLAY -TEXTURE -SUM -SCHEME -COLORS -USER -POLYGONS -XY_AXES -TRIANGLE"
      return
      ;;
    grid_analysis_15)
      echo "-CLASSES -DENSITY -CONNECTIVITY -FRAGMENTATION -FRAGSTATS -CLASS -NEIGHBORHOOD_MIN -NEIGHBORHOOD_MAX -AGGREGATION -BORDER -WEIGHT -DENSITY_MIN -DENSITY_INT -CIRCULAR -DIAGONAL"
      return
      ;;
    grid_analysis_16)
      echo "-CLASSES -DENSITY -CONNECTIVITY -FRAGMENTATION -FRAGSTATS -CLASS -NEIGHBORHOOD_MIN -NEIGHBORHOOD_MAX -AGGREGATION -BORDER -WEIGHT -DENSITY_MIN -DENSITY_INT -LEVEL_GROW -DENSITY_MEAN"
      return
      ;;
    grid_analysis_17)
      echo "-DENSITY -CONNECTIVITY -FRAGMENTATION -BORDER -WEIGHT -DENSITY_MIN -DENSITY_INT"
      return
      ;;
    grid_analysis_18)
      echo "-SURFACE -INPUT -STATE_IN -OPERATION_GRID -CONTROL -CTRL_LINEAR -FLUX -STATE_OUT -OPERATION -LINEAR -THRES_LINEAR"
      return
      ;;
    grid_analysis_19)
      echo "-GRID_1 -GRID_2 -DTM_1 -DTM_2 -CORRPOINTS -CORRLINES -SEARCH_CHIPSIZE -REF_CHIPSIZE -GRID_SPACING"
      return
      ;;
    grid_analysis_20)
      echo "-TABLE -SAND -SILT -CLAY -TEXTURE -SCHEME -COLORS -USER -POLYGONS -XY_AXES -TRIANGLE"
      return
      ;;
    grid_analysis_21)
      echo "-CATEGORIES -COUNT -DIVERSITY -CONNECTIVITY -CONNECTEDAVG -NB_CASE -NORMALIZE -KERNEL_TYPE -KERNEL_RADIUS -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    grid_analysis_22)
      echo "-CATEGORIES -COUNT -INDEX -EVENNESS -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_analysis_23)
      echo "-CATEGORIES -COUNT -INDEX -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_analysis_24)
      echo "-VALUES -COUNT -INDEX -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_analysis_25)
      echo "-VALUES -NORMALIZE -INDEX -DISTANCE -LAMBDA -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_analysis_26)
      echo "-CLASSES -COVERAGES -LUT -LUT_VAL -LUT_MAX -LUT_NAME -NO_DATA -DATADEPTH -UNIT -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE"
      return
      ;;
    grid_analysis_27)
      echo "-SAND -SAND_DEFAULT -SILT -SILT_DEFAULT -CLAY -CLAY_DEFAULT -CORG -CORG_DEFAULT -BULK -BULK_DEFAULT -CEC -CEC_DEFAULT -PH -PH_DEFAULT -FC -PWP -THETA_S -UNIT -FUNCTION -PSI_FC -PSI_PWP -ADJUST -USERDEF -COEFFICIENTS"
      return
      ;;
    grid_analysis_28)
      echo "-SAND -SILT -CLAY -CORG -BULK -CEC -PH -FC -PWP -THETA_S -UNIT -FUNCTION -PSI_FC -PSI_PWP -ADJUST -USERDEF -COEFFICIENTS"
      return
      ;;
    grid_analysis_29)
      echo "-INPUT -REMOVED -OUTPUT -TARGET -METHOD -SUBSTITUTE"
      return
      ;;
    grid_analysis_30)
      echo "-GRID -OBJECTS -SUMMARY -EXTENTS -NEIGHBOURHOOD -BOUNDARY_CELLS -BOUNDARY_VALUE"
      return
      ;;
    grid_calculus_0)
      echo "-INPUT -OUTPUT -RANGE_MIN -RANGE_MAX"
      return
      ;;
    grid_calculus_1)
      echo "-RESAMPLING -FORMULA -USE_NODATA -TYPE -GRIDS -XGRIDS -RESULT"
      return
      ;;
    grid_calculus_2)
      echo "-GRID -METHOD -LEVEL"
      return
      ;;
    grid_calculus_3)
      echo "-A -B -B_DEFAULT -C"
      return
      ;;
    grid_calculus_4)
      echo "-FORMULA -X_RANGE_MIN -X_RANGE_MAX -Y_RANGE_MIN -Y_RANGE_MAX -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -FUNCTION"
      return
      ;;
    grid_calculus_5)
      echo "-RESULT -CELL_COUNT -CELL_SIZE -FIGURE -PLANE"
      return
      ;;
    grid_calculus_6)
      echo "-RADIUS -ITERATIONS -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID"
      return
      ;;
    grid_calculus_7)
      echo "-METHOD -RANGE_MIN -RANGE_MAX -MEAN -STDDEV -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -OUT_GRID"
      return
      ;;
    grid_calculus_8)
      echo "-GRIDS -RESULT -NODATA"
      return
      ;;
    grid_calculus_9)
      echo "-GRIDS -RESULT -NODATA"
      return
      ;;
    grid_calculus_10)
      echo "-INPUT -OUTPUT -STRETCH"
      return
      ;;
    grid_calculus_11)
      echo "-INPUT -OUTPUT -INC_MIN -INC_MAX -DEC_MIN -DEC_MAX -METHOD -TRANSITION -INVERT -AUTOFIT"
      return
      ;;
    grid_calculus_12)
      echo "-GRIDS -AND -TYPE"
      return
      ;;
    grid_calculus_13)
      echo "-GRIDS -OR -TYPE"
      return
      ;;
    grid_calculus_14)
      echo "-GRID -CONV -CONVERSION"
      return
      ;;
    grid_calculus_15)
      echo "-DX -DY -DIR -LEN -UNITS -SYSTEM -SYSTEM_ZERO -SYSTEM_ORIENT"
      return
      ;;
    grid_calculus_16)
      echo "-DIR -LEN -DX -DY -UNITS -SYSTEM -SYSTEM_ZERO -SYSTEM_ORIENT"
      return
      ;;
    grid_calculus_17)
      echo "-SCALING -MAX_SCALE -STEPS -RANGE_MIN -RANGE_MAX -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -OUT_GRID"
      return
      ;;
    grid_calculus_18)
      echo "-A -B -B_DEFAULT -C"
      return
      ;;
    grid_calculus_19)
      echo "-OUTPUT_GRID -FILE -MINDEGREE -MAXDEGREE -LAT_START -END_LAT -LONG_START -END_LONG -INC"
      return
      ;;
    grid_calculus_20)
      echo "-RESAMPLING -FORMULA -USE_NODATA -TYPE -GRIDS -XGRIDS -RESULT"
      return
      ;;
    grid_calculus_21)
      echo "-GRID -MATCHED -REFERENCE -METHOD -NCLASSES -MAXSAMPLES"
      return
      ;;
    grid_calculus_22)
      echo "-A -B -B_DEFAULT -C"
      return
      ;;
    grid_calculus_23)
      echo "-A -B -B_DEFAULT -C"
      return
      ;;
    grid_calculus_bsl_0)
      echo "-PARAMETERS_GRID_SYSTEM_D -PARAMETERS_GRID_SYSTEM_X -PARAMETERS_GRID_SYSTEM_Y -PARAMETERS_GRID_SYSTEM_NX -PARAMETERS_GRID_SYSTEM_NY -PARAMETERS_GRID_SYSTEM_FILE -OUTPUT -BSL -PROGRESS"
      return
      ;;
    grid_calculus_bsl_1)
      echo "-PARAMETERS_GRID_SYSTEM_D -PARAMETERS_GRID_SYSTEM_X -PARAMETERS_GRID_SYSTEM_Y -PARAMETERS_GRID_SYSTEM_NX -PARAMETERS_GRID_SYSTEM_NY -PARAMETERS_GRID_SYSTEM_FILE -OUTPUT -BSL -PROGRESS"
      return
      ;;
    grid_filter_0)
      echo "-INPUT -RESULT -METHOD -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_filter_1)
      echo "-INPUT -RESULT -KERNEL_RADIUS -SIGMA"
      return
      ;;
    grid_filter_2)
      echo "-INPUT -RESULT -METHOD -KERNEL_RADIUS -SIGMA"
      return
      ;;
    grid_filter_3)
      echo "-INPUT -RESULT -STDDEV -DIR -NOISE_ABS -NOISE_REL -WEIGHTED -METHOD"
      return
      ;;
    grid_filter_4)
      echo "-INPUT -RESULT -FILTER -FILTER_3X3 -ABSOLUTE"
      return
      ;;
    grid_filter_5)
      echo "-GRID -OUTPUT -THRESHOLD"
      return
      ;;
    grid_filter_6)
      echo "-INPUT -RESULT -TYPE -THRESHOLD -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_filter_7)
      echo "-INPUT -GROUND -NONGROUND -RADIUS -TERRAINSLOPE -FILTERMOD -STDDEV"
      return
      ;;
    grid_filter_8)
      echo "-INPUT -RESULT -METHOD -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_filter_9)
      echo "-INPUT -RESULT -RANK -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_filter_10)
      echo "-INPUT -OUTPUT -SIGMA -ITER -VITER -NB_CV -ZONLY"
      return
      ;;
    grid_filter_11)
      echo "-GRID -LOPASS -HIPASS -SCALE"
      return
      ;;
    grid_filter_12)
      echo "-INPUT_GRID -DIFFERENCE_GRID -OBJECT_GRID -SHIFT_VALUE -BORDER_YES_NO -THRESHOLD"
      return
      ;;
    grid_filter_13)
      echo "-INPUT_GRID -OUTPUT_GRID -RADIUS"
      return
      ;;
    grid_filter_14)
      echo "-INPUT_GRID -FILTERED_MASK -FILTER -SIZE -SYMBOLIC_IMAGE -OUTLINES -BORDER_PIXEL_CENTERS -REMOVE_MARGINAL_REGIONS"
      return
      ;;
    grid_filter_15)
      echo "-INPUT -OUTPUT -MODE -THRESHOLD -ALL -CLASS"
      return
      ;;
    grid_filter_16)
      echo "-TMAGNITUDE -TDIRECTION -TNEIGHBOUR -ALIGNMENT -NEIGHBOUR -FEATURE -EDGE_POINTS -EDGE_LINES -GRADIENTS_OUT -GRADIENTS"
      return
      ;;
    grid_filter_17)
      echo "-TMAGNITUDE -TDIRECTION -TNEIGHBOUR -ALIGNMENT -NEIGHBOUR -FEATURES -EDGE_CELLS -OUTPUT_ADD -OUTPUT -ZERO_AS_NODATA"
      return
      ;;
    grid_filter_18)
      echo "-INPUT -RESULT -SHAPES -METHOD -SKIP_OUTSIDE -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_filter_19)
      echo "-INPUT -RESULT -METHOD -KERNEL_RADIUS -SIGMA"
      return
      ;;
    grid_filter_notch_filter)
      echo "-INPUT_GRID -LOWPASS_UPPER -HIPASS_LOWER -FILTERED_GRID -HIGH_PASS -LOW_PASS"
      return
      ;;
    grid_filter_sieve_and_clump)
      echo "-CLASSES -FILTERED -MODE -SIEVE -EXPAND"
      return
      ;;
    grid_filter_simple_filter_bulk)
      echo "-GRIDS -FILTERED -METHOD -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grid_gridding_0)
      echo "-INPUT -FIELD -OUTPUT -MULTIPLE -LINE_TYPE -POLY_TYPE -GRID_TYPE -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRID -COUNT"
      return
      ;;
    grid_gridding_1)
      echo "-POINTS -FIELD -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    grid_gridding_2)
      echo "-POINTS -FIELD -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID"
      return
      ;;
    grid_gridding_3)
      echo "-POINTS -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -METHOD -WEIGHT"
      return
      ;;
    grid_gridding_4)
      echo "-POINTS -FIELD -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -QUADRATIC_NEIGHBORS -WEIGHTING_NEIGHBORS"
      return
      ;;
    grid_gridding_5)
      echo "-POINTS -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -FRAME"
      return
      ;;
    grid_gridding_6)
      echo "-POINTS -POPULATION -RADIUS -KERNEL -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID"
      return
      ;;
    grid_gridding_7)
      echo "-POINTS -FIELD -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    grid_gridding_8)
      echo "-POLYGONS -METHOD -OUTPUT -SELECTION -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -AREA"
      return
      ;;
    grid_gridding_9)
      echo "-POLYGONS -FIELD -OUTPUT -MULTIPLE -GRID_TYPE -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRID -COVERAGE"
      return
      ;;
    grid_gridding_10)
      echo "-POLYGONS -FIELD -METHOD -MULTIPLE -CLASSES -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -CATEGORY -COVERAGE"
      return
      ;;
    grid_spline_1)
      echo "-SHAPES -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -REGULARISATION -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    grid_spline_2)
      echo "-SHAPES -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -REGULARISATION -LEVEL -FRAME"
      return
      ;;
    grid_spline_3)
      echo "-SHAPES -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -LEVEL"
      return
      ;;
    grid_spline_4)
      echo "-SHAPES -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -METHOD -EPSILON -LEVEL_MAX"
      return
      ;;
    grid_spline_5)
      echo "-GRID -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -DATATYPE -METHOD -EPSILON -LEVEL_MAX"
      return
      ;;
    grid_spline_6)
      echo "-SHAPES -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -NPMIN -NPMAX -NPPC -K"
      return
      ;;
    grid_spline_7)
      echo "-POINTS -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -CATEGORIES -PROPABILITY"
      return
      ;;
    grid_spline_8)
      echo "-POINTS -Z_FIELD -Z_SCALE -V_FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRIDS -TARGET_USER_ZSIZE -TARGET_USER_ZMIN -TARGET_USER_ZMAX -TARGET_USER_ZNUM -EPSILON -LEVEL_MAX"
      return
      ;;
    grids_tools_0)
      echo "-LIST -GRIDS -NAME -DELETE -ATTRIBUTES -TABLE -TABLE_Z -NFIELDS -ZFIELD -FIELDS_NAME0 -FIELDS_TYPE0 -FIELDS_NAME1 -FIELDS_TYPE1 -COPY"
      return
      ;;
    grids_tools_1)
      echo "-GRIDS -LIST -SELECTION"
      return
      ;;
    grids_tools_2)
      echo "-GRIDS -SELECTION"
      return
      ;;
    grids_tools_3)
      echo "-GRIDS -GRID -Z_LEVEL -Z_LEVEL_DEFAULT -RESAMPLING"
      return
      ;;
    grids_tools_4)
      echo "-GRID -GRIDS -Z_LEVEL -DELETE"
      return
      ;;
    grids_tools_5)
      echo "-POINTS -Z_FIELD -Z_SCALE -V_FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRIDS -TARGET_USER_ZSIZE -TARGET_USER_ZMIN -TARGET_USER_ZMAX -TARGET_USER_ZNUM"
      return
      ;;
    grids_tools_6)
      echo "-POINTS -Z_FIELD -Z_SCALE -V_FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRIDS -TARGET_USER_ZSIZE -TARGET_USER_ZMIN -TARGET_USER_ZMAX -TARGET_USER_ZNUM -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    grids_tools_7)
      echo "-GRIDS -MASKED -LOWER -UPPER -MASKING"
      return
      ;;
    grids_tools_filter_gaussian)
      echo "-GRIDS -FILTERED -SIGMA -KERNEL_RADIUS"
      return
      ;;
    grids_tools_filter_laplacian)
      echo "-GRIDS -FILTERED -METHOD -SIGMA -KERNEL_RADIUS"
      return
      ;;
    grids_tools_filter_rank)
      echo "-GRIDS -FILTERED -RANK -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grids_tools_filter_simple)
      echo "-INPUT -OUTPUT -OUTPUT_FLOAT -KEEP_DEPTH -METHOD -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    grids_tools_longitudinal_range)
      echo "-GRIDS -CHANGED -DIRECTION"
      return
      ;;
    grid_tools_0)
      echo "-INPUT -OUTPUT -KEEP_TYPE -SCALE_UP -SCALE_DOWN -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE"
      return
      ;;
    grid_tools_1)
      echo "-INPUT -OUTPUT -SIZE -METHOD"
      return
      ;;
    grid_tools_3)
      echo "-GRIDS -FILE_LIST -TYPE -RESAMPLING -OVERLAP -BLEND_DIST -BLEND_BND -MATCH -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID"
      return
      ;;
    grid_tools_4)
      echo "-NAME -CONST -TYPE -DEFINITION -USER_SIZE -USER_XMIN -USER_XMAX -USER_YMIN -USER_YMAX -USER_COLS -USER_ROWS -USER_FLAT -USER_FITS -TEMPLATE -OUT_GRID"
      return
      ;;
    grid_tools_5)
      echo "-ORIGINAL -COMPLETED -ADDITIONAL -RESAMPLING"
      return
      ;;
    grid_tools_6)
      echo "-INPUT -RESULT -MODE -METHOD"
      return
      ;;
    grid_tools_7)
      echo "-INPUT -MASK -RESULT -THRESHOLD"
      return
      ;;
    grid_tools_8)
      echo "-FEATURES -BUFFER -TYPE -DISTANCE"
      return
      ;;
    grid_tools_9)
      echo "-FEATURES -VALUE -THRESHOLDGRID -BUFFER -THRESHOLD -THRESHOLDTYPE"
      return
      ;;
    grid_tools_10)
      echo "-SOURCE -DISTANCE -ALLOC -BUFFER -DIST -IVAL"
      return
      ;;
    grid_tools_11)
      echo "-INPUT -OUTPUT -TYPE -OFFSET -SCALE"
      return
      ;;
    grid_tools_12)
      echo "-INPUT -GRID -OUTPUT -METHOD -IDENTITY -RANGE"
      return
      ;;
    grid_tools_15)
      echo "-INPUT -RESULT -METHOD -OLD -NEW -SOPERATOR -MIN -MAX -RNEW -ROPERATOR -RETAB -TOPERATOR -RETAB_2 -F_MIN -F_MAX -F_CODE -NODATAOPT -NODATA -OTHEROPT -OTHERS -RESULT_TYPE -RESULT_NODATA_CHOICE -RESULT_NODATA_VALUE"
      return
      ;;
    grid_tools_17)
      echo "-INPUT -OUTPUT"
      return
      ;;
    grid_tools_18)
      echo "-INPUT -OUTPUT -VALUE"
      return
      ;;
    grid_tools_20)
      echo "-GRID1 -GRID2 -RESULT -LOOKUP"
      return
      ;;
    grid_tools_21)
      echo "-GRID -INDEX -ORDER"
      return
      ;;
    grid_tools_22)
      echo "-TABLE -ID_FIELD -CLASSES -GRIDS"
      return
      ;;
    grid_tools_23)
      echo "-GRID -INIT -CELLSIZE -M_EXTENT -ADJUST -XMIN -XMAX -NX -YMIN -YMAX -NY -SHAPESLIST -GRIDLIST -USEOFF -XOFFSET -YOFFSET"
      return
      ;;
    grid_tools_24)
      echo "-LIST -GRID -MASKED -GRIDS -GRIDS_CREATE -GRIDS_MASKED -MASK -NODATA"
      return
      ;;
    grid_tools_25)
      echo "-GRID -MASK -MAXGAPCELLS -CLOSED -MAXPOINTS -LOCALPOINTS -EXTENDED -NEIGHBOURS -RADIUS -RELAXATION"
      return
      ;;
    grid_tools_26)
      echo "-FEATURES -DISTANCE -DIRECTION -ALLOCATION"
      return
      ;;
    grid_tools_27)
      echo "-GRID -TILES -TILES_SAVE -TILES_PATH -TILES_NAME -OVERLAP -OVERLAP_SYM -METHOD -NX -NY -XRANGE_MIN -XRANGE_MAX -YRANGE_MIN -YRANGE_MAX -DCELL -DX -DY"
      return
      ;;
    grid_tools_28)
      echo "-INPUT -RESULT -OPERATION -CIRCLE -RADIUS -EXPAND -KEEP_TYPE -ITERATIVE"
      return
      ;;
    grid_tools_29)
      echo "-INPUT -MASK -RESULT -RESAMPLING -GROW"
      return
      ;;
    grid_tools_30)
      echo "-GRIDS -TRANSPOSED -MIRROR_X -MIRROR_Y"
      return
      ;;
    grid_tools_31)
      echo "-GRIDS -CLIPPED -EXTENT -GRIDSYSTEM_D -GRIDSYSTEM_X -GRIDSYSTEM_Y -GRIDSYSTEM_NX -GRIDSYSTEM_NY -GRIDSYSTEM_FILE -SHAPES -POLYGONS -INTERIOR -CROP -XMIN -XMAX -YMIN -YMAX -NX -NY -BUFFER"
      return
      ;;
    grid_tools_32)
      echo "-GRIDS -GRID -INDEX"
      return
      ;;
    grid_tools_33)
      echo "-GRID -COPY"
      return
      ;;
    grid_tools_34)
      echo "-GRID -INVERSE"
      return
      ;;
    grid_tools_35)
      echo "-GRID -MIRROR -METHOD"
      return
      ;;
    grid_tools_36)
      echo "-GRID -OUTPUT -TYPE -VALUE -RANGE_MIN -RANGE_MAX -CHANGE"
      return
      ;;
    grid_tools_37)
      echo "-GRID -OUTPUT"
      return
      ;;
    grid_tools_38)
      echo "-GRIDS -TYPE -RESAMPLING -OVERLAP -BLEND_DIST -BLEND_BND -MATCH -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -MOSAIC"
      return
      ;;
    grid_tools_39)
      echo "-POINTS -GRID -GRID_OUT -REPLACE -REPLACE_VALUE -TOLERANCE -IGNORE_NODATA -FILL_NODATA -FILL_VALUE"
      return
      ;;
    grid_tools_41)
      echo "-OPERATION -CIRCLE -RADIUS -EXPAND -KEEP_TYPE -ITERATIVE -INPUT -RESULT"
      return
      ;;
    grid_tools_42)
      echo "-OUT -GRID -METHOD -X -Y"
      return
      ;;
    grid_tools_bulk_nodata_change)
      echo "-GRIDS -COPY -OUTPUT -TYPE -VALUE -RANGE_MIN -RANGE_MAX -CHANGE"
      return
      ;;
    grid_tools_grid_tools_bulk_weighted_mean)
      echo "-GRIDS_A -GRIDS_B -MEAN -RATIO"
      return
      ;;
    grid_visualisation_0)
      echo "-GRID -COLORS -DOWN"
      return
      ;;
    grid_visualisation_1)
      echo "-GRIDS -GRID -FILE -FILE_NODATA -FILE_BGCOL -FILE_DELAY -FILE_COLORS -COLORS -NSTEPS -PROGRESS -LOOP -RANGE -RANGE_PERCENT -RANGE_STDDEV -RANGE_KEEP -RANGE_USER_MIN -RANGE_USER_MAX"
      return
      ;;
    grid_visualisation_2)
      echo "-GRID -COUNT -SCALE -RANGE_MIN -RANGE_MAX"
      return
      ;;
    grid_visualisation_3)
      echo "-R_GRID -G_GRID -B_GRID -A_GRID -RGB -METHOD -RANGE_MIN -RANGE_MAX -PERCTL_MIN -PERCTL_MAX -STDDEV -NODATA"
      return
      ;;
    grid_visualisation_4)
      echo "-DEM -IMAGE -SHAPES -ZEXAGG -ZEXAGG_MIN -Z_ROTATE -X_ROTATE -X_ROTATE_LEVEL -PANBREAK -BKCOLOR -PROJECTION -NX -NY -RGB -RGB_Z"
      return
      ;;
    grid_visualisation_5)
      echo "-A_GRID -A_COLOR -A_METHOD -A_RANGE_MIN -A_RANGE_MAX -A_PERCTL_MIN -A_PERCTL_MAX -A_PERCENT -B_GRID -B_COLOR -B_METHOD -B_RANGE_MIN -B_RANGE_MAX -B_PERCTL_MIN -B_PERCTL_MAX -B_PERCENT -C_GRID -C_COLOR -C_METHOD -C_RANGE_MIN -C_RANGE_MAX -C_PERCTL_MIN -C_PERCTL_MAX -C_PERCENT -GRID"
      return
      ;;
    grid_visualisation_6)
      echo "-GRID -HIST -METHOD"
      return
      ;;
    grid_visualisation_7)
      echo "-ASPECT -SLOPE -ASPECT_SLOPE -LUT"
      return
      ;;
    grid_visualisation_8)
      echo "-DEM -SHADE -OPENNESS -SLOPE -CONTOURS -METHOD -RADIUS -CONTOUR_LINES -EQUIDISTANCE"
      return
      ;;
    grid_visualisation_9)
      echo "-RGB -R -G -B -A -NODATA"
      return
      ;;
    grid_visualisation_10)
      echo "-GRID -LUT -NAME -VALUE -VALUE_MAX -DESCRIPTION -COLOR"
      return
      ;;
    grid_visualisation_11)
      echo "-TABLE -LUT"
      return
      ;;
    imagery_classification_0)
      echo "-GRIDS -NORMALISE -CLASSES -QUALITY -CLASSES_LUT -TRAIN_WITH -TRAINING -TRAINING_CLASS -TRAIN_BUFFER -TRAIN_SAMPLES -FILE_LOAD -FILE_SAVE -METHOD -THRESHOLD_DIST -THRESHOLD_ANGLE -THRESHOLD_PROB -RELATIVE_PROB"
      return
      ;;
    imagery_classification_1)
      echo "-GRIDS -CLUSTER -STATISTICS -METHOD -NCLUSTER -MAXITER -NORMALISE -INITIALIZE -OLDVERSION"
      return
      ;;
    imagery_classification_2)
      echo "-ONE -ONE_LUT -ONE_LUT_MIN -ONE_LUT_MAX -ONE_LUT_NAM -TWO -TWO_LUT -TWO_LUT_MIN -TWO_LUT_MAX -TWO_LUT_NAM -COMBINED -NOCHANGE -NODATA -CONFUSION -OUTPUT -CLASSES -SUMMARY"
      return
      ;;
    imagery_classification_3)
      echo "-CLASSES -ROOT_GRID -ROOT_THRESHOLD -ROOT_A_NAME -ROOT_A_NODE -ROOT_B_NAME -ROOT_B_NODE"
      return
      ;;
    imagery_classification_6)
      echo "-GRID -GRID_VALUES -GRID_LUT -GRID_LUT_MIN -GRID_LUT_MAX -GRID_LUT_NAM -POLYGONS -FIELD -CONFUSION -CLASSES -SUMMARY -NO_CLASS"
      return
      ;;
    imagery_classification_lczc)
      echo "-FEATURES -GRIDDEFILE -FILE_TRAINING -CLASSIFIER -CLASS_DEF_SRC -CLASS_DEF_FILE -LCZC -LCZC_FILE -LCZC_FILTERED -FILE_FILTERED_LCZC -FILTER_RADIUS"
      return
      ;;
    imagery_classification_classify_majority)
      echo "-FEATURES -NORMALIZE -MODEL_TRAIN -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -TRAIN_SAMPLES -CLASSES -MAJORITY_COUNT -NUNIQUES -UNAMBIGUOUS -CLASSIFY_BOX -CLASSIFY_MINDIST -CLASSIFY_MAHALONOBIS -CLASSIFY_MAXLIKE -CLASSIFY_SAM -CLASSIFY_BAYES -CLASSIFY_DT -CLASSIFY_RF -CLASSIFY_SVM -CLASSIFY_KNN -CLASSIFY_ANN"
      return
      ;;
    imagery_isocluster_0)
      echo "-FEATURES -CLUSTER -STATISTICS -NORMALIZE -ITERATIONS -CLUSTER_INI -CLUSTER_MAX -SAMPLES_MIN -INITIALIZE"
      return
      ;;
    imagery_maxent_0)
      echo "-TRAINING -FIELD -FEATURES_NUM -FEATURES_CAT -CLASSES -CLASSES_LUT -PROB -PROBS -PROBS_CREATE -METHOD -YT_FILE_LOAD -YT_FILE_SAVE -YT_REGUL -YT_REGUL_VAL -YT_NUMASREAL -DL_ALPHA -DL_THRESHOLD -DL_ITERATIONS -NUM_CLASSES -PROB_MIN"
      return
      ;;
    imagery_maxent_1)
      echo "-PRESENCE -FEATURES_NUM -FEATURES_CAT -PREDICTION -PROBABILITY -BACKGROUND -METHOD -YT_FILE_LOAD -YT_FILE_SAVE -YT_REGUL -YT_REGUL_VAL -YT_NUMASREAL -DL_ALPHA -DL_THRESHOLD -DL_ITERATIONS -NUM_CLASSES"
      return
      ;;
    imagery_opencv_0)
      echo "-INPUT -OUTPUT -TYPE -SHAPE -RADIUS -ITERATIONS"
      return
      ;;
    imagery_opencv_1)
      echo "-GRID -DFT -DFT_OPT -CENTERED -SIZE"
      return
      ;;
    imagery_opencv_2)
      echo "-INPUT -OUTPUT -RANGE_MIN -RANGE_MAX"
      return
      ;;
    imagery_opencv_4)
      echo "-LEFT -RIGHT -DISPARITY -POINTS -ALGORITHM -DISP_MIN -DISP_NUM -BLOCKSIZE -DIFF_MAX -UNIQUENESS -SPECKLE_SIZE -SPECKLE_RANGE -BM_TEXTURE -BM_FILTER_CAP -SGBM_MODE -SGBM_P1 -SGBM_P2 -SGBM_FILTER_CAP"
      return
      ;;
    imagery_opencv_5)
      echo "-FEATURES -NORMALIZE -CLASSES -PROBABILITY -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE"
      return
      ;;
    imagery_opencv_6)
      echo "-FEATURES -NORMALIZE -CLASSES -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE -NEIGHBOURS -TRAINING -ALGORITHM -EMAX"
      return
      ;;
    imagery_opencv_7)
      echo "-FEATURES -NORMALIZE -CLASSES -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE -SVM_TYPE -C -NU -P -KERNEL -COEF0 -DEGREE -GAMMA"
      return
      ;;
    imagery_opencv_8)
      echo "-FEATURES -NORMALIZE -CLASSES -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE -MAX_DEPTH -MIN_SAMPLES -MAX_CATEGRS -1SE_RULE -TRUNC_PRUNED -REG_ACCURACY"
      return
      ;;
    imagery_opencv_9)
      echo "-FEATURES -NORMALIZE -CLASSES -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE -MAX_DEPTH -MIN_SAMPLES -MAX_CATEGRS -1SE_RULE -TRUNC_PRUNED -REG_ACCURACY -WEAK_COUNT -WGT_TRIM_RATE -BOOST_TYPE"
      return
      ;;
    imagery_opencv_10)
      echo "-FEATURES -NORMALIZE -CLASSES -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE -MAX_DEPTH -MIN_SAMPLES -MAX_CATEGRS -1SE_RULE -TRUNC_PRUNED -REG_ACCURACY -ACTIVE_VARS"
      return
      ;;
    imagery_opencv_11)
      echo "-FEATURES -NORMALIZE -CLASSES -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE -ANN_LAYERS -ANN_NEURONS -ANN_MAXITER -ANN_EPSILON -ANN_ACTIVATION -ANN_ACT_ALPHA -ANN_ACT_BETA -ANN_PROPAGATION -ANN_RP_DW0 -ANN_RP_DW_PLUS -ANN_RP_DW_MINUS -ANN_RP_DW_MIN -ANN_RP_DW_MAX -ANN_BP_DW -ANN_BP_MOMENT"
      return
      ;;
    imagery_opencv_12)
      echo "-FEATURES -NORMALIZE -CLASSES -CLASSES_LUT -MODEL_TRAIN -TRAIN_SAMPLES -TRAIN_AREAS -TRAIN_CLASS -TRAIN_BUFFER -MODEL_LOAD -MODEL_SAVE -LOGR_LEARNING_RATE -LOGR_ITERATIONS -LOGR_REGULARIZATION -LOGR_TRAIN_METHOD -LOGR_MINIBATCH_SIZE"
      return
      ;;
    imagery_opencv_13)
      echo "-REAL -IMAG -GRID -CENTERED -RESTORE"
      return
      ;;
    imagery_opencv_14)
      echo "-GRID -FILTERED -FILTER -INVERSE -RANGE_MIN -RANGE_MAX -POWER -SCALE"
      return
      ;;
    imagery_opencv_15)
      echo "-GRID -EDGES -EDGE_LINES -THRESHOLD -RATIO -KERNEL_SIZE -L2GRADIENT"
      return
      ;;
    imagery_opencv_16)
      echo "-GRID -CIRCLES -UNIT -RADIUS_MIN -RADIUS_MAX -MIN_DIST -METHOD -RESOLUTION"
      return
      ;;
    imagery_opencv_17)
      echo "-BAND_1 -BAND_2 -BAND_3 -SEED_GRID -SEGMENTS -POLYGONS -SEEDS"
      return
      ;;
    imagery_photogrammetry_0)
      echo "-POINTS -F -W -EST_OFFSETS -ppX -ppY -GIVE_DISTORTIONS -K1 -K2 -K3 -Xc -Yc -Zc -Xt -Yt -Zt -OUTPUT_FILE"
      return
      ;;
    imagery_photogrammetry_1)
      echo "-rgbImage -PC_IN -GIVE_TIME -IMG_TIME -TIME_DIFF -F -W -ppX -ppY -GIVE_DISTORTIONS -K1 -K2 -K3 -Xc -Yc -Zc -omega -kappa -alpha -PC_OUT"
      return
      ;;
    imagery_segmentation_0)
      echo "-GRID -SEGMENTS -SEEDS -BORDERS -OUTPUT -DOWN -JOIN -THRESHOLD -EDGE -BBORDERS"
      return
      ;;
    imagery_segmentation_1)
      echo "-INPUT -RESULT -VECTOR -METHOD -INIT_METHOD -INIT_THRESHOLD -CONVERGENCE"
      return
      ;;
    imagery_segmentation_2)
      echo "-FEATURES -VARIANCE -SEED_GRID -SEED_POINTS -SEED_TYPE -METHOD -BAND_WIDTH -NORMALIZE -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    imagery_segmentation_3)
      echo "-SEEDS -FEATURES -SEGMENTS -SIMILARITY -TABLE -NORMALIZE -NEIGHBOUR -METHOD -SIG_1 -SIG_2 -THRESHOLD -REFRESH -LEAFSIZE"
      return
      ;;
    imagery_segmentation_4)
      echo "-FEATURES -NORMALIZE -POLYGONS -MAX_ITERATIONS -REGULARIZATION -SIZE -SIZE_MIN -SUPERPIXELS_DO -SUPERPIXELS -POSTPROCESSING -NCLUSTER -SPLIT_CLUSTERS"
      return
      ;;
    imagery_segmentation_5)
      echo "-INPUT -OUTPUT -NEIGHBOUR"
      return
      ;;
    imagery_segmentation_obia)
      echo "-FEATURES -NORMALIZE -OBJECTS -SEEDS_BAND_WIDTH -RGA_NEIGHBOUR -RGA_METHOD -RGA_SIG_1 -RGA_SIG_2 -RGA_SIMILARITY -MAJORITY_RADIUS -CLASSIFICATION -SPLIT_POLYGONS -NCLUSTER -CLASSIFIER -SAMPLES"
      return
      ;;
    imagery_svm_0)
      echo "-GRIDS -CLASSES -CLASSES_LUT -SCALING -MESSAGE -MODEL_SRC -MODEL_LOAD -ROI -ROI_ID -MODEL_SAVE -SVM_TYPE -KERNEL_TYPE -DEGREE -GAMMA -COEF0 -COST -NU -EPS_SVR -CACHE_SIZE -EPS -SHRINKING -PROBABILITY -CROSSVAL"
      return
      ;;
    imagery_tools_0)
      echo "-RED -NIR -PVI0 -PVI1 -PVI2 -PVI3 -TSAVI -ATSAVI -INTERCEPT -SLOPE"
      return
      ;;
    imagery_tools_1)
      echo "-RED -NIR -DVI -NDVI -RVI -NRVI -TVI -CTVI -TTVI -SAVI -SOIL"
      return
      ;;
    imagery_tools_2)
      echo "-BLUE -RED -NIR -EVI -GAIN -L -CBLUE -CRED"
      return
      ;;
    imagery_tools_3)
      echo "-BLUE -GREEN -RED -NIR -MIR1 -MIR2 -BRIGHTNESS -GREENNESS -WETNESS"
      return
      ;;
    imagery_tools_4)
      echo "-R -G -B -PAN -R_SHARP -G_SHARP -B_SHARP -SHARP -OUTPUT -RESAMPLING -PAN_MATCH"
      return
      ;;
    imagery_tools_5)
      echo "-R -G -B -PAN -R_SHARP -G_SHARP -B_SHARP -SHARP -OUTPUT -RESAMPLING"
      return
      ;;
    imagery_tools_6)
      echo "-GRIDS -PAN -SINGLES -COLLECTION -OUTPUT -RESAMPLING"
      return
      ;;
    imagery_tools_7)
      echo "-GRIDS -PAN -SINGLES -COLLECTION -OUTPUT -METHOD -RESAMPLING -PAN_MATCH -OVERWRITE"
      return
      ;;
    imagery_tools_8)
      echo "-MSS01 -MSS02 -MSS03 -MSS04 -TM01 -TM02 -TM03 -TM04 -TM05 -TM07 -ETM01 -ETM02 -ETM03 -ETM04 -ETM05 -ETM07 -OLI01 -OLI02 -OLI03 -OLI04 -OLI05 -OLI06 -OLI07 -OLI09 -TM_T06 -ETM_T61 -ETM_T62 -TIRS10 -TIRS11 -PAN08 -SPECTRAL -THERMAL -PANBAND -METAFILE -SENSOR -DATE_ACQU -DATE_PROD -SUN_HGT -GRIDS_OUT -GRIDS_NAME -AS_RAD -AC_METHOD -AC_DO_CELLS -AC_RAYLEIGH -AC_SUN_RAD -ETM_GAIN_10 -ETM_GAIN_20 -ETM_GAIN_30 -ETM_GAIN_40 -ETM_GAIN_50 -ETM_GAIN_61 -ETM_GAIN_62 -ETM_GAIN_70 -ETM_GAIN_80"
      return
      ;;
    imagery_tools_9)
      echo "-BAND2 -BAND3 -BAND4 -BAND5 -BAND6 -CLOUD -B56C -B45R -HIST_N -CSIG -PASS2 -SHADOW -FILTER"
      return
      ;;
    imagery_tools_10)
      echo "-FILES -BANDS -PROJECTION -RESAMPLING -SHOW_RGB -SHOW_R -SHOW_G -SHOW_B"
      return
      ;;
    imagery_tools_11)
      echo "-GRID -ASM -CONTRAST -CORRELATION -VARIANCE -IDM -SUM_AVERAGE -SUM_ENTROPY -SUM_VARIANCE -ENTROPY -DIF_VARIANCE -DIF_ENTROPY -MOC_1 -MOC_2 -DIRECTION -RADIUS -DISTANCE -MAX_CATS"
      return
      ;;
    imagery_tools_12)
      echo "-GRID -CONTRAST -ENERGY -ENTROPY -VARIANCE -TYPE -RADIUS -NORMALIZE -NORM_MIN -NORM_MAX"
      return
      ;;
    imagery_tools_13)
      echo "-GRID_A -GRID_B -QUALITY -CORRELATION -LUMINANCE -CONTRAST -K1 -K2 -L -KERNEL_TYPE -KERNEL_RADIUS"
      return
      ;;
    imagery_tools_14)
      echo "-METAFILE -BANDS_SPECTRAL -BANDS_THERMAL -BANDS_AUXILIARY -BAND_INFO -MULTI2GRIDS -SKIP_PAN -SKIP_AEROSOL -SKIP_CIRRUS -CALIBRATION -DATA_TYPE -TEMP_UNIT -PROJECTION -RESAMPLING -UTM_ZONE -UTM_SOUTH -EXTENT -EXTENT_XMIN -EXTENT_XMAX -EXTENT_YMIN -EXTENT_YMAX -EXTENT_GRID_D -EXTENT_GRID_X -EXTENT_GRID_Y -EXTENT_GRID_NX -EXTENT_GRID_NY -EXTENT_GRID_FILE -EXTENT_SHAPES -EXTENT_BUFFER"
      return
      ;;
    imagery_tools_15)
      echo "-METAFILE -BANDS -BANDS_AUX -MULTI2GRIDS -LOAD_60M -LOAD_AOT -LOAD_WVP -LOAD_SCL -REFLECTANCE -RESOLUTION -PROJECTION -RESAMPLING -UTM_ZONE -UTM_SOUTH -EXTENT -EXTENT_XMIN -EXTENT_XMAX -EXTENT_YMIN -EXTENT_YMAX -EXTENT_GRID_D -EXTENT_GRID_X -EXTENT_GRID_Y -EXTENT_GRID_NX -EXTENT_GRID_NY -EXTENT_GRID_FILE -EXTENT_SHAPES -EXTENT_BUFFER"
      return
      ;;
    imagery_tools_16)
      echo "-BANDS -DIRECTORY -RESOLUTION -COLLECTION -CRS_STRING"
      return
      ;;
    imagery_tools_17)
      echo "-BANDS -LOCATION -PROFILE -SHOW -RESAMPLING -LENGTHS"
      return
      ;;
    imagery_tools_19)
      echo "-DEM -BANDS -CORRECTED -AZIMUTH -HEIGHT -METHOD -MINNAERT -MAXCELLS -LIMIT -LIMIT_MIN -LIMIT_MAX"
      return
      ;;
    imagery_tools_20)
      echo "-CLOUDS -BAND_BLUE -BAND_GREEN -BAND_RED -BAND_NIR -BAND_SWIR1 -BAND_SWIR2 -BAND_THERMAL -BAND_CIRRUS -THERMAL_UNIT -ALGORITHM -ACCA_B56C -ACCA_B45R -ACCA_HIST_N -ACCA_CSIG -ACCA_PASS2 -ACCA_SHADOW -SHADOWS -SUN_AZIMUTH -SUN_HEIGHT"
      return
      ;;
    imagery_tools_21)
      echo "-CLOUDS -CAND_GRID_IN -DEM -CLOUD_ID -CAND_GRID_OUT -SHADOWS -CLOUD_INFO -BAND_GREEN -BAND_RED -BAND_NIR -BAND_SWIR -BAND_THERMAL -BANDS_BRIGHTNESS -OUTPUT -CAND_GRID_VALUE -THERMAL_UNIT -CANDIDATES -BRIGHTNESS -PROCESSING -SUN_AZIMUTH -SUN_HEIGHT -CLOUD_HEIGHT_MIN -CLOUD_HEIGHT_MAX"
      return
      ;;
    imagery_tools_22)
      echo "-METAFILE -BANDS -PROJECTION -RESAMPLING -UTM_ZONE -UTM_SOUTH -SHIFT_X -SHIFT_Y"
      return
      ;;
    imagery_tools_23)
      echo "-SENSOR -IN_QA_PIXEL -IN_QA_RADSAT -IN_SR_QA_AEROSOL -IN_QA_PIX_SELECTION -IN_QA_RADSAT_SELECTION -IN_SR_QA_AEROSOL_SELECTION -OUTPUT -SELECTION -GRIDS -SET_LUT"
      return
      ;;
    imagery_vigra_Library:ViGrAdeprecated)
      echo ""
      return
      ;;
    imagery_vigra_0)
      echo "-INPUT -OUTPUT -TYPE -SCALE -EDGE"
      return
      ;;
    imagery_vigra_1)
      echo "-INPUT -OUTPUT -TYPE -SCALE -THRESHOLD"
      return
      ;;
    imagery_vigra_2)
      echo "-INPUT -OUTPUT -TYPE -RADIUS -RANK -RESCALE"
      return
      ;;
    imagery_vigra_3)
      echo "-INPUT -OUTPUT -NORM"
      return
      ;;
    imagery_vigra_4)
      echo "-INPUT -OUTPUT -SCALE -RGB -EDGES"
      return
      ;;
    imagery_vigra_5)
      echo "-INPUT -REAL -IMAG -CENTER"
      return
      ;;
    imagery_vigra_6)
      echo "-REAL -IMAG -OUTPUT -CENTER"
      return
      ;;
    imagery_vigra_8)
      echo "-INPUT -OUTPUT -SCALE -POWER -RANGE_MIN -RANGE_MAX -FILTER"
      return
      ;;
    imagery_vigra_9)
      echo "-FEATURES -CLASSES -PROBABILITY -BPROBABILITIES -PROBABILITIES -IMPORTANCES -TRAINING -FIELD -LABEL_AS_ID -RF_TREE_COUNT -RF_TREE_SAMPLES -RF_REPLACE -RF_SPLIT_MIN_SIZE -RF_NODE_FEATURES -RF_STRATIFICATION"
      return
      ;;
    imagery_vigra_10)
      echo "-FEATURES -PREDICTION -PROBABILITY -PRESENCE -BACKGROUND -RF_TREE_COUNT -RF_TREE_SAMPLES -RF_REPLACE -RF_SPLIT_MIN_SIZE -RF_NODE_FEATURES -RF_STRATIFICATION"
      return
      ;;
    imagery_vigra_11)
      echo "-TABLE -FEATURES -PREDICTION -TRAINING -LABEL_AS_ID -IMPORTANCES -RF_TREE_COUNT -RF_TREE_SAMPLES -RF_REPLACE -RF_SPLIT_MIN_SIZE -RF_NODE_FEATURES -RF_STRATIFICATION"
      return
      ;;
    io_esri_e00_0)
      echo "-TABLES -SHAPES -GRIDS -FILE -BBND -BTIC -BTABLES"
      return
      ;;
    io_gdal_0)
      echo "-GRIDS -FILES -MULTIPLE -SUBSETS -SELECTION -TRANSFORM -RESAMPLING -EXTENT -EXTENT_XMIN -EXTENT_XMAX -EXTENT_YMIN -EXTENT_YMAX -EXTENT_GRID_D -EXTENT_GRID_X -EXTENT_GRID_Y -EXTENT_GRID_NX -EXTENT_GRID_NY -EXTENT_GRID_FILE -EXTENT_SHAPES -EXTENT_BUFFER"
      return
      ;;
    io_gdal_1)
      echo "-GRIDS -MULTIPLE -FOLDER -EXTENSION -FILE -FORMAT -TYPE -SET_NODATA -NODATA -OPTIONS"
      return
      ;;
    io_gdal_2)
      echo "-GRIDS -FILE -OPTIONS"
      return
      ;;
    io_gdal_3)
      echo "-SHAPES -FILES -GEOM_TYPE"
      return
      ;;
    io_gdal_4)
      echo "-SHAPES -FILE -FORMAT -OPTIONS -LAYER_OPTIONS"
      return
      ;;
    io_gdal_5)
      echo "-SHAPES -FILE"
      return
      ;;
    io_gdal_6)
      echo "-GRIDS -FILE -SAVE_FILE -SAVE_PATH -TRANSFORM -RESAMPLING"
      return
      ;;
    io_gdal_7)
      echo "-CATALOGUE -FILES"
      return
      ;;
    io_gdal_8)
      echo "-CATALOGUES -CATALOGUE_GCS -CATALOGUE_UKN -DIRECTORY -EXTENSIONS -OUTPUT"
      return
      ;;
    io_gdal_9)
      echo "-TARGET -TARGET_MAP -SERVER -SERVER_USER -SERVER_EPSG -BLOCKSIZE -CACHE -CACHE_DIR -GRAYSCALE -XMIN -YMIN -XMAX -YMAX -NX -NY"
      return
      ;;
    io_gdal_10)
      echo "-FORMATS -TYPE -ACCESS -RECOGNIZED"
      return
      ;;
    io_gdal_11)
      echo "-FILE -FORMAT -VNIR -SWIR -TIR -BANDS -METADATA"
      return
      ;;
    io_gdal_12)
      echo "-FILES -FILE_LIST -VRT_NAME -RESAMPLING -RESOLUTION -CELLSIZE -ALIGN"
      return
      ;;
    io_gdal_13)
      echo "-VRT_NAME -GRIDS -EXTENT -GRIDSYSTEM_D -GRIDSYSTEM_X -GRIDSYSTEM_Y -GRIDSYSTEM_NX -GRIDSYSTEM_NY -GRIDSYSTEM_FILE -SHAPES -XMIN -XMAX -YMIN -YMAX -BUFFER -MULTIPLE -TRANSFORM -RESAMPLING"
      return
      ;;
    io_gdal_14)
      echo "-VRT_FILE -CATALOGUE"
      return
      ;;
    io_gps_0)
      echo "-BASEPATH -FILE -TRACKPOINTS -WAYPOINTS -ROUTES -ADD"
      return
      ;;
    io_gps_1)
      echo "-BASEPATH -INPUT -FORMATIN -OUTPUT -FORMATOUT"
      return
      ;;
    io_grid_0)
      echo "-GRID -FILE -FORMAT -GEOREF -PREC -DECSEP"
      return
      ;;
    io_grid_1)
      echo "-GRID -FILE -GRID_TYPE -NODATA -NODATA_VAL -CRS_STRING"
      return
      ;;
    io_grid_2)
      echo "-GRID -FILE -FORMAT -NODATA"
      return
      ;;
    io_grid_3)
      echo "-GRID -FILE -NODATA -NODATA_VAL -CRS_STRING"
      return
      ;;
    io_grid_4)
      echo "-GRID -FILE -NX -NY -CELLSIZE -POS_VECTOR -POS_X -POS_X_SIDE -POS_Y -POS_Y_SIDE -DATA_TYPE -BYTEORDER -UNIT -ZFACTOR -NODATA -DATA_OFFSET -LINE_OFFSET -LINE_ENDSET -ORDER -TOPDOWN -LEFTRIGHT -CRS_STRING"
      return
      ;;
    io_grid_5)
      echo "-GRIDS -FILENAME -HEADER -NODATA -PREC -SEPARATOR -SEP_OTHER"
      return
      ;;
    io_grid_6)
      echo "-GRID -COUNT -FILENAME -SKIP -SEPARATOR -USER -TYPE -CELLSIZE -COUNT_CREATE -CRS_STRING"
      return
      ;;
    io_grid_7)
      echo "-GRIDS -FILE -RESOLUTION"
      return
      ;;
    io_grid_8)
      echo "-GRID -FILE -TYPE -ORIENT"
      return
      ;;
    io_grid_9)
      echo "-GRID -PATH -XMIN -XMAX -YMIN -YMAX"
      return
      ;;
    io_grid_10)
      echo "-IMAGE -FILE"
      return
      ;;
    io_grid_11)
      echo "-GRIDS -FILE"
      return
      ;;
    io_grid_12)
      echo "-GRID -FILE -CELLSIZE -XMIN -YMIN -UNIT -ZFACTOR -NODATA -HEADLINES -DATA_TYPE -TOPDOWN -CRS_STRING"
      return
      ;;
    io_grid_13)
      echo "-GRIDS -FILE"
      return
      ;;
    io_grid_14)
      echo "-GRIDS -FILE -DATATYPE -TYPE -NAME_DIGITS -MISSING -SCALE -UNITS -DESCRIPTION -MMINLU -TILE_BDR -PROJECTION -SDTLON -TRUELAT1 -TRUELAT2 -ISWATER -ISLAKE -ISICE -ISURBAN -ISOILWATER"
      return
      ;;
    io_grid_16)
      echo "-GRIDS -FILES -KEEP_TYPE -NODATA -NODATA_VAL -CLIP -RESAMPLE -CELLSIZE -SCALE_UP -SCALE_DOWN"
      return
      ;;
    io_grid_17)
      echo "-GRIDS -FILE -SHIFT"
      return
      ;;
    io_grid_18)
      echo "-FILE -FIELD -TABLE -POINTS -BLAYERS -NLAYERS -LAYERS -GRIDS"
      return
      ;;
    io_grid_image_0)
      echo "-GRID -SHADE -FILE -FILE_WORLD -FILE_KML -NO_DATA -NO_DATA_COL -COLOURING -COL_COUNT -COL_REVERT -COL_PALETTE -COL_DEPTH -GRADUATED -STDDEV -LINEAR_MIN -LINEAR_MAX -STRETCH_MIN -STRETCH_MAX -SCALE_MODE -SCALE_LOG -LUT -SHADE_TRANS -SHADE_COLOURING -SHADE_BRIGHT_MIN -SHADE_BRIGHT_MAX -SHADE_STDDEV"
      return
      ;;
    io_grid_image_1)
      echo "-OUT_GRID -OUT_RED -OUT_GREEN -OUT_BLUE -FILE -METHOD"
      return
      ;;
    io_grid_image_2)
      echo "-GRID -SHADE -FILE -FORMAT -COLOURING -COL_PALETTE -COL_COUNT -COL_REVERT -STDDEV -STRETCH_MIN -STRETCH_MAX -LUT -RESAMPLING -SHADE_BRIGHT_MIN -SHADE_BRIGHT_MAX"
      return
      ;;
    io_grid_image_3)
      echo "-GRIDS -FILE"
      return
      ;;
    io_grid_image_4)
      echo "-GRIDS -SHADE -FILE -DELAY -COLORS -FILE_WORLD -FILE_KML -NO_DATA -NO_DATA_COL -COLOURING -COL_COUNT -COL_REVERT -COL_PALETTE -GRADUATED -STDDEV -LINEAR_MIN -LINEAR_MAX -STRETCH_MIN -STRETCH_MAX -SCALE_MODE -SCALE_LOG -LUT -SHADE_TRANS -SHADE_COLOURING -SHADE_BRIGHT_MIN -SHADE_BRIGHT_MAX -SHADE_STDDEV"
      return
      ;;
    io_pdal_0)
      echo "-FILES -VARS -VAR_TIME -VAR_INTENSITY -VAR_SCANANGLE -VAR_RETURN -VAR_RETURNS -VAR_CLASSIFICATION -VAR_USERDATA -VAR_EDGE -VAR_DIRECTION -VAR_SOURCEID -VAR_COLOR_RED -VAR_COLOR_GREEN -VAR_COLOR_BLUE -VAR_COLOR -RGB_RANGE -POINTS"
      return
      ;;
    io_pdal_1)
      echo "-POINTS -T -r -n -i -c -sCH -R -G -B -C -NIR -a -d -e -u -p -FILE -FILE_FORMAT -FORMAT -RGB_RANGE -OFF_X -OFF_Y -OFF_Z -SCALE_X -SCALE_Y -SCALE_Z"
      return
      ;;
    io_shapes_0)
      echo "-SHAPES -FILENAME"
      return
      ;;
    io_shapes_1)
      echo "-SHAPES -FILENAME"
      return
      ;;
    io_shapes_2)
      echo "-POINTS -FIELD -HEADER -SEPARATE -FILENAME"
      return
      ;;
    io_shapes_3)
      echo "-POINTS -HEADLINE -FILENAME -CRS_STRING"
      return
      ;;
    io_shapes_4)
      echo "-SHAPES -FIELD -FILE"
      return
      ;;
    io_shapes_5)
      echo "-SHAPES -NAME -DESC -ZVAL -FILE"
      return
      ;;
    io_shapes_6)
      echo "-SHAPES -TABLE -FILE -TYPE"
      return
      ;;
    io_shapes_7)
      echo "-SHAPES -PNAME -SNAME -FILE"
      return
      ;;
    io_shapes_8)
      echo "-FILE"
      return
      ;;
    io_shapes_9)
      echo "-SHAPES -ELEVATION -FILE"
      return
      ;;
    io_shapes_10)
      echo "-SHAPES -FILE -METHOD"
      return
      ;;
    io_shapes_11)
      echo "-POINTS -POLYGONS -GRID -TIN -FILE -METHOD -CENTROIDS -DUPLICATES -GRID_DIM -GRID_WIDTH -GRID_SIZE -ROTATE -ROT_X -ROT_Y -ROT_Z"
      return
      ;;
    io_shapes_12)
      echo "-TIN -ZFIELD -FILE -BINARY"
      return
      ;;
    io_shapes_13)
      echo "-SHAPES -FILE -TIME"
      return
      ;;
    io_shapes_14)
      echo "-SHAPES -FILE -ELE -NAME -CMT -DESC"
      return
      ;;
    io_shapes_15)
      echo "-POINTS -FILE"
      return
      ;;
    io_shapes_16)
      echo "-POINTS -FILE -SEPARATOR -SKIP_HEADER -XFIELD -YFIELD -ZFIELD -FIELDS -FIELDNAMES -FIELDTYPES -CRS_STRING"
      return
      ;;
    io_shapes_17)
      echo "-OUTPUT -LAYERS -LAYER -FIELD -FILE"
      return
      ;;
    io_shapes_18)
      echo "-POINTS -FILE -WRITE_HEADER -FIELDSEP -FIELDS -PRECISIONS"
      return
      ;;
    io_shapes_19)
      echo "-SHAPES -FILE -WKT"
      return
      ;;
    io_shapes_20)
      echo "-SHAPES -FILE"
      return
      ;;
    io_shapes_21)
      echo "-BUILDINGS -FILES -PARTS"
      return
      ;;
    io_shapes_22)
      echo "-POLYGONS -LINK -TITLE -IMAGE_D -IMAGE_X -IMAGE_Y -IMAGE_NX -IMAGE_NY -IMAGE_FILE -FILE -LINK_PREFIX -LINK_SUFFIX"
      return
      ;;
    io_shapes_23)
      echo "-FILENAME -POINTS -RGB -CRS_STRING"
      return
      ;;
    io_shapes_24)
      echo "-POINTS -FILE"
      return
      ;;
    io_table_0)
      echo "-TABLE -HEADLINE -STRQUOTA -SEPARATOR -SEP_OTHER -FILENAME"
      return
      ;;
    io_table_1)
      echo "-TABLE -HEADLINE -SEPARATOR -ENCODING -SEP_OTHER -FILENAME"
      return
      ;;
    io_table_2)
      echo "-TABLES -SKIP -HEADLINE -SEPARATOR -SEP_OTHER -FILENAME"
      return
      ;;
    io_table_3)
      echo "-TABLE -SKIP -HEADLINE -FIELDDEF -NFIELDS -LIST -FILENAME"
      return
      ;;
    io_table_import_text_tables)
      echo "-TABLES -FILES -HEADLINE -SEPARATOR -SEP_OTHER"
      return
      ;;
    io_virtual_0)
      echo "-FILES -INPUT_FILE_LIST -FILENAME -METHOD_PATHS -USE_HEADER"
      return
      ;;
    io_virtual_1)
      echo "-FILENAME -PC_OUT -FILEPATH -COPY_ATTR -ATTRIBUTE_LIST -CONSTRAIN_QUERY -ATTR_FIELD -VALUE_RANGE_MIN -VALUE_RANGE_MAX -AOI_SHP -FIELD_TILENAME -AOI_GRID -AOI_XRANGE_MIN -AOI_XRANGE_MAX -AOI_YRANGE_MIN -AOI_YRANGE_MAX -AOI_ADD_OVERLAP -OVERLAP -FILENAME_TILE_INFO -ONE_PC_PER_POLYGON"
      return
      ;;
    io_virtual_2)
      echo "-FILENAME -TILE_SHP"
      return
      ;;
    io_virtual_4)
      echo "-FILENAME -GRID_OUT -FILEPATH -ATTR_FIELD_GRID -CELL_SIZE -GRID_SYSTEM_FIT -METHOD -CONSTRAIN_QUERY -ATTR_FIELD -VALUE_RANGE_MIN -VALUE_RANGE_MAX -AOI_SHP -FIELD_TILENAME -AOI_GRID -AOI_XRANGE_MIN -AOI_XRANGE_MAX -AOI_YRANGE_MIN -AOI_YRANGE_MAX -AOI_ADD_OVERLAP -OVERLAP"
      return
      ;;
    io_virtual_6)
      echo "-FILENAME -FILEPATH"
      return
      ;;
    io_webservices_0)
      echo "-LOCATIONS -ADDRESSES -FIELD -ADDRESS -PROVIDER -API_KEY -METADATA"
      return
      ;;
    pj_georeference_1)
      echo "-REF_SOURCE -REF_TARGET -XFIELD -YFIELD -METHOD -ORDER -RESAMPLING -BYTEWISE -DATA_TYPE -CRS_STRING -GRID -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_GRID"
      return
      ;;
    pj_georeference_2)
      echo "-REF_SOURCE -REF_TARGET -XFIELD -YFIELD -METHOD -ORDER -INPUT -OUTPUT"
      return
      ;;
    pj_georeference_4)
      echo "-INPUT -OUTPUT -EXTENT -DEM -DEM_DEFAULT -CFL -PXSIZE -X -Y -Z -OMEGA -PHI -KAPPA -KAPPA_OFF -ORIENTATION -ROW_ORDER -RESAMPLING -DATA_TYPE -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE"
      return
      ;;
    pj_georeference_5)
      echo "-GRIDS -REFERENCED -DEFINITION -SIZE -XMIN -XMAX -YMIN -YMAX -CELL_REF"
      return
      ;;
    pj_georeference_6)
      echo "-EXTENT -FILE -NX -NY -CFL -PXSIZE -X -Y -Z -OMEGA -PHI -KAPPA -KAPPA_OFF -ORIENTATION"
      return
      ;;
    pj_georeference_7)
      echo "-GRID_X -GRID_Y -GRIDS -OUTPUT -RESAMPLING -BYTEWISE -KEEP_TYPE -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE"
      return
      ;;
    pj_georeference_10)
      echo "-REF_SOURCE -REF_TARGET -XFIELD -YFIELD -METHOD -ORDER -RESAMPLING -BYTEWISE -DATA_TYPE -CRS_STRING -GRIDS -TARGET_GRIDS -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE"
      return
      ;;
    pj_proj4_0)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -GRIDS -GRIDS_OUT -SHAPES -SHAPES_OUT"
      return
      ;;
    pj_proj4_1)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -TARGET -TRANSFORM_Z -PARALLEL -COPY"
      return
      ;;
    pj_proj4_2)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -TARGET -TARGET_PC -TRANSFORM_Z -PARALLEL -COPY"
      return
      ;;
    pj_proj4_3)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -RESAMPLING -BYTEWISE -DATA_TYPE -TARGET_AREA -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRIDS -OUT_X -OUT_Y"
      return
      ;;
    pj_proj4_4)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -RESAMPLING -BYTEWISE -DATA_TYPE -TARGET_AREA -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRID -OUT_X -OUT_Y"
      return
      ;;
    pj_proj4_13)
      echo "-INPUT -OUTPUT -DIRECTION -PATCH"
      return
      ;;
    pj_proj4_14)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -GRATICULE -COORDS -XMIN -XMAX -YMIN -YMAX -INTERVAL -FIXED -FITTED -RESOLUTION"
      return
      ;;
    pj_proj4_15)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH"
      return
      ;;
    pj_proj4_16)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -TARGET -NY -NX -SCALE"
      return
      ;;
    pj_proj4_17)
      echo "-GRID -LON -LAT"
      return
      ;;
    pj_proj4_18)
      echo "-SOURCE -TARGET -EXTENT -ROT_POLE_LON -ROT_POLE_LAT -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE"
      return
      ;;
    pj_proj4_19)
      echo "-DEFINITION -FORMAT -MULTILINE -SIMPLIFIED -FORMATS"
      return
      ;;
    pj_proj4_20)
      echo "-PLANAR -ORTHODROME -LOXODROME -EPSILON"
      return
      ;;
    pj_proj4_21)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -DISTANCES -COORD_X1 -COORD_Y1 -COORD_X2 -COORD_Y2 -EPSILON"
      return
      ;;
    pj_proj4_23)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -RESAMPLING -BYTEWISE -DATA_TYPE -TARGET_AREA -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRIDS -OUT_X -OUT_Y -UTM_ZONE -UTM_SOUTH"
      return
      ;;
    pj_proj4_24)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -RESAMPLING -BYTEWISE -DATA_TYPE -TARGET_AREA -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRID -OUT_X -OUT_Y -UTM_ZONE -UTM_SOUTH"
      return
      ;;
    pj_proj4_25)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -TARGET -TRANSFORM_Z -PARALLEL -COPY -UTM_ZONE -UTM_SOUTH"
      return
      ;;
    pj_proj4_26)
      echo "-CRS_METHOD -CRS_STRING -CRS_FILE -CRS_PROJ4 -CRS_EPSG -CRS_EPSG_AUTH -SOURCE -TARGET -TARGET_PC -TRANSFORM_Z -PARALLEL -COPY -UTM_ZONE -UTM_SOUTH"
      return
      ;;
    pj_proj4_29)
      echo "-SOURCE_CRS -SOURCE_X -SOURCE_Y -TARGET_CRS -TARGET_X -TARGET_Y"
      return
      ;;
    pj_proj4_30)
      echo "-SOURCE_X -SOURCE_Y -TARGET_X -TARGET_Y -SOURCE_CRS_CRS_METHOD -SOURCE_CRS_CRS_STRING -SOURCE_CRS_CRS_FILE -SOURCE_CRS_CRS_PROJ4 -SOURCE_CRS_CRS_EPSG -SOURCE_CRS_CRS_EPSG_AUTH -TARGET_CRS_CRS_METHOD -TARGET_CRS_CRS_STRING -TARGET_CRS_CRS_FILE -TARGET_CRS_CRS_PROJ4 -TARGET_CRS_CRS_EPSG -TARGET_CRS_CRS_EPSG_AUTH"
      return
      ;;
    pj_proj4_31)
      echo "-TABLE -SOURCE_X -SOURCE_Y -TARGET_X -TARGET_Y -SOURCE_CRS_CRS_METHOD -SOURCE_CRS_CRS_STRING -SOURCE_CRS_CRS_FILE -SOURCE_CRS_CRS_PROJ4 -SOURCE_CRS_CRS_EPSG -SOURCE_CRS_CRS_EPSG_AUTH -TARGET_CRS_CRS_METHOD -TARGET_CRS_CRS_STRING -TARGET_CRS_CRS_FILE -TARGET_CRS_CRS_PROJ4 -TARGET_CRS_CRS_EPSG -TARGET_CRS_CRS_EPSG_AUTH"
      return
      ;;
    pj_proj4_32)
      echo "-GRID -GORES -NUMBER -BLEED -RESOLUTION -BYTEWISE"
      return
      ;;
    pointcloud_tools_0)
      echo "-POINTS -CUT -AREA -INVERSE -XMIN -XMAX -YMIN -YMAX -GRID_D -GRID_X -GRID_Y -GRID_NX -GRID_NY -GRID_FILE -EXTENT -POLYGONS"
      return
      ;;
    pointcloud_tools_2)
      echo "-GRID -GRIDS -POINTS"
      return
      ;;
    pointcloud_tools_3)
      echo "-SHAPES -ZFIELD -POINTS -OUTPUT"
      return
      ;;
    pointcloud_tools_4)
      echo "-POINTS -GRID -COUNT -GRIDS -OUTPUT -AGGREGATION -CELLSIZE"
      return
      ;;
    pointcloud_tools_5)
      echo "-POINTS -SHAPES"
      return
      ;;
    pointcloud_tools_6)
      echo "-INPUT -ATTRIB -RESULT -MODE -CREATE_ATTRIB -METHOD -OLD -NEW -SOPERATOR -MIN -MAX -RNEW -ROPERATOR -RETAB -TOPERATOR -RETAB_2 -F_MIN -F_MAX -F_CODE -NODATAOPT -NODATA -OTHEROPT -OTHERS"
      return
      ;;
    pointcloud_tools_7)
      echo "-INPUT -FIELDS -OUTPUT"
      return
      ;;
    pointcloud_tools_8)
      echo "-IN -OUT -DX -DY -DZ -ANGLEX -ANGLEY -ANGLEZ -SCALEX -SCALEY -SCALEZ -ANCHORX -ANCHORY -ANCHORZ"
      return
      ;;
    pointcloud_tools_9)
      echo "-INPUT -RESULT -PERCENT"
      return
      ;;
    pointcloud_tools_10)
      echo "-PC_IN -PC_OUT -FORMULA -NAME -FNAME -TYPE -USE_NODATA"
      return
      ;;
    pointcloud_tools_11)
      echo "-PC_IN -FIELDS -PC_OUT -STATISTICS -METHOD -NCLUSTER -NORMALISE"
      return
      ;;
    pointcloud_tools_12)
      echo "-PC_LAYERS -PC_OUT -DEL_LAYERS -ADD_IDENTIFIER -START_VALUE"
      return
      ;;
    pointcloud_tools_13)
      echo "-TAB_IN -FIELD_X -FIELD_Y -FIELD_Z -FIELDS -PC_OUT"
      return
      ;;
    pointcloud_tools_14)
      echo "-PC_LIST -PC -INDEX"
      return
      ;;
    pointcloud_tools_15)
      echo "-PC_IN -PC_OUT -RADIUS -TERRAINSLOPE -FILTERMOD -STDDEV"
      return
      ;;
    pointcloud_tools_16)
      echo "-PC_IN -PC_OUT -RADIUS -MAX_POINTS -METHOD"
      return
      ;;
    shapes_grid_0)
      echo "-SHAPES -GRIDS -RESULT -RESAMPLING"
      return
      ;;
    shapes_grid_1)
      echo "-SHAPES -GRIDS -RESULT -RESAMPLING"
      return
      ;;
    shapes_grid_2)
      echo "-GRIDS -POLYGONS -NAMING -METHOD -PARALLELIZED -RESULT -COUNT -MIN -MAX -RANGE -SUM -MEAN -VAR -STDDEV -GINI -QUANTILES"
      return
      ;;
    shapes_grid_3)
      echo "-GRIDS -POLYGONS -ATTRIBUTE -POINTS -CELLS -NODATA -TYPE"
      return
      ;;
    shapes_grid_4)
      echo "-GRID -FREQ -POINTS"
      return
      ;;
    shapes_grid_5)
      echo "-GRID -CONTOUR -VERTEX -LINE_OMP -LINE_PARTS -POLYGONS -POLY_OMP -POLY_PARTS -PRECISION -SCALE -BOUNDARY -MINLENGTH -INTERVALS -ZMIN -ZMAX -ZSTEP -ZLIST"
      return
      ;;
    shapes_grid_6)
      echo "-GRID -POLYGONS -CLASS_ALL -CLASS_ID -SPLIT -ALLVERTICES"
      return
      ;;
    shapes_grid_7)
      echo "-INPUT -OUTPUT -POLYGONS -EXTENT"
      return
      ;;
    shapes_grid_8)
      echo "-GRIDS -POINTS -KERNEL_TYPE -KERNEL_SIZE -NAMING -RESULT -COUNT -MIN -MAX -RANGE -SUM -MEAN -VAR -STDDEV -QUANTILE"
      return
      ;;
    shapes_grid_9)
      echo "-GRID -MINIMA -MAXIMA -IDENTITY -ABSOLUTE -BOUNDARY"
      return
      ;;
    shapes_grid_10)
      echo "-GRID_SYSTEM_D -GRID_SYSTEM_X -GRID_SYSTEM_Y -GRID_SYSTEM_NX -GRID_SYSTEM_NY -GRID_SYSTEM_FILE -EXTENT -BORDER"
      return
      ;;
    shapes_grid_11)
      echo "-INPUT -SHAPES -BORDER -OUTPUT"
      return
      ;;
    shapes_grid_15)
      echo "-SURFACE -VECTORS -STEP -SIZE_MIN -SIZE_MAX -AGGR -STYLE"
      return
      ;;
    shapes_grid_16)
      echo "-DIR -LEN -VECTORS -STEP -SIZE_MIN -SIZE_MAX -AGGR -STYLE"
      return
      ;;
    shapes_grid_17)
      echo "-X -Y -VECTORS -STEP -SIZE_MIN -SIZE_MAX -AGGR -STYLE"
      return
      ;;
    shapes_grid_18)
      echo "-POLYGONS -RESULT -GRID -PROCESS -METHOD -OUTPUT -GRID_VALUES -GRID_LUT -GRID_LUT_MIN -GRID_LUT_MAX -GRID_LUT_NAM"
      return
      ;;
    shapes_grid_19)
      echo "-GRID -POLYGONS -BOUNDARY_CELLS -BOUNDARY_VALUE -ALLVERTICES"
      return
      ;;
    shapes_grid_20)
      echo "-INPUT -ORDER_FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRID"
      return
      ;;
    shapes_grid_grid_and_polygon_to_points)
      echo "-GRID -POLYGONS -ATTRIBUTE -POINTS"
      return
      ;;
    shapes_lines_0)
      echo "-POLYGONS -LINES"
      return
      ;;
    shapes_lines_1)
      echo "-POINTS -LINES -ORDER -SEPARATE -ELEVATION -MEASURE -MAXDIST"
      return
      ;;
    shapes_lines_2)
      echo "-LINES -OUTPUT -BPARTS -BPOINTS -BLENGTH"
      return
      ;;
    shapes_lines_3)
      echo "-LINES -POLYGONS -INTERSECT -DIFFERENCE -OUTPUT -ATTRIBUTES"
      return
      ;;
    shapes_lines_4)
      echo "-LINES -OUTPUT -TOLERANCE"
      return
      ;;
    shapes_lines_5)
      echo "-LINES -DISSOLVED -FIELDS -STATISTICS -STAT_SUM -STAT_AVG -STAT_MIN -STAT_MAX -STAT_RNG -STAT_DEV -STAT_VAR -STAT_LST -STAT_NUM -STAT_NAMING"
      return
      ;;
    shapes_lines_6)
      echo "-LINES -SPLIT -INTERSECT -OUTPUT"
      return
      ;;
    shapes_lines_7)
      echo "-LINES_IN -LINES_OUT -METHOD -SENSITIVITY -ITERATIONS -PRESERVATION -SIGMA"
      return
      ;;
    shapes_lines_8)
      echo "-LINES -SPLIT -INTERSECT -OUTPUT -EPSILON -MIN_VERTEX_DIST"
      return
      ;;
    shapes_lines_9)
      echo "-LINES_A -LINES_B -CROSSINGS -ATTRIBUTES"
      return
      ;;
    shapes_lines_10)
      echo "-LINES_IN -LINES_OUT -TOLERANCE -MAX_LENGTH"
      return
      ;;
    shapes_lines_11)
      echo "-INPUT -OUTPUT -INS_POINTS -DISTRIBUTION -LENGTH -CAPS_LENGTH -NUMBER -CAPS_NUMBER"
      return
      ;;
    shapes_lines_12)
      echo "-LINES -PARTS"
      return
      ;;
    shapes_lines_13)
      echo "-LINES -FLIPPED"
      return
      ;;
    shapes_lines_14)
      echo "-PARTS -LINES -EPSILON"
      return
      ;;
    shapes_lines_15)
      echo "-LINES -POPULATION -RADIUS -UNIT -SHAPE -OUTPUT -SCALING -NO_ZERO -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID"
      return
      ;;
    shapes_lines_16)
      echo "-INPUTLINES -OUTPUTLINES -OUTPUTPOINTS -TOLERANCE -SYSTEM -SIMPLIFY"
      return
      ;;
    shapes_lines_17)
      echo "-INPUTLINES -ADJECANT_EDGES -UPSTREAM_EDGES"
      return
      ;;
    shapes_points_0)
      echo "-TABLE -X -Y -Z -POINTS -CRS_STRING"
      return
      ;;
    shapes_points_1)
      echo "-POINTS -POLYGONS"
      return
      ;;
    shapes_points_2)
      echo "-POINTS -X_EXTENT_MIN -X_EXTENT_MAX -Y_EXTENT_MIN -Y_EXTENT_MAX -DIST"
      return
      ;;
    shapes_points_3)
      echo "-POINTS -ID_POINTS -NEAR -ID_NEAR -DISTANCES -LINES -FORMAT -MIN_DIST -MAX_DIST"
      return
      ;;
    shapes_points_4)
      echo "-POLYGONS -POINTS -NUMFIELD -NUMPOINTS -MAXITER"
      return
      ;;
    shapes_points_5)
      echo "-LINES -POINTS -ADD_POINT_ORDER -ADD -METHOD_INSERT -DIST"
      return
      ;;
    shapes_points_6)
      echo "-INPUT -OUTPUT -X -Y -Z -M -LON -LAT"
      return
      ;;
    shapes_points_7)
      echo "-POINTS -FIELD -RESULT -NUMERIC -METHOD"
      return
      ;;
    shapes_points_8)
      echo "-POINTS -POLYGONS -FIELD -CLIPS -METHOD"
      return
      ;;
    shapes_points_9)
      echo "-OUTPUT -POINTS -DIRECTIONS -TOLERANCE"
      return
      ;;
    shapes_points_10)
      echo "-INPUT -OUTPUT -POLYGONS -FIELDS"
      return
      ;;
    shapes_points_11)
      echo "-POINTS -FIELD -FILTER -RADIUS -MINNUM -MAXNUM -QUADRANTS -METHOD -TOLERANCE -PERCENT"
      return
      ;;
    shapes_points_12)
      echo "-SHAPES -HULLS -BOXES -POLYPOINTS -POLYGONCVX"
      return
      ;;
    shapes_points_14)
      echo "-POINTS -FIELD -OUTPUT_PC -THINNED -THINNED_PC -RESOLUTION -METHOD"
      return
      ;;
    shapes_points_15)
      echo "-MULTIPOINTS -POINTS -ADD_INDEX"
      return
      ;;
    shapes_points_16)
      echo "-POINTS -POLYGONS -FRAME"
      return
      ;;
    shapes_points_17)
      echo "-REFERENCE -REFERENCE_ID -OBSERVATIONS -X -Y -TRACK -DATE -TIME -PARAMETER -AGGREGATED -TIME_SPAN -FIX_TIME -OFF_TIME -EPS_TIME -EPS_SPACE -VERBOSE -POLAR"
      return
      ;;
    shapes_points_18)
      echo "-INPUT -SNAP -OUTPUT -MOVES -DISTANCE"
      return
      ;;
    shapes_points_19)
      echo "-INPUT -SNAP -OUTPUT -MOVES -DISTANCE"
      return
      ;;
    shapes_points_20)
      echo "-INPUT -GRID -OUTPUT -MOVES -DISTANCE -SHAPE -EXTREME"
      return
      ;;
    shapes_points_21)
      echo "-POINTS -EXTENT -GRIDSYSTEM_D -GRIDSYSTEM_X -GRIDSYSTEM_Y -GRIDSYSTEM_NX -GRIDSYSTEM_NY -GRIDSYSTEM_FILE -SHAPES -POLYGONS -XMIN -XMAX -YMIN -YMAX -NX -NY -BUFFER -COUNT -DISTRIBUTE -ITERATIONS -DISTANCE"
      return
      ;;
    shapes_points_22)
      echo "-INPUT -SNAP -OUTPUT -MOVES -DISTANCE"
      return
      ;;
    shapes_points_23)
      echo "-LOWER -UPPER -POINTS -Z_FIELD -COPY"
      return
      ;;
    shapes_points_24)
      echo "-POINTS -RESULT -DISTANCES -LINES -LINE_ID"
      return
      ;;
    shapes_points_points_to_contour)
      echo "-SHAPES -CONTOUR -ATTRIBUTE -CELL_SIZE -ZSTEP"
      return
      ;;
    shapes_polygons_1)
      echo "-POLYGONS -CENTROIDS -METHOD -INSIDE"
      return
      ;;
    shapes_polygons_2)
      echo "-POLYGONS -OUTPUT -FIELDS -BPARTS -BPOINTS -BEXTENT -BCENTER -BLENGTH -BAREA -SCALING"
      return
      ;;
    shapes_polygons_3)
      echo "-LINES -POLYGONS -RINGS -SINGLE -MERGE -SPLIT"
      return
      ;;
    shapes_polygons_4)
      echo "-POINTS -FIELDS -POLYGONS -STATISTICS -SUM -AVG -VAR -DEV -MIN -MAX -NUM -FIELD_NAME"
      return
      ;;
    shapes_polygons_5)
      echo "-POLYGONS -DISSOLVED -FIELDS -STATISTICS -STAT_SUM -STAT_AVG -STAT_MIN -STAT_MAX -STAT_RNG -STAT_DEV -STAT_VAR -STAT_LST -STAT_NUM -STAT_NAMING -BND_KEEP -MIN_AREA -SPLIT_DISTINCT"
      return
      ;;
    shapes_polygons_6)
      echo "-SHAPES -POINTS"
      return
      ;;
    shapes_polygons_7)
      echo "-SHAPES -INDEX -DMAX -GYROS -FERET -FERET_DIRS"
      return
      ;;
    shapes_polygons_8)
      echo "-POLYGONS -LINES -INTERSECT -SPLIT_PARTS -METHOD"
      return
      ;;
    shapes_polygons_9)
      echo "-POLYGONS -EDGES -NODES"
      return
      ;;
    shapes_polygons_10)
      echo "-POLYGONS -PARTS -LAKES"
      return
      ;;
    shapes_polygons_11)
      echo "-CLIP -S_INPUT -S_OUTPUT -M_INPUT -M_OUTPUT -DISSOLVE -MULTIPLE"
      return
      ;;
    shapes_polygons_12)
      echo "-POLYGONS -ID -INTERSECT"
      return
      ;;
    shapes_polygons_14)
      echo "-A -B -RESULT -SPLIT"
      return
      ;;
    shapes_polygons_15)
      echo "-A -B -RESULT -SPLIT"
      return
      ;;
    shapes_polygons_16)
      echo "-A -B -RESULT -SPLIT"
      return
      ;;
    shapes_polygons_17)
      echo "-A -B -RESULT -SPLIT"
      return
      ;;
    shapes_polygons_18)
      echo "-A -B -RESULT -SPLIT"
      return
      ;;
    shapes_polygons_19)
      echo "-A -B -RESULT -SPLIT"
      return
      ;;
    shapes_polygons_20)
      echo "-INPUT -POINTS -FIELDS -OUTPUT -ADD_LOCATION_INFO"
      return
      ;;
    shapes_polygons_21)
      echo "-INPUT -OUTPUT"
      return
      ;;
    shapes_polygons_22)
      echo "-POLYGONS -ATTRIBUTE -EDGES -VERTICES -EPSILON -DOUBLE"
      return
      ;;
    shapes_polygons_23)
      echo "-POLYGONS -GENERALIZED -THRESHOLD -JOIN_TO -VERTICES -EPSILON"
      return
      ;;
    shapes_polygons_length_of_lines)
      echo "-POLYGONS -LINES"
      return
      ;;
    shapes_polygons_max_interior_circles)
      echo "-POLYGONS -CIRCLES -RESOLUTION"
      return
      ;;
    shapes_polygons_remove_from_boundary)
      echo "-POLYGONS -RESULT -METHOD"
      return
      ;;
    shapes_tools_0)
      echo "-SHAPES -NAME -TYPE -VERTEX -CRS_STRING -NFIELDS -FIELDS_NAME0 -FIELDS_TYPE0 -FIELDS_NAME1 -FIELDS_TYPE1"
      return
      ;;
    shapes_tools_2)
      echo "-INPUT -MERGED -SRCINFO -MATCH -DELETE"
      return
      ;;
    shapes_tools_3)
      echo "-SHAPES -FIELD -EXPRESSION -USE_NODATA -METHOD"
      return
      ;;
    shapes_tools_4)
      echo "-SHAPES -FIELD -EXPRESSION -CASE -COMPARE -METHOD"
      return
      ;;
    shapes_tools_5)
      echo "-SHAPES -LOCATIONS -CONDITION -METHOD"
      return
      ;;
    shapes_tools_6)
      echo "-INPUT -OUTPUT"
      return
      ;;
    shapes_tools_7)
      echo "-INPUT"
      return
      ;;
    shapes_tools_8)
      echo "-INPUT"
      return
      ;;
    shapes_tools_9)
      echo "-SHAPES -FIELD -LIST -NAMING"
      return
      ;;
    shapes_tools_10)
      echo "-SHAPES -TRANSFORM -MOVEX -MOVEY -MOVEZ -ANCHORX -ANCHORY -ANCHORZ -ROTATEX -ROTATEY -ROTATEZ -SCALEX -SCALEY -SCALEZ -REFLECTION_TYPE"
      return
      ;;
    shapes_tools_11)
      echo "-INPUT -OUTPUT -SIZE -FIELDS -MAXSIZE -MINSIZE -TYPE"
      return
      ;;
    shapes_tools_12)
      echo "-GRATICULE_LINE -GRATICULE_RECT -TYPE -EXTENT -EXTENT_X_MIN -EXTENT_X_MAX -EXTENT_Y_MIN -EXTENT_Y_MAX -DIVISION_X -DIVISION_Y -ALIGNMENT -ROUND"
      return
      ;;
    shapes_tools_13)
      echo "-SHAPES -CUT -METHOD -EXTENT -AX -BX -AY -BY -DX -DY -GRID_SYS_D -GRID_SYS_X -GRID_SYS_Y -GRID_SYS_NX -GRID_SYS_NY -GRID_SYS_FILE -SHAPES_EXT -POLYGONS -OVERLAP"
      return
      ;;
    shapes_tools_15)
      echo "-SHAPES -CUTS -EXTENT -NX -NY -METHOD"
      return
      ;;
    shapes_tools_16)
      echo "-SHAPES -FIELD -A -B -PERCENT -EXACT"
      return
      ;;
    shapes_tools_17)
      echo "-TABLE -FIELD -CUTS"
      return
      ;;
    shapes_tools_18)
      echo "-SHAPES -BUFFER -DIST_FIELD -DIST_FIELD_DEFAULT -DIST_SCALE -DISSOLVE -NZONES -POLY_INNER -DARC"
      return
      ;;
    shapes_tools_19)
      echo "-SHAPES -EXTENTS -OUTPUT"
      return
      ;;
    shapes_tools_20)
      echo "-SHAPES -ATTRIBUTE -POLYGONS -LINES -POINTS"
      return
      ;;
    shapes_tools_21)
      echo "-POLAR -F_EXAGG -D_EXAGG -CARTES -RADIUS -DEGREE"
      return
      ;;
    shapes_tools_22)
      echo "-INPUT -FIELD_ID -FIELD_X -FIELD_Y -FIELD_Z -SHAPE_TYPE -OUTPUT"
      return
      ;;
    shapes_tools_23)
      echo "-INPUT -FIELD_Z -FIELD_M -OUTPUT"
      return
      ;;
    shapes_tools_24)
      echo "-INPUT -MERGED -SRCINFO -MATCH -DELETE"
      return
      ;;
    shapes_tools_25)
      echo "-FIELDS -FIELD_ID -SCENARIO -OUTPUT -STATISTICS -KNOWN_CROPS"
      return
      ;;
    shapes_tools_26)
      echo "-SHAPESLIST -SHAPES -INDEX"
      return
      ;;
    shapes_tools_27)
      echo "-SHAPES"
      return
      ;;
    shapes_tools_28)
      echo "-SHAPES -COPY"
      return
      ;;
    shapes_tools_29)
      echo "-POINTS -STRIKE -DIP -RAKE -SIZE -SIZE_DEF -SIZE_RANGE_MIN -SIZE_RANGE_MAX -PLOTS -DARC -STYLE"
      return
      ;;
    shapes_tools_30)
      echo "-POINTS -DIRECTION -LENGTH -X_COMP -Y_COMP -DEFINITION -SCALING -GRADIENTS -TARGETS"
      return
      ;;
    shapes_tools_select_and_delete)
      echo "-SHAPES -ATTRIBUTE -METHOD -EXPRESSION -COMPARE -CASE"
      return
      ;;
    shapes_transect_0)
      echo "-TRANSECT -THEME -THEME_FIELD -TRANSECT_RESULT"
      return
      ;;
    sim_air_flow_0)
      echo "-DEM -PRODUCTION -PRODUCTION_DEFAULT -FRICTION -FRICTION_DEFAULT -AIR -VELOCITY -RESET -TIME_STOP -TIME_UPDATE -EDGE -DELAY -T_AIR -T_AIR_COLD"
      return
      ;;
    sim_cellular_automata_0)
      echo "-TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -LIFE -REFRESH -FADECOLOR"
      return
      ;;
    sim_cellular_automata_1)
      echo "-TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRID -REFRESH -INIT_FISH -INIT_SHARK -TABLE -FISH_BIRTH -SHARK_BIRTH -SHARK_STARVE"
      return
      ;;
    sim_cellular_automata_2)
      echo "-TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -GRID -REFRESH -RADIUS -NSTATES -TSICK -TINFECTED -SPEED"
      return
      ;;
    sim_ecosystems_hugget_0)
      echo "-TABLE -TIME_SPAN -TIME_STEP -C_INIT -PRESETS -C_INPUT -C_OUTPUT"
      return
      ;;
    sim_ecosystems_hugget_1)
      echo "-TABLE -TIME_SPAN -TIME_STEP -PRESETS -PRIMPROD -P_LEAV -P_BRAN -P_STEM -P_ROOT -K_LEAV_LITT -K_BRAN_LITT -K_STEM_LITT -K_ROOT_HUMU -K_LITT_HUMU -K_HUMU_COAL -K_COAL_ENVI -CHUMIFY -CCARBON"
      return
      ;;
    sim_ecosystems_hugget_2)
      echo "-DEM -NSTORE -TIME_SPAN -TIME_STEP -NINIT -NRAIN -UPDATE"
      return
      ;;
    sim_erosion_0)
      echo "-DTM -S -CHANNEL -PI -CC -PH -EtEo -GC -D -NV -MS -BD -EHD -LP -PER_C -PER_Z -PER_S -ST -RFR -TAB_METEO -OUT_PATH -INTERFLOW -T -TIMESPAN -IF -R -I -Rn -KE_I_METHOD -FLOWD_VA -CHANNELTRANSPORT -Q -SL -Rf -KE -Rc -TCc -TCz -TCs -Gc -Gz -Gs -SLc -SLz -SLs -TCONDc -TCONDz -TCONDs -W_up"
      return
      ;;
    sim_geomorphology_0)
      echo "-DEM -RELEASE_AREAS -MATERIAL -FRICTION_ANGLE_GRID -SLOPE_IMPACT_GRID -FRICTION_MU_GRID -FRICTION_MASS_TO_DRAG_GRID -OBJECTS -PROCESS_AREA -DEPOSITION -MAX_VELOCITY -STOP_POSITIONS -HAZARD_PATHS -HAZARD_SOURCES -HAZARD_SOURCES_MATERIAL -MATERIAL_FLUX -PROCESS_PATH_MODEL -RW_SLOPE_THRES -RW_EXPONENT -RW_PERSISTENCE -GPP_ITERATIONS -GPP_PROCESSING_ORDER -GPP_SEED -FRICTION_MODEL -FRICTION_THRES_FREE_FALL -FRICTION_METHOD_IMPACT -FRICTION_IMPACT_REDUCTION -FRICTION_ANGLE -FRICTION_MU -FRICTION_MODE_OF_MOTION -FRICTION_MASS_TO_DRAG -FRICTION_INIT_VELOCITY -DEPOSITION_MODEL -DEPOSITION_INITIAL -DEPOSITION_SLOPE_THRES -DEPOSITION_VELOCITY_THRES -DEPOSITION_MAX -DEPOSITION_MIN_PATH -SINK_MIN_SLOPE"
      return
      ;;
    sim_hydrology_0)
      echo "-STA_FC -STA_FC_DEFAULT -STA_PWP -STA_PWP_DEFAULT -LANDUSE -LANDUSE_DEF -DYN_W -DYN_CLIMATE -STA_KC"
      return
      ;;
    sim_hydrology_2)
      echo "-ATANB -MOIST -WEATHER -RECORD_P -RECORD_ET -RECORD_DATE -TABLE -DTIME -NCLASSES -P_QS0 -P_LNTE -P_MODEL -P_SR0 -P_SRZMAX -P_SUZ_TD -P_VCH -P_VR -P_K0 -P_PSI -P_DTHETA -BINF"
      return
      ;;
    sim_hydrology_3)
      echo "-SHAPES -OUTPUT -DEM -RETENTION -INTERPOL -SLOPECORR"
      return
      ;;
    sim_hydrology_4)
      echo "-DEM -CHANNEL -WEIGHT -WEIGHT_DEFAULT -RAIN -RAIN_DEFAULT -DELIVERY -RISK_POINT -RISK_DIFFUSE -METHOD -CHANNEL_START"
      return
      ;;
    sim_hydrology_5)
      echo "-MASK -SURF -GRAD -SURF_E"
      return
      ;;
    sim_hydrology_6)
      echo "-MASK -GRAD -CONC -CONC_IN -CONC_OUT -CONC_E -GRAD_MIN -NEIGHBOURS"
      return
      ;;
    sim_hydrology_7)
      echo "-MASK -SURF -GRAD -CONC -SURF_E -CONC_IN -CONC_OUT -CONC_E -GRAD_MIN -NEIGHBOURS"
      return
      ;;
    sim_hydrology_8)
      echo "-DEM -FLOW_K -FLOW_K_DEFAULT -FLOW_ACC -FLOW -TIME_MEAN -TIME_CONC -VELOCITY -TIME -ROUTING -FLOW_DEPTH -FLOW_CONST -RESET -RAIN"
      return
      ;;
    sim_hydrology_9)
      echo "-DEM -ROUGHNESS -ROUGHNESS_DEFAULT -STRICKLER -INTER_MAX -INTER_MAX_DEFAULT -POND_MAX -POND_MAX_DEFAULT -INFIL_MAX -INFIL_MAX_DEFAULT -INTERCEPT -PONDING -INFILTRAT -FLOW -VELOCITY -PRECIP -PRECIP_DEFAULT -ET_POT -ET_POT_DEFAULT -RESET -TIME_STOP -TIME_STEP -FLOW_OUT -SUMMARY -TIME_UPDATE -UPDATE_FLOW_FIXED -UPDATE_FLOW_RANGE_MIN -UPDATE_FLOW_RANGE_MAX -UPDATE_VELO_FIXED -UPDATE_VELO_RANGE_MIN -UPDATE_VELO_RANGE_MAX -MONITOR_POINTS -MONITOR_NAME -MONITOR_SERIES -MONITOR_UPDATE -MONITOR_RESET"
      return
      ;;
    sim_hydrology_10)
      echo "-INPUT -INPUT_DAY -INPUT_P -INPUT_ETP -INPUT_LAI -INPUT_LAI_DEFAULT -SIMULATION -I_MAX -LAI_MIN -LAI_MAX -LITTER_MAX -LITTER_CF -LITTER_0 -GLUGLA -DO_ROOTING -OUTPUT_UNIT -SOIL_LAYERS"
      return
      ;;
    sim_hydrology_11)
      echo "-P -ETP -FC -PWP -ETMAX -LAI -LAI_DEFAULT -GLUGLA -GLUGLA_DEFAULT -SOIL_WATER -LITTER -RECHARGE -RECHARGE_SUM -I_MAX -LAI_MIN -LAI_MAX -LITTER_MAX -LITTER_CF -LITTER_0 -RESET -DO_ROOTING -OUTPUT_UNIT -SOIL_LAYERS"
      return
      ;;
    sim_hydrology_12)
      echo "-SAND -SILT -CLAY -AIR -GLUGLA"
      return
      ;;
    sim_ihacres_0)
      echo "-TABLE -DATE_Field -DISCHARGE_Field -PCP_Field -TMP_Field -INFLOW_Field -bUPSTREAM -USE_TMP -NSIM -AREA -STORAGE -IHACVERS -SNOW_TOOL -TABLEout -TABLEparms"
      return
      ;;
    sim_ihacres_1)
      echo "-TABLE -DATE_Field -DISCHARGE_Field -PCP_Field -TMP_Field -USE_TMP -AREA -CFAC -TwFAC -STORAGE -IHACVERS -SNOW_TOOL -WRITEALL_TS -TABLEout -TABLEparms -TABLEsettings"
      return
      ;;
    sim_ihacres_2)
      echo "-TABLEout -NSUBBASINS -IHACVERS -STORAGE -SNOW_TOOL"
      return
      ;;
    sim_ihacres_3)
      echo "-TABLEout -NELEVBANDS -AREA_tot -IHACVERS -STORAGE -SNOW_TOOL"
      return
      ;;
    sim_ihacres_4)
      echo "-TABLEout -TABLEparms -NELEVBANDS -NSIM -AREA_tot -IHACVERS -STORAGE -SNOW_TOOL -OBJ_FUNC -NSEMIN"
      return
      ;;
    sim_landscape_evolution_0)
      echo "-SURFACE_T0 -REGOLITH_T0 -REGOLITH_T0_DEFAULT -ALLOCHTHONE -ALLOCHTHONE_DEFAULT -SURFACE -REGOLITH -DIFFERENCE -CLIMATE_TREND -CLIMATE_TREND_YEAR -CLIMATE_TREND_T -CLIMATE_TREND_T_OFFSET -CLIMATE_ANNUAL -CLIMATE_ANNUAL_T -CLIMATE_ANNUAL_TMIN -CLIMATE_ANNUAL_TMAX -CLIMATE_ANNUAL_P -CLIMATE_ANNUAL_T_UNIT -CLIMATE_T_LAPSE -CLIMATE_T_LAPSE_CELL -BEDROCK_ROCK_LAYERS -BEDROCK_WEATHERING -BEDROCK_FROST -BEDROCK_CHEMICAL -TRACERS_POINTS -TRACERS_LINES -TRACERS_TRIM -TRACERS_DIR_RAND -TRACERS_H_DENSITY -TRACERS_H_RANDOM -TRACERS_V_DENSITY -TRACERS_V_RANDOM -TIME_START -TIME_STOP -TIME_STEP -DIFFUSIVE_KD -DIFFUSIVE_NEIGHBOURS"
      return
      ;;
    sim_qm_of_esp_0)
      echo "-DEM -MODEL -DIFF -UPDATE -KAPPA -DURATION -TIMESTEP -DTIME -NEIGHBOURS"
      return
      ;;
    sim_qm_of_esp_1)
      echo "-DEM -FILLED -SINKS -DZFILL"
      return
      ;;
    sim_qm_of_esp_2)
      echo "-DEM -FLOW -PREPROC -DZFILL"
      return
      ;;
    sim_qm_of_esp_3)
      echo "-DEM -FLOW -ITERATIONS -RUNOFF -MANNING"
      return
      ;;
    sim_qm_of_esp_4)
      echo "-DEM -CHANNELS -MODEL -DIFF -UPDATE -KAPPA -DURATION -TIMESTEP -DTIME"
      return
      ;;
    sim_rivflow_0)
      echo "-INPUT -INPUT2 -INPUT3 -WCons -WCons2 -OUTPUT2 -OUTPUT3 -OUTPUT4 -OUTPUT5 -OUTPUT6 -OUTPUT7 -OUTPUT8 -OUTPUT9 -pCr -nCr -EnfVmax -VTresh"
      return
      ;;
    sim_rivflow_1)
      echo "-INPUT -INPUT2 -INPUT10 -INPUT8 -INPUT9 -INPUT11 -INPUT12 -INPUT3 -INPUT5 -INPUT6 -INPUT7 -OUTPUT -OUTPUT2 -OUTPUT3 -OUTPUT4 -OUTPUT5 -OUTPUT6 -onlyRB -TimeStep -CalcT -sYear -DayNum -Folder2 -Folder1 -stRedFacR -autoFacD -stRedFacD -OffsetR -OffsetD -CacheUse -Folder4 -wNC -ParamC -ParamG -ParamB -nG -RivG -ParamCr -nHG -EnfVmax -VTresh -WCons -Folder3 -WConUnit -WConsD -WConThres -stConsAll -stConsRiv -vRM1 -RM1x -RM1y -RM1q -RM1a -vRM2 -RM2x -RM2y -RM2q -RM2a -EvP1s -EvP1x -EvP1y -EvP2s -EvP2x -EvP2y -EvP3s -EvP3x -EvP3y -RBMx -RBMy -wP -eP -MoniLog1 -MoniLog3 -MoniLog2 -Test1 -xt1 -yt1"
      return
      ;;
    sim_rivflow_3)
      echo "-INPUT -OUTPUT -SX -SY -MX -MY -Owrite"
      return
      ;;
    sim_rivflow_4)
      echo "-INPUT -Folder1 -sY -eY -DomW -ElecW -LiveW -ManW -IrrW -FvA"
      return
      ;;
    statistics_grid_0)
      echo "-INPUT -RESULT -RESULT_LOD -SEEDS -LOD"
      return
      ;;
    statistics_grid_1)
      echo "-GRID -MEAN -MIN -MAX -RANGE -STDDEV -VARIANCE -SUM -DIFF -DEVMEAN -PERCENT -MEDIAN -MINORITY -MAJORITY -BCENTER -KERNEL_TYPE -KERNEL_INNER -KERNEL_RADIUS -KERNEL_DIRECTION -KERNEL_TOLERANCE -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    statistics_grid_2)
      echo "-INPUT -RESULT -RADIUS -EXPONENT"
      return
      ;;
    statistics_grid_3)
      echo "-INPUT -RESULT -STDDEV -RADIUS -OUTPUT"
      return
      ;;
    statistics_grid_4)
      echo "-GRIDS -WEIGHTS -RESAMPLING -MEAN -MIN -MAX -RANGE -SUM -SUM2 -VAR -STDDEV -STDDEVLO -STDDEVHI -PCTL -PCTL_VAL"
      return
      ;;
    statistics_grid_5)
      echo "-ZONES -CATLIST -STATLIST -ASPECT -UCU -OUTTAB -SHORTNAMES"
      return
      ;;
    statistics_grid_6)
      echo "-GRID -MEAN -DIFMEAN -MIN -MAX -RANGE -VAR -STDDEV -STDDEVLO -STDDEVHI -DEVMEAN -PERCENT -POINTS -POINTS_OUT -DIRECTION -TOLERANCE -MAXDISTANCE -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    statistics_grid_7)
      echo "-GRID -RESULT -CONTIGUITY -DIALOG"
      return
      ;;
    statistics_grid_8)
      echo "-GRIDS -PCA -EIGEN_INPUT -EIGEN -METHOD -COMPONENTS -OVERWRITE"
      return
      ;;
    statistics_grid_9)
      echo "-BANDS -MEAN -STDDEV -DIFF -RADIUS -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    statistics_grid_10)
      echo "-PCA -EIGEN -GRIDS"
      return
      ;;
    statistics_grid_11)
      echo "-GRID -STATS"
      return
      ;;
    statistics_grid_12)
      echo "-GRID -STATS"
      return
      ;;
    statistics_grid_13)
      echo "-GRIDS -STATS -DATA_CELLS -NODATA_CELLS -CELLSIZE -MEAN -MIN -MAX -RANGE -SUM -SUM2 -VAR -STDDEV -STDDEVLO -STDDEVHI -PCTL_VAL -PCTL_HST -SAMPLES"
      return
      ;;
    statistics_grid_14)
      echo "-GRIDS -CATEGORIES -COINCIDENCE -MAJ_COUNT -MAJ_VALUE -RADIUS"
      return
      ;;
    statistics_grid_15)
      echo "-GRID -BASE -PCA -EIGEN -COMPONENTS -BASE_OUT -OVERWRITE -KERNEL_TYPE -KERNEL_RADIUS -METHOD"
      return
      ;;
    statistics_grid_16)
      echo "-COUNT -MIN -MAX -RANGE -SUM -SUM2 -MEAN -VAR -STDDEV -HISTOGRAM -FILES -HCLASSES -HRANGE -CUMULATIVE -QUANTILES -QUANTVALS"
      return
      ;;
    statistics_grid_17)
      echo "-GRIDS -COUNT -SUM -SUM2 -MIN -MAX -HISTOGRAM -HCLASSES -HMIN -HMAX"
      return
      ;;
    statistics_grid_18)
      echo "-COUNT -SUM -SUM2 -MIN -MAX -HISTOGRAM -RANGE -MEAN -VAR -STDDEV -QUANTILES -QUANTVALS"
      return
      ;;
    statistics_grid_19)
      echo "-GRIDS -COUNT -SUM -SUM2 -MIN -MAX -HISTOGRAM"
      return
      ;;
    statistics_grid_20)
      echo "-GRIDS -MAJORITY -MAJORITY_COUNT -MINORITY -MINORITY_COUNT -NUNIQUES -UNAMBIGUOUS"
      return
      ;;
    statistics_grid_21)
      echo "-GRID -HISTOGRAM -CLASSIFY -BINS -RANGE_MIN -RANGE_MAX -LUT -UNCLASSED -PARALLEL -MAXSAMPLES"
      return
      ;;
    statistics_grid_directional_grid_statistics)
      echo "-GRID -MEAN -BEGIN -END -STEP -TOLERANCE -MAXDISTANCE -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    statistics_kriging_0)
      echo "-POINTS -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -PREDICTION -VARIANCE -TQUALITY -VAR_MAXDIST -VAR_NCLASSES -VAR_NSKIP -VAR_MODEL -LOG -BLOCK -DBLOCK -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_kriging_1)
      echo "-POINTS -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -PREDICTION -VARIANCE -TQUALITY -VAR_MAXDIST -VAR_NCLASSES -VAR_NSKIP -VAR_MODEL -LOG -BLOCK -DBLOCK -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_kriging_2)
      echo "-POINTS -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -PREDICTION -VARIANCE -TQUALITY -VAR_MAXDIST -VAR_NCLASSES -VAR_NSKIP -VAR_MODEL -LOG -BLOCK -DBLOCK -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX -PREDICTORS -RESAMPLING -COORDS"
      return
      ;;
    statistics_kriging_3)
      echo "-POINTS -FIELD -PREDICTORS -REGRESSION -PREDICTION -RESIDUALS -VARIANCE -TQUALITY -INFO_COEFF -INFO_MODEL -INFO_STEPS -COORD_X -COORD_Y -INTERCEPT -METHOD -P_VALUE -RESAMPLING -VAR_MAXDIST -VAR_NCLASSES -VAR_NSKIP -VAR_MODEL -KRIGING -LOG -BLOCK -DBLOCK -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_kriging_4)
      echo "-POINTS -ATTRIBUTE -VARIOGRAM -LOG -VAR_MAXDIST -VAR_NCLASSES -VAR_NSKIP -VAR_MODEL"
      return
      ;;
    statistics_kriging_5)
      echo "-POINTS -Z_FIELD -Z_SCALE -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -PREDICTION -TARGET_USER_ZSIZE -TARGET_USER_ZMIN -TARGET_USER_ZMAX -TARGET_USER_ZNUM -VARIANCE -TQUALITY -VAR_MAXDIST -VAR_NCLASSES -VAR_NSKIP -VAR_MODEL -LOG -BLOCK -DBLOCK -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_kriging_6)
      echo "-POINTS -Z_FIELD -Z_SCALE -FIELD -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -PREDICTION -TARGET_USER_ZSIZE -TARGET_USER_ZMIN -TARGET_USER_ZMAX -TARGET_USER_ZNUM -VARIANCE -TQUALITY -VAR_MAXDIST -VAR_NCLASSES -VAR_NSKIP -VAR_MODEL -LOG -BLOCK -DBLOCK -CV_METHOD -CV_SUMMARY -CV_RESIDUALS -CV_SAMPLES -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_points_0)
      echo "-POINTS -FIELD -RESULT -DISTCOUNT -DISTMAX -NSKIP"
      return
      ;;
    statistics_points_1)
      echo "-POINTS -FIELD -RESULT -DISTMAX -NSKIP"
      return
      ;;
    statistics_points_2)
      echo "-POINTS -FIELD -DISTCOUNT -NSKIP -COUNT -VARIANCE -COVARIANCE"
      return
      ;;
    statistics_points_3)
      echo "-POINTS -TABLE -DIMENSION"
      return
      ;;
    statistics_points_4)
      echo "-POINTS -WEIGHT -CENTRE -STDDIST -STEP -BBOX"
      return
      ;;
    statistics_regression_0)
      echo "-PREDICTOR -POINTS -ATTRIBUTE -REGRESSION -RESIDUAL -RESAMPLING -METHOD"
      return
      ;;
    statistics_regression_1)
      echo "-PREDICTORS -POINTS -ATTRIBUTE -INFO_COEFF -INFO_MODEL -INFO_STEPS -RESIDUALS -REGRESSION -REGRESCORR -RESAMPLING -COORD_X -COORD_Y -INTERCEPT -METHOD -P_VALUE -CROSSVAL -CROSSVAL_K -RESIDUAL_COR"
      return
      ;;
    statistics_regression_2)
      echo "-POINTS -ATTRIBUTE -RESIDUALS -POLYNOM -XORDER -YORDER -TORDER -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID"
      return
      ;;
    statistics_regression_3)
      echo "-POINTS -DEPENDENT -PREDICTOR -LOGISTIC -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -TARGET_OUT_GRID -INTERCEPT -SLOPE -QUALITY -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_regression_4)
      echo "-POINTS -DEPENDENT -RESIDUALS -PREDICTOR -REGRESSION -QUALITY -INTERCEPT -SLOPE -LOGISTIC -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_regression_5)
      echo "-POINTS -DEPENDENT -PREDICTORS -REGRESSION -LOGISTIC -TARGET_DEFINITION -TARGET_USER_SIZE -TARGET_USER_XMIN -TARGET_USER_XMAX -TARGET_USER_YMIN -TARGET_USER_YMAX -TARGET_USER_COLS -TARGET_USER_ROWS -TARGET_USER_FLAT -TARGET_USER_FITS -TARGET_TEMPLATE -QUALITY -INTERCEPT -SLOPES -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_regression_6)
      echo "-POINTS -DEPENDENT -RESIDUALS -PREDICTORS -REGRESSION -QUALITY -MODEL -LOGISTIC -MODEL_OUT -RESOLUTION -RESOLUTION_VAL -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_regression_7)
      echo "-POINTS -DEPENDENT -PREDICTORS -REGRESSION -LOGISTIC -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MIN -SEARCH_POINTS_MAX"
      return
      ;;
    statistics_regression_8)
      echo "-DEPENDENT -PREDICTORS -REGRESSION -RESIDUALS -INFO_COEFF -INFO_MODEL -INFO_STEPS -RESAMPLING -COORD_X -COORD_Y -METHOD -P_VALUE -CROSSVAL -CROSSVAL_K"
      return
      ;;
    statistics_regression_9)
      echo "-Y_GRIDS -COEFF -R -R2 -R2ADJ -P -STDERR -LINEAR -ORDER -XSOURCE -X_TABLE -X_GRIDS"
      return
      ;;
    statistics_regression_10)
      echo "-TABLE -FIELD_X -FIELD_Y -FORMULA -FORMULAS -TREND"
      return
      ;;
    statistics_regression_11)
      echo "-TABLE -FIELD_X -FIELD_Y -FORMULA -FORMULAS -TREND"
      return
      ;;
    statistics_regression_12)
      echo "-TABLE -RESULTS -DEPENDENT -INFO_COEFF -INFO_MODEL -INFO_STEPS -METHOD -P_VALUE -CROSSVAL -CROSSVAL_K"
      return
      ;;
    statistics_regression_13)
      echo "-TABLE -RESULTS -DEPENDENT -INFO_COEFF -INFO_MODEL -INFO_STEPS -METHOD -P_VALUE -CROSSVAL -CROSSVAL_K"
      return
      ;;
    statistics_regression_14)
      echo "-PREDICTORS -REGRESSION -REG_RESCORR -DEPENDENT -QUALITY -RESIDUALS -MODEL -LOGISTIC -MODEL_OUT -SEARCH_RANGE -SEARCH_RADIUS -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    statistics_regression_15)
      echo "-PREDICTORS -ZONES -POINTS -ATTRIBUTE -RESIDUALS -REGRESSION -RESAMPLING -COORD_X -COORD_Y -INTERCEPT -METHOD -P_VALUE"
      return
      ;;
    statistics_regression_16)
      echo "-SHAPES -VARIABLE -SUMMARY -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH -SEARCH_RANGE -SEARCH_RADIUS -SEARCH_POINTS_ALL -SEARCH_POINTS_MAX"
      return
      ;;
    table_calculus_0)
      echo "-SOURCE -YFIELD -USE_X -XFIELD -FORMEL -ITER -LAMDA"
      return
      ;;
    table_calculus_1)
      echo "-TABLE -FIELD -RESULT_TABLE -RESULT_SHAPES -NAME -FORMULA -SELECTION -USE_NODATA"
      return
      ;;
    table_calculus_5)
      echo "-INPUT -OUTPUT -FIELD -INDEX -MISSING -OFFSET -LENGTH -MEAN -FIELD_MEAN -MEDIAN -FIELD_MEDIAN -MIN -FIELD_MIN -MAX -FIELD_MAX -STDV -FIELD_STDV -STDV_LO -FIELD_STDV_LO -STDV_HI -FIELD_STDV_HI"
      return
      ;;
    table_calculus_7)
      echo "-TABLE -PCA -METHOD -NFIRST"
      return
      ;;
    table_calculus_8)
      echo "-TABLE -ORDER -NOGAPS -METHOD"
      return
      ;;
    table_calculus_9)
      echo "-TABLE -ORDER -FIELD -NOGAPS -METHOD"
      return
      ;;
    table_calculus_11)
      echo "-INPUT -FIELDS -EXTREME_ID -EXTREME_VALUE -OUTPUT -TYPE -IDENTIFY"
      return
      ;;
    table_calculus_15)
      echo "-TABLE -FIELDS -STATISTICS"
      return
      ;;
    table_calculus_16)
      echo "-TABLE -FIELDS -RESULT_TABLE -RESULT_SHAPES -MEAN -MIN -MAX -RANGE -SUM -NUM -VAR -STDDEV -PCTL -PCTL_VAL"
      return
      ;;
    table_calculus_18)
      echo "-TABLE -AGGREGATED -FIELDS -STATISTICS -STAT_SUM -STAT_AVG -STAT_MIN -STAT_MAX -STAT_RNG -STAT_DEV -STAT_VAR -STAT_LST -STAT_NUM -STAT_NAMING"
      return
      ;;
    table_calculus_19)
      echo "-TABLE -FIELD_1 -FIELD_2 -CONFUSION -CLASSES -SUMMARY -NODATA"
      return
      ;;
    table_calculus_20)
      echo "-INPUT -OUTPUT -FIELD -INDEX -IDENTIFIER -LENGTH -MEAN -MEDIAN -MIN -MAX -STDV -STDV_LO -STDV_HI"
      return
      ;;
    table_tools_0)
      echo "-TABLE -NAME -NFIELDS -FIELDS_NAME0 -FIELDS_TYPE0 -FIELDS_NAME1 -FIELDS_TYPE1"
      return
      ;;
    table_tools_1)
      echo "-INPUT -OUTPUT -TYPE"
      return
      ;;
    table_tools_2)
      echo "-INPUT -FIELD -ENUM -NAME -ORDER -RESULT_TABLE -RESULT_SHAPES"
      return
      ;;
    table_tools_3)
      echo "-TABLE_A -ID_A -TABLE_B -ID_B -FIELDS_ALL -FIELDS -KEEP_ALL -CMP_CASE -UNJOINED -RESULT_TABLE -RESULT_SHAPES"
      return
      ;;
    table_tools_5)
      echo "-TABLE -FIELD -OUTPUT -FMT_IN -SEP_IN -FMT_OUT -SEP_OUT"
      return
      ;;
    table_tools_6)
      echo "-TABLE -FIELD -OUTPUT -FMT_IN -FMT_OUT"
      return
      ;;
    table_tools_7)
      echo "-TABLE -FIELD -OUTPUT -TYPE"
      return
      ;;
    table_tools_8)
      echo "-INPUT -APPEND -OUTPUT"
      return
      ;;
    table_tools_9)
      echo "-TABLE -OUTPUT -OUTPUT_SHP -OUTPUT_PC -FIELD_RGB -FIELD_RED -FIELD_GREEN -FIELD_BLUE -MODE -ATTR_SUFFIX -COLOR_DEPTH -NORM -NORM_RANGE -NORM_STDDEV"
      return
      ;;
    table_tools_10)
      echo "-TABLE -FIELD -OUT_TABLE -OUT_SHAPES -REPLACE"
      return
      ;;
    table_tools_11)
      echo "-TABLE -FIELDS -OUT_TABLE -OUT_SHAPES"
      return
      ;;
    table_tools_15)
      echo "-TABLE -OUT_TABLE -OUT_SHAPES"
      return
      ;;
    table_tools_16)
      echo "-INPUT"
      return
      ;;
    table_tools_17)
      echo "-INPUT"
      return
      ;;
    table_tools_18)
      echo "-TABLE -FIELD -EXPRESSION -USE_NODATA -METHOD"
      return
      ;;
    table_tools_19)
      echo "-TABLE -FIELD -EXPRESSION -CASE -COMPARE -METHOD"
      return
      ;;
    table_tools_20)
      echo "-TABLE -FIELD -OUT_TABLE -OUT_SHAPES"
      return
      ;;
    table_tools_22)
      echo "-TABLE -COPY"
      return
      ;;
    table_tools_23)
      echo "-TABLE -FIELD -OUTPUT -NAME"
      return
      ;;
    table_tools_24)
      echo "-TABLE -FIELD -NAME -FORMAT -SELECTION -USE_NODATA -RESULT_TABLE -RESULT_SHAPES"
      return
      ;;
    table_tools_26)
      echo "-TABLE -FEATURES -NORMALISE -RESULT_TABLE -RESULT_SHAPES -TRAIN_WITH -TRAIN_FIELD -TRAIN_SAMPLES -FILE_LOAD -FILE_SAVE -METHOD -THRESHOLD_DIST -THRESHOLD_ANGLE -THRESHOLD_PROB -RELATIVE_PROB -WTA_0 -WTA_1 -WTA_2 -WTA_3 -WTA_4 -WTA_5"
      return
      ;;
    table_tools_28)
      echo "-INPUT -FIELDS -NORMALISE -CLUSTER -STATISTICS -METHOD -NCLUSTER -RESULT_TABLE -RESULT_SHAPES"
      return
      ;;
    ta_channels_0)
      echo "-ELEVATION -SINKROUTE -CHNLNTWRK -CHNLROUTE -SHAPES -INIT_GRID -INIT_METHOD -INIT_VALUE -DIV_GRID -DIV_CELLS -TRACE_WEIGHT -MINLEN"
      return
      ;;
    ta_channels_1)
      echo "-ELEVATION -CHANNELS -SINKROUTE -BASINS -MINSIZE"
      return
      ;;
    ta_channels_2)
      echo "-DEM -CHANNELS -BASINS -SUBBASINS -V_BASINS -V_SUBBASINS -HEADS -MOUTHS -DISTANCE"
      return
      ;;
    ta_channels_3)
      echo "-ELEVATION -CHANNELS -DISTANCE -BASELEVEL -THRESHOLD -MAXITER -NOUNDERGROUND"
      return
      ;;
    ta_channels_4)
      echo "-ELEVATION -CHANNELS -ROUTE -DISTANCE -DISTVERT -DISTHORZ -TIME -SDR -FIELDS -PASSES -METHOD -BOUNDARY -FLOW_B -FLOW_K -FLOW_K_DEFAULT -FLOW_R -FLOW_R_DEFAULT"
      return
      ;;
    ta_channels_5)
      echo "-DEM -DIRECTION -CONNECTION -ORDER -BASIN -SEGMENTS -BASINS -NODES -THRESHOLD -SUBBASINS"
      return
      ;;
    ta_channels_6)
      echo "-DEM -STRAHLER"
      return
      ;;
    ta_channels_7)
      echo "-ELEVATION -VALLEY_DEPTH -RIDGE_LEVEL -THRESHOLD -MAXITER -NOUNDERGROUND -ORDER"
      return
      ;;
    ta_cliffmetrics_0)
      echo "-DEM -SEDIMENT_TOP -RASTER_COAST -RASTER_NORMAL -COAST_INITIAL -CoastSeaHandiness -StartEdgeUserCoastLine -EndEdgeUserCoastLine -COAST -NORMALS -CLIFF_TOP -CLIFF_TOE -COAST_POINT -INVALID_NORMALS -COAST_CURVATURE -PROFILES -StillWaterLevel -CoastSmooth -CoastSmoothWindow -SavGolCoastPoly -ScaleRasterOutput -RandomCoastEdgeSearch -CoastNormalLength -EleTolerance -OutPath"
      return
      ;;
    ta_cliffmetrics_1)
      echo "-LINES_SeaSide -LINES_LandSide -LINES_Coast -CROSSINGS_SEASIDE -CROSSINGS_LANDSIDE -ATTRIBUTES -DISTANCES"
      return
      ;;
    ta_compound_0)
      echo "-ELEVATION -SHADE -SLOPE -ASPECT -HCURV -VCURV -CONVERGENCE -SINKS -FLOW -WETNESS -LSFACTOR -CHANNELS -BASINS -CHNL_BASE -CHNL_DIST -VALL_DEPTH -RSP -THRESHOLD"
      return
      ;;
    ta_hydrology_0)
      echo "-ELEVATION -SINKROUTE -WEIGHTS -FLOW -VAL_INPUT -VAL_MEAN -ACCU_MATERIAL -ACCU_TARGET -ACCU_TOTAL -ACCU_LEFT -ACCU_RIGHT -STEP -FLOW_UNIT -FLOW_LENGTH -LINEAR_VAL -LINEAR_DIR -WEIGHT_LOSS -METHOD -LINEAR_DO -LINEAR_MIN -CONVERGENCE -MFD_CONTOUR -NO_NEGATIVES"
      return
      ;;
    ta_hydrology_1)
      echo "-ELEVATION -SINKROUTE -WEIGHTS -FLOW -VAL_INPUT -VAL_MEAN -ACCU_MATERIAL -ACCU_TARGET -ACCU_TOTAL -ACCU_LEFT -ACCU_RIGHT -FLOW_UNIT -TARGETS -FLOW_LENGTH -WEIGHT_LOSS -METHOD -CONVERGENCE -MFD_CONTOUR -NO_NEGATIVES"
      return
      ;;
    ta_hydrology_2)
      echo "-ELEVATION -SINKROUTE -WEIGHTS -FLOW -VAL_INPUT -VAL_MEAN -ACCU_MATERIAL -ACCU_TARGET -ACCU_TOTAL -ACCU_LEFT -ACCU_RIGHT -STEP -FLOW_UNIT -METHOD -CORRECT -MINDQV"
      return
      ;;
    ta_hydrology_4)
      echo "-TARGET -TARGET_PT_X -TARGET_PT_Y -ELEVATION -SINKROUTE -AREA -METHOD -CONVERGE -MFD_CONTOUR"
      return
      ;;
    ta_hydrology_6)
      echo "-ELEVATION -SEED -LENGTH -SEEDS_ONLY -METHOD -CONVERGENCE"
      return
      ;;
    ta_hydrology_7)
      echo "-DEM -LENGTH"
      return
      ;;
    ta_hydrology_10)
      echo "-DEM -WEIGHTS -WEIGHTS_DEFAULT -BALANCE -METHOD"
      return
      ;;
    ta_hydrology_13)
      echo "-ELEVATION -CONTAMINATION -METHOD"
      return
      ;;
    ta_hydrology_15)
      echo "-DEM -WEIGHT -AREA -SLOPE -AREA_MOD -TWI -SUCTION -AREA_TYPE -SLOPE_TYPE -SLOPE_MIN -SLOPE_OFF -SLOPE_WEIGHT"
      return
      ;;
    ta_hydrology_18)
      echo "-DEM -AREA -METHOD -QUARTERS -QUARTERS_GRIDS -FLOW_LINES"
      return
      ;;
    ta_hydrology_19)
      echo "-DEM -WIDTH -TCA -SCA -COORD_UNIT -METHOD"
      return
      ;;
    ta_hydrology_20)
      echo "-SLOPE -AREA -TRANS -TWI -CONV -METHOD"
      return
      ;;
    ta_hydrology_21)
      echo "-SLOPE -AREA -SPI -CONV"
      return
      ;;
    ta_hydrology_22)
      echo "-SLOPE -AREA -LS -CONV -FEET -METHOD -EROSIVITY -STABILITY"
      return
      ;;
    ta_hydrology_23)
      echo "-DEM -AREA -ZMAX -MRN"
      return
      ;;
    ta_hydrology_24)
      echo "-DISTANCE -TWI -TCILOW"
      return
      ;;
    ta_hydrology_25)
      echo "-DEM -FIELDS -STATISTICS -UPSLOPE_AREA -UPSLOPE_LENGTH -UPSLOPE_SLOPE -LS_FACTOR -BALANCE -METHOD -METHOD_SLOPE -METHOD_AREA -FEET -STOP_AT_EDGE -EROSIVITY -STABILITY"
      return
      ;;
    ta_hydrology_26)
      echo "-DEM -WEIGHT -FLOW -SLOPE_MIN -SLOPE_MAX -B_FLOW -T_FLOW_MIN -T_FLOW_MAX"
      return
      ;;
    ta_hydrology_27)
      echo "-ELEVATION -WEIGHTS -DISTANCE -DIRECTION"
      return
      ;;
    ta_hydrology_28)
      echo "-ELEVATION -FIELDS -FLOW -UPAREA -STOP"
      return
      ;;
    ta_hydrology_29)
      echo "-DEM -FLOW -UPDATE -METHOD -CONVERGENCE"
      return
      ;;
    ta_hydrology_30)
      echo "-DEM -SLOPE -FLOWACC -CN -MANNING -TIME -SPEED -AVGMANNING -AVGCN -THRSMIXED -THRSCHANNEL -AVGRAINFALL -CHANSLOPE -MINSPEED -TARGET_PT_X -TARGET_PT_Y -TARGET_PT"
      return
      ;;
    ta_hydrology_31)
      echo "-SLOPE -AREA -CIT -CONV"
      return
      ;;
    ta_hydrology_32)
      echo "-DEM -SEEDS -WATER_LEVEL -WATER_LEVEL_DEFAULT -LEVEL_REFERENCE -CONSTANT_LEVEL -WATER_BODY -DEM_FLOODED"
      return
      ;;
    ta_hydrology_flow_accumulation)
      echo "-DEM -TCA -SCA -PREPROCESSING -FLOW_ROUTING"
      return
      ;;
    ta_hydrology_ls_factor)
      echo "-DEM -LS_FACTOR -FEET -LS_METHOD -PREPROCESSING -MINSLOPE"
      return
      ;;
    ta_hydrology_twi)
      echo "-DEM -TWI -FLOW_METHOD"
      return
      ;;
    ta_hydrology_upslope_height)
      echo "-DEM -HEIGHT -SLOPE -ASPECT -FLOW_METHOD"
      return
      ;;
    ta_lighting_0)
      echo "-ELEVATION -SHADE -METHOD -POSITION -AZIMUTH -DECLINATION -DATE -TIME -EXAGGERATION -UNIT -SHADOW -NDIRS -RADIUS"
      return
      ;;
    ta_lighting_2)
      echo "-GRD_DEM -GRD_SVF -GRD_VAPOUR -GRD_VAPOUR_DEFAULT -GRD_LINKE -GRD_LINKE_DEFAULT -GRD_DIRECT -GRD_DIFFUS -GRD_TOTAL -GRD_RATIO -GRD_FLAT -GRD_DURATION -GRD_SUNRISE -GRD_SUNSET -SOLARCONST -LOCALSVF -UNITS -SHADOW -LOCATION -LATITUDE -PERIOD -DAY -DAY_STOP -DAYS_STEP -MOMENT -HOUR_RANGE_MIN -HOUR_RANGE_MAX -HOUR_STEP -METHOD -ATMOSPHERE -PRESSURE -WATER -DUST -LUMPED"
      return
      ;;
    ta_lighting_3)
      echo "-DEM -VISIBLE -SVF -SIMPLE -TERRAIN -DISTANCE -RADIUS -NDIRS -METHOD -DLEVEL"
      return
      ;;
    ta_lighting_5)
      echo "-DEM -POS -NEG -RADIUS -DIRECTIONS -DIRECTION -NDIRS -METHOD -DLEVEL -UNIT -NADIR"
      return
      ;;
    ta_lighting_6)
      echo "-ELEVATION -VISIBILITY -METHOD -UNIT -CUMULATIVE -NODATA -POINTS -HEIGHT -HEIGHT_DEFAULT"
      return
      ;;
    ta_lighting_7)
      echo "-DEM -INSOLATION -STEPS -UNITS -HOUR_STEP -YEAR"
      return
      ;;
    ta_lighting_8)
      echo "-DEM -GEOMORPHONS -THRESHOLD -RADIUS -METHOD -DLEVEL"
      return
      ;;
    ta_morphometry_0)
      echo "-ELEVATION -SLOPE -ASPECT -C_GENE -C_PROF -C_PLAN -C_TANG -C_LONG -C_CROS -C_MINI -C_MAXI -C_TOTA -C_ROTO -METHOD -UNIT_SLOPE -UNIT_ASPECT"
      return
      ;;
    ta_morphometry_1)
      echo "-ELEVATION -RESULT -METHOD -NEIGHBOURS"
      return
      ;;
    ta_morphometry_2)
      echo "-ELEVATION -CONVERGENCE -SLOPE -DIFFERENCE -RADIUS -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    ta_morphometry_3)
      echo "-ELEVATION -RESULT -METHOD -THRESHOLD"
      return
      ;;
    ta_morphometry_4)
      echo "-DEM -CLASSES -STRAIGHT -VERTICAL -HORIZONTAL -SMOOTH"
      return
      ;;
    ta_morphometry_5)
      echo "-ELEVATION -TABLE -COUNT -SORTING -METHOD -BZRANGE -ZRANGE_MIN -ZRANGE_MAX"
      return
      ;;
    ta_morphometry_6)
      echo "-DEM -AREA"
      return
      ;;
    ta_morphometry_7)
      echo "-DEM -PROTECTION -RADIUS"
      return
      ;;
    ta_morphometry_8)
      echo "-DEM -MRVBF -MRRTF -T_SLOPE -T_PCTL_V -T_PCTL_R -P_SLOPE -P_PCTL -UPDATE -CLASSIFY -MAX_RES"
      return
      ;;
    ta_morphometry_9)
      echo "-DEM -GRADIENT -DIFFERENCE -DISTANCE -OUTPUT"
      return
      ;;
    ta_morphometry_10)
      echo "-DEM -HREL -MBI -TSLOPE -TCURVE -THREL"
      return
      ;;
    ta_morphometry_11)
      echo "-DEM -DIR -DIR_UNITS -LEN -LEN_SCALE -AFH -MAXDIST -DIR_CONST -OLDVER -ACCEL -PYRAMIDS -LEE -LUV"
      return
      ;;
    ta_morphometry_12)
      echo "-DEM -DAH -ALPHA_MAX"
      return
      ;;
    ta_morphometry_13)
      echo "-DEM -SWR -LAI -LAI_MAX -LST -Z_REFERENCE -T_REFERENCE -T_GRADIENT -C_FACTOR"
      return
      ;;
    ta_morphometry_14)
      echo "-DEM -HO -HU -NH -SH -MS -W -T -E"
      return
      ;;
    ta_morphometry_15)
      echo "-DEM -DIR -DIR_UNITS -LEN -LEN_SCALE -EFFECT -AFH -MAXDIST -DIR_CONST -OLDVER -ACCEL -PYRAMIDS"
      return
      ;;
    ta_morphometry_16)
      echo "-DEM -TRI -MODE -RADIUS -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    ta_morphometry_17)
      echo "-DEM -VRM -MODE -RADIUS -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    ta_morphometry_18)
      echo "-DEM -TPI -STANDARD -RADIUS_MIN -RADIUS_MAX -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    ta_morphometry_19)
      echo "-DEM -LANDFORMS -RADIUS_A_MIN -RADIUS_A_MAX -RADIUS_B_MIN -RADIUS_B_MAX -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    ta_morphometry_20)
      echo "-DEM -TEXTURE -EPSILON -SCALE -METHOD -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    ta_morphometry_21)
      echo "-DEM -CONVEXITY -KERNEL -TYPE -EPSILON -SCALE -METHOD -DW_WEIGHTING -DW_IDW_POWER -DW_BANDWIDTH"
      return
      ;;
    ta_morphometry_22)
      echo "-DEM -SLOPE -CONVEXITY -CONV_RECALC -TEXTURE -TEXT_RECALC -LANDFORMS -TYPE -CONV_SCALE -CONV_KERNEL -CONV_TYPE -CONV_EPSILON -TEXT_SCALE -TEXT_EPSILON"
      return
      ;;
    ta_morphometry_23)
      echo "-DEM -FEATURES -ELEVATION -SLOPE -ASPECT -PROFC -PLANC -LONGC -CROSC -MAXIC -MINIC -SIZE -TOL_SLOPE -TOL_CURVE -EXPONENT -ZSCALE -CONSTRAIN"
      return
      ;;
    ta_morphometry_24)
      echo "-DEM -VALLEY -HILL -VALLEY_IDX -HILL_IDX -SLOPE_IDX -RADIUS_VALLEY -RADIUS_HILL -THRESHOLD -METHOD"
      return
      ;;
    ta_morphometry_25)
      echo "-ELEVATION -SLOPE -MINCURV -MAXCURV -PCURV -TCURV -FORM -MEM -ENTROPY -CI -PLAIN -PIT -PEAK -RIDGE -CHANNEL -SADDLE -BSLOPE -FSLOPE -SSLOPE -HOLLOW -FHOLLOW -SHOLLOW -SPUR -FSPUR -SSPUR -INPUT -MEMBERSHIP -SLOPETODEG -T_SLOPE_MIN -T_SLOPE_MAX -T_CURVE_MIN -T_CURVE_MAX"
      return
      ;;
    ta_morphometry_26)
      echo "-DEM -C_LOCAL -C_UP -C_UP_LOCAL -C_DOWN -C_DOWN_LOCAL -WEIGHTING"
      return
      ;;
    ta_morphometry_27)
      echo "-DEM -EXPOSITION -MAXDIST -STEP -OLDVER -ACCEL -PYRAMIDS"
      return
      ;;
    ta_morphometry_28)
      echo "-DEM -TPI -SCALE_MIN -SCALE_MAX -SCALE_NUM"
      return
      ;;
    ta_morphometry_29)
      echo "-ELEVATION -SHELTER -UNIT -DIRECTION -TOLERANCE -DISTANCE -QUANTILE -NEGATIVES -METHOD"
      return
      ;;
    ta_morphometry_clustering)
      echo "-ELEVATION -CLUSTER -NCLUSTER -MAXITER"
      return
      ;;
    ta_morphometry_segmentation)
      echo "-ELEVATION -OBJECTS -TPI_RADIUS_MIN -TPI_RADIUS_MAX -BAND_WIDTH -NCLUSTER"
      return
      ;;
    ta_morphometry_summits)
      echo "-SURFACE -SUMMITS -METHOD -SCALE_FILTER -SCALE_TPI -THRESHOLD"
      return
      ;;
    ta_preprocessor_0)
      echo "-DEM -NOFLATS -FLATS -FLAT_OUTPUT -NEIGHBOURHOOD"
      return
      ;;
    ta_preprocessor_1)
      echo "-ELEVATION -SINKROUTE -THRESHOLD -THRSHEIGHT"
      return
      ;;
    ta_preprocessor_2)
      echo "-DEM -SINKROUTE -DEM_PREPROC -METHOD -THRESHOLD -THRSHEIGHT -EPSILON"
      return
      ;;
    ta_preprocessor_3)
      echo "-DEM -RESULT -MINSLOPE"
      return
      ;;
    ta_preprocessor_4)
      echo "-ELEV -FILLED -FDIR -WSHED -MINSLOPE"
      return
      ;;
    ta_preprocessor_5)
      echo "-ELEV -FILLED -MINSLOPE"
      return
      ;;
    ta_preprocessor_6)
      echo "-DEM -BURN -STREAM -FLOWDIR -METHOD -EPSILON"
      return
      ;;
    ta_preprocessor_7)
      echo "-DEM -NOSINKS -MAX_LENGTH -MAX_ZDEC -MIN_ZDROP"
      return
      ;;
    ta_preprocessor_8)
      echo "-DEM -RESULT"
      return
      ;;
    ta_profiles_3)
      echo "-DEM -LINES -PROFILES -DIST_LINE -DIST_PROFILE -NUM_PROFILE -INTERPOLATION -OUTPUT"
      return
      ;;
    ta_profiles_4)
      echo "-DEM -VALUES -LINES -NAME -PROFILE -PROFILES -SPLIT"
      return
      ;;
    ta_profiles_5)
      echo "-GRID -VALUES -TABLE -X -Y -RESULT"
      return
      ;;
    ta_slope_stability_0)
      echo "-A -Bmin -Bmax -Cmin -Cmax -Dmin -Dmax -Emin -Emax -Fmin -Fmax -fBmin -fBmax -fCmin -fCmax -fDmin -fDmax -fEmin -fEmax -fFmin -fFmax -fI -G -H"
      return
      ;;
    ta_slope_stability_1)
      echo "-A -B -C -D -fB -fC -E -F"
      return
      ;;
    ta_slope_stability_2)
      echo "-A -B -Cmin -Cmax -Dmin -Dmax -Emin -Emax -Fmin -Fmax -Jmin -Jmax -fCmin -fCmax -fDmin -fDmax -fEmin -fEmax -fFmin -fFmax -fJmin -fJmax -fK -G -H"
      return
      ;;
    ta_slope_stability_3)
      echo "-DEM -Cmin -Cmax -Dmin -Dmax -Emin -Emax -fCmin -fCmax -fDmin -fDmax -fEmin -fEmax -fH -F -G -METHOD -PREPROC"
      return
      ;;
    ta_slope_stability_4)
      echo "-DEM -C -D -Emin -Emax -fC -fD -fEmin -fEmax -ff -F -fI -METHOD"
      return
      ;;
    ta_slope_stability_5)
      echo "-DEM -C -D -fB -fC -E -F -G"
      return
      ;;
    tin_tools_0)
      echo "-GRID -VALUES -TIN"
      return
      ;;
    tin_tools_1)
      echo "-GRID -VALUES -TIN -METHOD -HIGH -FLOW_MIN -FLOW_MAX -PEUCKER"
      return
      ;;
    tin_tools_2)
      echo "-SHAPES -TIN"
      return
      ;;
    tin_tools_3)
      echo "-TIN -POINTS -CENTER -EDGES -TRIANGLES -POLYGONS"
      return
      ;;
    tin_tools_4)
      echo "-TIN -ZFIELD -GRADIENT -DEGREE"
      return
      ;;
    tin_tools_5)
      echo "-DEM -ZFIELD -FLOW"
      return
      ;;
    tin_tools_6)
      echo "-DEM -ZFIELD -FLOW -METHOD"
      return
      ;;
  esac
}

_get_idx_of_lib(){
  for ((i = 1; i < ${#words[@]} - 1; i++)); do
    if [[ "${tool_libs[*]}" = *"${words[i]}"* ]]; then
      echo "${i}"
      return
    fi
  done
  echo "0"
}

_is_lib(){
  for e in $tool_libs
  do
    if [ "$1" = "$e" ]; then
      echo 1
      return
    fi
  done
  echo "0"
}

_get_tool_list(){
  case $1 in 
    climate_tools)
      echo "0-Multi_Level_to_Surface_Interpolation 1-Multi_Level_to_Points_Interpolation 2-Earths_Orbital_Parameters 3-Annual_Course_of_Daily_Insolation 4-Daily_Insolation_over_Latitude 5-Monthly_Global_by_Latitude 6-Evapotranspiration_(Table) 7-Daily_to_Hourly_Evapotranspiration 8-Evapotranspiration_(Grid) 9-Sunrise_and_Sunset 10-Bioclimatic_Variables 11-Tree_Growth_Season 13-Wind_Effect_Correction 14-Frost_Change_Frequency 15-Thermic_Belt_Classification 17-Snow_Cover 18-Growing_Degree_Days 19-Climate_Classification 20-Soil_Water_Balance_(Annual) 21-PhenIps_(Table) 22-PhenIps_(Grids,_Annual) 23-PhenIps_(Grids,_Days) 24-Soil_Water_Balance_(Days) 25-Cloud_Overlap 26-Temperature_Lapse_Rates 27-Air_Pressure_Adjustment 28-Land_Surface_Temperature 29-Air_Humidity_Conversions 30-Lapse_Rate_Based_Temperature_Downscaling 31-Daily_Solar_Radiation 32-Lapse_Rate_Based_Temperature_Interpolation temperature_downscaling-Lapse_Rate_Based_Temperature_Downscaling_(Bulk_Processing)"
      return
      ;;
    contrib_perego)
      echo "0-Average_With_Thereshold_1 1-Average_With_Thereshold_2 2-Average_With_Thereshold_3 3-Average_With_Mask_1 4-Average_With_Mask_2 5-Destriping 6-Destriping_with_Mask 7-Directional_Average"
      return
      ;;
    db_odbc)
      echo "0-Connect_to_ODBC_Source 1-Disconnect_from_ODBC_Source 2-Commit/Rollback_Transaction 3-Execute_SQL 4-List_Table_Fields 5-Import_Table 6-Export_Table 7-Drop_Table 8-Import_Table_from_Query 9-List_Data_Sources 10-List_Tables 11-Disconnect_All"
      return
      ;;
    db_pgsql)
      echo "0-List_PostgreSQL_Connections 1-Connect_to_PostgreSQL 2-Disconnect_from_PostgreSQL 3-Disconnect_All 4-Begin_Transaction 5-Commit/Rollback_Transaction 6-Execute_SQL 10-List_Tables 11-List_Table_Fields 12-Import_Table 13-Export_Table 14-Drop_Table 15-Import_Table_from_Query 16-Import_Table_from_Query_(GUI) 20-Import_Shapes 21-Export_Shapes 22-Update_Shapes_SRID 23-Import_Shapes_with_Joined_Data_(GUI) 24-Import_Shapes_with_Joined_Data 30-Import_Raster 31-Export_Raster 32-Update_Raster_SRID 33-Import_Single_Raster_Band 34-Export_Grid_Collection 35-Create_Database 36-Drop_Database"
      return
      ;;
    docs_html)
      echo "1-SVG_Interactive_Map"
      return
      ;;
    docs_pdf)
      echo "0-Shapes_Report 1-Shapes_Summary_Report 2-Terrain_Path_Cross_Sections"
      return
      ;;
    garden_fractals)
      echo "0-Bifurcation 1-Pythagoras_Tree 3-Fractal_Dimension_of_Grid_Surface 5-Gaussian_Landscapes"
      return
      ;;
    garden_webservices)
      echo "0-Import_a_Map_via_Web_Map_Service_(WMS)"
      return
      ;;
    grid_analysis)
      echo "0-Accumulated_Cost 5-Least_Cost_Paths 6-Change_Vector_Analysis 7-Covered_Distance 8-Pattern_Analysis 9-Layer_of_extreme_value 10-Analytical_Hierarchy_Process 11-Ordered_Weighted_Averaging 12-Aggregation_Index 13-Cross-Classification_and_Tabulation 14-Soil_Texture_Classification 15-Fragmentation_(Standard) 16-Fragmentation_(Alternative) 17-Fragmentation_Classes_from_Density_and_Connectivity 18-Accumulation_Functions 19-IMCORR_-_Feature_Tracking 20-Soil_Texture_Classification_for_Tables 21-Diversity_of_Categories 22-Shannon_Index 23-Simpson_Index 24-Raos_Q_Diversity_Index_(Classic) 25-Raos_Q_Diversity_Index 26-Coverage_of_Categories 27-Soil_Water_Capacity 28-Soil_Water_Capacity_(Grid_Collections) 29-Iterative_Truncation 30-Object_Enumeration"
      return
      ;;
    grid_calculus)
      echo "0-Grid_Normalization 1-Grid_Calculator 2-Grid_Volume 3-Grid_Difference 4-Function_Plotter 5-Geometric_Figures 6-Random_Terrain 7-Random_Field 8-Grids_Sum 9-Grids_Product 10-Grid_Standardization 11-Fuzzify 12-Fuzzy_Intersection_(AND) 13-Fuzzy_Union_(OR) 14-Metric_Conversions 15-Gradient_Vector_from_Cartesian_to_Polar_Coordinates 16-Gradient_Vector_from_Polar_to_Cartesian_Coordinates 17-Fractal_Brownian_Noise 18-Grid_Division 19-Spherical_Harmonic_Synthesis 20-Grid_Collection_Calculator 21-Histogram_Matching 22-Grid_Addition 23-Grid_Multiplication"
      return
      ;;
    grid_calculus_bsl)
      echo "0-BSL 1-BSL_from_File"
      return
      ;;
    grid_filter)
      echo "0-Simple_Filter 1-Gaussian_Filter 2-Laplacian_Filter 3-Multi_Direction_Lee_Filter 4-User_Defined_Filter 5-Filter_Clumps 6-Majority/Minority_Filter 7-DTM_Filter_(slope-based) 8-Morphological_Filter 9-Rank_Filter 10-Mesh_Denoise 11-Resampling_Filter 12-Geodesic_Morphological_Reconstruction 13-Binary_Erosion-Reconstruction 14-Connectivity_Analysis 15-Sieve_Classes 16-Wombling_(Edge_Detection) 17-Wombling_for_Multiple_Features_(Edge_Detection) 18-Simple_Filter_(Restricted_to_Polygons) 19-Sharpening_Filter notch_filter-Notch_Filter_for_Grids sieve_and_clump-Sieve_and_Clump simple_filter_bulk-Simple_Filter_for_Multiple_Grids"
      return
      ;;
    grid_gridding)
      echo "0-Shapes_to_Grid 1-Inverse_Distance_Weighted 2-Nearest_Neighbour 3-Natural_Neighbour 4-Modifed_Quadratic_Shepard 5-Triangulation 6-Kernel_Density_Estimation 7-Angular_Distance_Weighted 8-Grid_Cell_Area_Covered_by_Polygons 9-Polygons_to_Grid 10-Polygon_Categories_to_Grid"
      return
      ;;
    grid_spline)
      echo "1-Thin_Plate_Spline 2-Thin_Plate_Spline_(TIN) 3-B-Spline_Approximation 4-Multilevel_B-Spline 5-Multilevel_B-Spline_from_Grid_Points 6-Cubic_Spline_Approximation 7-Multilevel_B-Spline_for_Categories 8-Multilevel_B-Spline_(3D)"
      return
      ;;
    grids_tools)
      echo "0-Create_a_Grid_Collection 1-Extract_Grids_from_a_Grid_Collection 2-Delete_Grids_from_a_Grid_Collection 3-Extract_a_Grid_from_a_Grid_Collection 4-Add_a_Grid_to_a_Grid_Collection 5-Nearest_Neighbour_(3D) 6-Inverse_Distance_Weighted_(3D) 7-Grid_Collection_Masking filter_gaussian-Gaussian_Filter filter_laplacian-Laplacian_Filter filter_rank-Rank_Filter filter_simple-Simple_Filter longitudinal_range-Change_Longitudinal_Range_for_a_Grid_Collection"
      return
      ;;
    grid_tools)
      echo "0-Resampling 1-Aggregate 3-Mosaicking 4-Constant_Grid 5-Patching 6-Close_One_Cell_Gaps 7-Close_Gaps 8-Grid_Buffer 9-Threshold_Buffer 10-Grid_Proximity_Buffer 11-Change_Data_Storage 12-Change_Grid_Values 15-Reclassify_Grid_Values 17-Crop_to_Data 18-Invert_Data/No-Data 20-Combine_Grids 21-Grid_Cell_Index 22-Grids_from_Classified_Grid_and_Table 23-Create_Grid_System 24-Grid_Masking 25-Close_Gaps_with_Spline 26-Proximity_Grid 27-Tiling 28-Shrink_and_Expand 29-Close_Gaps_with_Stepwise_Resampling 30-Transpose_Grids 31-Clip_Grids 32-Select_Grid_from_List 33-Copy_Grid 34-Invert_Grid 35-Mirror_Grid 36-Change_a_Grids_No-Data_Value 37-Combine_Classes 38-Mosaicking_(Grid_Collections) 39-Change_Grid_Values_-_Flood_Fill 41-Shrink_and_Expand_(Grid_Collection) 42-Change_Grid_System bulk_nodata_change-Change_a_Grids_No-Data_Value_Bulk_Processing grid_tools_bulk_weighted_mean-Two_Grids_Weighted_Mean_Bulk_Processing"
      return
      ;;
    grid_visualisation)
      echo "0-Color_Palette_Rotation 1-Grid_Animation 2-Fit_Color_Palette_to_Grid_Values 3-RGB_Composite 4-Create_3D_Image 5-Color_Triangle_Composite 6-Histogram_Surface 7-Aspect-Slope_Grid 8-Terrain_Map_View 9-Split_RGB_Composite 10-Select_Look-up_Table_for_Grid_Visualization 11-Create_a_Table_from_Look-up_Table"
      return
      ;;
    imagery_classification)
      echo "0-Supervised_Image_Classification 1-K-Means_Clustering_for_Grids 2-Confusion_Matrix_(Two_Grids) 3-Decision_Tree 6-Confusion_Matrix_(Polygons_/_Grid) lczc-Local_Climate_Zone_Classification classify_majority-Supervised_Majority_Choice_Image_Classification"
      return
      ;;
    imagery_isocluster)
      echo "0-ISODATA_Clustering_for_Grids"
      return
      ;;
    imagery_maxent)
      echo "0-Maximum_Entropy_Classification 1-Maximum_Entropy_Presence_Prediction"
      return
      ;;
    imagery_opencv)
      echo "0-Morphological_Filter_(OpenCV) 1-Fourier_Transformation 2-Single_Value_Decomposition_(OpenCV) 4-Stereo_Match_(OpenCV) 5-Normal_Bayes_Classification 6-K-Nearest_Neighbours_Classification 7-Support_Vector_Machine_Classification 8-Decision_Tree_Classification 9-Boosting_Classification 10-Random_Forest_Classification 11-Artificial_Neural_Network_Classification 12-Logistic_Regression_Classification 13-Inverse_Fourier_Transformation 14-Frequency_Domain_Filter 15-Canny_Edge_Detection 16-Hough_Circle_Transformation 17-Watershed_Image_Segmentation"
      return
      ;;
    imagery_photogrammetry)
      echo "0-Resection_(Terrestrial) 1-Colorisation_(PC)"
      return
      ;;
    imagery_segmentation)
      echo "0-Watershed_Segmentation 1-Grid_Skeletonization 2-Seed_Generation 3-Seeded_Region_Growing 4-Superpixel_Segmentation 5-Connected_Component_Labeling obia-Object_Based_Image_Segmentation"
      return
      ;;
    imagery_svm)
      echo "0-SVM_Classification"
      return
      ;;
    imagery_tools)
      echo "0-Vegetation_Index_(Distance_Based) 1-Vegetation_Index_(Slope_Based) 2-Enhanced_Vegetation_Index 3-Tasseled_Cap_Transformation 4-IHS_Sharpening 5-Colour_Normalized_Brovey_Sharpening 6-Colour_Normalized_Spectral_Sharpening 7-Principal_Component_Based_Image_Sharpening 8-Top_of_Atmosphere_Reflectance 9-Automated_Cloud_Cover_Assessment 10-Landsat_Import_with_Options 11-Textural_Features 12-Local_Statistical_Measures 13-Universal_Image_Quality_Index 14-Import_Landsat_Scene 15-Import_Sentinel-2_Scene 16-Import_Sentinel-3_OLCI_Scene 17-Spectral_Profile 19-Topographic_Correction 20-Cloud_Detection 21-Cloud_Shadow_Detection 22-Import_SPOT_Scene 23-Decode_Landsat_Quality_Assessment_Bands"
      return
      ;;
    imagery_vigra)
      echo "Library____:_ViGrA_deprecated 0-Smoothing_(ViGrA) 1-Edge_Detection_(ViGrA) 2-Morphological_Filter_(ViGrA) 3-Distance_(ViGrA) 4-Watershed_Segmentation_(ViGrA) 5-Fourier_Transform_(ViGrA) 6-Fourier_Transform_Inverse_(ViGrA) 8-Fourier_Filter_(ViGrA) 9-Random_Forest_Classification_(ViGrA) 10-Random_Forest_Presence_Prediction_(ViGrA) 11-Random_Forest_Table_Classification_(ViGrA)"
      return
      ;;
    io_esri_e00)
      echo "0-Import_ESRI_E00_File"
      return
      ;;
    io_gdal)
      echo "0-Import_Raster 1-Export_Raster 2-Export_GeoTIFF 3-Import_Shapes 4-Export_Shapes 5-Export_Shapes_to_KML 6-Import_NetCDF 7-Create_Raster_Catalogue_from_Files 8-Create_Raster_Catalogues_from_Directory 9-Import_TMS_Image 10-GDAL_Formats 11-Import_ASTER_Scene 12-Create_Virtual_Raster_(VRT) 13-Import_from_Virtual_Raster_(VRT) 14-Create_Raster_Catalogue_from_Virtual_Raster_(VRT)"
      return
      ;;
    io_gps)
      echo "0-GPX_to_shapefile 1-GPSBabel"
      return
      ;;
    io_grid)
      echo "0-Export_ESRI_Arc/Info_Grid 1-Import_ESRI_Arc/Info_Grid 2-Export_Surfer_Grid 3-Import_Surfer_Grid 4-Import_Binary_Raw_Data 5-Export_Grid_to_XYZ 6-Import_Grid_from_XYZ 7-Import_USGS_SRTM_Grid 8-Import_MOLA_Grid_(MEGDR) 9-Import_SRTM30_DEM 10-Export_True_Color_Bitmap 11-Import_Erdas_LAN/GIS 12-Import_Grid_from_Table 13-Import_WRF_Geogrid_Binary_Format 14-Export_WRF_Geogrid_Binary_Format 16-Import,_Clip_and_Resample_Grids 17-Import_CRU_Grids 18-Import_Regular_SubsurfaceViewer_Grid"
      return
      ;;
    io_grid_image)
      echo "0-Export_to_Image_File 1-Import_Image_File 2-Export_Grid_to_KML 3-Import_Grids_from_KML 4-Export_Animated_GIF_File"
      return
      ;;
    io_pdal)
      echo "0-Import_Point_Cloud 1-Export_LAS/LAZ_File"
      return
      ;;
    io_shapes)
      echo "0-Export_GStat_Shapes 1-Import_GStat_Shapes 2-Export_Shapes_to_XYZ 3-Import_Shapes_from_XYZ 4-Export_Shapes_to_Generate 5-Export_Surfer_Blanking_File 6-Import_Surfer_Blanking_Files 7-Export_Atlas_Boundary_File 8-Import_Atlas_Boundary_File 9-Export_WASP_terrain_map_file 10-Import_WASP_terrain_map_file 11-Import_Stereo_Lithography_File_(STL) 12-Export_TIN_to_Stereo_Lithography_File_(STL) 13-Import_GPX 14-Export_GPX 15-Import_Point_Cloud_from_Shape_File 16-Import_Point_Cloud_from_Text_File 17-Export_Scalable_Vector_Graphics_(SVG)_File 18-Export_Point_Cloud_to_Text_File 19-Import_Simple_Features_from_Well_Known_Text 20-Export_Simple_Features_to_Well_Known_Text 21-Import_Building_Sketches_from_CityGML 22-Export_Polygons_to_HTML_Image_Map 23-Import_Point_Cloud_from_PTS_File 24-Import_ASEG-GDF"
      return
      ;;
    io_table)
      echo "0-Export_Text_Table 1-Import_Text_Table 2-Import_Text_Table_with_Numbers_only 3-Import_Text_Table_(Fixed_Column_Sizes) import_text_tables-Import_Text_Tables"
      return
      ;;
    io_virtual)
      echo "0-Create_Virtual_Point_Cloud_Dataset 1-Get_Subset_from_Virtual_Point_Cloud 2-Create_Tileshape_from_Virtual_Point_Cloud 4-Get_Grid_from_Virtual_Point_Cloud 6-Remove_Overlap_from_Virtual_Point_Cloud_Tiles"
      return
      ;;
    io_webservices)
      echo "0-Geocoding"
      return
      ;;
    pj_georeference)
      echo "1-Rectify_Grid 2-Warping_Shapes 4-Direct_Georeferencing_of_Airborne_Photographs 5-Define_Georeference_for_Grids 6-World_File_from_Flight_and_Camera_Settings 7-Georeference_with_Coordinate_Grids 10-Rectify_Grid_List"
      return
      ;;
    pj_proj4)
      echo "0-Set_Coordinate_Reference_System 1-Coordinate_Transformation_(Shapes_List) 2-Coordinate_Transformation_(Shapes) 3-Coordinate_Transformation_(Grid_List) 4-Coordinate_Transformation_(Grid) 13-Change_Longitudinal_Range_for_Grids 14-Latitude/Longitude_Graticule 15-Coordinate_Reference_System_Picker 16-Tissots_Indicatrix 17-Geographic_Coordinate_Grids 18-Rotated_to_Regular_Grid 19-Coordinate_Reference_System_Format_Conversion 20-Geographic_Distances 21-Geographic_Distances_(Pair_of_Coordinates) 23-UTM_Projection_(Grid_List) 24-UTM_Projection_(Grid) 25-UTM_Projection_(Shapes_List) 26-UTM_Projection_(Shapes) 29-Single_Coordinate_Transformation 30-Coordinate_Conversion_(Grids) 31-Coordinate_Conversion_(Table) 32-Globe_Gores"
      return
      ;;
    pointcloud_tools)
      echo "0-Point_Cloud_Cutter 2-Point_Cloud_from_Grid_Points 3-Point_Cloud_from_Shapes 4-Point_Cloud_to_Grid 5-Point_Cloud_to_Shapes 6-Point_Cloud_Reclassifier_/_Subset_Extractor 7-Drop_Point_Cloud_Attributes 8-Transform_Point_Cloud 9-Point_Cloud_Thinning_(Simple) 10-Point_Cloud_Attribute_Calculator 11-Cluster_Analysis_for_Point_Clouds 12-Merge_Point_Clouds 13-Point_Cloud_from_Table 14-Select_Point_Cloud_from_List 15-Ground_Classification 16-Isolated_Points_Filter"
      return
      ;;
    shapes_grid)
      echo "0-Add_Grid_Values_to_Points 1-Add_Grid_Values_to_Shapes 2-Grid_Statistics_for_Polygons 3-Grid_Cells_to_Points/Polygons 4-Grid_Values_to_Points_(randomly) 5-Contour_Lines_from_Grid 6-Vectorizing_Grid_Classes 7-Clip_Grid_with_Polygon 8-Grid_Statistics_for_Points 9-Local_Minima_and_Maxima 10-Grid_System_Extent 11-Clip_Grid_with_Rectangle 15-Gradient_Vectors_from_Surface 16-Gradient_Vectors_from_Direction_and_Length 17-Gradient_Vectors_from_Directional_Components 18-Grid_Classes_Area_for_Polygons 19-Boundary_Cells_to_Polygons 20-Line_Direction grid_and_polygon_to_points-Grid_Values_and_Polygon_Attributes_to_Points"
      return
      ;;
    shapes_lines)
      echo "0-Convert_Polygons_to_Lines 1-Convert_Points_to_Line(s) 2-Line_Properties 3-Line-Polygon_Intersection 4-Line_Simplification 5-Line_Dissolve 6-Split_Lines_with_Lines 7-Line_Smoothing 8-Split_Lines_at_Points 9-Line_Crossings 10-Extract_Closed_Lines 11-Split_Lines 12-Line_Parts_to_Separate_Lines 13-Flip_Line_Direction 14-Merge_Line_Parts_to_Lines 15-Line_Density 16-Topologize_Polylines 17-Upstream_Edges"
      return
      ;;
    shapes_points)
      echo "0-Construct_Points_from_Table 1-Count_Points_in_Polygons 2-Create_Point_Grid 3-Point_to_Point_Distances 4-Populate_Polygons_with_Points 5-Convert_Line/Polygon_Vertices_to_Points 6-Add_Coordinates_to_Points 7-Remove_Duplicate_Points 8-Clip_Points_with_Polygons 9-Separate_points_by_direction 10-Add_Polygon_Attributes_to_Points 11-Points_Filter 12-Convex_Hull 14-Point_Thinning 15-Convert_Multipoints_to_Points 16-Thiessen_Polygons 17-Aggregate_Point_Observations 18-Snap_Points_to_Points 19-Snap_Points_to_Lines 20-Snap_Points_to_Grid 21-Create_Random_Points 22-Snap_Points_to_Polygons 23-3D_Points_Selection 24-Point_to_Line_Distances points_to_contour-Contour_Lines_from_Points"
      return
      ;;
    shapes_polygons)
      echo "1-Polygon_Centroids 2-Polygon_Properties 3-Convert_Lines_to_Polygons 4-Point_Statistics_for_Polygons 5-Polygon_Dissolve 6-Convert_Polygon/Line_Vertices_to_Points 7-Polygon_Shape_Indices 8-Polygon-Line_Intersection 9-Polygons_to_Edges_and_Nodes 10-Polygon_Parts_to_Separate_Polygons 11-Polygon_Clipping 12-Polygon_Self-Intersection 14-Intersect 15-Difference 16-Symmetrical_Difference 17-Union 18-Update 19-Identity 20-Add_Point_Attributes_to_Polygons 21-Flatten_Polygon_Layer 22-Shared_Polygon_Edges 23-Polygon_Generalization length_of_lines-Total_Length_of_Lines_per_Polygon max_interior_circles-Largest_Circles_in_Polygons remove_from_boundary-Remove_Boundary_Polygons"
      return
      ;;
    shapes_tools)
      echo "0-Create_New_Shapes_Layer 2-Merge_Layers 3-Select_by_Attributes..._(Numerical_Expression) 4-Select_by_Attributes..._(String_Expression) 5-Select_by_Location... 6-Copy_Selection_to_New_Shapes_Layer 7-Delete_Selection_from_Shapes_Layer 8-Invert_Selection_of_Shapes_Layer 9-Split_Shapes_Layer_Completely 10-Transform_Shapes 11-Create_Chart_Layer_(Bars/Sectors) 12-Create_Graticule 13-Copy_Shapes_from_Region 15-Split_Shapes_Layer 16-Split_Shapes_Layer_Randomly 17-Split_Table/Shapes_by_Attribute 18-Shapes_Buffer 19-Get_Shapes_Extents 20-QuadTree_Structure_to_Shapes 21-Polar_to_Cartesian_Coordinates 22-Generate_Shapes 23-Convert_Vertex_Type_(2D/3D) 24-Merge_Tables 25-Land_Use_Scenario_Generator 26-Select_Shapes_from_List 27-Remove_Invalid_Shapes 28-Copy_Shapes 29-Focal_Mechanism_(Beachball_Plots) 30-Gradient_Lines_from_Points select_and_delete-Select_and_Delete"
      return
      ;;
    shapes_transect)
      echo "0-Transect_through_polygon_shapefile"
      return
      ;;
    sim_air_flow)
      echo "0-Cold_Air_Flow"
      return
      ;;
    sim_cellular_automata)
      echo "0-Conways_Game_of_Life 1-Wa-Tor 2-Hodgepodge_Machine"
      return
      ;;
    sim_ecosystems_hugget)
      echo "0-A_Simple_Litter_System 1-Carbon_Cycle_Simulation_for_Terrestrial_Biomass 2-Spatially_Distributed_Simulation_of_Soil_Nitrogen_Dynamics"
      return
      ;;
    sim_erosion)
      echo "0-MMF-SAGA_Soil_Erosion_Model"
      return
      ;;
    sim_geomorphology)
      echo "0-Gravitational_Process_Path_Model"
      return
      ;;
    sim_hydrology)
      echo "0-Top_Soil_Water_Content 2-TOPMODEL 3-Water_Retention_Capacity 4-Diffuse_Pollution_Risk 5-Surface_and_Gradient 6-Concentration 7-Surface,_Gradient_and_Concentration 8-Quasi-Dynamic_Flow_Accumulation 9-Overland_Flow 10-Soil_Water_Simulation_after_Glugla_(Table) 11-Soil_Water_Simulation_after_Glugla_(Grid) 12-Glugla_Coefficient"
      return
      ;;
    sim_ihacres)
      echo "0-IHACRES_Calibration_(2) 1-IHACRES_Version_1.0 2-IHACRES_Basin 3-IHACRES_Elevation_Bands 4-IHACRES_Elevation_Bands_Calibration"
      return
      ;;
    sim_landscape_evolution)
      echo "0-SaLEM"
      return
      ;;
    sim_qm_of_esp)
      echo "0-Diffusive_Hillslope_Evolution_(FTCS) 1-Fill_Sinks_(QM_of_ESP) 2-Flow_Accumulation_(QM_of_ESP) 3-Successive_Flow_Routing 4-Diffusive_Hillslope_Evolution_(ADI)"
      return
      ;;
    sim_rivflow)
      echo "0-RiverBasin 1-LandFlow_Version_1.0_(build_3.5.1b) 3-RiverGridGeneration 4-GridCombination"
      return
      ;;
    statistics_grid)
      echo "0-Fast_Representativeness 1-Focal_Statistics 2-Representativeness_(Grid) 3-Radius_of_Variance_(Grid) 4-Statistics_for_Grids 5-Zonal_Grid_Statistics 6-Directional_Statistics_for_Single_Grid 7-Global_Morans_I_for_Grids 8-Principal_Component_Analysis 9-Multi-Band_Variation 10-Inverse_Principal_Components_Rotation 11-Longitudinal_Grid_Statistics 12-Meridional_Grid_Statistics 13-Save_Grid_Statistics_to_Table 14-Categorical_Coincidence 15-Focal_PCA_on_a_Grid 16-Statistics_for_Grids_from_Files 17-Build_Statistics_for_Grids 18-Evaluate_Statistics_for_Grids 19-Add_Statistics_for_Grids 20-Unique_Value_Statistics_for_Grids 21-Grid_Histogram directional_grid_statistics-Directional_Grid_Statistics"
      return
      ;;
    statistics_kriging)
      echo "0-Ordinary_Kriging 1-Simple_Kriging 2-Universal_Kriging 3-Regression_Kriging 4-Variogram_(Dialog) 5-Simple_Kriging_(3D) 6-Ordinary_Kriging_(3D)"
      return
      ;;
    statistics_points)
      echo "0-Variogram 1-Variogram_Cloud 2-Variogram_Surface 3-Minimum_Distance_Analysis 4-Spatial_Point_Pattern_Analysis"
      return
      ;;
    statistics_regression)
      echo "0-Regression_Analysis_(Points_and_Predictor_Grid) 1-Multiple_Regression_Analysis_(Points_and_Predictor_Grids) 2-Polynomial_Regression 3-GWR_for_Single_Predictor_(Gridded_Model_Output) 4-GWR_for_Single_Predictor_Grid 5-GWR_for_Multiple_Predictors_(Gridded_Model_Output) 6-GWR_for_Multiple_Predictor_Grids 7-GWR_for_Multiple_Predictors_(Shapes) 8-Multiple_Regression_Analysis_(Grid_and_Predictor_Grids) 9-Cellwise_Trend_for_Grids 10-Trend_Analysis 11-Trend_Analysis_(Shapes) 12-Multiple_Linear_Regression_Analysis_(Table) 13-Multiple_Linear_Regression_Analysis_(Shapes) 14-GWR_for_Grid_Downscaling 15-Zonal_Multiple_Regression_Analysis_(Points_and_Predictor_Grids) 16-Global_Spatial_Autocorrelation_for_Shapes"
      return
      ;;
    table_calculus)
      echo "0-Function_Fit 1-Field_Calculator 5-Moving_Statistics 7-Principal_Component_Analysis 8-Fill_Gaps_in_Ordered_Records 9-Fill_Gaps_in_Records 11-Find_Field_of_Extreme_Value 15-Field_Statistics 16-Record_Statistics 18-Aggregate_Values_by_Attributes 19-Confusion_Matrix_(Table_Fields) 20-Record_Aggregation"
      return
      ;;
    table_tools)
      echo "0-Create_New_Table 1-Transpose_Table 2-Field_Enumeration 3-Join_Attributes_from_a_Table 5-Change_Date_Format 6-Change_Time_Format 7-Change_Field_Type 8-Append_Fields_from_another_Table 9-Change_Color_Format 10-Replace_Text 11-Delete_Fields 15-Copy_Selection 16-Delete_Selection 17-Invert_Selection 18-Select_by_Numerical_Expression 19-Select_by_String_Expression 20-Add_Indicator_Fields_for_Categories 22-Copy_Table 23-Change_Field_Name 24-Formatted_Text 26-Supervised_Classification_(Table_Fields) 28-Cluster_Analysis_(Table_Fields)"
      return
      ;;
    ta_channels)
      echo "0-Channel_Network 1-Watershed_Basins 2-Watershed_Basins_(Extended) 3-Vertical_Distance_to_Channel_Network 4-Overland_Flow_Distance_to_Channel_Network 5-Channel_Network_and_Drainage_Basins 6-Strahler_Order 7-Valley_Depth"
      return
      ;;
    ta_cliffmetrics)
      echo "0-CliffMetrics 1-Coastal_Profile_Crossings"
      return
      ;;
    ta_compound)
      echo "0-Basic_Terrain_Analysis"
      return
      ;;
    ta_hydrology)
      echo "0-Flow_Accumulation_(Top-Down) 1-Flow_Accumulation_(Recursive) 2-Flow_Accumulation_(Flow_Tracing) 4-Upslope_Area 6-Flow_Path_Length 7-Slope_Length 10-Cell_Balance 13-Edge_Contamination 15-SAGA_Wetness_Index 18-Flow_Accumulation_(Mass-Flux_Method) 19-Flow_Width_and_Specific_Catchment_Area 20-Topographic_Wetness_Index 21-Stream_Power_Index 22-LS_Factor 23-Melton_Ruggedness_Number 24-TCI_Low 25-LS-Factor,_Field_Based 26-Slope_Limited_Flow_Accumulation 27-Maximum_Flow_Path_Length 28-Flow_between_fields 29-Flow_Accumulation_(Parallelizable) 30-Isochrones_Variable_Speed 31-CIT_Index 32-Terrain_Flooding flow_accumulation-Flow_Accumulation_(One_Step) ls_factor-LS_Factor_(One_Step) twi-Topographic_Wetness_Index_(One_Step) upslope_height-Upslope_Height,_Slope,_Aspect"
      return
      ;;
    ta_lighting)
      echo "0-Analytical_Hillshading 2-Potential_Incoming_Solar_Radiation 3-Sky_View_Factor 5-Topographic_Openness 6-Visibility_Analysis 7-Potential_Annual_Insolation 8-Geomorphons"
      return
      ;;
    ta_morphometry)
      echo "0-Slope,_Aspect,_Curvature 1-Convergence_Index 2-Convergence_Index_(Search_Radius) 3-Surface_Specific_Points 4-Curvature_Classification 5-Hypsometry 6-Real_Surface_Area 7-Morphometric_Protection_Index 8-Multiresolution_Index_of_Valley_Bottom_Flatness_(MRVBF) 9-Downslope_Distance_Gradient 10-Mass_Balance_Index 11-Effective_Air_Flow_Heights 12-Diurnal_Anisotropic_Heat 13-Land_Surface_Temperature_(Lapse_Rates) 14-Relative_Heights_and_Slope_Positions 15-Wind_Effect_(Windward_/_Leeward_Index) 16-Terrain_Ruggedness_Index_(TRI) 17-Vector_Ruggedness_Measure_(VRM) 18-Topographic_Position_Index_(TPI) 19-TPI_Based_Landform_Classification 20-Terrain_Surface_Texture 21-Terrain_Surface_Convexity 22-Terrain_Surface_Classification_(Iwahashi_and_Pike) 23-Morphometric_Features 24-Valley_and_Ridge_Detection_(Top_Hat_Approach) 25-Fuzzy_Landform_Element_Classification 26-Upslope_and_Downslope_Curvature 27-Wind_Exposition_Index 28-Multi-Scale_Topographic_Position_Index_(TPI) 29-Wind_Shelter_Index clustering-Terrain_Clustering segmentation-Terrain_Segmentation summits-Summit_Extraction"
      return
      ;;
    ta_preprocessor)
      echo "0-Flat_Detection 1-Sink_Drainage_Route_Detection 2-Sink_Removal 3-Fill_Sinks_(Planchon/Darboux,_2001) 4-Fill_Sinks_(Wang_&_Liu) 5-Fill_Sinks_XXL_(Wang_&_Liu) 6-Burn_Stream_Network_into_DEM 7-Breach_Depressions 8-Fill_Minima"
      return
      ;;
    ta_profiles)
      echo "3-Cross_Profiles 4-Profiles_from_Lines 5-Profile_from_Points"
      return
      ;;
    ta_slope_stability)
      echo "0-SAFETYFACTOR 1-TOBIA 2-SHALSTAB 3-WETNESS 4-WEDGEFAIL 5-ANGMAP"
      return
      ;;
    tin_tools)
      echo "0-Grid_to_TIN 1-Grid_to_TIN_(Surface_Specific_Points) 2-Shapes_to_TIN 3-TIN_to_Shapes 4-Gradient 5-Flow_Accumulation_(Trace) 6-Flow_Accumulation_(Parallel)"
      return
      ;;
    _tool_chains_uncategorized)
      echo ""
      return
      ;;
    tta_tools)
      echo ""
      return
      ;;
    vis_3d_viewer)
      echo ""
      return
      ;;
  esac
}

_get_tool_ids(){
  case $1 in 
    climate_tools)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 13 14 15 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 temperature_downscaling"
      return
      ;;
    contrib_perego)
      echo "0 1 2 3 4 5 6 7"
      return
      ;;
    db_odbc)
      echo "0 1 2 3 4 5 6 7 8 9 10 11"
      return
      ;;
    db_pgsql)
      echo "0 1 2 3 4 5 6 10 11 12 13 14 15 16 20 21 22 23 24 30 31 32 33 34 35 36"
      return
      ;;
    docs_html)
      echo "1"
      return
      ;;
    docs_pdf)
      echo "0 1 2"
      return
      ;;
    garden_fractals)
      echo "0 1 3 5"
      return
      ;;
    garden_webservices)
      echo "0"
      return
      ;;
    grid_analysis)
      echo "0 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30"
      return
      ;;
    grid_calculus)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23"
      return
      ;;
    grid_calculus_bsl)
      echo "0 1"
      return
      ;;
    grid_filter)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 notch_filter sieve_and_clump simple_filter_bulk"
      return
      ;;
    grid_gridding)
      echo "0 1 2 3 4 5 6 7 8 9 10"
      return
      ;;
    grid_spline)
      echo "1 2 3 4 5 6 7 8"
      return
      ;;
    grids_tools)
      echo "0 1 2 3 4 5 6 7 filter_gaussian filter_laplacian filter_rank filter_simple longitudinal_range"
      return
      ;;
    grid_tools)
      echo "0 1 3 4 5 6 7 8 9 10 11 12 15 17 18 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 41 42 bulk_nodata_change grid_tools_bulk_weighted_mean"
      return
      ;;
    grid_visualisation)
      echo "0 1 2 3 4 5 6 7 8 9 10 11"
      return
      ;;
    imagery_classification)
      echo "0 1 2 3 6 lczc classify_majority"
      return
      ;;
    imagery_isocluster)
      echo "0"
      return
      ;;
    imagery_maxent)
      echo "0 1"
      return
      ;;
    imagery_opencv)
      echo "0 1 2 4 5 6 7 8 9 10 11 12 13 14 15 16 17"
      return
      ;;
    imagery_photogrammetry)
      echo "0 1"
      return
      ;;
    imagery_segmentation)
      echo "0 1 2 3 4 5 obia"
      return
      ;;
    imagery_svm)
      echo "0"
      return
      ;;
    imagery_tools)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 19 20 21 22 23"
      return
      ;;
    imagery_vigra)
      echo "Library:ViGrAdeprecated 0 1 2 3 4 5 6 8 9 10 11"
      return
      ;;
    io_esri_e00)
      echo "0"
      return
      ;;
    io_gdal)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14"
      return
      ;;
    io_gps)
      echo "0 1"
      return
      ;;
    io_grid)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 16 17 18"
      return
      ;;
    io_grid_image)
      echo "0 1 2 3 4"
      return
      ;;
    io_pdal)
      echo "0 1"
      return
      ;;
    io_shapes)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24"
      return
      ;;
    io_table)
      echo "0 1 2 3 import_text_tables"
      return
      ;;
    io_virtual)
      echo "0 1 2 4 6"
      return
      ;;
    io_webservices)
      echo "0"
      return
      ;;
    pj_georeference)
      echo "1 2 4 5 6 7 10"
      return
      ;;
    pj_proj4)
      echo "0 1 2 3 4 13 14 15 16 17 18 19 20 21 23 24 25 26 29 30 31 32"
      return
      ;;
    pointcloud_tools)
      echo "0 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16"
      return
      ;;
    shapes_grid)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 15 16 17 18 19 20 grid_and_polygon_to_points"
      return
      ;;
    shapes_lines)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17"
      return
      ;;
    shapes_points)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 14 15 16 17 18 19 20 21 22 23 24 points_to_contour"
      return
      ;;
    shapes_polygons)
      echo "1 2 3 4 5 6 7 8 9 10 11 12 14 15 16 17 18 19 20 21 22 23 length_of_lines max_interior_circles remove_from_boundary"
      return
      ;;
    shapes_tools)
      echo "0 2 3 4 5 6 7 8 9 10 11 12 13 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 select_and_delete"
      return
      ;;
    shapes_transect)
      echo "0"
      return
      ;;
    sim_air_flow)
      echo "0"
      return
      ;;
    sim_cellular_automata)
      echo "0 1 2"
      return
      ;;
    sim_ecosystems_hugget)
      echo "0 1 2"
      return
      ;;
    sim_erosion)
      echo "0"
      return
      ;;
    sim_geomorphology)
      echo "0"
      return
      ;;
    sim_hydrology)
      echo "0 2 3 4 5 6 7 8 9 10 11 12"
      return
      ;;
    sim_ihacres)
      echo "0 1 2 3 4"
      return
      ;;
    sim_landscape_evolution)
      echo "0"
      return
      ;;
    sim_qm_of_esp)
      echo "0 1 2 3 4"
      return
      ;;
    sim_rivflow)
      echo "0 1 3 4"
      return
      ;;
    statistics_grid)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 directional_grid_statistics"
      return
      ;;
    statistics_kriging)
      echo "0 1 2 3 4 5 6"
      return
      ;;
    statistics_points)
      echo "0 1 2 3 4"
      return
      ;;
    statistics_regression)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16"
      return
      ;;
    table_calculus)
      echo "0 1 5 7 8 9 11 15 16 18 19 20"
      return
      ;;
    table_tools)
      echo "0 1 2 3 5 6 7 8 9 10 11 15 16 17 18 19 20 22 23 24 26 28"
      return
      ;;
    ta_channels)
      echo "0 1 2 3 4 5 6 7"
      return
      ;;
    ta_cliffmetrics)
      echo "0 1"
      return
      ;;
    ta_compound)
      echo "0"
      return
      ;;
    ta_hydrology)
      echo "0 1 2 4 6 7 10 13 15 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 flow_accumulation ls_factor twi upslope_height"
      return
      ;;
    ta_lighting)
      echo "0 2 3 5 6 7 8"
      return
      ;;
    ta_morphometry)
      echo "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 clustering segmentation summits"
      return
      ;;
    ta_preprocessor)
      echo "0 1 2 3 4 5 6 7 8"
      return
      ;;
    ta_profiles)
      echo "3 4 5"
      return
      ;;
    ta_slope_stability)
      echo "0 1 2 3 4 5"
      return
      ;;
    tin_tools)
      echo "0 1 2 3 4 5 6"
      return
      ;;
    _tool_chains_uncategorized)
      echo ""
      return
      ;;
    tta_tools)
      echo ""
      return
      ;;
    vis_3d_viewer)
      echo ""
      return
      ;;
  esac
  }

_saga_completions(){
  local cur prev words cword split
  _init_completion || return
  COMPREPLY=()

  local prev_is_lib=$(_is_lib $prev)
  local idx_of_lib=$(_get_idx_of_lib)
  local idx_of_tool=$(($idx_of_lib + 1))
  local lib=${words[$idx_of_lib]}
  local lib_tool_ids=$(_get_tool_ids $lib)
  local t_id=${words[$idx_of_tool]}
  local t_id_is_valid=$([[ "${lib_tool_ids}" = *"${t_id}"* ]] && echo 1 || echo 0)
  # case: only library name is given, completion for module nr, displays a combination of nr and name as choices list
  if [[ $idx_of_lib > 0 && $prev_is_lib -eq 1 ]]; then
    local tools=$(_get_tool_list $lib)
    local choices=($(compgen -W "$tools" -- "$cur"))
    if [ "${#choices[@]}" == "1" ]; then
      local number=$(echo ${choices[0]} | cut -f1 -d "-")
      COMPREPLY=("$number")
        return 0
    else
      COMPREPLY=("${choices[@]}")
      return 0
    fi

  # case: library name and tool number is given, completion for paramters or file if previous is a parameter
  elif [[ $idx_of_lib > 0 && $t_id_is_valid -eq 1 ]]; then
    if [[ ${prev} == -* ]] ; then
      COMPREPLY=($(compgen -f -- "$cur"))
    else
      local params=$(_get_tool_params $lib $t_id )
      COMPREPLY=($(compgen -W "$params" -- "$cur"))
    fi
      return 0
  # case: no library given, completion for flags when dash is detected
  elif [[ ${cur} == -* ]] ; then
    COMPREPLY=( $(compgen -W "${saga_opts} ${saga_opts_long}" -- ${cur}) )
    return 0
  # case: no library given, completion for libraries
  elif [[ ${cur} == * ]] ; then
    COMPREPLY=( $(compgen -W "${tool_libs}" -- ${cur}) )
    return 0
  fi
} &&
complete -F _saga_completions saga_cmd


