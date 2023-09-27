/* tslint:disable */
/* eslint-disable */
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


// May contain unused imports in some cases
// @ts-ignore
import { ErrorDetail } from './error-detail';

/**
 * 
 * @export
 * @interface UnprocessableEntityError
 */
export interface UnprocessableEntityError {
    /**
     * 
     * @type {string}
     * @memberof UnprocessableEntityError
     */
    'message': string;
    /**
     * 
     * @type {Array<ErrorDetail>}
     * @memberof UnprocessableEntityError
     */
    'errorDetails'?: Array<ErrorDetail>;
}

