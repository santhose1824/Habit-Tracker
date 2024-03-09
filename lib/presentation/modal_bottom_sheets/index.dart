library modal_bottom_sheets;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habitonic/config/constants/durations.dart';
import 'package:habitonic/config/constants/styles.dart';
import 'package:habitonic/data/models/view_model/language_view_model/language_view_model.dart';
import 'package:habitonic/presentation/widgets/index.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;
import 'package:sizer/sizer.dart';
import 'dart:math' as math;
import '../../config/constants/assets.dart';
import '../../config/constants/palette.dart';
import '../../core/helpers/modal_bottom_sheet_helper.dart';
import '../../core/services/router_service/index.dart';
import '../../data/models/view_model/recent_emojis/recent_emojis_view_model.dart';
import '../../injection_container.dart';
import '../cubit/emojis_modal_sheet_cubit/emojis_modal_sheet_cubit.dart';
import '../cubit/language_selection_cubit/language_selection_cubit.dart';
import '../cubit/new_habit_modal_sheet_cubit/new_habit_modal_sheet_cubit.dart';
import '../cubit/refresh_habits_data_modal_sheet_cubit/refresh_habits_data_modal_sheet_cubit.dart';
import 'widgets/complete_habits_success_modal_bottom_sheet/custom_painters/bubbles_painter.dart';
import 'widgets/complete_habits_success_modal_bottom_sheet/custom_painters/custom_done_animation_painter.dart';

part 'new_habit_modal_bottom_sheet.dart';
part 'emojis_selection_modal_bottom_sheet.dart';
part 'language_selection_modal_bottom_sheet.dart';
part 'refresh_habits_data_modal_bottom_sheet.dart';
part 'complete_habits_success_modal_bottom_sheet.dart';

part 'widgets/new_habit_modal_bottom_sheet/new_habit_modal_bottom_sheet_back_navigation_button.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/new_habit_modal_bottom_sheet_form.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/divider/new_habit_modal_bottom_sheet_divider.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/name_field/new_habit_modal_bottom_sheet_name_field.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/emoji_field/new_habit_modal_bottom_sheet_emoji_field.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/emoji_field/new_habit_modal_bottom_sheet_recent_emojis.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/emoji_field/new_habit_modal_bottom_sheet_select_emoji_button.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/emoji_field/recent_emojis_selection_indicator.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/repeat_field/new_habit_modal_bottom_sheet_repeat_field.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/repeat_field/new_habit_modal_bottom_sheet_repeat_numbers.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/fields/repeat_field/new_habit_modal_bottom_sheet_next_numbers_button.dart';
part 'widgets/new_habit_modal_bottom_sheet/form/new_habit_modal_bottom_sheet_create_habit_button.dart';
part 'widgets/emojis_selection_modal_bottom_sheet/loading_shimmer/emojis_loading_effect.dart';
part 'widgets/emojis_selection_modal_bottom_sheet/loading_shimmer/emojis_circle_skeleton.dart';
part 'widgets/emojis_selection_modal_bottom_sheet/items/emojis_selection_modal_bottom_sheet_item.dart';
part 'widgets/emojis_selection_modal_bottom_sheet/items/emojis_selection_indicator.dart';
part 'widgets/language_selection_modal_bottom_sheet/items/language_selection_modal_bottom_sheet_item.dart';
part 'widgets/language_selection_modal_bottom_sheet/items/language_selection_modal_bottom_sheet_item_image.dart';
part 'widgets/language_selection_modal_bottom_sheet/items/language_selection_modal_bottom_sheet_item_title.dart';
part 'widgets/language_selection_modal_bottom_sheet/items/language_selection_indicator.dart';
part 'widgets/language_selection_modal_bottom_sheet/language_selection_modal_bottom_sheet_overview.dart';
part 'widgets/refresh_habits_data_modal_bottom_sheet/refresh_habits_data_modal_bottom_sheet_overview.dart';
part 'widgets/refresh_habits_data_modal_bottom_sheet/refresh_habits_data_modal_bottom_sheet_image.dart';
part 'widgets/complete_habits_success_modal_bottom_sheet/complete_habits_success_modal_bottom_sheet_thumbnail.dart';
part 'widgets/complete_habits_success_modal_bottom_sheet/complete_habits_success_modal_bottom_sheet_overview.dart';
part 'widgets/complete_habits_success_modal_bottom_sheet/complete_habits_success_modal_bottom_sheet_done_animation.dart';
part 'widgets/complete_habits_success_modal_bottom_sheet/complete_habits_success_modal_bottom_sheet_bubble_animation.dart';