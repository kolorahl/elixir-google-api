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

defmodule GoogleApi.Admin.Datatransfer_v1.Api.Applications do
  @moduledoc """
  API calls for all endpoints tagged `Applications`.
  """

  alias GoogleApi.Admin.Datatransfer_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves information about an application for the given application ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Datatransfer_v1.Connection.t`) - Connection to server
  *   `application_id` (*type:* `String.t`) - ID of the application resource to be retrieved.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Datatransfer_v1.Model.Application{}}` on success
  *   `{:error, info}` on failure
  """
  @spec datatransfer_applications_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Datatransfer_v1.Model.Application.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def datatransfer_applications_get(connection, application_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/applications/{applicationId}", %{
        "applicationId" => URI.encode(application_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Datatransfer_v1.Model.Application{}])
  end

  @doc """
  Lists the applications available for data transfer for a customer.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Datatransfer_v1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:customerId` (*type:* `String.t`) - Immutable ID of the G Suite account.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return. Default is 100.
      *   `:pageToken` (*type:* `String.t`) - Token to specify next page in the list.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Datatransfer_v1.Model.ApplicationsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec datatransfer_applications_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Datatransfer_v1.Model.ApplicationsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def datatransfer_applications_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :customerId => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/applications", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Admin.Datatransfer_v1.Model.ApplicationsListResponse{}]
    )
  end
end