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

defmodule GoogleApi.Firestore.V1.Model.WriteRequest do
  @moduledoc """
  The request for Firestore.Write.

  The first request creates a stream, or resumes an existing one from a token.

  When creating a new stream, the server replies with a response containing
  only an ID and a token, to use in the next request.

  When resuming a stream, the server first streams any responses later than the
  given token, then a response containing only an up-to-date token, to use in
  the next request.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels associated with this write request.
  *   `streamId` (*type:* `String.t`, *default:* `nil`) - The ID of the write stream to resume.
      This may only be set in the first message. When left empty, a new write
      stream will be created.
  *   `streamToken` (*type:* `String.t`, *default:* `nil`) - A stream token that was previously sent by the server.

      The client should set this field to the token from the most recent
      WriteResponse it has received. This acknowledges that the client has
      received responses up to this token. After sending this token, earlier
      tokens may not be used anymore.

      The server may close the stream if there are too many unacknowledged
      responses.

      Leave this field unset when creating a new stream. To resume a stream at
      a specific point, set this field and the `stream_id` field.

      Leave this field unset when creating a new stream.
  *   `writes` (*type:* `list(GoogleApi.Firestore.V1.Model.Write.t)`, *default:* `nil`) - The writes to apply.

      Always executed atomically and in order.
      This must be empty on the first request.
      This may be empty on the last request.
      This must not be empty on all other requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map(),
          :streamId => String.t(),
          :streamToken => String.t(),
          :writes => list(GoogleApi.Firestore.V1.Model.Write.t())
        }

  field(:labels, type: :map)
  field(:streamId)
  field(:streamToken)
  field(:writes, as: GoogleApi.Firestore.V1.Model.Write, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.WriteRequest do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.WriteRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.WriteRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
