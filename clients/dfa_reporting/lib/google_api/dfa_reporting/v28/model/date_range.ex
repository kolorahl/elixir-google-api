# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Model.DateRange do
  @moduledoc """
  Represents a date range.

  ## Attributes

  - endDate (Date.t): The end date of the date range, inclusive. A string of the format: \&quot;yyyy-MM-dd\&quot;. Defaults to: `null`.
  - kind (String.t): The kind of resource this is, in this case dfareporting#dateRange. Defaults to: `null`.
  - relativeDateRange (String.t): The date range relative to the date of when the report is run. Defaults to: `null`.
    - Enum - one of [LAST_14_DAYS, LAST_24_MONTHS, LAST_30_DAYS, LAST_365_DAYS, LAST_60_DAYS, LAST_7_DAYS, LAST_90_DAYS, MONTH_TO_DATE, PREVIOUS_MONTH, PREVIOUS_QUARTER, PREVIOUS_WEEK, PREVIOUS_YEAR, QUARTER_TO_DATE, TODAY, WEEK_TO_DATE, YEAR_TO_DATE, YESTERDAY]
  - startDate (Date.t): The start date of the date range, inclusive. A string of the format: \&quot;yyyy-MM-dd\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => Date.t(),
          :kind => any(),
          :relativeDateRange => any(),
          :startDate => Date.t()
        }

  field(:endDate, as: Date)
  field(:kind)
  field(:relativeDateRange)
  field(:startDate, as: Date)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.DateRange do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.DateRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.DateRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end