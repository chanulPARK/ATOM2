<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<link href="<%=request.getContextPath()%>/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/dist/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath() %>/dist/css/datepicker.css" rel="stylesheet" >
<script src="<%=request.getContextPath()%>/dist/js/datepicker.js"></script>

    <script>
    $(function(){
        $('.dateday').datepicker({
            calendarWeeks: false,
            todayHighlight: true,
            autoclose: true,
            format: "yyyy/mm/dd",
            language: "kr",
            /* 기본값 설정 */
        });
    });
    </script>

    <aside>
        <div class='sidebar-nav navbar-default'>
            <ul class="nav" id="side-menu">
                <li>
                    <a href="<%=request.getContextPath() %>/views/attendance/att_day.jsp" style="font-size: 17px">일별사원근태</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/views/attendance/att_month.jsp" style="font-size: 17px">월별사원근태</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/views/attendance/holi_set.jsp" style="font-size: 17px">휴일 설정</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/views/attendance/time_set.jsp" style="font-size: 17px">기준시간 설정</a>
                </li>
            </ul>
        </div>
    </aside>

    <section>
        <div class="content">
           <div class='col-lg-12'>
                <h3 class="page-header">일별근태조회</h3>
                <!-- 일자 검색 -->
                <div class='col-md-12 well'>
                   <div class='col-md-8'>
                        <h5 class='col-md-2'>날짜별 조회</h5>
                        <!-- 날짜 선택 -->
                        <div class='input-group col-md-4'>
                            <span class='input-group-addon' id='basic-addon2'>
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </span>
                            <!-- 날짜 입력 -->
                            <input type="text" id='dateday' class='input-date dateday form-control' placeholder="조회할 날짜 선택">
                        </div>
                   </div>
                   <!-- 조회 버튼 -->
                   <div class='col-md-4'>
                       <button type='button' id='searchDate' class='btn btn-color5'>
                           <i class='fa fa-search fa-fw'></i>검색
                       </button>
                   </div>
                </div>
                <!-- 사원 검색 (부서별 검색, 직급별 검색) -->
                <div class='col-md-12 well'>
                    <div class='col-md-8'>
                         <h5 class='col-md-2'>사원별 조회</h5>
                         <!-- 날짜 선택 -->
                         <div class='input-group col-md-4'>
                             <span class='input-group-addon' id='basic-addon2'>
                                <i class="fa fa-user"></i>
                             </span>
                             <!-- 날짜 입력 -->
                             <input type="text" id='date' class='input-date date form-control' placeholder="조회할 사원명 입력">
                         </div>
                    </div>
                    <!-- 조회 버튼 -->
                    <div class='col-md-4'>
                        <button type='button' id='searchDate' class='btn btn-color5'>
                            <i class='fa fa-search fa-fw'></i>검색
                        </button>
                    </div>
                </div>
                <!-- 조회 화면 -->
                <div class='row'></div>
                <div class="panel panel-default">
                    <div class='panel-heading'>
                        <!-- <i class="fas fa-users"></i> -->
                        <h4>사원 목록</h4>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>부서</th>
                                    <th>직급</th>
                                    <th>사원명</th>
                                    <th>날짜</th>
                                    <th>출근시간</th>
                                    <th>퇴근시간</th>
                                    <th>근무시간</th>
                                    <th>상태</th>
                                    <th>비고</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>영업1팀</td>
                                    <td>대리</td>
                                    <td>사람</td>
                                    <td>18/07/10(화)</td>
                                    <td>08:43</td>
                                    <td>00:00</td>
                                    <td>00:00</td>
                                    <td>정상</td>
                                    <td></td>
                                    <td> <!-- 데이터 수정 -->
                                        <button type="button" class="btn" data-toggle="modal" data-target="#myModal1">수정</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>영업3팀</td>
                                    <td>인턴</td>
                                    <td>사람</td>
                                    <td>18/07/10(화)</td>
                                    <td>08:43</td>
                                    <td>00:00</td>
                                    <td>00:00</td>
                                    <td>결근</td>
                                    <td></td>
                                    <td> <!-- 데이터 수정 -->
                                        <button type="button" class="btn" data-toggle="modal" data-target="#myModal1">수정</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>인사팀</td>
                                    <td>대리</td>
                                    <td>사람</td>
                                    <td>18/07/10(화)</td>
                                    <td>08:43</td>
                                    <td>00:00</td>
                                    <td>00:00</td>
                                    <td>휴가</td>
                                    <td></td>
                                    <td> <!-- 데이터 수정 -->
                                        <button type="button" class="btn" data-toggle="modal" data-target="#myModal1">수정</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>영업1팀</td>
                                    <td>대리</td>
                                    <td>사람</td>
                                    <td>18/07/10(화)</td>
                                    <td>08:43</td>
                                    <td>00:00</td>
                                    <td>00:00</td>
                                    <td>지각</td>
                                    <td></td>
                                    <td> <!-- 데이터 수정 -->
                                        <button type="button" class="btn" data-toggle="modal" data-target="#myModal1">수정</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="panel-footer"></div>
                </div>
            </div>
        </div>
    </section>                 
    <!-- 모달 1 (사원 근태정보 수정) -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3 class="modal-title" id="myModalLabel">사원 근태 수정</h3>
                </div>
                <div class="modal-body">
                    <div class="panel panel-default">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <tr>
                                    <th>부서</th>
                                    <td>영업1팀</td>
                                </tr>
                                <tr>
                                    <th>사원명</th>
                                    <td>사람</td>
                                </tr>
                                <tr>
                                    <th>날짜</th>
                                    <td>2018/07/10(화)</td>
                                </tr>
                                <tr>
                                    <th>출근시간</th>
                                    <td><input type="text" class='form-control' value='08:43'></td>
                                </tr>
                                <tr>
                                    <th>상태</th>
                                    <td>
                                        <select class='form-control' name="att" id="att">
                                            <option value="정상">정상</option>
                                            <option value="지각">지각</option>
                                            <option value="조퇴">조퇴</option>
                                            <option value="결근">결근</option>
                                            <option value="휴가">휴가</option>
                                            <option value="외근">외근</option>
                                            <option value="출장">출장</option>
                                            <option value="포상">포상</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>비고</th>
                                    <td><textarea name="note" id="note" cols="67" rows="3" style="resize: none"></textarea></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">수정</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>

<%@ include file="/views/common/footer.jsp" %>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
