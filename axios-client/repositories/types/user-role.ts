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



/**
 * ユーザーのロール種別
 * @export
 * @enum {string}
 */

export const UserRole = {
    general: 'general',
    admin: 'admin'
} as const;

export type UserRole = typeof UserRole[keyof typeof UserRole];


