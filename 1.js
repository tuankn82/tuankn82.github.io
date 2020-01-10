 var app = angular.module('myApp',['ngMaterial','ngRoute']);
 app.controller('MyController',  function($scope, $rootScope, $location){
  	$scope.dangxuat = function() {
  		$rootScope.dangnhapchua = "";
  		$location.path('/dang_nhap');
  		return false;
  	}
 })

 app.config(function($routeProvider,$locationProvider){
 	$locationProvider.html5Mode(true);

 	$routeProvider
 	.when('/', {
 		templateUrl: 'pages/add_user.html',
 		controller: 'addUserController'
 	})

 	.when('/them_nguoi_dung', {
 		templateUrl: 'pages/add_user.html',
 		controller: 'addUserController'
 	})

 	.when('/danh_sach_nguoi_dung', {
 		templateUrl: 'pages/userlist.html',
 		controller: 'listuserController'
 	})

	.when('/dang_nhap', {
	 		templateUrl: 'pages/login.html',
	 		controller: 'loginController'
	 	})


 	.otherwise({ redirectTo: '/' })

 })

 app.controller('addUserController', function($scope, $mdToast, $http, $rootScope, $location){
 	//lấy thông tin người dùng nhập vào
 	//ng-model, lấy bằng cách sử dụng scope.
 	//kiểm tra đăng nhập
 	if(!$rootScope.dangnhapchua){
 		$location.path('/dang_nhap');
 	}

 	$rootScope.tieude = "Thêm mới người dùng";
 	$scope.addUser = function() {
 		// console.log($scope.username)
 		// console.log($scope.password)
 		// console.log($scope.level)
 		var dulieu = $.param({
 			username:$scope.username,
 			password:$scope.password,
 			level:$scope.level
 		});

 		var urlAPI = 'http://127.0.0.1:4001/angular_project3/API/User/addUser';
 		//console.log(dulieu);
 		var config = {
 			headers:{
 				'content-type':'application/x-www-form-urlencoded;charset=UTF-8'
 			}
 		}
 		$http.post(urlAPI, dulieu, config).then(function(res){
 			//thanhcong
 			//console.log(res.data);
 			if(res.data == '1_done'){
 				$scope.trangthai('Thanh Cong !');
 				$scope.username = "";
 				$scope.password = "";
 				$scope.level = "";
 			}else 
 			{
 				$scope.trangthai('Email đã tồn tại trong database !')
 			}
 			
 		},function(er){
 			console.log(er.data);
 			$scope.trangthai('That bai !')
 		})

 	}

 	//hiển thị thông báo cập nhật
        var last = {
          bottom: true,
          top: false,
          left: false,
          right: true
        };

        $scope.toastPosition = angular.extend({},last);

        $scope.getToastPosition = function() {
          sanitizePosition();

          return Object.keys($scope.toastPosition)
          .filter(function(pos){ return $scope.toastPosition[pos]; })
          .join(' ');
        };

        function sanitizePosition() {
          var current = $scope.toastPosition;

          if (current.bottom && last.top ) current.top = false;
          if (current.top && last.bottom ) current.bottom = false;
          if (current.right && last.left ) current.left = false;
          if (current.left && last.right ) current.right = false;

          last = angular.extend({}, current);
        };

        $scope.trangthai = function(thongbao) {
          var pinTo = $scope.getToastPosition();

          $mdToast.show(
            $mdToast.simple()
            .textContent(thongbao)
            .position(pinTo)
            .hideDelay(3000)
            );
        };

        $scope.showActionToast = function() {
          var pinTo = $scope.getToastPosition();
          var toast = $mdToast.simple()
          .textContent('Marked as read')
          .action('UNDO')
          .highlightAction(true)
          .highlightClass('md-accent')// Accent is used by default, this just demonstrates the usage.
          .position(pinTo);

          $mdToast.show(toast).then(function(response){
            if ( response == 'ok') {
              alert('You clicked the \'UNDO\' action.');
            }
          });
      };

 });

 app.controller('listuserController', function($scope, $mdToast, $location, $rootScope, $http){

 	if(!$rootScope.dangnhapchua){
 		$location.path('/dang_nhap');
 	}

 	$rootScope.tieude = "Danh sách người sử dụng";
 	$rootScope.menusidebar = "";
 	$rootScope.menutren = "";

	var urlAPI = 'http://127.0.0.1:4001/angular_project3/API/User/getDataUser';
		//console.log(dulieu);
	$http.get(urlAPI).then(function(res){
		//thanhcong
	//console.log(res.data);
	$scope.dulieu = res.data;
	},function(er){
	//console.log(er.data);
	})

	//hiển thị form sửa trên 1 page

	$scope.doihienthi = function(dulieumn) {
		dulieumn.hienthi = !dulieumn.hienthi;
	}

	//lấy dữ liệu
	$scope.luudulieu = function(dlmn){

		dlmn.hienthi = !dlmn.hienthi;
	
		var dulieu = $.param({
			id:dlmn.id,
			username:dlmn.username,
			level:dlmn.level
		});

		var urlAPI = 'http://127.0.0.1:4001/angular_project3/API/User/APIUpdateData';
		//console.log(dulieu);
		var config = {
			headers:{
			'content-type':'application/x-www-form-urlencoded;charset=UTF-8'
			}
		}

		$http.post(urlAPI, dulieu, config).then(function(res){
			//thanhcong
			//console.log(res.data);
			$scope.trangthai('Cập nhật thành công');
			},function(er){
			//console.log(er.data);
			})
		}

		//hiển thị thông báo cập nhật
        var last = {
          bottom: false,
          top: true,
          left: false,
          right: true
        };

        $scope.toastPosition = angular.extend({},last);

        $scope.getToastPosition = function() {
          sanitizePosition();

          return Object.keys($scope.toastPosition)
          .filter(function(pos){ return $scope.toastPosition[pos]; })
          .join(' ');
        };

        function sanitizePosition() {
          var current = $scope.toastPosition;

          if (current.bottom && last.top ) current.top = false;
          if (current.top && last.bottom ) current.bottom = false;
          if (current.right && last.left ) current.left = false;
          if (current.left && last.right ) current.right = false;

          last = angular.extend({}, current);
        };

        $scope.trangthai = function(thongbao) {
          var pinTo = $scope.getToastPosition();

          $mdToast.show(
            $mdToast.simple()
            .textContent(thongbao)
            .position(pinTo)
            .hideDelay(1000)
            );
        };

        $scope.showActionToast = function() {
          var pinTo = $scope.getToastPosition();
          var toast = $mdToast.simple()
          .textContent('Marked as read')
          .action('UNDO')
          .highlightAction(true)
          .highlightClass('md-accent')// Accent is used by default, this just demonstrates the usage.
          .position(pinTo);

          $mdToast.show(toast).then(function(response){
            if ( response == 'ok') {
              alert('You clicked the \'UNDO\' action.');
            }
          });
      };

      //xóa dữ liệu

      $scope.xoadulieu = function(xdlmn) {
      	var dulieu = $.param({id:xdlmn});

      	var urlAPI = 'http://127.0.0.1:4001/angular_project3/API/User/APIDeleteData';
		//console.log(dulieu);
		var config = {
			headers:{
			'content-type':'application/x-www-form-urlencoded;charset=UTF-8'
			}
		}

		$http.post(urlAPI, dulieu, config).then(function(res){
			//thanhcong
			//console.log(res.data);
			$scope.trangthai('Xóa thành công');

			var urlAPI = 'http://127.0.0.1:4001/angular_project3/API/User/getDataUser';
				//console.log(dulieu);
			$http.get(urlAPI).then(function(res){
				//thanhcong
			//console.log(res.data);
			$scope.dulieu = res.data;
			},function(er){
			//console.log(er.data);
			})

			},function(er){
			//console.log(er.data);
			})
		}

		//hiển thị thông báo cập nhật
        var last = {
          bottom: false,
          top: true,
          left: false,
          right: true
        };

        $scope.toastPosition = angular.extend({},last);

        $scope.getToastPosition = function() {
          sanitizePosition();

          return Object.keys($scope.toastPosition)
          .filter(function(pos){ return $scope.toastPosition[pos]; })
          .join(' ');
        };

        function sanitizePosition() {
          var current = $scope.toastPosition;

          if (current.bottom && last.top ) current.top = false;
          if (current.top && last.bottom ) current.bottom = false;
          if (current.right && last.left ) current.left = false;
          if (current.left && last.right ) current.right = false;

          last = angular.extend({}, current);
        };

        $scope.trangthai = function(thongbao) {
          var pinTo = $scope.getToastPosition();

          $mdToast.show(
            $mdToast.simple()
            .textContent(thongbao)
            .position(pinTo)
            .hideDelay(1000)
            );
        };

        $scope.showActionToast = function() {
          var pinTo = $scope.getToastPosition();
          var toast = $mdToast.simple()
          .textContent('Marked as read')
          .action('UNDO')
          .highlightAction(true)
          .highlightClass('md-accent')// Accent is used by default, this just demonstrates the usage.
          .position(pinTo);

          $mdToast.show(toast).then(function(response){
            if ( response == 'ok') {
              alert('You clicked the \'UNDO\' action.');
            }
          });

      }

	});


app.controller('loginController', function($scope, $mdToast, $rootScope, $http, $location){
 	$rootScope.menusidebar = "offcanvas"; //load trang đăng nhập thì add class offcanvas vào để ẩn sidebar
 	$rootScope.menutren = "hidden-xs-up";
 	$scope.dangnhap = function(nguoidung){
 		// console.log(nguoidung.username);
 		// console.log(nguoidung.password);
	
	var dulieu = $.param({
	username:nguoidung.username,
	password:nguoidung.password
	});

	var urlAPI = 'http://127.0.0.1:4001/angular_project3/API/user/ApiLogin';
	//console.log(dulieu);
	var config = {
	headers:{
	'content-type':'application/x-www-form-urlencoded;charset=UTF-8'
	}
	}
	$http.post(urlAPI, dulieu, config).then(function(res){
	//thanhcong
	//console.log(res.data);
	if ((res.data.trangthai == 'dntc') && (res.data.level == 1)){
		$scope.trangthai('Đăng nhập thành công');
		$location.path('/danh_sach_nguoi_dung');
		$rootScope.dangnhapchua = "roi";
	}
	else if ((res.data.trangthai == 'dntc') && (res.data.level == 2)){
		$scope.trangthai('Không đủ quyền hạn');
	}
	else {
		$scope.trangthai('Đăng nhập thất bại');
	}
	},function(er){
	console.log(er.data);
	})

 	}

//hiển thị thông báo cập nhật
        var last = {
          bottom: true,
          top: false,
          left: false,
          right: true
        };

        $scope.toastPosition = angular.extend({},last);

        $scope.getToastPosition = function() {
          sanitizePosition();

          return Object.keys($scope.toastPosition)
          .filter(function(pos){ return $scope.toastPosition[pos]; })
          .join(' ');
        };

        function sanitizePosition() {
          var current = $scope.toastPosition;

          if (current.bottom && last.top ) current.top = false;
          if (current.top && last.bottom ) current.bottom = false;
          if (current.right && last.left ) current.left = false;
          if (current.left && last.right ) current.right = false;

          last = angular.extend({}, current);
        };

        $scope.trangthai = function(thongbao) {
          var pinTo = $scope.getToastPosition();

          $mdToast.show(
            $mdToast.simple()
            .textContent(thongbao)
            .position(pinTo)
            .hideDelay(3000)
            );
        };

        $scope.showActionToast = function() {
          var pinTo = $scope.getToastPosition();
          var toast = $mdToast.simple()
          .textContent('Marked as read')
          .action('UNDO')
          .highlightAction(true)
          .highlightClass('md-accent')// Accent is used by default, this just demonstrates the usage.
          .position(pinTo);

          $mdToast.show(toast).then(function(response){
            if ( response == 'ok') {
              alert('You clicked the \'UNDO\' action.');
            }
          });
      };

 });


 