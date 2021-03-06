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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Point do
  @moduledoc """
  Point is a group of information collected by runtime plane at critical points
  of the message flow of the processed API request.
  This is a list of supported point IDs, categorized to three major buckets.
  For each category, debug points that we are currently supporting are listed
  below:
  - Flow status debug points:
      StateChange
      FlowInfo
      Condition
      Execution
      DebugMask
      Error
  - Flow control debug points:
      FlowCallout
      Paused
      Resumed
      FlowReturn
      BreakFlow
      Error
  - Runtime debug points:
      ScriptExecutor
      FlowCalloutStepDefinition
      CustomTarget
      StepDefinition
      Oauth2ServicePoint
      RaiseFault
      NodeJS

  The detail information of the given debug point is stored in a list of
  results.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Name of a step in the transaction.
  *   `results` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Result.t)`, *default:* `nil`) - List of results extracted from a given debug point.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :results => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Result.t())
        }

  field(:id)
  field(:results, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Result, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Point do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Point.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Point do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
