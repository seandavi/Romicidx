# OmicIDX
#
#     The OmicIDX API documentation is available in three forms:  - [RapiDoc](/docs) - [OpenAPI/Swagger Interactive](/swaggerdoc) - [ReDoc (more readable in some ways)](/redoc)  
#
# OpenAPI spec version: 0.99.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' ValidationError Class
#'
#' @field loc Location
#' @field msg Message
#' @field type Error Type
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ValidationError <- R6::R6Class(
  'ValidationError',
  public = list(
    `loc` = NULL,
    `msg` = NULL,
    `type` = NULL,
    initialize = function(`loc`, `msg`, `type`){
      if (!missing(`loc`)) {
        stopifnot(is.list(`loc`), length(`loc`) != 0)
        lapply(`loc`, function(x) stopifnot(is.character(x)))
        self$`loc` <- `loc`
      }
      if (!missing(`msg`)) {
        stopifnot(is.character(`msg`), length(`msg`) == 1)
        self$`msg` <- `msg`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
    },
    toJSON = function() {
      ValidationErrorObject <- list()
      if (!is.null(self$`loc`)) {
        ValidationErrorObject[['loc']] <- self$`loc`
      }
      if (!is.null(self$`msg`)) {
        ValidationErrorObject[['msg']] <- self$`msg`
      }
      if (!is.null(self$`type`)) {
        ValidationErrorObject[['type']] <- self$`type`
      }

      ValidationErrorObject
    },
    fromJSON = function(ValidationErrorJson) {
      ValidationErrorObject <- jsonlite::fromJSON(ValidationErrorJson)
      if (!is.null(ValidationErrorObject$`loc`)) {
        self$`loc` <- ValidationErrorObject$`loc`
      }
      if (!is.null(ValidationErrorObject$`msg`)) {
        self$`msg` <- ValidationErrorObject$`msg`
      }
      if (!is.null(ValidationErrorObject$`type`)) {
        self$`type` <- ValidationErrorObject$`type`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "loc": [%s],
           "msg": %s,
           "type": %s
        }',
        lapply(self$`loc`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`msg`,
        self$`type`
      )
    },
    fromJSONString = function(ValidationErrorJson) {
      ValidationErrorObject <- jsonlite::fromJSON(ValidationErrorJson)
      self$`loc` <- ValidationErrorObject$`loc`
      self$`msg` <- ValidationErrorObject$`msg`
      self$`type` <- ValidationErrorObject$`type`
    }
  )
)