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

defmodule GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse do
  @moduledoc """
  Response for listing debuggees.

  ## Attributes

  *   `debuggees` (*type:* `list(GoogleApi.CloudDebugger.V2.Model.Debuggee.t)`, *default:* `nil`) - List of debuggees accessible to the calling user.
      The fields `debuggee.id` and `description` are guaranteed to be set.
      The `description` field is a human readable field provided by agents and
      can be displayed to users.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debuggees => list(GoogleApi.CloudDebugger.V2.Model.Debuggee.t())
        }

  field(:debuggees, as: GoogleApi.CloudDebugger.V2.Model.Debuggee, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
