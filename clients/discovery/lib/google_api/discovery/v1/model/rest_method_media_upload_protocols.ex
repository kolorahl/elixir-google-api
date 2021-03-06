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

defmodule GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocols do
  @moduledoc """
  Supported upload protocols.

  ## Attributes

  *   `resumable` (*type:* `GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsResumable.t`, *default:* `nil`) - Supports the Resumable Media Upload protocol.
  *   `simple` (*type:* `GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsSimple.t`, *default:* `nil`) - Supports uploading as a single HTTP request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resumable => GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsResumable.t(),
          :simple => GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsSimple.t()
        }

  field(:resumable, as: GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsResumable)
  field(:simple, as: GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsSimple)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocols do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocols.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocols do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
