<%-- 
    Document   : ServiceDetail
    Created on : Oct 31, 2024, 7:49:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<!DOCTYPE html>  
<!DOCTYPE html>  
<html lang="vi">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Trang cho công dân</title>  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">  
    <style>  
        body {  
            font-family: Arial, sans-serif;  
            background-color: #f9f9f9;  
            margin: 0;  
            padding: 20px;  
        }  
        header {  
            background-color: #f2c94c;  
            padding: 10px;  
            text-align: center;  
        }  
        .navbar {  
            background-color: #d95f0e;  
            padding: 10px;  
            display: flex;  
            justify-content: space-between;  
            align-items: center;  
        }  
        .navbar h1 {  
            color: white;  
            margin: 0;  
        }  
        .navbar a {  
            color: white;  
            text-decoration: none;  
            padding: 10px 15px;  
        }  
        .navbar a:hover {  
            background-color: #c95e0d;  
        }  
        .search-bar {  
            margin: 20px 0;  
            text-align: center;  
        }  
        .search-bar input {  
            padding: 10px;  
            width: 300px;  
        }  
        .section {  
            background-color: #fff;  
            padding: 20px;  
            border-radius: 5px;  
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);  
            margin-bottom: 20px;  
        }  
        .section h2 {  
            margin-top: 0;  
            color: #f2c94c;  
        }  
        .section ul {  
            list-style-type: none;  
            padding: 0;  
        }  
        .section li {  
            padding: 10px 0;  
            border-bottom: 1px solid #ddd;  
            cursor: pointer;  
        }  
        .section li:hover {  
            background-color: #f2f2f2;  
        }  
        
        .search-bar {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

.search-bar input[type="text"] {
    padding: 10px;
    font-size: 16px;
    width: 50%;
    border: 1px solid #ddd;
    border-radius: 5px 0 0 5px;
}

.search-bar button {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    background-color: #ff9933;
    color: white;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
}

.search-bar button:hover {
    background-color: #e68a00;
}
        .button {  
            background-color: #f2c94c;  
            border: none;  
            padding: 10px 15px;  
            cursor: pointer;  
            border-radius: 5px;  
            display: block;  
            margin: 20px auto;  
        }  
        .faq {  
            margin-top: 20px;  
        }  
        .faq h3 {  
            cursor: pointer;  
            color: #007bff;  
        }  
        .faq-content {  
            display: none;  
            margin-top: 10px;  
        }  
        
        header {
    background-color: #ff9933;
    padding: 15px;
    text-align: center;
    color: white;
}

header h1 {
    font-size: 24px;
    margin-bottom: 10px;
}

header nav a {
    
    text-decoration: none;
    margin: 0 10px;
    font-weight: bold;
}

header nav a:hover {
    text-decoration: underline;
}

    </style>  
</head>  
<body>  

<header>
    <div class="header-top">
        <div class="header-title">
            <h1>Cổng Dịch Vụ Công Quốc Gia</h1>
            <p>Kết nối, cung cấp thông tin và dịch vụ công mọi lúc, mọi nơi</p>
        </div>
    </div>
<div>
    <form class="search-bar" onsubmit="searchItems(event)">
        <input type="text" id="searchInput" placeholder="Nhập từ khoá tìm kiếm">
        <button type="submit" style="cursor: pointer">Tìm kiếm nâng cao</button>
    </form>
</div>

</header>

<nav class="navbar">  
    <a href="#">Giới thiệu</a>  
    <a href="#">Thông tin và dịch vụ</a>  
    <a href="#">Thanh toán trực tuyến</a>  
    <a href="#">Phản ánh kiến nghị</a>  
    <a href="#">Thủ tục hành chính</a>  
    <a href="#">Hỗ trợ</a>  
</nav>  

<div class="section"> 
    <%
    int role = (int)session.getAttribute("role");
    %>
    <div>
        <%
        if(role == 1 ){
        %>
    <h2>Học tập</h2>  
    <p>Cung cấp thông tin thủ tục hành chính, dịch vụ công trực tuyến liên quan đến việc học tập của cá nhân từ mầm non đến sau đại học.</p>  
<ul>
    <li class="searchable-item" onclick="toggleDetails(1)">Học tập ở nước ngoài bằng ngân sách nhà nước</li>  
    <li class="searchable-item" onclick="toggleDetails(2)">Cấp văn bằng, chứng chỉ; công nhận văn bằng, chứng chỉ do cơ sở nước ngoài cấp</li>  
    <li class="searchable-item" onclick="toggleDetails(3)">Học bổng và chính sách hỗ trợ</li>  
    <li class="searchable-item" onclick="toggleDetails(4)">Chuyển trường</li>  
    <li class="searchable-item" onclick="toggleDetails(5)">Tuyển sinh</li>  
    <li class="searchable-item" onclick="toggleDetails(6)">Đào tạo nâng cao trình độ chuyên môn</li>
    <li class="searchable-item" onclick="toggleDetails(7)">Hỗ trợ du học sinh về nước</li>
    <li class="searchable-item" onclick="toggleDetails(8)">Thẩm định chương trình đào tạo</li>
    <li class="searchable-item" onclick="toggleDetails(9)">Thẩm định và công nhận giáo viên nước ngoài</li>
    <li class="searchable-item" onclick="toggleDetails(10)">Điều kiện học sinh đạt chuẩn vào trường công lập</li>
    <li class="searchable-item" onclick="toggleDetails(11)">Đánh giá và kiểm định chất lượng giáo dục</li>
    <li class="searchable-item" onclick="toggleDetails(12)">Quy trình tuyển sinh và nhập học</li>
    <li class="searchable-item" onclick="toggleDetails(13)">Điều kiện chuyển tiếp học sinh giữa các cơ sở đào tạo</li>
    <li class="searchable-item" onclick="toggleDetails(14)">Xét tuyển sinh viên vào các chương trình đào tạo quốc tế</li>
    <li class="searchable-item" onclick="toggleDetails(15)">Hỗ trợ chi phí học tập cho gia đình khó khăn</li>
    <li class="searchable-item" onclick="toggleDetails(16)">Hỗ trợ học sinh khuyết tật</li>
    <li class="searchable-item" onclick="toggleDetails(17)">Quy định về học phí và các khoản đóng góp</li>
    <li class="searchable-item" onclick="toggleDetails(18)">Xét duyệt tài trợ cho các chương trình nghiên cứu</li>
    <li class="searchable-item" onclick="toggleDetails(19)">Chính sách miễn giảm học phí</li>
    <li class="searchable-item" onclick="toggleDetails(20)">Quy trình bảo lưu kết quả học tập</li>
</ul>

    <button class="button">Xem tất cả các thủ tục hành chính</button>  
    <% }else {%>
    <h2>Bạn không thể sử dụng thủ tục hành chính này</h2>
    <p><a href="javascript:history.back()">Quay lại</a></p>
    <%}%>
    </div>
</div>  

<div class="faq">  
    <h2>Câu hỏi thường gặp</h2>  
    <h3 onclick="toggleFAQ(1)">Cách thực hiện đối với học sinh trung học cơ sở các dân tộc thiểu số rất ít người như thế nào?</h3>  
    <div class="faq-content" id="faq1">  
        <p>Thông tin chi tiết về cách thực hiện sẽ được cung cấp tại đây.</p>  
    </div>  
    <h3 onclick="toggleFAQ(2)">Tôi muốn hỏi về việc tiếp nhận lưu học sinh về nước, có thời hạn giải quyết như thế nào?</h3>  
    <div class="faq-content" id="faq2">  
        <p>Thông tin chi tiết về thời hạn giải quyết sẽ được cung cấp tại đây.</p>  
    </div>  
    <h3 onclick="toggleFAQ(3)">Đối tượng thực hiện thủ tục học tập đối với các dân tộc thiểu số rất ít người như thế nào?</h3>  
    <div class="faq-content" id="faq3">  
        <p>Thông tin chi tiết về đối tượng thực hiện sẽ được cung cấp tại đây.</p>  
    </div>  
    <button class="button" onclick="toggleMore()">Xem thêm</button>  
</div>  

<script>  
    function toggleFAQ(id) {  
        const content = document.getElementById(`faq${id}`);  
        content.style.display = content.style.display === "block" ? "none" : "block";  
    }  

    function toggleMore() {  
        alert("Thông tin thêm sẽ được cung cấp tại đây.");  
    }  
</script>  
<script>
    function searchItems(event) {
        event.preventDefault();  // Ngừng reload trang khi submit form

        const keyword = document.getElementById('searchInput').value.trim();

        // Gửi yêu cầu AJAX tới server
        fetch('SearchServlet', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'keyword=' + encodeURIComponent(keyword)  // Nối chuỗi trong JavaScript thay vì template literals
        })
        .then(response => response.json())  // Nhận dữ liệu dưới dạng JSON từ server
        .then(data => {
            const listItems = document.querySelectorAll('.searchable-item');
            listItems.forEach(item => {
                // Kiểm tra xem item có khớp với từ khóa không
                const itemText = item.textContent.toLowerCase();
                if (itemText.includes(keyword.toLowerCase())) {
                    item.style.display = 'block'; // Hiển thị item
                } else {
                    item.style.display = 'none'; // Ẩn item không khớp
                }
            });
        })
        .catch(error => console.error('Error:', error));
    }
</script>
<script>
    // Dữ liệu thông tin chi tiết cho từng mục
    const detailsData = {
        1: "Học bổng học tập ở nước ngoài do ngân sách nhà nước cấp bao gồm chi phí học phí, sinh hoạt phí và các chi phí phát sinh khác. Sinh viên cần đáp ứng các tiêu chí về học lực và sức khỏe để được tham gia.",
    2: "Việc cấp văn bằng, chứng chỉ và công nhận văn bằng nước ngoài được thực hiện qua quy trình đánh giá và thẩm định của Bộ Giáo dục và Đào tạo. Các văn bằng nước ngoài sẽ được công nhận nếu đáp ứng các yêu cầu chất lượng và tiêu chuẩn quốc gia.",
    3: "Chính sách học bổng dành cho các sinh viên có hoàn cảnh khó khăn hoặc các ngành học trọng điểm. Chính sách hỗ trợ bao gồm học bổng toàn phần hoặc một phần, hỗ trợ sinh hoạt phí và các khoản trợ cấp khác.",
    4: "Quy trình chuyển trường cho sinh viên trong và ngoài nước được quy định rõ ràng. Sinh viên cần chuẩn bị hồ sơ chuyển trường bao gồm các giấy tờ học tập và giấy xác nhận từ trường cũ.",
    5: "Quy trình tuyển sinh vào các trường đại học bao gồm đăng ký trực tuyến, xét tuyển dựa trên kết quả học tập và kỳ thi quốc gia. Các tiêu chí tuyển sinh cũng bao gồm các yêu cầu về điểm số và các kỳ thi tuyển sinh đặc biệt.",
    6: "Chương trình đào tạo nâng cao trình độ chuyên môn bao gồm các khóa học sau đại học, các chứng chỉ chuyên môn, các chương trình đào tạo ngắn hạn và dài hạn nhằm nâng cao kỹ năng nghề nghiệp cho người lao động.",
    7: "Hỗ trợ du học sinh về nước bao gồm các chương trình hỗ trợ tài chính, tổ chức sự kiện kết nối giữa sinh viên và các cơ sở giáo dục trong nước, tạo điều kiện cho du học sinh trở về phát triển sự nghiệp.",
    8: "Thẩm định chương trình đào tạo được thực hiện để đánh giá chất lượng các chương trình học tại các trường đại học trong nước và quốc tế. Các yếu tố đánh giá bao gồm đội ngũ giảng viên, chất lượng đào tạo và cơ sở vật chất.",
    9: "Việc thẩm định và công nhận giáo viên nước ngoài được thực hiện qua các quy trình kiểm tra chất lượng giảng dạy, trình độ học vấn, và các yêu cầu về bằng cấp, chứng chỉ của giáo viên trước khi được công nhận giảng dạy tại Việt Nam.",
    10: "Điều kiện học sinh đạt chuẩn vào trường công lập bao gồm yêu cầu về học lực, kết quả xét tuyển và tham gia các kỳ thi tuyển sinh của trường. Các trường công lập cũng yêu cầu học sinh phải đáp ứng tiêu chuẩn sức khỏe và hành vi.",
    11: "Đánh giá và kiểm định chất lượng giáo dục là một quy trình liên tục được thực hiện để đảm bảo chất lượng các chương trình đào tạo tại các trường đại học. Các tiêu chí bao gồm giảng viên, cơ sở vật chất, và chương trình học.",
    12: "Quy trình tuyển sinh và nhập học tại các trường đại học bao gồm việc xét tuyển học bạ, kết quả thi tuyển sinh và yêu cầu về các chứng chỉ, giấy tờ cần thiết. Mỗi trường có thể có những yêu cầu riêng về đầu vào.",
    13: "Điều kiện chuyển tiếp học sinh giữa các cơ sở đào tạo bao gồm yêu cầu về kết quả học tập, phê duyệt của cơ sở đào tạo hiện tại và quy định của cơ sở đào tạo mới. Quá trình này thường yêu cầu sự tham gia của các phòng đào tạo và giám thị.",
    14: "Xét tuyển sinh viên vào các chương trình đào tạo quốc tế dựa trên các yếu tố như kết quả học tập, điểm thi SAT, IELTS, và các chứng chỉ quốc tế khác. Các chương trình này thường có mức học phí cao hơn và yêu cầu học sinh có năng lực vượt trội.",
    15: "Chính sách hỗ trợ chi phí học tập cho gia đình khó khăn bao gồm các chương trình học bổng, vay vốn sinh viên, và các hình thức hỗ trợ tài chính khác nhằm giúp đỡ học sinh sinh viên vượt qua khó khăn về tài chính trong quá trình học tập.",
    16: "Chính sách hỗ trợ học sinh khuyết tật bao gồm việc cung cấp các phương tiện hỗ trợ học tập, các lớp học đặc biệt, và các học bổng dành riêng cho học sinh khuyết tật, giúp các em tiếp cận giáo dục một cách công bằng.",
    17: "Quy định về học phí và các khoản đóng góp tại các cơ sở giáo dục công lập và tư thục được quy định theo từng cấp học và từng cơ sở đào tạo. Các khoản phí này bao gồm học phí, phí sinh hoạt, và các khoản phí khác.",
    18: "Xét duyệt tài trợ cho các chương trình nghiên cứu được thực hiện thông qua các quỹ hỗ trợ nghiên cứu quốc gia, các chương trình hợp tác quốc tế và các nguồn tài trợ từ các tổ chức phi lợi nhuận nhằm phát triển các dự án nghiên cứu khoa học.",
    19: "Chính sách miễn giảm học phí được áp dụng đối với các đối tượng đặc biệt như học sinh sinh viên có hoàn cảnh khó khăn, học sinh khuyết tật, hoặc các sinh viên đạt thành tích xuất sắc trong học tập.",
    20: "Quy trình bảo lưu kết quả học tập được áp dụng cho sinh viên khi gặp phải các lý do đặc biệt như sức khỏe, gia đình, hay các lý do chính đáng khác. Sinh viên có thể bảo lưu kết quả học tập để tiếp tục chương trình đào tạo khi có điều kiện."
    };

    function toggleDetails(id) {
        // Kiểm tra nếu thông tin chi tiết tồn tại
        if (detailsData[id]) {
            // Hiển thị thông tin chi tiết của mục qua alert
            alert("Thông tin chi tiết cho mục " + id + ": " + detailsData[id]);
        } else {
            alert("Thông tin không có sẵn cho mục này.");
        }
    }
</script>


</body>  
</html>
