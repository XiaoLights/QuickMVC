var userIndex = new function () {
    var Current = this;
    this.Init = function () {
        Current.InitTable();
    }
    this.InitTable = function () {
        $('#table').bootstrapTable({
            url: '/Admin/User/GetUserList',                           //请求后台的URL（*）
            method: 'post',                     //请求方式（*）
            toolbar: '#toolbar',                   //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            pagination: true,                   //是否显示分页（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 20, 30],            //可供选择的每页的行数（*）
            columns: [{
                field: 'UserID',
                title: '用户编号'
            }, {
                field: 'UserName',
                title: '用户名称'
            }, {
                field: 'TrueName',
                title: '真实姓名'
            }, {
                field: 'AvatarImg',
                title: '头像'
            }]
        });
    }
    return Current;
}

$(function () {
    userIndex.Init();
})
