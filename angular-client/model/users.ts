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
import { User } from './user';


export interface Users { 
    users: Array<User>;
    /**
     * リソースの合計数
     */
    totalCount: number;
}

