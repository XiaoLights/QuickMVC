var menuIndex = new function () {
    var Current = this;
    this.Init = function () {
        Current.InitTable();
        Current.InitButton();
    }
    this.InitTable = function () {
        $('#table').bootstrapTable({
            url: '/Admin/Menu/GetMenuList',                           //请求后台的URL（*）
            method: 'post',                     //请求方式（*）
            toolbar: '#toolbar',                   //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            pagination: true,                   //是否显示分页（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            queryParams: Current.GetParams,//传递参数（*）
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 20, 30],            //可供选择的每页的行数（*）
            columns: [{
                checkbox: true,
                align: 'center'
            }, {
                field: 'MenuID',
                title: '菜单编号'
                , sortable: true
            }, {
                field: 'MenuName',
                title: '菜单名称'
                 , sortable: true
            }, {
                field: 'MenuUrl',
                title: '菜单路径'
            }, {
                field: 'MenuIcon',
                title: '图标'
            }, {
                field: 'Sort',
                title: '排序'
                , sortable: true
            }]
        });
    }

    this.GetParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
            pagesize: params.limit,   //页面大小
            pageindex: params.offset//页码
            , SearchType: $("#searchType").val()
            , SearchKey: $("#searchkey").val()
            , sortOrder: params.order//排序
            , sortName: params.sort//排序字段
        };
        return temp;
    }

    this.InitButton = function () {
        $("#btn_add").click(function () {
            layer.open({
                type: 1,
                area: ['600px', '360px'],
                shadeClose: true, //点击遮罩关闭
                content: $("#addmenu").html()
            });
        })
    }

    return Current;
}

$(function () {
    menuIndex.Init();
})
