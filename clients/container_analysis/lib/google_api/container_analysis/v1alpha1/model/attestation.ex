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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Attestation do
  @moduledoc """
  Occurrence that represents a single "attestation".  The authenticity of an
  Attestation can be verified using the attached signature. If the verifier
  trusts the public key of the signer, then verifying the signature is
  sufficient to establish trust.  In this circumstance, the
  AttestationAuthority to which this Attestation is attached is primarily
  useful for look-up (how to find this Attestation if you already know the
  Authority and artifact to be verified) and intent (which authority was this
  attestation intended to sign for).

  ## Attributes

  *   `pgpSignedAttestation` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.PgpSignedAttestation.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pgpSignedAttestation =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.PgpSignedAttestation.t()
        }

  field(:pgpSignedAttestation, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.PgpSignedAttestation)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Attestation do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Attestation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Attestation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end