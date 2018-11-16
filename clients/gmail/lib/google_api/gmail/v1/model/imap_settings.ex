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

defmodule GoogleApi.Gmail.V1.Model.ImapSettings do
  @moduledoc """
  IMAP settings for an account.

  ## Attributes

  - autoExpunge (boolean()): If this value is true, Gmail will immediately expunge a message when it is marked as deleted in IMAP. Otherwise, Gmail will wait for an update from the client before expunging messages marked as deleted. Defaults to: `null`.
  - enabled (boolean()): Whether IMAP is enabled for the account. Defaults to: `null`.
  - expungeBehavior (String.t): The action that will be executed on a message when it is marked as deleted and expunged from the last visible IMAP folder. Defaults to: `null`.
    - Enum - one of [archive, deleteForever, expungeBehaviorUnspecified, trash]
  - maxFolderSize (integer()): An optional limit on the number of messages that an IMAP folder may contain. Legal values are 0, 1000, 2000, 5000 or 10000. A value of zero is interpreted to mean that there is no limit. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoExpunge => any(),
          :enabled => any(),
          :expungeBehavior => any(),
          :maxFolderSize => any()
        }

  field(:autoExpunge)
  field(:enabled)
  field(:expungeBehavior)
  field(:maxFolderSize)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.ImapSettings do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.ImapSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.ImapSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end