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

defmodule GoogleApi.Chat.V1.Model.Card do
  @moduledoc """
  A card is a UI element that can contain UI widgets such as texts, images.

  ## Attributes

  - cardActions ([CardAction]): The actions of this card. Defaults to: `null`.
  - header (CardHeader): The header of the card. A header usually contains a title and an image. Defaults to: `null`.
  - name (String.t): Name of the card. Defaults to: `null`.
  - sections ([Section]): Sections are separated by a line divider. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardActions => list(GoogleApi.Chat.V1.Model.CardAction.t()),
          :header => GoogleApi.Chat.V1.Model.CardHeader.t(),
          :name => any(),
          :sections => list(GoogleApi.Chat.V1.Model.Section.t())
        }

  field(:cardActions, as: GoogleApi.Chat.V1.Model.CardAction, type: :list)
  field(:header, as: GoogleApi.Chat.V1.Model.CardHeader)
  field(:name)
  field(:sections, as: GoogleApi.Chat.V1.Model.Section, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Card do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Card.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Card do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end