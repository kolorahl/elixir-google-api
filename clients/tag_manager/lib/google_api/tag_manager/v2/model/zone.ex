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

defmodule GoogleApi.TagManager.V2.Model.Zone do
  @moduledoc """
  Represents a Google Tag Manager Zone's contents.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - GTM Account ID.
  *   `boundary` (*type:* `GoogleApi.TagManager.V2.Model.ZoneBoundary.t`, *default:* `nil`) - This Zone's boundary.
  *   `childContainer` (*type:* `list(GoogleApi.TagManager.V2.Model.ZoneChildContainer.t)`, *default:* `nil`) - Containers that are children of this Zone.
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - GTM Container ID.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the GTM Zone as computed at storage time.
      This value is recomputed whenever the zone is modified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Zone display name.
  *   `notes` (*type:* `String.t`, *default:* `nil`) - User notes on how to apply this zone in the container.
  *   `path` (*type:* `String.t`, *default:* `nil`) - GTM Zone's API relative path.
  *   `tagManagerUrl` (*type:* `String.t`, *default:* `nil`) - Auto generated link to the tag manager UI
  *   `typeRestriction` (*type:* `GoogleApi.TagManager.V2.Model.ZoneTypeRestriction.t`, *default:* `nil`) - This Zone's type restrictions.
  *   `workspaceId` (*type:* `String.t`, *default:* `nil`) - GTM Workspace ID.
  *   `zoneId` (*type:* `String.t`, *default:* `nil`) - The Zone ID uniquely identifies the GTM Zone.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :boundary => GoogleApi.TagManager.V2.Model.ZoneBoundary.t(),
          :childContainer => list(GoogleApi.TagManager.V2.Model.ZoneChildContainer.t()),
          :containerId => String.t(),
          :fingerprint => String.t(),
          :name => String.t(),
          :notes => String.t(),
          :path => String.t(),
          :tagManagerUrl => String.t(),
          :typeRestriction => GoogleApi.TagManager.V2.Model.ZoneTypeRestriction.t(),
          :workspaceId => String.t(),
          :zoneId => String.t()
        }

  field(:accountId)
  field(:boundary, as: GoogleApi.TagManager.V2.Model.ZoneBoundary)
  field(:childContainer, as: GoogleApi.TagManager.V2.Model.ZoneChildContainer, type: :list)
  field(:containerId)
  field(:fingerprint)
  field(:name)
  field(:notes)
  field(:path)
  field(:tagManagerUrl)
  field(:typeRestriction, as: GoogleApi.TagManager.V2.Model.ZoneTypeRestriction)
  field(:workspaceId)
  field(:zoneId)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Zone do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.Zone.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.Zone do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
