using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lights.Core.Utils
{
    public enum ErrorCodeEnum
    {
        /// <summary>
        /// 请求(或处理)成功
        /// </summary>
        [Text("请求(或处理)成功")]
        Success = 200,

        /// <summary>
        /// 内部请求出错
        /// </summary>
        [Text("内部请求出错")]
        Error = 500,

        /// <summary>
        /// 内部请求出错
        /// </summary>
        [Text("内部请求出错")]
        Unauthorized = 401,

        /// <summary>
        /// 请求参数不完整或不正确
        /// </summary>
        [Text("请求参数不完整或不正确")]
        ParameterError = 400,//HTTP请求不合法

        /// <summary>
        /// 请求TOKEN失效
        /// </summary>
        [Text("请求TOKEN失效")]
        TokenInvalid = 403,

        /// <summary>
        /// HTTP请求类型不合法
        /// </summary>
        [Text("HTTP请求类型不合法")]
        HttpMehtodError = 405,

        /// <summary>
        /// 校验参数缺失
        /// </summary>
        [Text("校验参数缺失")]
        HttpParamLess = 450,

        /// <summary>
        /// 请求已过期
        /// </summary>
        [Text("请求已过期")]
        HttpTimeOver = 451,

        /// <summary>
        /// HTTP签名错误，不合法,请求参数可能被篡改
        /// </summary>
        [Text("HTTP签名错误，不合法,请求参数可能被篡改")]
        HttpSignError = 453,

        /// <summary>
        /// 校验参数错误
        /// </summary>
        [Text("校验参数错误")]
        HttpParamError = 452,

        /// <summary>
        /// AppID错误
        /// </summary>
        [Text("AppID错误")]
        HttpErrorAppID = 455,

        /// <summary>
        /// 用户被下线
        /// </summary>
        [Text("用户被下线")]
        HttpUserOut = 456,

        /// <summary>
        /// Token无效
        /// </summary>
        [Text("Token无效")]
        HttpTokenMiss = 454,

        /// <summary>
        /// HTTP请求不合法,请求参数可能被篡改
        /// </summary>
        [Text("HTTP请求不合法,请求参数可能被篡改")]
        HttpRequestError = 406,

        /// <summary>
        /// 该URL已经失效
        /// </summary>
        [Text("该URL已经失效")]
        URLExpireError = 407,

    }
}