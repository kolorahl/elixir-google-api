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

defmodule GoogleApi.Firestore.V1.Model.Precondition do
  @moduledoc """
  A precondition on a document, used for conditional operations.

  ## Attributes

  *   `exists` (*type:* `boolean()`, *default:* `nil`) - When set to `true`, the target document must exist.
      When set to `false`, the target document must not exist.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - When set, the target document must exist and have been last updated at
      that time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exists => boolean(),
          :updateTime => DateTime.t()
        }

  field(:exists)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.Precondition do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.Precondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.Precondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
