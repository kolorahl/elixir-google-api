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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Layer do
  @moduledoc """
  Layer holds metadata specific to a layer of a Docker image.

  ## Attributes

  *   `arguments` (*type:* `String.t`, *default:* `nil`) - The recovered arguments to the Dockerfile directive.
  *   `directive` (*type:* `String.t`, *default:* `nil`) - The recovered Dockerfile directive used to construct this layer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arguments => String.t(),
          :directive => String.t()
        }

  field(:arguments)
  field(:directive)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Layer do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Layer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Layer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
