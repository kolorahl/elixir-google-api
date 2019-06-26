# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1InputConfig do
  @moduledoc """
  The desired input location and metadata.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - File content, represented as a stream of bytes.
      Note: As with all `bytes` fields, protobuffers use a pure binary
      representation, whereas JSON representations use base64.

      Currently, this field only works for BatchAnnotateFiles requests. It does
      not work for AsyncBatchAnnotateFiles requests.
  *   `gcsSource` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1GcsSource.t`, *default:* `nil`) - The Google Cloud Storage location to read the input from.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The type of the file. Currently only "application/pdf", "image/tiff" and
      "image/gif" are supported. Wildcards are not supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t(),
          :gcsSource => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1GcsSource.t(),
          :mimeType => String.t()
        }

  field(:content)
  field(:gcsSource, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1GcsSource)
  field(:mimeType)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1InputConfig do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1InputConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1InputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end