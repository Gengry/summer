<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>
<%@ include file="/WEB-INF/views/top.jsp"%>
<!-- </head>
<body class="hold-transition skin-yellow sidebar-mini"> -->

		<%@ include file="/WEB-INF/views/left.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header" style="display: none">
				<h1>
					Summer 进销存管理系统 <small>专为线缆行业设计</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>首页</a></li>
				</ol>
			</section>
			<section class="content">
				<!--  <iframe id="mainFrame" name="mainFrame"  src="http://www.baidu.com"
             style="border:0 ;padding: 0px; width: 100%; height: 100%;"></iframe>  -->
             	<section id="overview">
          <div class="page-header">
            <h1>Bootstrap中的JavaScript</h1>
          </div>

          <h3>引入单个插件还是一次性引入所有插件</h3>
          <p>每个插件都可以单独的引入到页面中（注意插件间的依赖关系），或者一次性引入。<strong>bootstrap.js</strong> 和<strong>bootstrap.min.js</strong> 文件都将所有插件包含在一个文件中了（前者是未压缩版，后者是压缩版）。</p>

          <h3>Data 属性</h3>
          <p>你可以仅仅通过data属性API就能使用所有Bootstrap中的插件，而且不用写一行JavaScript代码。这是Bootstrap中的一等API，并且是你的首选方式。</p>

          <p>特殊情况是，在某些情况下可能需要特意禁用这种默认动作。因此，我们特地提供了禁用data属性API的方式，通过解除绑定在body上的被命名为`'data-api'`的事件即可实现。如下所示：
          </p><pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="pln">$</span><span class="pun">(</span><span class="str">'body'</span><span class="pun">).</span><span class="pln">off</span><span class="pun">(</span><span class="str">'.data-api'</span><span class="pun">)</span></li></ol></pre>

          <p>还可以解除特定插件的事件绑定，只要将插件名和data-api链接在一起作为参数使用。如下所示：</p>
          <pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="pln">$</span><span class="pun">(</span><span class="str">'body'</span><span class="pun">).</span><span class="pln">off</span><span class="pun">(</span><span class="str">'.alert.data-api'</span><span class="pun">)</span></li></ol></pre>

          <h3>编程API</h3>
          <p>我们同时为所有Bootstrap插件提供了JavaScript API。所有公开的API都可以单独或链式调用，均返回其所操作的集合（和jQuery的API一致）。</p>
          <pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="pln">$</span><span class="pun">(</span><span class="str">".btn.danger"</span><span class="pun">).</span><span class="pln">button</span><span class="pun">(</span><span class="str">"toggle"</span><span class="pun">).</span><span class="pln">addClass</span><span class="pun">(</span><span class="str">"fat"</span><span class="pun">)</span></li></ol></pre>
          <p>所有方法均可接受一个可选的参数对象、一个对此方法有特定意义的字符串或者什么也不传（即用默认参数初始化此插件）：</p>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="pln">$</span><span class="pun">(</span><span class="str">"#myModal"</span><span class="pun">).</span><span class="pln">modal</span><span class="pun">()</span><span class="pln">                       </span><span class="com">// initialized with defaults</span></li><li class="L1"><span class="pln">$</span><span class="pun">(</span><span class="str">"#myModal"</span><span class="pun">).</span><span class="pln">modal</span><span class="pun">({</span><span class="pln"> keyboard</span><span class="pun">:</span><span class="pln"> </span><span class="kwd">false</span><span class="pln"> </span><span class="pun">})</span><span class="pln">   </span><span class="com">// initialized with no keyboard</span></li><li class="L2"><span class="pln">$</span><span class="pun">(</span><span class="str">"#myModal"</span><span class="pun">).</span><span class="pln">modal</span><span class="pun">(</span><span class="str">'show'</span><span class="pun">)</span><span class="pln">                </span><span class="com">// initializes and invokes show immediately</span><p></p></li></ol></pre>
          <p>每个插件都通过`Constructor` 属性暴露了其原始的构造函数：<code>$.fn.popover.Constructor</code>。如果你想获得某个特定插件的实例，可以直接从页面元素中获取：<code>$('[rel=popover]').data('popover')</code>.</p>

          <h3>避免冲突</h3>
          <p>如果你需要将Bootstrap插件和其它UI框架一同使用。在这种情况下，随时都会导致命名空间冲突。如果这种情况发生了，你可以通过调用插件的 <code>.noConflict</code> 函数恢复其原始值。</p>

<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="kwd">var</span><span class="pln"> bootstrapButton </span><span class="pun">=</span><span class="pln"> $</span><span class="pun">.</span><span class="pln">fn</span><span class="pun">.</span><span class="pln">button</span><span class="pun">.</span><span class="pln">noConflict</span><span class="pun">()</span><span class="pln"> </span><span class="com">// return $.fn.button to previously assigned value</span></li><li class="L1"><span class="pln">$</span><span class="pun">.</span><span class="pln">fn</span><span class="pun">.</span><span class="pln">bootstrapBtn </span><span class="pun">=</span><span class="pln"> bootstrapButton            </span><span class="com">// give $().bootstrapBtn the bootstrap functionality</span></li></ol></pre>

          <h3>事件</h3>
          <p>Bootstrap对多数插件的独有行为提供了自定义事件。 一般而言，这些事件都是以（英语）动词的原型和过去分词形式来表示的 - 动词原形形式的(例如： <code>show</code>) 在事件执行之前触发；过去分词形式的(例如：<code>shown</code>) 在动作执行完毕后触发。</p>
          <p>所有动词原形形式的事件都提供了preventDefault函数。这能在动作执行之前使其停止。</p>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="pln">$</span><span class="pun">(</span><span class="str">'#myModal'</span><span class="pun">).</span><span class="pln">on</span><span class="pun">(</span><span class="str">'show'</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">function</span><span class="pln"> </span><span class="pun">(</span><span class="pln">e</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span></li><li class="L1"><span class="pln">    </span><span class="kwd">if</span><span class="pln"> </span><span class="pun">(!</span><span class="pln">data</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">return</span><span class="pln"> e</span><span class="pun">.</span><span class="pln">preventDefault</span><span class="pun">()</span><span class="pln"> </span><span class="com">// stops modal from being shown</span></li><li class="L2"><span class="pun">})</span></li></ol></pre>
        </section>
			 </section>
		</div>
		<%@ include file="/WEB-INF/views/foot.jsp"%>
	</div>
	<script type="text/javascript">
   		/* $(function(){
   			var h=window.innerHeight
   			|| document.documentElement.clientHeight
   			|| document.body.clientHeight;
   			var hx = $("header").outerHeight()+$(".content-header").outerHeight()+$(".main-footer").outerHeight();
   			$(".content").css({"height":h-hx,"padding":"0px","padding-top":"5px"});
   		}); */
   		$(function(){
   			var w=window.innerWidth
   			|| document.documentElement.clientWidth
   			|| document.body.clientWidth;
   			if(w>800){
   				$(".content-header").css("display","");
   			}
   		});
    </script>
</body>
</html>