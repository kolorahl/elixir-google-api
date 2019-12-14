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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Location do
  @moduledoc """
  An occurrence of a particular package installation found within a
  system's filesystem.
  e.g. glibc was found in /var/lib/dpkg/status

  ## Attributes

  *   `cpeUri` (*type:* `String.t`, *default:* `nil`) - The cpe_uri in [cpe format](https://cpe.mitre.org/specification/)
      denoting the package manager version distributing a package.
  *   `path` (*type:* `String.t`, *default:* `nil`) - The path from which we gathered that this package/version is installed.
  *   `version` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t`, *default:* `nil`) - The version installed at this location.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpeUri => String.t(),
          :path => String.t(),
          :version => GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t()
        }

  field(:cpeUri)
  field(:path)
  field(:version, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Version)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Location do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Location.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Location do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
