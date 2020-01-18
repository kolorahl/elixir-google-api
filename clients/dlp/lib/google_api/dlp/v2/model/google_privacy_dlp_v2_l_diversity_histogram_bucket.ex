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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityHistogramBucket do
  @moduledoc """
  Histogram of l-diversity equivalence class sensitive value frequencies.

  ## Attributes

  *   `bucketSize` (*type:* `String.t`, *default:* `nil`) - Total number of equivalence classes in this bucket.
  *   `bucketValueCount` (*type:* `String.t`, *default:* `nil`) - Total number of distinct equivalence classes in this bucket.
  *   `bucketValues` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityEquivalenceClass.t)`, *default:* `nil`) - Sample of equivalence classes in this bucket. The total number of
      classes returned per bucket is capped at 20.
  *   `sensitiveValueFrequencyLowerBound` (*type:* `String.t`, *default:* `nil`) - Lower bound on the sensitive value frequencies of the equivalence
      classes in this bucket.
  *   `sensitiveValueFrequencyUpperBound` (*type:* `String.t`, *default:* `nil`) - Upper bound on the sensitive value frequencies of the equivalence
      classes in this bucket.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketSize => String.t(),
          :bucketValueCount => String.t(),
          :bucketValues =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityEquivalenceClass.t()),
          :sensitiveValueFrequencyLowerBound => String.t(),
          :sensitiveValueFrequencyUpperBound => String.t()
        }

  field(:bucketSize)
  field(:bucketValueCount)

  field(:bucketValues,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityEquivalenceClass,
    type: :list
  )

  field(:sensitiveValueFrequencyLowerBound)
  field(:sensitiveValueFrequencyUpperBound)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityHistogramBucket do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityHistogramBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityHistogramBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
