webpackJsonp([0],{1208:function(e,t,n){"use strict";function a(e){return e&&e.__esModule?e:{default:e}}function i(){function e(){a&&(b.default.unmountComponentAtNode(n),a=null)}function t(){a&&e(),b.default.render(S.default.createElement(W,{position:{left:document.body.clientWidth-340,top:5},open:!0,onRequestClose:e}),n,function(){a=this})}var n=document.createElement("div");document.body.appendChild(n);var a=void 0;return{show:t,destroy:e}}Object.defineProperty(t,"__esModule",{value:!0});var s=n(10),r=a(s),l=n(75),o=a(l),d=n(11),u=a(d),c=n(1),f=a(c),p=n(2),m=a(p),h=n(5),g=a(h),_=n(4),v=a(_),y=n(3),M=a(y);t.userProfileCard=i;var E=n(0),S=a(E),w=n(16),b=a(w),N=n(8),k=n(41),C=a(k),q=n(6),P=n(55),x=a(P),T=n(1236),U=a(T),L=n(15),I=n(13),R=function(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var n in e)Object.prototype.hasOwnProperty.call(e,n)&&(t[n]=e[n]);return t.default=e,t}(I),O={normal:"#00cf72",waining:"#ffb743",error:"#ff5555"},W=function(e){function t(e){(0,m.default)(this,t);var n=(0,v.default)(this,(t.__proto__||(0,f.default)(t)).call(this,e));return n.handleResize=(0,q.throttle)(function(){var e=n.state.position,t=(0,u.default)({},e,{left:document.body.clientWidth-340});n.setStateSafe({position:t})}),n.toggleUpgrade=function(){window.sync_v2?window.sync_v2.popWebLoginedUrl(q.config.base_url+"/apps/files/desktop/files/own?upgrade=1"):n.setStateSafe({showUpgrade:!0})},n.handleLogout=function(e){window.sync_v2&&window.sync_v2.userReloginConfirm?n.syncFunction(e,"userReloginConfirm"):n.syncFunction(e,"userRelogin")},n.handleOpenCalender=function(e){n.syncFunction(e,"popWebLoginedUrl",q.config.base_url+"/calendar"),n.props.onRequestClose()},n.handlePopSettings=function(e){n.syncFunction(e,"popSettingsWindow"),window.sync_v2&&n.props.onRequestClose()},n.state={spaceTotal:0,spaceUsed:0,isFetching:!0,open:!1,showUpgrade:e.showUpgrade,position:e.position},n}return(0,M.default)(t,e),(0,g.default)(t,[{key:"componentDidMount",value:function(){var e=this;(0,q.ajax)({url:R.USER_ACCOUNT}).then(function(t){if(t&&t.success){e.setState({spaceTotal:t.space_total,spaceUsed:t.space_used,storage:t.storage,isFetching:!1});if(e.props.renderInline&&window.sync_v2&&window.sync_v2.pop&&e.refs.profile){var n=e.refs.profile.getBoundingClientRect(),a=n.width,i=n.height;window.sync_v2.pop((0,o.default)({width:a,height:i}))}}}),this.state.position&&window.addEventListener("resize",this.handleResize)}},{key:"componentWillUnmount",value:function(){this.isUnmount=!0,this.state.position&&window.removeEventListener("resize",this.handleResize)}},{key:"setStateSafe",value:function(e){this.isUnmount||this.setState(e)}},{key:"renderVerification",value:function(e,t,n,a){if(q.config.is_resource_custom_enterprise)return null;var i={className:"verify-tips",placement:"bottom-left",offset:[2,-35],destroyPopupOnHide:!0};return e?t?S.default.createElement(L.Popover,(0,r.default)({content:S.default.createElement("div",null,t&&S.default.createElement("span",null,(0,N.defineMessage)({id:"base.verifiedAt",defaultMessage:"验证时间：{0}"},(0,q.formatDate)(1e3*t,"%YY-%MM-%DD %hh:%mm"))),a?"phone"===n?(0,N.defineMessage)({id:"base.login.phone",defaultMessage:"可用于登录、找回密码"}):(0,N.defineMessage)({id:"base.login.email",defaultMessage:"可用于登录、找回密码、收取通知邮件"}):"")},i),S.default.createElement("span",null,S.default.createElement("svg",{className:"type-icon","aria-hidden":"true"},S.default.createElement("use",{xlinkHref:"#icon-verification"})))):S.default.createElement("span",null,S.default.createElement("svg",{className:"type-icon","aria-hidden":"true"},S.default.createElement("use",{xlinkHref:"#icon-verification"}))):S.default.createElement(L.Popover,(0,r.default)({content:(0,N.defineMessage)({id:"base.unVerification",defaultMessage:"未验证，请前往 设置-帐号设置 进行验证"})},i),S.default.createElement("span",null,S.default.createElement("svg",{className:"type-icon","aria-hidden":"true"},S.default.createElement("use",{xlinkHref:"#icon-unverification1"}))))}},{key:"syncFunction",value:function(e,t,n){window.sync_v2&&(e.preventDefault(),window.sync_v2[t]&&(n?window.sync_v2[t](n):window.sync_v2[t]()))}},{key:"render",value:function(){var e=this.state,t=e.spaceUsed,n=e.spaceTotal,a=e.isFetching,i=e.showUpgrade,s=e.position,l=e.storage,o=this.props,d=o.basedEl,u=o.onRequestClose,c=o.open,f=o.renderInline,p=(0,N.defineMessage)({id:"base.size.used",defaultMessage:"已用 {0}"},(0,q.approxSize)(t)),m=n<0?(0,N.defineMessage)({id:"base.unlimited",defaultMessage:"无限"}):(0,N.defineMessage)({id:"base.size.total",defaultMessage:"共 {0}"},(0,q.approxSize)(n)),h=!(n<=0)&&parseInt(100*t/n);!1!==h&&(h=Math.min(100,h));var g=void 0;!1!==h&&(g=h<80?O.normal:h<90?O.waining:O.error);var _=void 0;if(d?_={basedEl:d,basedOrigin:{vertical:"bottom",horizontal:"right"},targetOrigin:{vertical:"top",horizontal:"right"}}:s&&(_={position:s}),i)return S.default.createElement(U.default,{onRequestClose:u});var v=!a&&S.default.createElement("div",{className:"login-user-card card person-card"+(0!=n?"":" person-space-colse"),ref:"profile"},S.default.createElement(x.default,{className:"card-avatar",size:48,id:q.loginUser.id,profile_pic_key:q.loginUser.profile_pic_key,name_first_letter:q.loginUser.name_first_letter,name:q.loginUser.name}),S.default.createElement("div",{className:"card-name",title:q.loginUser.name},q.loginUser.name),S.default.createElement("div",{className:"space-info"},!1!==h?S.default.createElement("div",{className:"space-size-bar"},S.default.createElement("div",{className:"size-used-percent",style:{width:h+"%",backgroundColor:g}})):null,0!=n&&S.default.createElement("div",{className:"space-size-detail"},p+"/"+m,l&&S.default.createElement(L.Popover,{content:(0,N.defineMessage)({id:"file.storage.alias",defaultMessage:"所属存储："})+l.alias,className:"storage-popover"},S.default.createElement("i",{className:"iconfont icon-info"})))),S.default.createElement("div",{className:"card-info person-info"},q.loginUser.email&&S.default.createElement("div",{className:"info-group"},S.default.createElement("span",{className:"label"},""+(0,N.defineMessage)({id:"base.email",defaultMessage:"邮箱"})+(0,N.defineMessage)({id:"base.colon",defaultMessage:"："})),this.renderVerification(q.loginUser.is_email_verified,q.loginUser.email_verified_at,"email",!1),q.loginUser.email),q.loginUser.phone&&S.default.createElement("div",{className:"info-group"},S.default.createElement("span",{className:"label"},""+(0,N.defineMessage)({id:"base.mobile",defaultMessage:"手机"})+(0,N.defineMessage)({id:"base.colon",defaultMessage:"："})),this.renderVerification(q.loginUser.is_phone_verified,q.loginUser.phone_verified_at,"phone",!1),q.loginUser.phone),q.loginUser.company_name?S.default.createElement("div",{className:"info-group"},S.default.createElement("span",{className:"label"},""+(0,N.defineMessage)({id:"base.enterprise",defaultMessage:"企业"})+(0,N.defineMessage)({id:"base.colon",defaultMessage:"："})),q.loginUser.company_name):S.default.createElement("div",{className:"personal-upgrade"},(0,N.defineMessage)({id:"base.upgradeToGetMore",defaultMessage:"升级企业套餐享受更多功能"}),"(",S.default.createElement("span",{onClick:this.toggleUpgrade},(0,N.defineMessage)({id:"base.getDetails",defaultMessage:"了解详情"})),")"),!q.config.is_resource_custom_enterprise&&"fail_to_verify"===q.config.enterprise_admin_user_real_name_identity_status&&(q.config.enterprise_is_category1_enterprise||q.config.enterprise_is_category3_enterprise)&&S.default.createElement("div",{className:"identify-status"},S.default.createElement("div",{className:"fail-to-verify"},S.default.createElement("svg",{className:"type-icon","aria-hidden":"true"},S.default.createElement("use",{xlinkHref:"#icon-unverification1"})),q.config.enterprise_is_personal_user_enterprise?(0,N.defineMessage)({id:"verify.unverified.",defaultMessage:"未实名认证"}):q.loginUser.is_admin_of_enterprise?(0,N.defineMessage)({id:"verify.admin.unverified",defaultMessage:"未完成管理员实名认证"}):(0,N.defineMessage)({id:"verify.enterprise.unverified",defaultMessage:"管理员未完成实名认证"})),S.default.createElement("div",{className:"verify-desc"},S.default.createElement("p",null,q.config.enterprise_is_personal_user_enterprise?(0,N.defineMessage)({id:"share.verifyLimit.disabled",defaultMessage:"你将无法使用分享功能"}):(0,N.defineMessage)({id:"share.verifyLimit.memberOnly",defaultMessage:"所有分享链接仅限公司成员访问"})),(!q.config.enterprise_is_personal_user_enterprise&&q.loginUser.is_admin_of_enterprise||q.config.enterprise_is_personal_user_enterprise)&&S.default.createElement("p",null,(0,N.defineMessage)({id:"verify.appCheck",defaultMessage:"请前往APP进行实名认证"}),"(",S.default.createElement("a",{href:"http://help.fangcloud.com/posts/view/1012760",target:"_blank"},(0,N.defineMessage)({id:"verify.detailLink",defaultMessage:"查看详情"})),")")))),S.default.createElement("div",{className:"card-actions"},q.config.show_calendar&&S.default.createElement("a",{className:"action-box",href:"/calendar",target:"_blank",onClick:this.handleOpenCalender},S.default.createElement("svg",{className:"type-icon","aria-hidden":"true"},S.default.createElement("use",{xlinkHref:"#icon-calendar"})),S.default.createElement("span",null,(0,N.defineMessage)({id:"base.calendar",defaultMessage:"日历"}))),S.default.createElement("a",{className:"action-box",href:"/user_settings/index",onClick:this.handlePopSettings},S.default.createElement("svg",{className:"type-icon","aria-hidden":"true"},S.default.createElement("use",{xlinkHref:"#icon-set"})),S.default.createElement("span",null,(0,N.defineMessage)({id:"base.setting",defaultMessage:"设置"}))),S.default.createElement("a",{href:"/sso/logout",onClick:this.handleLogout,className:"btn btn-logout btn-default"},S.default.createElement("span",null,(0,N.defineMessage)({id:"base.logout",defaultMessage:"退出登录"})))));return f?v:S.default.createElement(C.default,(0,r.default)({open:c,useLayerForClickAway:!0,onRequestClose:u,layerZIndex:100},_),v)}}]),t}(E.Component);t.default=W},1209:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var a=n(1238),i=function(e){return e&&e.__esModule?e:{default:e}}(a);t.default=i.default},1210:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=n(11),i=function(e){return e&&e.__esModule?e:{default:e}}(a),s={_params:null,setParams:function(e){this._params=(0,i.default)({},e)},getParams:function(){return this._params},clear:function(){this._params=null}};t.default=s},1236:function(e,t,n){"use strict";function a(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var i=n(1),s=a(i),r=n(2),l=a(r),o=n(5),d=a(o),u=n(4),c=a(u),f=n(3),p=a(f),m=n(0),h=a(m),g=n(8),_=n(6),v=n(67),y=a(v),M=n(117),E=a(M),S=n(36),w=a(S);n(557);var b=n(881),N=n(9),k=a(N),C=n(13),q=function(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var n in e)Object.prototype.hasOwnProperty.call(e,n)&&(t[n]=e[n]);return t.default=e,t}(C),P=function(e){function t(e){(0,l.default)(this,t);var n=(0,c.default)(this,(t.__proto__||(0,s.default)(t)).call(this,e));return n.handleSelectPlan=function(e){n.setState({currentStep:2,selectPlan:e})},n.handleReselect=function(){n.setState({currentStep:1})},n.handleNameSubmit=function(){var e=n.refs.name.value.trim(),t=n.state.selectPlan;n.setState({actionState:"loading"}),(0,_.ajax)({url:q.PERSONAL_ACCOUNT_UPGRADE,data:{plan_id:t,company_name:e},accept_all_errors:!0,parser:function(t){if(t.errors){var a=t.errors;if(a.validation_errors||a.external_errors){var i=a.validation_errors||a.external_errors;n.setState({errmsg:i[0].error_tr_msg,actionState:"error"})}}else n.setState({actionState:"success",currentStep:3,enterpriseName:e},function(){return n.gotoPlan(n.state.timeLeft)})}})},n.gotoPlan=function(e){e>0?(n.setState({timeLeft:e-1}),n.timer=setTimeout(function(){return n.gotoPlan(e-1)},1e3)):window.location.reload()},n.handleOnChange=function(e){var t=e.currentTarget.value;if(t!==n.state.enterpriseName){var a={errmsg:null};!0===n.state.invalid&&(a.invalid=!1),t.trim()||(a.invalid=!0),n.setState(a)}},n.renderActionButton=function(e){return h.default.createElement(y.default,{type:"text-primary",onClick:function(){return n.handleSelectPlan(e)}},13===e?(0,g.defineMessage)({id:"base.upgradeNow",defaultMessage:"立即升级"}):(0,g.defineMessage)({id:"base.freeFor15Days",defaultMessage:"免费15天试用"}))},n.state={plans:[],currentStep:1,selectPlan:0,actionState:"",errmsg:null,invalid:!0,enterpriseName:null,timeLeft:6},n}return(0,p.default)(t,e),(0,d.default)(t,[{key:"componentWillMount",value:function(){var e=this;(0,_.ajax)({url:q.GET_PLANS+"?is_personal=1",parser:function(t){e.setState({plans:t.plans.filter(function(e){return[13,15].includes(e.id)})})}})}},{key:"render",value:function(){var e=this,t=this.state,n=t.plans,a=t.currentStep,i=t.selectPlan,s=t.enterpriseName,r=t.timeLeft,l=t.errmsg,o=t.invalid,d=t.actionState,u=this.props.onRequestClose,c=[{index:1,value:1,text:(0,g.defineMessage)({id:"base.choosePlan",defaultMessage:"选择套餐"})},{index:2,value:2,text:(0,g.defineMessage)({id:"base.improveInformation",defaultMessage:"完善信息"})},{index:3,value:h.default.createElement("i",{className:"iconfont icon-btn-ok"}),text:(0,g.defineMessage)({id:"base.upgradeSuccess",defaultMessage:"升级成功"})}];return h.default.createElement(w.default,{open:!0,title:(0,g.defineMessage)({id:"base.upgradeTitle",defaultMessage:"升级企业套餐"}),className:"dialog-upgrade",onClose:u,modal:!0,offsetTop:0},h.default.createElement("div",{className:"step-list"},c.map(function(e){return h.default.createElement("div",{className:"step",key:e.index},3!==e.index&&h.default.createElement("div",{className:(0,k.default)("line",a>e.index&&"line-done")}),h.default.createElement("div",{className:(0,k.default)("step-index",{current:e.index===a,done:e.index<a})},e.value),h.default.createElement("div",{className:"step-text"},e.text))})),1===a&&(0,b.PlanUlList)(n,this.renderActionButton),2===a&&h.default.createElement("div",{className:"enter-enterprise-name"},h.default.createElement("p",null,(0,g.defineMessage)({id:"improveInformationToUpgrade",defaultMessage:"完善信息，即可升级至"}),h.default.createElement("span",{className:"plan-selected-name"},b.planNameList[i])),h.default.createElement("div",{className:"input-container"},h.default.createElement("input",{className:l?"error":"",onChange:this.handleOnChange,type:"text",placeholder:(0,g.defineMessage)({id:"base.enterYourEnterpriseName",defaultMessage:"请输入你的企业名称"}),maxLength:"30",ref:"name"}),l?h.default.createElement("div",{className:"errmsg"},l):null),h.default.createElement(y.default,{type:"primary",actionState:d,disabled:!!l||o,onClick:this.handleNameSubmit},(0,g.defineMessage)({id:"base.submit",defaultMessage:"提交"})),h.default.createElement("button",{className:"btn btn-reselect",onClick:this.handleReselect},(0,g.defineMessage)({id:"base.reSelectPlan",defaultMessage:"重选套餐"}))),3===a&&h.default.createElement("div",{className:"upgrade-success"},h.default.createElement("div",{className:"enterprise-name",title:s},s),h.default.createElement("div",{className:"success-tip"},(0,g.defineMessage)({id:"base.congrateUpgradeSuccess",defaultMessage:"恭喜你，升级套餐成功!"})),h.default.createElement("button",{className:"btn btn-primary",onClick:function(){return e.gotoPlan(0)}},(0,g.defineMessage)({id:"base.enterNow",defaultMessage:"立即进入"}),b.planNameList[i],"(",r,"s)")),h.default.createElement(E.default,{onEsc:u}))}}]),t}(m.Component);t.default=P},1237:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=n(0),i=function(e){return e&&e.__esModule?e:{default:e}}(a),s=n(8),r=n(6),l=n(19),o=function(e){var t=(0,r.escapeHTML)(e.highlighted_name),n={type:e.type,extension:e.extension,extension_category:e.extension_category};(0,l.setThumbIcon)(n);var a={};e.onClick&&(a.onClick=function(t){return e.onClick({type:e.type,id:e.id},t)});var o=(0,l.getParentName)(e.parent,e.department);return i.default.createElement("li",a,i.default.createElement("svg",{className:"type-icon","aria-hidden":"true"},i.default.createElement("use",{xlinkHref:"#icon-"+n.type_icon})),i.default.createElement("div",{className:"item-name pre-ellipsis",dangerouslySetInnerHTML:{__html:t}}),i.default.createElement("div",{className:"parent ellipsis"},i.default.createElement("span",null,(0,s.defineMessage)({id:"search.in",defaultMessage:"在"}))," ",o))};t.default=o},1238:function(e,t,n){"use strict";function a(e){return e&&e.__esModule?e:{default:e}}function i(e,t,n){function a(){r&&(b.default.unmountComponentAtNode(s),r=null)}function i(a){var i=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"file",l=arguments[2],o=arguments[3],d=arguments[4],u=arguments[5],c=arguments[6],f=arguments[7];b.default.render(S.default.createElement(F,{onLoading:e,queryWords:a,queryType:i,currentFolder:l,left:o,top:d,showOverlay:u,queryInfo:t,queryString:c,webSearch:f,renderInContainer:n}),s,function(){r=this})}var s=document.createElement("div");document.body.appendChild(s);var r=void 0;return{doSearch:i,destroy:a}}Object.defineProperty(t,"__esModule",{value:!0});var s=n(10),r=a(s),l=n(11),o=a(l),d=n(75),u=a(d),c=n(1),f=a(c),p=n(2),m=a(p),h=n(5),g=a(h),_=n(4),v=a(_),y=n(3),M=a(y);t.default=i;var E=n(0),S=a(E),w=n(16),b=a(w),N=n(41),k=a(N),C=n(6),q=n(547),P=a(q),x=n(8),T=n(13),U=function(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var n in e)Object.prototype.hasOwnProperty.call(e,n)&&(t[n]=e[n]);return t.default=e,t}(T),L=n(1237),I=a(L),R=n(14),O=n(1210),W=a(O),A=C.config.base_name+"search",F=function(e){function t(e){(0,m.default)(this,t);var n=(0,v.default)(this,(t.__proto__||(0,f.default)(t)).call(this,e));n.handleRequestClose=function(){n.setStateSafe({open:!1})},n.handleItemSelect=function(e){var t=n.state.queryType;W.default.clear(),"file"===t&&n.openLink(C.config.base_name+"files/"+e.type+"/"+e.id+("file"===e.type?"?preview="+e.id:""))},n.handleOpenLink=function(e){W.default.clear();var t=e.currentTarget.getAttribute("data-href");n.openLink(t)},n.handleClearHistory=function(){(0,C.ajax)({url:U.CLEAR_SEARCH_HISTORY}).then(function(e){if(e.success){var t={recent:[]};""===n.props.queryWords&&(t.open=!1),window.sync_v2&&window.sync_v2.closeSearchWindow&&window.sync_v2.closeSearchWindow(),n.setStateSafe(t)}})},n.state={open:!1,items:[],num_found:0,messages:[],message_num_found:[],recent:[],queryWords:"",queryType:""};var a=e.queryInfo;return a&&P.default.setInfo(a.space,a.id,a.name),n}return(0,M.default)(t,e),(0,g.default)(t,[{key:"componentWillReceiveProps",value:function(e){var t=e.queryWords,n=e.queryType,a=e.currentFolder,i=e.queryString;if(t!==this.props.queryWords||n!==this.props.queryType){if(""!==t){if(this.fetchQuickSearch(t,n,a,i),"message"===n)return}else this.fetchRecentSearch();this.setState({open:!1})}else this.setState({open:!0})}},{key:"componentDidMount",value:function(){var e=this.props,t=e.queryWords,n=e.queryType,a=e.currentFolder,i=e.queryString;""!==t?this.fetchQuickSearch(t,n,a,i):this.fetchRecentSearch()}},{key:"componentDidUpdate",value:function(){if(this.props.renderInContainer&&window.sync_v2&&window.sync_v2.pop){var e=document.querySelector(".quick-search-popover");if(e){var t=e.getBoundingClientRect(),n=t.width,a=t.height;window.sync_v2.pop((0,u.default)({width:n,height:a}))}}}},{key:"componentWillUnmount",value:function(){this.unMount=!0}},{key:"setStateSafe",value:function(e){this.unMount||this.setState(e)}},{key:"fetchQuickSearch",value:function(e,t,n,a){var i=this;if(""!==e&&"message"===t)return void setTimeout(function(){return i.setState({open:!0,queryWords:e,queryType:t})},0);var s=("file"===t?U.QUICK_SEARCH:U.MESSAGE_SEARCH)+"?query_words="+encodeURIComponent(e);a&&(s+="&"+a),this.props.onLoading(!0),(0,C.ajax)({url:s}).then(function(n){if(n&&n.success&&i.props.queryType===t&&i.props.queryWords===e&&i.props.queryString==a)if("file"===t){var s={items:n.items.slice(0,5),num_found:n.num_found,queryWords:i.props.queryWords,queryType:i.props.queryType};s.open=!0,i.setStateSafe(s)}else if("message"===t){var r={messages:n.messages.slice(0,5),message_num_found:n.num_found,queryWords:i.props.queryWords,queryType:i.props.queryType};n.messages.length>0?r.open=!0:r.open=!1,i.setStateSafe(r)}i.props.onLoading(!1)})}},{key:"fetchRecentSearch",value:function(){var e=this;(0,C.ajax)({url:U.SEARCH_SUGGESTION}).then(function(t){if(t&&t.success&&""===e.props.queryWords){var n={recent:t.search_words.slice(0,10),queryWords:""};t.search_words.length>0?n.open=!0:(n.open=!1,e.props.renderInContainer&&window.sync_v2&&window.sync_v2.pop&&window.sync_v2.pop((0,u.default)({width:0,height:0}))),e.setStateSafe(n)}})}},{key:"openLink",value:function(e){setTimeout(function(){return(0,C.openNewTab)(e)},0),this.handleRequestClose()}},{key:"renderRecentSearch",value:function(){var e=this,t=this.state.recent,n=this.props.queryString;return[S.default.createElement("div",{key:"history-title",className:"history-title"},(0,x.defineMessage)({id:"search.historyTitle",defaultMessage:"搜索历史"})),S.default.createElement("ul",{key:"recent-list",className:"recent-list"},t.map(function(t,a){var i=A+"?query_words="+encodeURIComponent(t.word)+"&query_type="+e.props.queryType+(n?"&"+n:"");return S.default.createElement("li",{key:a},S.default.createElement("a",{className:"ellipsis","data-href":i,onClick:e.handleOpenLink},t.word))})),S.default.createElement("div",{key:"clear-history",className:"clear-history",onClick:this.handleClearHistory},S.default.createElement(R.SvgIcon,{className:"type-icon",icon:"delete"}),(0,x.defineMessage)({id:"search.clearHistory",defaultMessage:"清空记录"}))]}},{key:"renderSearchItems",value:function(){var e=this,t=this.state,n=t.queryType,a=t.queryWords,i="file"===n?this.state.items:this.state.messages,s=I.default;return i.length>0&&S.default.createElement("ul",{className:"quick-search"},"file"===n&&i.map(function(t){var n=(0,o.default)({},t,{queryWords:a,key:t.type+"_"+t.id});return S.default.createElement(s,(0,r.default)({},n,{onClick:e.handleItemSelect}))}))}},{key:"renderContent",value:function(){var e=this.state,t=e.items,n=e.recent,a=e.messages,i=e.queryWords;return 0===t.length&&0===n.length&&0===a.length?null:0!==n.length&&""===i?this.renderRecentSearch():""!==i?this.renderSearchItems():null}},{key:"renderViewMore",value:function(){var e=this.state,t=e.queryType,n=e.queryWords,a=e.items,i=this.props,s=i.queryString,r=i.webSearch,l=""!==n&&"file"===t,o=P.default.getInfo();if(l){var d=A+"?query_words="+n+"&query_type="+t,u=s?d+"&"+s:d;return S.default.createElement("div",{className:"view-more"+(a.length>0?" has-results":"")},!r&&S.default.createElement("a",{"data-href":d,onClick:this.handleOpenLink},(0,x.defineMessage)({id:"file.selector.searchIn",defaultMessage:"在 {0} 中搜索"},(0,x.defineMessage)({id:"file.allFile",defaultMessage:"全部文件"}))),P.default.canSearchIn()&&!r&&S.default.createElement("a",{"data-href":""+C.config.base_name+P.default.getSearchLink(n),onClick:this.handleOpenLink,dangerouslySetInnerHTML:{__html:(0,x.defineMessage)({id:"file.selector.searchIn",defaultMessage:"在 {0} 中搜索"},"folder"===o.space?'“<span class="ellipsis">'+o.name+"</span>”":'<span class="ellipsis">'+o.name+"</span>")}}),r&&S.default.createElement("a",{"data-href":u,onClick:this.handleOpenLink},(0,x.defineMessage)({id:"search.viewMore",defaultMessage:"查看更多搜索结果"})))}return null}},{key:"render",value:function(){var e=this.props,t=e.left,n=e.top,a=e.showOverlay,i={useLayerForClickAway:!a,position:{top:n||0,left:t||0},open:this.state.open,onRequestClose:this.handleRequestClose,className:"quick-search-popover",borderLimit:!1};return S.default.createElement(k.default,i,a&&S.default.createElement("div",{className:"overlay-mask",onClick:this.handleRequestClose}),this.renderContent(),this.renderViewMore())}}]),t}(E.Component);F.propTypes={queryType:E.PropTypes.oneOf(["file","message"]).isRequired,queryWords:E.PropTypes.string},F.defaultProps={queryWords:"",onLoading:function(){}}},193:function(e,t,n){"use strict";function a(e){return e&&e.__esModule?e:{default:e}}var i=n(12),s=a(i),r=n(75),l=a(r),o=n(1209),d=a(o),u=n(1208),c=n(6),f=(0,d.default)(),p=f.doSearch,m=f.destroy,h=(0,u.userProfileCard)(),g=(0,c.debounce)(p,200),_={search_type:"file",search_text:"",space:"",search_in_folder:"",input_position:0,upload_target:null,upload_files:{},files_for_detect:{},upload_error:null,current_tab_url:"",file_drop:!1,skipConfirm:!1,showHandbookList:!1,setSearchType:function(e,t){this.search_type!==e&&(this.search_type=e,t||g(this.search_text,this.search_type,"",this.input_position))},setSearchText:function(e){this.search_text=e.trim(),g(this.search_text,this.search_type,"",this.input_position)},setInputPosition:function(e){this.input_position=e-70},getSpaceInfo:function(){return this.space},getSearchType:function(){return this.search_type},clearCurrentSpace:function(){this.space="",this.search_in_folder=""},redirectToSearch:function(){if(this.search_text){m();var e=["query_words="+encodeURIComponent(this.search_text),"query_type="+this.search_type];(0,c.openNewTab)(c.config.base_name+"search?"+e.join("&"))}},destroySearch:function(){m()},showUserProfile:function(){h.show()},destroyUserProfile:function(){h.destroy()},getUploadTarget:function(){if(!this.upload_target)return null;var e=this.upload_target.split("_"),t="folder"===e[0]?"folder_id":"collection"===e[0]?"collection_id":"department_id";return(0,l.default)((0,s.default)({},t,e[1]-0))},setUploadFiles:function(e){this.upload_files=e},setUploadError:function(e){this.upload_error=e},setCurrentTabUrl:function(e){this.current_tab_url=e},fileDropIn:function(e,t){this.file_drop=e,this.skipConfirm=!!t},reconnectWebsocket:function(){},setDetectFiles:function(e){this.files_for_detect=e},triggerHandbookFromSync:function(e){this.showHandbookList=e}};window.PAGE_CONTEXT=_},547:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=n(75),i=function(e){return e&&e.__esModule?e:{default:e}}(a),s={info:{},setInfo:function(e,t,n){this.info.space===e&&this.info.id===t&&this.info.name===n||window.sync_v2&&window.sync_v2.setSpaceInfo&&window.sync_v2.setSpaceInfo((0,i.default)({space:e,id:t,name:n})),this.info={space:e,id:t,name:n}},getInfo:function(){return this.info},canSearchIn:function(){return["folder","dept","own","collab","external"].includes(this.info.space)},getSearchLink:function(e){var t=this.info,n=t.space,a=t.id;if(e.trim()&&n){var i="search?query_words="+encodeURIComponent(e.trim());if("dept"===n)i+="&department_id="+a;else if("folder"===n)i+="&search_in_folder="+a;else if("own"===n)i+="&department_id=0";else if("collab"===n)i+="&department_id=-1";else if("external"===n){var s=a.split("_");i+="&"+s[0]+"_id="+s[1]}return i}return!1},resetInfo:function(){(this.info.name||this.info.id||this.info.space)&&window.sync_v2&&window.sync_v2.setSpaceInfo&&window.sync_v2.setSpaceInfo((0,i.default)({space:"",id:"",name:""})),this.info={}}};t.default=s},557:function(e,t){},881:function(e,t,n){"use strict";function a(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0}),t.PlanUlList=t.planFeatures=t.planNameList=void 0;var i=n(1),s=a(i),r=n(2),l=a(r),o=n(5),d=a(o),u=n(4),c=a(u),f=n(3),p=a(f),m=n(0),h=a(m),g=n(6),_=n(36),v=a(_),y=n(8),M=n(14),E=n(13),S=function(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var n in e)Object.prototype.hasOwnProperty.call(e,n)&&(t[n]=e[n]);return t.default=e,t}(E),w=n(9),b=a(w),N=t.planNameList={13:(0,y.defineMessage)({id:"plan.name.free",defaultMessage:"免费版"}),23:(0,y.defineMessage)({id:"plan.name.free",defaultMessage:"免费版"}),15:(0,y.defineMessage)({id:"plan.name.basic",defaultMessage:"基础版"}),16:(0,y.defineMessage)({id:"plan.name.professional",defaultMessage:"专业版"}),17:(0,y.defineMessage)({id:"plan.name.interantionalProfessional",defaultMessage:"国际专业版"})},k=t.planFeatures={13:function(e){var t=e.seat_limit,n=e.space_amount,a=e.file_version_limit,i=e.max_device_online_count;return(0,y.defineMessage)({id:"plan.feature.free",defaultMessage:'<li>{0}个帐号</li>\n            <li>{1}空间</li>\n            <li>单文件历史版本最多{2}个</li>\n            <li class="tip">若连续90天无帐号登录，<br>帐号及数据将会被清空。</li>'},t,(0,g.approxSize)(n,null,0).replace(" ",""),a,i)},15:function(e){var t=e.seat_min_limit,n=e.space_amount,a=e.file_version_limit,i=e.max_device_online_count,s=e.external_collab_limit;return(0,y.defineMessage)({id:"plan.feature.basic",defaultMessage:"<li>{0}个帐号起</li>\n            <li>{1}空间，可扩容</li>\n            <li>单文件历史版本最多{2}个</li>\n            <li>外部协作成员最多{4}个</li>\n            <li>文件传输加速</li>\n            <li>全文搜索</li>\n            <li>水印预览</li>\n            <li>安全登录</li>"},t,(0,g.approxSize)(n,null,0).replace(" ",""),a,i,s)},16:function(e){var t=e.seat_min_limit,n=e.space_amount,a=e.file_version_limit,i=e.max_device_online_count,s=e.external_collab_limit;return(0,y.defineMessage)({id:"plan.feature.professional",defaultMessage:'<li>{0}个帐号起</li>\n            <li>{1}空间，可扩容</li>\n            <li>单文件历史版本最多{2}个</li>\n            <li>外部协作成员{4}个起</li>\n            <li>文件传输加速</li>\n            <li>全文搜索</li>\n            <li>水印预览</li>\n            <li>安全登录</li>\n            <li>支持按组织架构管理</li>\n            <li>预览格式更丰富</li>\n            <li>云查毒</li>\n            <li>数据报表</li>\n            <li class="tip">500个帐号以上可享受个性化定制服务</li>'},t,(0,g.approxSize)(n,null,0).replace(" ",""),a,i,s)},17:function(e){var t=e.seat_min_limit,n=e.space_amount,a=e.file_version_limit,i=e.max_device_online_count,s=e.external_collab_limit;return(0,y.defineMessage)({id:"plan.feature.interantionalProfessional",defaultMessage:'<li>{0}个帐号起</li>\n            <li>{1}空间，可扩容</li>\n            <li>单文件历史版本最多{2}个</li>\n            <li>外部协作成员{4}个起</li>\n            <li>文件传输加速</li>\n            <li>全文搜索</li>\n            <li>水印预览</li>\n            <li>安全登录</li>\n            <li>支持按组织架构管理</li>\n            <li>预览格式更丰富</li>\n            <li>云查毒</li>\n            <li>数据报表</li>\n            <li>全球加速</li>\n            <li class="tip">500个帐号以上可享受个性化定制服务</li>'},t,(0,g.approxSize)(n,null,0).replace(" ",""),a,i,s)}};k[23]=k[13];var C=t.PlanUlList=function(e,t){return h.default.createElement("ul",{className:"plan-list"},e.map(function(e){return h.default.createElement("li",{className:(0,b.default)("plan","plan-"+e.id),key:e.id},h.default.createElement("div",{className:"head"},h.default.createElement("div",{className:"version"},e.description),h.default.createElement("div",{className:"hint"},(0,y.defineMessage)({id:"plan.perMonthPerPerson",defaultMessage:"{0}元/帐号/月"},e.price_per_month_per_person))),h.default.createElement("ul",{className:"plan-info",dangerouslySetInnerHTML:{__html:k[e.id](e)}}),h.default.createElement("div",{className:"foot"},t(e.id)))}))},q=function(e){function t(e){(0,l.default)(this,t);var n=(0,c.default)(this,(t.__proto__||(0,s.default)(t)).call(this,e));return n.handleConfirm=function(e){if(15===e){var t=n.state.plans.filter(function(t){return t.id===e})[0];if(t.need_pay){var a=g.config.base_url+"/admin/payment/index#need_pay";window.sync_v2?window.sync_v2.popWebUrl&&window.sync_v2.popWebUrl(a):window.open(a),n.props.onNeedPay()}else n.props.onBasicSelect(t)}else(0,g.ajax)({url:S.REGISTER_ENTERPRISE_EDITION,data:{scenario:"升级套餐",plan_to_apply:N[e]},parser:function(){(0,g.toast)({content:(0,y.defineMessage)({id:"plan.registerEnterpriseEdition",defaultMessage:"信息已提交，我们将尽快联系您！您也可以拨打 400-993-9050 联系我们。"})}),n.props.onClose()}})},n.handleContactSelectChange=function(e,t){var a=e[0];n.setState({selectList:e,selectEntities:t,selected:a&&t[a].id})},n.handleToggleContactSelectDialog=function(e){n.setState({showContactSelect:e})},n.renderActionButton=function(e){var t=(g.isFreePlan||g.isStarterPlan||g.isOldFreePlan)&&("13"==e||"23"==e)||g.isBasicPlan&&["13","15","23"].includes(""+e);return h.default.createElement(M.Button,{disabled:t,type:"text-primary",onClick:function(){return n.handleConfirm(e)}},(g.isFreePlan||g.isOldFreePlan)&&("13"==e||"23"==e)||g.isBasicPlan&&"15"==e?(0,y.defineMessage)({id:"plan.currentPlan",defaultMessage:"当前套餐"}):"16"==e||"17"==e?(0,y.defineMessage)({id:"plan.contactUs",defaultMessage:"联系我们"}):(0,y.defineMessage)({id:"plan.select",defaultMessage:"选择"}))},n.state={plans:[]},n}return(0,p.default)(t,e),(0,d.default)(t,[{key:"componentWillMount",value:function(){var e=this;(0,g.ajax)({url:S.GET_PLANS,parser:function(t){var n=void 0,a=t.plans.filter(function(e){return 23===e.id&&(n=!0),[13,23,15,16,17].includes(e.id)});if(n){var i=a.pop();a.unshift(i)}e.setState({plans:a})}})}},{key:"componentWillUnmount",value:function(){this.isUnmount=!0}},{key:"render",value:function(){var e=this.props.onClose,t=this.state.plans;return h.default.createElement(v.default,{open:!0,modal:!0,title:(0,y.defineMessage)({id:"plan.upgradePlan",defaultMessage:"升级套餐"}),onClose:e,className:"plan-list-dialog",offsetTop:0},C(t,this.renderActionButton),h.default.createElement(M.KeyDownEvent,{onEsc:e}))}}]),t}(m.Component);q.contextTypes={dispatch:m.PropTypes.func},t.default=q}});