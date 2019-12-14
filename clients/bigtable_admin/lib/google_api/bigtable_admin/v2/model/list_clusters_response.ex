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

defmodule GoogleApi.BigtableAdmin.V2.Model.ListClustersResponse do
  @moduledoc """
  Response message for BigtableInstanceAdmin.ListClusters.

  ## Attributes

  *   `clusters` (*type:* `list(GoogleApi.BigtableAdmin.V2.Model.Cluster.t)`, *default:* `nil`) - The list of requested clusters.
  *   `failedLocations` (*type:* `list(String.t)`, *default:* `nil`) - Locations from which Cluster information could not be retrieved,
      due to an outage or some other transient condition.
      Clusters from these locations may be missing from `clusters`,
      or may only have partial information returned.
      Values are of the form `projects/<project>/locations/<zone_id>`
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - DEPRECATED: This field is unused and ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusters => list(GoogleApi.BigtableAdmin.V2.Model.Cluster.t()),
          :failedLocations => list(String.t()),
          :nextPageToken => String.t()
        }

  field(:clusters, as: GoogleApi.BigtableAdmin.V2.Model.Cluster, type: :list)
  field(:failedLocations, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.ListClustersResponse do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.ListClustersResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.ListClustersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
