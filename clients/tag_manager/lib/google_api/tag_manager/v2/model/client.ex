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

defmodule GoogleApi.TagManager.V2.Model.Client do
  @moduledoc """


  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - GTM Account ID.
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The Client ID uniquely identifies the GTM client.
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - GTM Container ID.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the GTM Client as computed at storage time.
      This value is recomputed whenever the client is modified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Client display name.
      @mutable tagmanager.accounts.containers.workspaces.clients.create
      @mutable tagmanager.accounts.containers.workspaces.clients.update
  *   `parameter` (*type:* `list(GoogleApi.TagManager.V2.Model.Parameter.t)`, *default:* `nil`) - The client's parameters.
      @mutable tagmanager.accounts.containers.workspaces.clients.create
      @mutable tagmanager.accounts.containers.workspaces.clients.update
  *   `path` (*type:* `String.t`, *default:* `nil`) - GTM client's API relative path.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Priority determines relative firing order.
      @mutable tagmanager.accounts.containers.workspaces.clients.create
      @mutable tagmanager.accounts.containers.workspaces.clients.update
  *   `tagManagerUrl` (*type:* `String.t`, *default:* `nil`) - Auto generated link to the tag manager UI
  *   `type` (*type:* `String.t`, *default:* `nil`) - Client type.
      @mutable tagmanager.accounts.containers.workspaces.clients.create
      @mutable tagmanager.accounts.containers.workspaces.clients.update
  *   `workspaceId` (*type:* `String.t`, *default:* `nil`) - GTM Workspace ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :clientId => String.t(),
          :containerId => String.t(),
          :fingerprint => String.t(),
          :name => String.t(),
          :parameter => list(GoogleApi.TagManager.V2.Model.Parameter.t()),
          :path => String.t(),
          :priority => integer(),
          :tagManagerUrl => String.t(),
          :type => String.t(),
          :workspaceId => String.t()
        }

  field(:accountId)
  field(:clientId)
  field(:containerId)
  field(:fingerprint)
  field(:name)
  field(:parameter, as: GoogleApi.TagManager.V2.Model.Parameter, type: :list)
  field(:path)
  field(:priority)
  field(:tagManagerUrl)
  field(:type)
  field(:workspaceId)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Client do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.Client.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.Client do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
