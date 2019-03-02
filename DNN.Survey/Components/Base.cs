﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DNN.Modules.Survey.Components
{
   public enum TrackingMethod
   {
      Cookie = 0,
      User = 1
   }

   public enum QuestionType
   {
      RadioButtons = 0,
      CheckBoxes = 1,
      Text = 2
   }

   public static class Base
   {
      public const string DEFAULT_SURVEY_RESULTS_TEMPLATE = "[SURVEY_OPTION_NAME]&nbsp;([SURVEY_OPTION_VOTES])&nbsp;<img src=\"[SURVEY_OPTION_IMAGEPATH]/red.gif\" width=\"[SURVEY_OPTION_GRAPH_WIDTH]\" border=\"0\" height=\"15\" alt=\"\" />&nbsp;[SURVEY_OPTION_PERCENTAGE]%<br />";

      private static string[] defaultSurveyChartColors
      {
         get
         {
            return new string[] { "68,114,196","237,125,49","165,165,165","255,192,0","91,155,213","112,173,71","38,68,120","158,72,14","99,99,99","153,115,0","37,94,145","67,104,43","105,142,208","241,151,90","183,183,183","255,205,51","124,175,221","140,193,104","51,90,161","210,96,18","132,132,132","204,154,0","50,125,194","90,138,57","143,170,220","244,177,131" };
         }
      }

      public static string GetColor(int index, bool isBackGround)
      {
         return string.Format("rgba({0},{1})", defaultSurveyChartColors[index % defaultSurveyChartColors.Length], (isBackGround ? 0.2 : 1));
      }
   }

   public class ModuleSecurity
   {
      public const string VIEW_RESULTS_PERMISSION = "VIEW_RESULTS_PERMISSION";
   }
}