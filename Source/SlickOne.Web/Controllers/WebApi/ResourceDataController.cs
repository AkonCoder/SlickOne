﻿using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.SignalR;
using SlickOne.WebUtility;
using SlickOne.Module.AuthImpl.Entity;
using SlickOne.Module.AuthImpl.Service;

namespace SlickOne.Web.Controllers.WebApi
{
    /// <summary>
    /// 资源权限数据服务类
    /// </summary>
    public class ResourceDataController : Controller
    {
        /// <summary>
        /// 获取所有资源数据集
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ResponseResult<List<ResourceEntity>> GetResourceAll()
        {
            var result = ResponseResult<List<ResourceEntity>>.Default();
            try
            {
                var resourceService = new ResourceService();
                var resourceList = resourceService.GetResourceAll();

                result = ResponseResult<List<ResourceEntity>>.Success(resourceList);
            }
            catch (System.Exception ex)
            {
                result = ResponseResult<List<ResourceEntity>>.Error(
                    string.Format("获取资源数据失败！{0}", ex.Message)
                );
            }
            return result;
        }

         /// <summary>
        /// 获取所有资源数据集
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ResponseResult<List<RoleResourcePermissionView>> GetRoleResourceList(ResourceQuery query)
        {
            var result = ResponseResult<List<RoleResourcePermissionView>>.Default();
            try
            {
                var resourceService = new ResourceService();
                var permissionList = resourceService.GetResourceByRoleID(query.RoleID);

                result = ResponseResult<List<RoleResourcePermissionView>>.Success(permissionList);
            }
            catch (System.Exception ex)
            {
                result = ResponseResult<List<RoleResourcePermissionView>>.Error(
                    string.Format("获取角色资源权限数据失败！{0}", ex.Message)
                );
            }
            return result;
        }

        /// <summary>
        /// 获取所有资源数据集
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ResponseResult<ResourceNode> GetResourceNodeAll()
        {
            var result = ResponseResult<ResourceNode>.Default();
            try
            {
                var resourceService = new ResourceService();
                var resourceList = resourceService.GetResourceNodeAll();

                result = ResponseResult<ResourceNode>.Success(resourceList);
            }
            catch (System.Exception ex)
            {
                result = ResponseResult<ResourceNode>.Error(
                    string.Format("获取资源节点数据失败！{0}", ex.Message)
                );
            }
            return result;
        }

        /// <summary>
        /// 保存资源数据
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        [HttpPost]
        public ResponseResult SaveResource(ResourceEntity entity)
        {
            var result = ResponseResult.Default();
            try
            {
                var resourceService = new ResourceService();
                resourceService.SaveResource(entity);

                result = ResponseResult.Success();
            }
            catch (System.Exception ex)
            {
                result = ResponseResult.Error(string.Format("保存资源数据失败!{0}", ex.Message));
            }
            return result;
        }

        /// <summary>
        /// 保存资源数据
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        [HttpPost]
        public ResponseResult SaveRoleResource(RoleResourcePermissionEntity entity)
        {
            var result = ResponseResult.Default();
            try
            {
                var resourceService = new ResourceService();
                //resourceService.SaveResource(entity);

                result = ResponseResult.Success();
            }
            catch (System.Exception ex)
            {
                result = ResponseResult.Error(string.Format("保存资源数据失败!{0}", ex.Message));
            }
            return result;
        }

        /// <summary>
        /// 删除资源
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        [HttpPost]
        public ResponseResult DeleteResource(ResourceEntity entity)
        {
            var result = ResponseResult.Default();
            try
            {
                var resourceService = new RoleService();
                //resourceService.DeleteResource(entity);

                result = ResponseResult.Success();
            }
            catch (System.Exception ex)
            {
                result = ResponseResult.Error(string.Format("删除资源数据失败!{0}", ex.Message));
            }
            return result;
        }
    }
}
