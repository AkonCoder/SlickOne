﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNetCore.Mvc;

namespace SlickOne.Web.Controllers.Mvc
{
    public class HomeController : BaseMvcController
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Tree()
        {
            return View();
        }
    }
}