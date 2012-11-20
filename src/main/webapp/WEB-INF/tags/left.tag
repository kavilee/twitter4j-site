﻿<div style="text-align:center">$[ja:<a id="lang-link" href="../en/index.html">English</a> | Japanese]$[en:English | <a id="lang-link" href="../ja/index.html">Japanese</a>]
</div><br>
<script>
var currentPage = location.href.substring(location.href.lastIndexOf("/") + 1);
$[ja:document.getElementById("lang-link").href="../en/"+ currentPage;]
$[en:document.getElementById("lang-link").href="../ja/"+ currentPage;]
if(-1 != currentPage.indexOf("#")){
  currentPage = currentPage.substring(0,currentPage.indexOf("#"));
}
function setVisibility(id,page){
  if(document.getElementById(id)){
   document.getElementById(id).style.display = (-1 != currentPage.indexOf(page)) ? "block" : "none";
  }
}
</script>
<ul>
<li><a href="index.html#introduction" onclick="return scrollGracefully(this.href)">$[ja:トップ]$[en:Main]</a></li>
 <ol style="display:none" id="index.html"></ol>
<li><a href="code-examples.html">$[ja:コード例]$[en:Code Examples]</a></li>
 <ol style="display:none" id="code-examples.html"></ol>
<li><a href="configuration.html">$[ja:設定]$[en:Configuration]</a></li>
 <ol style="display:none" id="configuration.html"></ol>
<li><a href="./javadoc.html">JavaDoc</a></li>
 <ol style="display:none" id="javadoc.html"></ol>
<li><a href="api-support.html">$[ja:サポートしているAPI]$[en:API Support matrix]</a></li>
 <ol style="display:none" id="api-support.html"></ol>
<li><a href="versions.html">$[ja:バージョン]$[en:Versions]</a></li>
 <ol style="display:none" id="versions.html"></ol>
<li><a href="development.html">$[ja:開発]$[en:Development]</a></li>
 <ol style="display:none" id="development.html"></ol>
<li><a href="faq.html">$[ja:よくある質問]$[en:FAQ]</a></li>
 <ol style="display:none" id="faq.html"></ol>
<li><a href="./powered-by.html">Powered By Twitter4J</a></li>
 <ol style="display:none" id="powered-by.html"></ol>
</ul>
<center>
    <iframe src="http://ghbtns.com/github-btn.html?user=yusuke&repo=twitter4j&type=fork" allowtransparency="true" frameborder="0" scrolling="0" width="53px" height="20px"></iframe>&nbsp;<iframe src="http://ghbtns.com/github-btn.html?user=yusuke&repo=twitter4j&type=watch&count=true"
      allowtransparency="true" frameborder="0" scrolling="0" width="110px" height="20px"></iframe>
    <br>
    <a href="https://twitter.com/t4j_news" class="twitter-follow-button" data-show-count="false">Follow @t4j_news</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
    <!-- like button-->
    <br>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/ja_JP/all.js#xfbml=1&appId=111515485621450";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <div class="fb-like" data-href="http://twitter4j.org/" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
</center>
