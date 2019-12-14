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

defmodule GoogleApi.Analytics.V3.Model.RemarketingAudience do
  @moduledoc """
  JSON template for an Analytics remarketing audience.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID to which this remarketing audience belongs.
  *   `audienceDefinition` (*type:* `GoogleApi.Analytics.V3.Model.RemarketingAudienceAudienceDefinition.t`, *default:* `nil`) - The simple audience definition that will cause a user to be added to an audience.
  *   `audienceType` (*type:* `String.t`, *default:* `nil`) - The type of audience, either SIMPLE or STATE_BASED.
  *   `created` (*type:* `DateTime.t`, *default:* `nil`) - Time this remarketing audience was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this remarketing audience.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Remarketing Audience ID.
  *   `internalWebPropertyId` (*type:* `String.t`, *default:* `nil`) - Internal ID for the web property to which this remarketing audience belongs.
  *   `kind` (*type:* `String.t`, *default:* `analytics#remarketingAudience`) - Collection type.
  *   `linkedAdAccounts` (*type:* `list(GoogleApi.Analytics.V3.Model.LinkedForeignAccount.t)`, *default:* `nil`) - The linked ad accounts associated with this remarketing audience. A remarketing audience can have only one linkedAdAccount currently.
  *   `linkedViews` (*type:* `list(String.t)`, *default:* `nil`) - The views (profiles) that this remarketing audience is linked to.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this remarketing audience.
  *   `stateBasedAudienceDefinition` (*type:* `GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinition.t`, *default:* `nil`) - A state based audience definition that will cause a user to be added or removed from an audience.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Time this remarketing audience was last modified.
  *   `webPropertyId` (*type:* `String.t`, *default:* `nil`) - Web property ID of the form UA-XXXXX-YY to which this remarketing audience belongs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :audienceDefinition =>
            GoogleApi.Analytics.V3.Model.RemarketingAudienceAudienceDefinition.t(),
          :audienceType => String.t(),
          :created => DateTime.t(),
          :description => String.t(),
          :id => String.t(),
          :internalWebPropertyId => String.t(),
          :kind => String.t(),
          :linkedAdAccounts => list(GoogleApi.Analytics.V3.Model.LinkedForeignAccount.t()),
          :linkedViews => list(String.t()),
          :name => String.t(),
          :stateBasedAudienceDefinition =>
            GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinition.t(),
          :updated => DateTime.t(),
          :webPropertyId => String.t()
        }

  field(:accountId)

  field(:audienceDefinition,
    as: GoogleApi.Analytics.V3.Model.RemarketingAudienceAudienceDefinition
  )

  field(:audienceType)
  field(:created, as: DateTime)
  field(:description)
  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:linkedAdAccounts, as: GoogleApi.Analytics.V3.Model.LinkedForeignAccount, type: :list)
  field(:linkedViews, type: :list)
  field(:name)

  field(:stateBasedAudienceDefinition,
    as: GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinition
  )

  field(:updated, as: DateTime)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudience do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.RemarketingAudience.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudience do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
