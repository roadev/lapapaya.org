tinymce.PluginManager.add("wordcount",function(e){function t(){e.theme.panel.find("#wordcount").text(["Words: {0}",a.getCount()])}var n,o,a=this;n=e.getParam("wordcount_countregex",/[\w\u2019\x27\-\u00C0-\u1FFF]+/g),o=e.getParam("wordcount_cleanregex",/[0-9.(),;:!?%#$?\x27\x22_+=\\\/\-]*/g),e.on("init",function(){var n=e.theme.panel&&e.theme.panel.find("#statusbar")[0];n&&window.setTimeout(function(){n.insert({type:"label",name:"wordcount",text:["Words: {0}",a.getCount()],classes:"wordcount",disabled:e.settings.readonly},0),e.on("setcontent beforeaddundo",t),e.on("keyup",function(e){32==e.keyCode&&t()})},0)}),a.getCount=function(){var t=e.getContent({format:"raw"}),a=0;if(t){t=t.replace(/\.\.\./g," "),t=t.replace(/<.[^<>]*?>/g," ").replace(/&nbsp;|&#160;/gi," "),t=t.replace(/(\w+)(&#?[a-z0-9]+;)+(\w+)/i,"$1$3").replace(/&.+?;/g," "),t=t.replace(o,"");var r=t.match(n);r&&(a=r.length)}return a}});