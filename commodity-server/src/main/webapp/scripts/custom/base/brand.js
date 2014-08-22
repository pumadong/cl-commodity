var DataTableCl = function () {
    var handleCl = function() {        
    	var grid = new Datatable();
        grid.init({
            src: $("#datatable_cl"),
            onSuccess: function(grid) {
                // execute some code after table records loaded
            },
            onError: function(grid) {
                // execute some code on network or other general error  
            },
            dataTable: {  // here you can define a typical datatable settings from http://datatables.net/usage/options
            	"iDisplayLength": 20,
                "bServerSide": true, // server side processing
                "sAjaxSource": "getBrandDataTables.do", // ajax source
                "bSort": false,
                "aoColumnDefs" : [{  // 隐藏第一列
                    'bVisible' : false,
                    'aTargets' : [ 0 ]
                }],
                "aaSorting": [[ 1, "asc" ]] // set first column as a default sort by asc
            }
        });
    }
    return {
        //main function to initiate the module
        init: function () {
    		handleCl();
        },
        tableName: "datatable_cl"
    };
}();

var FormCl = function () {
    var handleValidation = function() {
		// for more info visit the official plugin documentation: 
	    // http://docs.jquery.com/Plugins/Validation
	    var form1 = $('#form_cl');
	    var error1 = $('.alert-danger', form1);
	    var success1 = $('.alert-success', form1);	
	    form1.validate({
	        errorElement: 'span', //default input error message container
	        errorClass: 'help-block', // default input error message class
	        focusInvalid: false, // do not focus the last invalid input
	        ignore: "",
	        rules: {
	            name: {
	                minlength: 2,
	                required: true
	            }
	        },	
	        invalidHandler: function (event, validator) { //display error alert on form submit              
	            success1.hide();
	            error1.show();
	            App.scrollTo(error1, -200);
	        },	
	        highlight: function (element) { // hightlight error inputs
	            $(element)
	                .closest('.form-group').addClass('has-error'); // set error class to the control group
	        },	
	        unhighlight: function (element) { // revert the change done by hightlight
	            $(element)
	                .closest('.form-group').removeClass('has-error'); // set error class to the control group
	        },	
	        success: function (label) {
	            label
	                .closest('.form-group').removeClass('has-error'); // set success class to the control group
	        },	
	        submitHandler: function (form) {
	            //验证通过后执行操作
	            if(Cl.action == 'create')
	  			{
	  				Brand.add();
	  			} else
	  			{
	  				if(Cl.action == 'update')
	  				{
	  					Brand.update();
	  				}
	  			}
	        }
	    });
    }
    var handleWysihtml5 = function() {
        if (!jQuery().wysihtml5) {            
            return;
        }
        if ($('.wysihtml5').size() > 0) {
            $('.wysihtml5').wysihtml5({
                "stylesheets": ["http://127.0.0.1/privilege_inc/assets/plugins/bootstrap-wysihtml5/wysiwyg-color.css"]
            });
        }
    }
    return {
        //main function to initiate the module
        init: function () {
            handleWysihtml5();
            handleValidation();
        },
        formName: "form_cl"
    };
}();

var TreeCl = function () {
	var ajaxTreeCl = function(brandId) {
		$("#tree_cl").jstree({
		     "core" : {
		         "themes" : {
		             "responsive": false
		         }, 
		         // so that create works
		         "check_callback" : true,
		         'data' : {
		             'url' : function (node) {
		         		return '../resource/getResourceTreeWithChecked.do?brandId='+brandId;
		             },
		             'data' : function (node) {
		             	return { 'parent' : node.id };
		             }
		         }
		     },
		     "types" : {
		         "default" : {
		             "icon" : "fa fa-folder icon-warning icon-lg"
		         },
		         "file" : {
		             "icon" : "fa fa-file icon-warning icon-lg"
		         }
		     },
		     "state" : { "key" : "resourceTree_brand" },
		     "plugins" : [ "checkbox", "types" ]
		});
	}
	return {
		//main function to initiate the module
		init: function (brandId) {
			ajaxTreeCl(brandId);
		}
	};
}();

var Brand = function(){
	return {
		/**
		 * 点击增加按钮
		 */
		add_click: function() {
	    	Cl.action='create';
	    	Cl.showModalWindow(Cl.modalName,"addform.do");
		},
		/**
		 * 点击修改按钮
		 */
		update_click: function(id) {
			Cl.action='update';	
			Cl.showModalWindow(Cl.modalName,"updateform.do?id="+id);
		},
		/**
		 * 点击分配权限按钮按钮
		 */
		assign_click: function(id) {
			Cl.action='assign';	
			Cl.showModalWindow(Cl.modalName,"assignform.do?id="+id);
		},
		/**
		 * 增加品牌
		 */
		add: function(){
			var url="add.do";
			var data={
				"name":$("#name").val()
			};
			Cl.ajaxRequest(url,data,function(result){
				if(!result) return ;				
				result = result.replace(/(^\s*)|(\s*$)/g,'');
				if(result == "success"){								
					Cl.hideModalWindow(Cl.modalName);
					Cl.refreshDataTable(DataTableCl.tableName);
					alert("增加成功");
				} else {
					alert("增加失败");
					return ;			
				}
			});
		},
		/**
		 * 修改品牌
		 */
		update: function(){
			var url="update.do";
			var data={
				"id":$("#id").val(),
				"name":$("#name").val(),
				"remark": $("#remark").val()
			};
			Cl.ajaxRequest(url,data,function(result){
				if(!result) return ;		
				
				result = result.replace(/(^\s*)|(\s*$)/g,'');
				if(result == "success"){			
					Cl.hideModalWindow(Cl.modalName);
					Cl.updateDataRow(DataTableCl.tableName,data.id,0,'getBrandDataRow.do');
					alert("修改成功");
				} else {
					alert("修改失败");
					return ;			
				}
			});
		},
		/**
		 * 删除品牌
		 */
		remove: function(id){
			if(!confirm("确定要删除该品牌")){
				return;
			}
			var url="delete.do";
			var data={
				"id":id
			};
			Cl.ajaxRequest(url,data,function(result){
				if(!result) return ;		
				result = result.replace(/(^\s*)|(\s*$)/g,'');
				if(result == "success"){
					Cl.deleteDataRow(DataTableCl.tableName,data.id,0);
					alert("删除成功");
				} else {
					alert("被使用的品牌不允许删除");
					return ;			
				}
			});
		}
	}
}();

/**
 * 查询参数的处理，每个功能的DataTable都要处理自己的查询条件，并向服务器提交
 * 如果使用了DataTables控件，则都要定义这个函数
 */
var aoDataHandler = function(aoData) {
	//页面的查询条件
	//aoData.push( { "name": "name", "value": "" } );
}