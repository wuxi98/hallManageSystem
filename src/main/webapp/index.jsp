<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript">
    function myClick(){
        alert("js进来了")
    }
    $(function () {
    $('#b1').click(function () {
        alert("jquery也进来了");
        $.ajax({
            url:'student/s1',
            type:'post',
                success:function (data) {
                for(var i=0;i<data.length;i++)
                    alert(data[i].studentName);

            }
        })
    })
    })
</script>
<h2>Hello World!</h2>

<button id="b1" onclick="myClick()">点击获取</button>
<form action="student/ajaxUpload.do" method="post" enctype="multipart/form-data">
    <input type="file" id="file" name="file" value="excel文件">
    <input type="submit">

</form>
<div>
    <table border="1">
        <tr>
            <td>ddd</td>
        </tr>
    </table>
</div>
</body>
</html>
