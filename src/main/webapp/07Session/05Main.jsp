<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-28
  Time: 오전 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- JQ -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<h1>MAIN</h1>
세션ID : <%=session.getId() %><br>
계정ID : <%=session.getAttribute("ID") %><br>
세션 유지시간 : <%=session.getMaxInactiveInterval() %><br>
<p id="timer"></p>
<script>
    // stime = new Date();
    max=<%=session.getMaxInactiveInterval() %>;
    //alert("시작시간 : "+stime+"\n MAX : "+max);
    function timer(){
        max = max-1;
        if(max<0)
        {
            clearInterval(tmp);
            alert("세션종료");
            location.href="05LoginForm.jsp";
        }
        document.getElementById("timer").innerHTML=max;
    }
    tmp = setInterval(timer,1000);
</script>
<a href="05ShowCartList.jsp">장바구니로 이동</a>
<a href="05Logout.jsp">로그아웃</a>
<style>
    #maincontents{
        display: flex;
        justify-content: space-around;
    }

</style>
<div id="wrapper">

    <div id="maincontents" class="container-md">
        <!-- ITEM1 -->
<%--        <form action="05addCart.jsp">--%>
        <form>
            <div class="card" style="width: 18rem;">
                <input type="hidden" name="prodname" value="meat1">
                <input type="hidden" name="cat" value="pig1">
                <input type="hidden" name="price" value="20,001">
                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA1MTVfMTg5%2FMDAxNjUyNTg5MDU5OTI2.PDJMnL4cDylyGWqDdbtG5U5cw6NLe7c1gvlilz1tbF4g.asw-O4TTiB3Xe_AeS92p8LKU3v_oxzRNnXibHSb52YYg.JPEG.luv_shuu%2FP20211130_201617720_E977423A-209C-4A89-8279-60D2EA81F816.JPG&type=sc960_832" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">삼겹살</h5>
                    <input type="submit" class="btn btn-primary w-100" value="상세정보">
                    <button onclick="addtoCart(0)" class="btn btn-primary w-100 mt-3" >CART</button>
                </div>
            </div>
        </form>
        <!-- ITEM2 -->
<%--        <form action="05addCart.jsp">--%>
        <form>
            <div class="card" style="width: 18rem;">
                <input type="hidden" name="prodname" value="meat2">
                <input type="hidden" name="cat" value="pig2">
                <input type="hidden" name="price" value="20,002">

                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA1MTVfMTg5%2FMDAxNjUyNTg5MDU5OTI2.PDJMnL4cDylyGWqDdbtG5U5cw6NLe7c1gvlilz1tbF4g.asw-O4TTiB3Xe_AeS92p8LKU3v_oxzRNnXibHSb52YYg.JPEG.luv_shuu%2FP20211130_201617720_E977423A-209C-4A89-8279-60D2EA81F816.JPG&type=sc960_832" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">삼겹살</h5>
                    <input type="submit" class="btn btn-primary w-100" value="상세정보">
                    <button onclick="addtoCart(1)" class="btn btn-primary w-100 mt-3">CART</button>
                </div>
            </div>
        </form>
        <!-- ITEM3 -->
<%--        <form action="05addCart.jsp">--%>
        <form>
            <div class="card" style="width: 18rem;">
                <input type="hidden" name="prodname" value="meat3">
                <input type="hidden" name="cat" value="pig3">
                <input type="hidden" name="price" value="20,003">

                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA1MTVfMTg5%2FMDAxNjUyNTg5MDU5OTI2.PDJMnL4cDylyGWqDdbtG5U5cw6NLe7c1gvlilz1tbF4g.asw-O4TTiB3Xe_AeS92p8LKU3v_oxzRNnXibHSb52YYg.JPEG.luv_shuu%2FP20211130_201617720_E977423A-209C-4A89-8279-60D2EA81F816.JPG&type=sc960_832" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">삼겹살</h5>
                    <input type="submit" class="btn btn-primary w-100" value="상세정보">
                    <button onclick="addtoCart(2)" class="btn btn-primary w-100 mt-3" >CART</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    function addtoCart(num)
    {
        const form = document.forms[num]; //num번째 form태그
        const prodname = form[0].value; //num번째 form태그의 첫번째 input안의 값
        const cat = form[1].value;      //num번째 form태그의 두번째 input안의 값
        const price = form[2].value;    //num번째 form태그의 세번째 input안의 값
        isok = confirm("상품명 : "+prodname+" 카테고리 : "+cat+" 가격"+price)
        // if(!isok)
        // {
        //     event.preventDefault();
        // }

        if(isok)
        {
            form.action="05addCart.jsp"
            form.submit();
        }
    }
</script>
</body>
</html>
