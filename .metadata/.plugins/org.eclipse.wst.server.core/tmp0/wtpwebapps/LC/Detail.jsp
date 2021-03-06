<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>L&C</title>
</head>
<style>
.gallery-wrap .img-big-wrap img {
	height: 450px;
	width: auto;
	display: inline-block;
	cursor: zoom-in;
}

.gallery-wrap .img-small-wrap .item-gallery {
	width: 60px;
	height: 60px;
	border: 1px solid #ddd;
	margin: 7px 2px;
	display: inline-block;
	overflow: hidden;
}

.gallery-wrap .img-small-wrap {
	text-align: center;
}

.gallery-wrap .img-small-wrap img {
	max-width: 100%;
	max-height: 100%;
	object-fit: cover;
	border-radius: 4px;
	cursor: zoom-in;
}

.img-big-wrap img {
	width: 100% !important;
	height: auto !important;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

@-moz-keyframes glowing {
  0% { background-color: #004A7F; -moz-box-shadow: 0 0 3px #004A7F; }
  50% { background-color: #0094FF; -moz-box-shadow: 0 0 10px #0094FF; }
  100% { background-color: #004A7F; -moz-box-shadow: 0 0 3px #004A7F; }
}
 
@-o-keyframes glowing {
  0% { background-color: #004A7F; box-shadow: 0 0 3px #004A7F; }
  50% { background-color: #0094FF; box-shadow: 0 0 10px #0094FF; }
  100% { background-color: #004A7F; box-shadow: 0 0 3px #004A7F; }
}
 
@keyframes glowing {
  0% { background-color: #004A7F; box-shadow: 0 0 3px #004A7F; }
  50% { background-color: #0094FF; box-shadow: 0 0 10px #0094FF; }
  100% { background-color: #004A7F; box-shadow: 0 0 3px #004A7F; }
}
 
.nhapNhay {
  -webkit-animation: glowing 1500ms infinite;
  -moz-animation: glowing 1500ms infinite;
  -o-animation: glowing 1500ms infinite;
  animation: glowing 1500ms infinite;
}

</style>
<body>
	<c:if test="${success==1 }">
		<script type="text/javascript">
			alert('?????t h??ng th??nh c??ng')
		</script>
	</c:if>
	<c:if test="${fail==1 }">
		<script type="text/javascript">
			alert('?????t h??ng th???t b???i')
		</script>
	</c:if>
	<!-- Menu -->
	<jsp:include page="Menu.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<!-- Left -->
			<jsp:include page="Left.jsp"></jsp:include>
			<div class="col-md-9">
				<div class="container">
					<div id="search" class="row"></div>
					<c:if test="${detailLaptop.ma!=null}">
						<div  class="card">
							<div class="row">
								<aside class="col-sm-6">
									<article class="gallery-wrap">
										<div class="img-big-wrap">
											<div>
												<a href="#"><span
									style="position: absolute;  margin-top: 50px; color: white;" class="nhapNhay">Gi???m ${detailLaptop.giamGia }%</span><img src="${detailLaptop.anh}"></a>
											</div>
										</div>

									</article>
									<!-- gallery-wrap .end// -->
								</aside>
								<aside class="col-sm-6">
									<article class="card-body p-5">

										<h3 class="title mb-3">${detailLaptop.ten}</h3>
										<p>${detailLaptop.tieuDe}</p>
										<p class="text-secondary"><del><fmt:formatNumber value = "${detailLaptop.gia}" 
         type = "number"/></del><sup>??</sup></p>
										<p class="price-detail-wrap">
											<span class="num price h3 text-danger"><b><fmt:formatNumber value = "${detailLaptop.gia*(100-detailLaptop.giamGia)/100}" 
         type = "number"/></b><sup>??</sup></span>
										</p>
										<p class="h3 text-primary">C??n l???i ${detailLaptop.soLuong }
											s???n ph???m</p>
								</aside>
								<aside class="col-sm-12">
									<dl class="item-property card-body">
										<dt class="h3">Th??ng s??? k??? thu???t:</dt>
										<table style="width: 100%">
											<tr>
												<td style="width: 20%;"><b>CPU</b></td>
												<td>${detailLaptop.chip}</td>
											</tr>
											<tr>
												<td><b>M??n h??nh</b></td>
												<td>${detailLaptop.manHinh}</td>
											</tr>
											<tr>
												<td><b>RAM</b></td>
												<td>${detailLaptop.ram}</td>
											</tr>
											<tr>
												<td><b>??? c???ng</b></td>
												<td>${detailLaptop.oCung}</td>
											</tr>
											<tr>
												<td><b>Card ????? h???a</b></td>
												<td>${detailLaptop.cardDoHoa}</td>
											</tr>
											<tr>
												<td><b>Webcam</b></td>
												<td>${detailLaptop.webcam}</td>
											</tr>
											<tr>
												<td><b>K???t n???i kh??ng d??y</b></td>
												<td>${detailLaptop.ketNoiKhongDay}</td>
											</tr>
											<tr>
												<td><b>C???ng giao ti???p</b></td>
												<td>${detailLaptop.congGiaoTiep}</td>
											</tr>
											<tr>
												<td><b>Pin</b></td>
												<td>${detailLaptop.pin}</td>
											</tr>
											<tr>
												<td><b>Tr???ng l?????ng</b></td>
												<td>${detailLaptop.trongLuong}</td>
											</tr>
											<tr>
												<td><b>Ch???t li???u</b></td>
												<td>${detailLaptop.chatLieu}</td>
											</tr>
											<tr>
												<td><b>M??u s???c</b></td>
												<td>${detailLaptop.mauSac}</td>
											</tr>
											<tr>
												<td><b>D??ng m??y</b></td>
												<td>${detailLaptop.dongMay}</td>
											</tr>
											<tr>
												<td><b>B???o h??nh</b></td>
												<td>${detailLaptop.baoHanh}</td>
											</tr>
										</table>
									</dl>
									<hr>
									<c:if test="${sessionScope.acc==null}">
										<p class="h3 text-primary">
											<a href="login">Vui l??ng ????ng nh???p ????? ti???p t???c mua h??ng</a>
										</p>
									</c:if>
									<c:if
										test="${sessionScope.acc!=null&&sessionScope.acc.isAdmin==0}">
										<form action="order" method="post">
											<div class="row card-body">
												<div class="col-sm-6">
													<dl class="param param-inline">
														<dt>S??? l?????ng:</dt>
														<dd>
															<input class="form-control" type="number" name="soLuong"
																min="1" value="1" required="required">
														</dd>
													</dl>
												</div>
												<div class="col-sm-6">
													<dl class="param param-inline">
														<dt>S??? ??i???n tho???i:</dt>
														<dd>
															<input class="form-control"
																value="${sessionScope.acc.sdt}" type="text"
																name="soDienThoai" required="required"
																pattern="^0[0-9]{9}$">
														</dd>
													</dl>
												</div>
												<div class="col-sm-12">
													<dl class="param param-inline">
														<dt>?????a ch???:</dt>
														<dd>
															<textarea name="diaChi" class="form-control"
																required="required">${sessionScope.acc.diaChi}</textarea>
														</dd>
													</dl>
												</div>
												<div style="display: none;">
													<input type="text" name="theLoai"
														value="${detailLaptop.theLoai}"> <input
														type="text" name="ma" value="${detailLaptop.ma}">
													<input type="text" name="ten" value="${detailLaptop.ten}">
													<input type="text" name="anh" value="${detailLaptop.anh}">
													<input type="text" name="gia" value="${detailLaptop.gia*(100-detailLaptop.giamGia)/100}">
													<input type="text" name="maKH"
														value="${sessionScope.acc.ma}">
												</div>
												<div style="margin: auto;">
													<input type="submit"
														class="btn btn-lg btn-primary text-uppercase"
														value="?????t h??ng">
												</div>
											</div>
										</form>
									</c:if>
									</article>
									<!-- card-body.// -->
								</aside>
								<!-- col.// -->
							</div>
							<!-- row.// -->
						</div>
						<!-- card.// -->
					</c:if>
					<c:if test="${detailCamera.ma!=null}">
						<div class="card">
							<div class="row">
								<aside class="col-sm-6">
									<article class="gallery-wrap">
										<div class="img-big-wrap">
											<div>
												<a href="#"><span
									style="position: absolute;  margin-top: 50px; color: white;" class="nhapNhay">Gi???m ${detailCamera.giamGia }%</span><img src="${detailCamera.anh}"></a>
											</div>
										</div>

									</article>
									<!-- gallery-wrap .end// -->
								</aside>
								<aside class="col-sm-6">
									<article class="card-body p-5">

										<h3 class="title mb-3">${detailCamera.ten}</h3>
										<p>${detailCamera.tieuDe}</p>
										<p class="text-secondary"><del><fmt:formatNumber value = "${detailCamera.gia}" 
         type = "number"/></del><sup>??</sup></p>
										<p class="price-detail-wrap">
											<span class="num price h3 text-danger"><b><fmt:formatNumber value = "${detailCamera.gia*(100-detailCamera.giamGia)/100}" 
         type = "number"/></b><sup>??</sup>
										</p>
										<p class="h3 text-primary">C??n l???i ${detailCamera.soLuong }
											s???n ph???m</p>
								</aside>
								<aside class="col-sm-12">
									<dl class="item-property card-body">
										<dt class="h3">Th??ng s??? k??? thu???t:</dt>
										<table style="width: 100%">
											<tr>
												<td style="width: 20%;"><b>C???m bi???n ???nh</b></td>
												<td>${detailCamera.camBienAnh}</td>
											</tr>
											<tr>
												<td><b>????? ph??n gi???i</b></td>
												<td>${detailCamera.doPhanGiai}</td>
											</tr>
											<tr>
												<td><b>???ng k??nh</b></td>
												<td>${detailCamera.ongKinh}</td>
											</tr>
											<tr>
												<td><b>G??c nh??n</b></td>
												<td>${detailCamera.gocNhin}</td>
											</tr>
											<tr>
												<td><b>Chu???n n??n video</b></td>
												<td>${detailCamera.chuanNenVideo}</td>
											</tr>
											<tr>
												<td><b>C???m bi???n</b></td>
												<td>${detailCamera.camBien}</td>
											</tr>
											<tr>
												<td><b>L??u tr???</b></td>
												<td>${detailCamera.luuTru}</td>
											</tr>
											<tr>
												<td><b>K???t n???i</b></td>
												<td>${detailCamera.ketNoi}</td>
											</tr>
											<tr>
												<td><b>Ngu???n ??i???n</b></td>
												<td>${detailCamera.nguonDien}</td>
											</tr>
											<tr>
												<td><b>H???ng ngo???i t???m nh??n(quay ban ????m)</b></td>
												<td>${detailCamera.hongNgoaiTamNhin}</td>
											</tr>
											<tr>
												<td><b>Tr???ng l?????ng</b></td>
												<td>${detailCamera.trongLuong}</td>
											</tr>
											<tr>
												<td><b>Nhi???t ????? ho???t ?????ng</b></td>
												<td>${detailCamera.nhietDoHoatDong}</td>
											</tr>
											<tr>
												<td><b>Xu???t x???</b></td>
												<td>${detailCamera.xuatXu}</td>
											</tr>
											<tr>
												<td><b>N??i l???p ?????t</b></td>
												<td>${detailCamera.noiLapDat}</td>
											</tr>
											<tr>
												<td><b>B???o h??nh</b></td>
												<td>${detailCamera.baoHanh}</td>
											</tr>
										</table>

									</dl>

									<hr>
									<c:if test="${sessionScope.acc==null}">
										<p class="h3 text-primary">
											<a href="login">Vui l??ng ????ng nh???p ????? ti???p t???c mua h??ng</a>
										</p>
									</c:if>
									<c:if
										test="${sessionScope.acc!=null&&sessionScope.acc.isAdmin==0}">
										<form action="order" method="post">
											<div class="row card-body">
												<div class="col-sm-6">
													<dl class="param param-inline">
														<dt>S??? l?????ng:</dt>
														<dd>
															<input class="form-control" type="number" name="soLuong"
																min="1" value="1" required="required">
														</dd>
													</dl>
												</div>
												<div class="col-sm-6">
													<dl class="param param-inline">
														<dt>S??? ??i???n tho???i:</dt>
														<dd>
															<input class="form-control"
																value="${sessionScope.acc.sdt}" type="text"
																name="soDienThoai" required="required"
																pattern="^0[0-9]{9}$">
														</dd>
													</dl>
												</div>
												<div class="col-sm-12">
													<dl class="param param-inline">
														<dt>?????a ch???:</dt>
														<dd>
															<textarea name="diaChi" class="form-control"
																required="required">${sessionScope.acc.diaChi}</textarea>
														</dd>
													</dl>
												</div>
												<div style="display: none;">
													<input type="text" name="theLoai"
														value="${detailCamera.theLoai}"> <input
														type="text" name="ma" value="${detailCamera.ma}">
													<input type="text" name="ten" value="${detailCamera.ten}">
													<input type="text" name="anh" value="${detailCamera.anh}">
													<input type="number" name="gia" value="${detailCamera.gia*(100-detailCamera.giamGia)/100}">
													<input type="text" name="maKH"
														value="${sessionScope.acc.ma}">
												</div>
												<div style="margin: auto;">
													<input type="submit"
														class="btn btn-lg btn-primary text-uppercase"
														value="?????t h??ng">
												</div>
											</div>
										</form>
									</c:if>
									</article>
									<!-- card-body.// -->
								</aside>
								<!-- col.// -->
							</div>
							<!-- row.// -->
						</div>
						<!-- card.// -->
					</c:if>

				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		function searchByName(param) {
			var txtSearch = param.value;
			$.ajax({
				url : "/LC/search",
				type : "get",
				data : {
					txt : txtSearch
				},
				success : function(data) {
					var row3 = document.getElementById("search");
					row3.innerHTML = data;
				}

			});
		}
	</script>
</body>
</html>
