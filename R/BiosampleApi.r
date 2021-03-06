# OmicIDX
#
#     The OmicIDX API documentation is available in three forms:  - [RapiDoc](/docs) - [OpenAPI/Swagger Interactive](/swaggerdoc) - [ReDoc (more readable in some ways)](/redoc)  
#
# OpenAPI spec version: 0.99.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#' @title Biosample operations
#' @description swagger.Biosample
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' biosample_by_accession_biosample_samples_accession_get Biosample By Accession
#'
#'
#' biosamples_biosample_samples_get Biosamples
#'
#'
#' mapping_biosample_fields_entity_get Mapping
#'
#' }
#'
#' @export
BiosampleApi <- R6::R6Class(
  'BiosampleApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    biosample_by_accession_biosample_samples_accession_get = function(accession, include_fields, exclude_fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`include_fields`)) {
        queryParams['include_fields'] <- include_fields
      }

      if (!missing(`exclude_fields`)) {
        queryParams['exclude_fields'] <- exclude_fields
      }

      urlPath <- "/biosample/samples/{accession}"
      if (!missing(`accession`)) {
        urlPath <- gsub(paste0("\\{", "accession", "\\}"), `accession`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Object$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
    },
    biosamples_biosample_samples_get = function(q, size, cursor, facet_size, include_fields, exclude_fields, facets, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`q`)) {
        queryParams['q'] <- q
      }

      if (!missing(`size`)) {
        queryParams['size'] <- size
      }

      if (!missing(`cursor`)) {
        queryParams['cursor'] <- cursor
      }

      if (!missing(`facet_size`)) {
        queryParams['facet_size'] <- facet_size
      }

      if (!missing(`include_fields`)) {
        queryParams['include_fields'] <- include_fields
      }

      if (!missing(`exclude_fields`)) {
        queryParams['exclude_fields'] <- exclude_fields
      }

      if (!missing(`facets`)) {
        queryParams['facets'] <- facets
      }

      urlPath <- "/biosample/samples"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ResponseModel$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    mapping_biosample_fields_entity_get = function(entity, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/biosample/fields/{entity}"
      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), `entity`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Object$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
