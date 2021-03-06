# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AdSenseHost.V41.Model.AdUnitMobileContentAdsSettings do
  @moduledoc """
  Settings specific to WAP mobile content ads (AFMC - deprecated).

  ## Attributes

  *   `markupLanguage` (*type:* `String.t`, *default:* `nil`) - The markup language to use for this ad unit.
  *   `scriptingLanguage` (*type:* `String.t`, *default:* `nil`) - The scripting language to use for this ad unit.
  *   `size` (*type:* `String.t`, *default:* `nil`) - Size of this ad unit.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of this ad unit.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :markupLanguage => String.t(),
          :scriptingLanguage => String.t(),
          :size => String.t(),
          :type => String.t()
        }

  field(:markupLanguage)
  field(:scriptingLanguage)
  field(:size)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.AdUnitMobileContentAdsSettings do
  def decode(value, options) do
    GoogleApi.AdSenseHost.V41.Model.AdUnitMobileContentAdsSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.AdUnitMobileContentAdsSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
