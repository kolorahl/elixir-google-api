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

defmodule GoogleApi.DNS.V1.Api.DnsKeys do
  @moduledoc """
  API calls for all endpoints tagged `DnsKeys`.
  """

  alias GoogleApi.DNS.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Fetch the representation of an existing DnsKey.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - managed_zone (String.t): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - dns_key_id (String.t): The identifier of the requested DnsKey.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :clientOperationId (String.t): For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    - :digestType (String.t): An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recommended digest type will be computed and displayed.

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.DnsKey{}} on success
  {:error, info} on failure
  """
  @spec dns_dns_keys_get(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.DnsKey.t()} | {:error, Tesla.Env.t()}
  def dns_dns_keys_get(
        connection,
        project,
        managed_zone,
        dns_key_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :clientOperationId => :query,
      :digestType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &URI.char_unreserved?/1),
        "dnsKeyId" => URI.encode(dns_key_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.DnsKey{}])
  end

  @doc """
  Enumerate DnsKeys to a ResourceRecordSet collection.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - managed_zone (String.t): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :digestType (String.t): An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recommended digest type will be computed and displayed.
    - :maxResults (integer()): Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
    - :pageToken (String.t): Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.DnsKeysListResponse{}} on success
  {:error, info} on failure
  """
  @spec dns_dns_keys_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.DnsKeysListResponse.t()} | {:error, Tesla.Env.t()}
  def dns_dns_keys_list(connection, project, managed_zone, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :digestType => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/managedZones/{managedZone}/dnsKeys", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.DnsKeysListResponse{}])
  end
end
