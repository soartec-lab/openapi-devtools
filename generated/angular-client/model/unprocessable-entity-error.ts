/**
 * API
 * internal_api
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { ErrorDetail } from './error-detail';


export interface UnprocessableEntityError { 
    message: string;
    errorDetails?: Array<ErrorDetail>;
}

