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


import type { Configuration } from '../configuration';
import type { AxiosPromise, AxiosInstance, AxiosRequestConfig } from 'axios';
import globalAxios from 'axios';
// Some imports not used depending on template conditions
// @ts-ignore
import { DUMMY_BASE_URL, assertParamExists, setApiKeyToObject, setBasicAuthToObject, setBearerAuthToObject, setOAuthToObject, setSearchParams, serializeDataIfNeeded, toPathString, createRequestFunction } from '../common';
// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS, RequestArgs, BaseAPI, RequiredError } from '../base';
// @ts-ignore
import { Forbidden } from '../types';
// @ts-ignore
import { InternalServerError } from '../types';
// @ts-ignore
import { NotFound } from '../types';
// @ts-ignore
import { Ok } from '../types';
// @ts-ignore
import { Unauthorized } from '../types';
// @ts-ignore
import { UnprocessableEntityError } from '../types';
// @ts-ignore
import { User } from '../types';
// @ts-ignore
import { UserPatchParams } from '../types';
/**
 * UserApi - axios parameter creator
 * @export
 */
export const UserApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * 
         * @summary uidに紐づくユーザーを削除する
         * @param {string} uid 対象のユーザーのuid
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteUser: async (uid: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'uid' is not null or undefined
            assertParamExists('deleteUser', 'uid', uid)
            const localVarPath = `/users/{uid}`
                .replace(`{${"uid"}}`, encodeURIComponent(String(uid)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'DELETE', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * 
         * @summary uidに紐づくユーザーを取得
         * @param {string} uid 対象ユーザーのuid
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getUser: async (uid: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'uid' is not null or undefined
            assertParamExists('getUser', 'uid', uid)
            const localVarPath = `/users/{uid}`
                .replace(`{${"uid"}}`, encodeURIComponent(String(uid)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * 
         * @summary ユーザーの更新
         * @param {string} uid 対象のユーザーのuid
         * @param {UserPatchParams} userPatchParams ユーザー更新のためのパラメータ
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        patchUser: async (uid: string, userPatchParams: UserPatchParams, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'uid' is not null or undefined
            assertParamExists('patchUser', 'uid', uid)
            // verify required parameter 'userPatchParams' is not null or undefined
            assertParamExists('patchUser', 'userPatchParams', userPatchParams)
            const localVarPath = `/users/{uid}`
                .replace(`{${"uid"}}`, encodeURIComponent(String(uid)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'PATCH', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            localVarHeaderParameter['Content-Type'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(userPatchParams, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * UserApi - functional programming interface
 * @export
 */
export const UserApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = UserApiAxiosParamCreator(configuration)
    return {
        /**
         * 
         * @summary uidに紐づくユーザーを削除する
         * @param {string} uid 対象のユーザーのuid
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async deleteUser(uid: string, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Ok>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.deleteUser(uid, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * 
         * @summary uidに紐づくユーザーを取得
         * @param {string} uid 対象ユーザーのuid
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getUser(uid: string, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<User>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getUser(uid, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * 
         * @summary ユーザーの更新
         * @param {string} uid 対象のユーザーのuid
         * @param {UserPatchParams} userPatchParams ユーザー更新のためのパラメータ
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async patchUser(uid: string, userPatchParams: UserPatchParams, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Ok>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.patchUser(uid, userPatchParams, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * UserApi - factory interface
 * @export
 */
export const UserApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = UserApiFp(configuration)
    return {
        /**
         * 
         * @summary uidに紐づくユーザーを削除する
         * @param {string} uid 対象のユーザーのuid
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteUser(uid: string, options?: any): AxiosPromise<Ok> {
            return localVarFp.deleteUser(uid, options).then((request) => request(axios, basePath));
        },
        /**
         * 
         * @summary uidに紐づくユーザーを取得
         * @param {string} uid 対象ユーザーのuid
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getUser(uid: string, options?: any): AxiosPromise<User> {
            return localVarFp.getUser(uid, options).then((request) => request(axios, basePath));
        },
        /**
         * 
         * @summary ユーザーの更新
         * @param {string} uid 対象のユーザーのuid
         * @param {UserPatchParams} userPatchParams ユーザー更新のためのパラメータ
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        patchUser(uid: string, userPatchParams: UserPatchParams, options?: any): AxiosPromise<Ok> {
            return localVarFp.patchUser(uid, userPatchParams, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * UserApi - object-oriented interface
 * @export
 * @class UserApi
 * @extends {BaseAPI}
 */
export class UserApi extends BaseAPI {
    /**
     * 
     * @summary uidに紐づくユーザーを削除する
     * @param {string} uid 対象のユーザーのuid
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UserApi
     */
    public deleteUser(uid: string, options?: AxiosRequestConfig) {
        return UserApiFp(this.configuration).deleteUser(uid, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * 
     * @summary uidに紐づくユーザーを取得
     * @param {string} uid 対象ユーザーのuid
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UserApi
     */
    public getUser(uid: string, options?: AxiosRequestConfig) {
        return UserApiFp(this.configuration).getUser(uid, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * 
     * @summary ユーザーの更新
     * @param {string} uid 対象のユーザーのuid
     * @param {UserPatchParams} userPatchParams ユーザー更新のためのパラメータ
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UserApi
     */
    public patchUser(uid: string, userPatchParams: UserPatchParams, options?: AxiosRequestConfig) {
        return UserApiFp(this.configuration).patchUser(uid, userPatchParams, options).then((request) => request(this.axios, this.basePath));
    }
}

