# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters do
  @moduledoc """
  Represents the parameters of the conversational query.

  ## Attributes

  - contexts ([GoogleCloudDialogflowV2Context]): Optional. The collection of contexts to be activated before this query is executed. Defaults to: `null`.
  - geoLocation (GoogleTypeLatLng): Optional. The geo location of this conversational query. Defaults to: `null`.
  - payload (%{optional(String.t) &#x3D;&gt; String.t}): Optional. This field can be used to pass custom data into the webhook associated with the agent. Arbitrary JSON objects are supported. Defaults to: `null`.
  - resetContexts (boolean()): Optional. Specifies whether to delete all contexts in the current session before the new ones are activated. Defaults to: `null`.
  - sessionEntityTypes ([GoogleCloudDialogflowV2SessionEntityType]): Optional. Additional session entity types to replace or extend developer entity types with. The entity synonyms apply to all languages and persist for the session of this query. Defaults to: `null`.
  - timeZone (String.t): Optional. The time zone of this conversational query from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. If not provided, the time zone specified in agent settings is used. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contexts => list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.t()),
          :geoLocation => GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng.t(),
          :payload => map(),
          :resetContexts => any(),
          :sessionEntityTypes =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SessionEntityType.t()),
          :timeZone => any()
        }

  field(:contexts, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context, type: :list)
  field(:geoLocation, as: GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng)
  field(:payload, type: :map)
  field(:resetContexts)

  field(
    :sessionEntityTypes,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SessionEntityType,
    type: :list
  )

  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end