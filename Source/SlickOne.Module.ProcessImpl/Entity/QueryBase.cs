﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlickOne.Module.ProcessImpl.Entity
{
    /// <summary>
    /// 分页查询类
    /// </summary>
    public abstract class QueryBase
    {
        public int PageIndex { get; set; }
        public int PageSize { get; set; }
        public string Field { set; get; }//排序字段
        public string Order { set; get; }//排序方式
        public int TotalRowsCount { get; set; }
        public int TotalPages { get; set; }
    }
}
