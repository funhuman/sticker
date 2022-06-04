web_list_html='';
// web_list.forEach(function (t) { web_list_html += `<div class="col-lg-3 col-md-4 col-xs-12"><div class="card"><div class="card-body"><image src="${t.href}" /><span class="card-title">${t.title}</span></div></div></div>`});
web_list.forEach(function (t) {
    web_list_html += `<li><image src="${t.href}" /></li>`
});


$(".web-list").html(web_list_html);
console.log("GitHub: https://github.com/funhuman/sticker")
