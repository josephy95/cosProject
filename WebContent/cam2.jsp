<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 파일 선택해서 이미지 인식 -->
<section id="wrapper">
    <header>
      <h1>File API (simple)</h1>
    </header>

<article>
  <p id="status" class="success">File API &amp; FileReader available</p>
  <p><input type="file"></p>
  <p>Select an image from your machine to read the contents of the file without using a server</p>
  <div id="holder">
  <div onclick=""> onclick</div>
  </div>

<script>
    // div에 onclick이벤트를 줘서 div를 클릭했을경우 test라는 함수를 호출합니다.
    // 호출 시 "테스트2입니다요."라는 alert가 뜬다.
    function test(){ 
        alert("제보목록에 추가되었습니다.");
    }
</script>
 
<div onclick="test()">
    안녕하세요
</div>
 

  
  
</article>
<script>
var upload = document.getElementsByTagName('input')[0],
    holder = document.getElementById('holder'),
    state = document.getElementById('status');

if (typeof window.FileReader === 'undefined') {
  state.className = 'fail';
} else {
  state.className = 'success';
  state.innerHTML = 'File API & FileReader available';
}
 
upload.onchange = function (e) {
  e.preventDefault();

  var file = upload.files[0],
      reader = new FileReader();
  reader.onload = function (event) {
    var img = new Image();
    img.src = event.target.result;
    // note: no onload required since we've got the dataurl...I think! :)
    if (img.width > 560) { // holder width
      img.width = 560;
    }
    holder.innerHTML = '';
    holder.appendChild(img);
  };
  reader.readAsDataURL(file);

  return false;
};
</script>
	</section>
</body>
</html>