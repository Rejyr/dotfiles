(()=>{var e,r,n={2071:()=>{document.body.innerHTML="";const e=document.createElement("script");e.src=chrome.runtime.getURL("video_embed.bundle.js"),document.body.appendChild(e)}},o={};function t(e){var r=o[e];if(void 0!==r){if(void 0!==r.error)throw r.error;return r.exports}var d=o[e]={exports:{}};try{var i={id:e,module:d,factory:n[e],require:t};t.i.forEach((function(e){e(i)})),d=i.module,i.factory.call(d.exports,d,d.exports,i.require)}catch(e){throw d.error=e,e}return d.exports}t.m=n,t.c=o,t.i=[],t.hu=e=>e+"."+t.h()+".hot-update.js",t.hmrF=()=>"video_embedder."+t.h()+".hot-update.json",t.h=()=>"9d2f2bb57e61f1a67080",t.o=(e,r)=>Object.prototype.hasOwnProperty.call(e,r),e={},r="LiveTL:",t.l=(n,o,d,i)=>{if(e[n])e[n].push(o);else{var c,a;if(void 0!==d)for(var u=document.getElementsByTagName("script"),l=0;l<u.length;l++){var s=u[l];if(s.getAttribute("src")==n||s.getAttribute("data-webpack")==r+d){c=s;break}}c||(a=!0,(c=document.createElement("script")).charset="utf-8",c.timeout=120,t.nc&&c.setAttribute("nonce",t.nc),c.setAttribute("data-webpack",r+d),c.src=n),e[n]=[o];var f=(r,o)=>{c.onerror=c.onload=null,clearTimeout(p);var t=e[n];if(delete e[n],c.parentNode&&c.parentNode.removeChild(c),t&&t.forEach((e=>e(o))),r)return r(o)},p=setTimeout(f.bind(null,void 0,{type:"timeout",target:c}),12e4);c.onerror=f.bind(null,c.onerror),c.onload=f.bind(null,c.onload),a&&document.head.appendChild(c)}},(()=>{var e,r,n,o,d={},i=t.c,c=[],a=[],u="idle";function l(e){u=e;for(var r=0;r<a.length;r++)a[r].call(null,e)}function s(e){if(0===r.length)return e();var n=r;return r=[],Promise.all(n).then((function(){return s(e)}))}function f(e){if("idle"!==u)throw new Error("check() is only allowed in idle status");return l("check"),t.hmrM().then((function(o){if(!o)return l(v()?"ready":"idle"),null;l("prepare");var d=[];return r=[],n=[],Promise.all(Object.keys(t.hmrC).reduce((function(e,r){return t.hmrC[r](o.c,o.r,o.m,e,n,d),e}),[])).then((function(){return s((function(){return e?h(e):(l("ready"),d)}))}))}))}function p(e){return"ready"!==u?Promise.resolve().then((function(){throw new Error("apply() is only allowed in ready status")})):h(e)}function h(e){e=e||{},v();var r=n.map((function(r){return r(e)}));n=void 0;var t,d=r.map((function(e){return e.error})).filter(Boolean);if(d.length>0)return l("abort"),Promise.resolve().then((function(){throw d[0]}));l("dispose"),r.forEach((function(e){e.dispose&&e.dispose()})),l("apply");var i=function(e){t||(t=e)},c=[];return r.forEach((function(e){if(e.apply){var r=e.apply(i);if(r)for(var n=0;n<r.length;n++)c.push(r[n])}})),t?(l("fail"),Promise.resolve().then((function(){throw t}))):o?h(e).then((function(e){return c.forEach((function(r){e.indexOf(r)<0&&e.push(r)})),e})):(l("idle"),Promise.resolve(c))}function v(){if(o)return n||(n=[]),Object.keys(t.hmrI).forEach((function(e){o.forEach((function(r){t.hmrI[e](r,n)}))})),o=void 0,!0}t.hmrD=d,t.i.push((function(h){var v,m,y,b,g=h.module,E=function(n,o){var t=i[o];if(!t)return n;var d=function(r){if(t.hot.active){if(i[r]){var d=i[r].parents;-1===d.indexOf(o)&&d.push(o)}else c=[o],e=r;-1===t.children.indexOf(r)&&t.children.push(r)}else console.warn("[HMR] unexpected require("+r+") from disposed module "+o),c=[];return n(r)},a=function(e){return{configurable:!0,enumerable:!0,get:function(){return n[e]},set:function(r){n[e]=r}}};for(var f in n)Object.prototype.hasOwnProperty.call(n,f)&&"e"!==f&&Object.defineProperty(d,f,a(f));return d.e=function(e){return function(e){switch(u){case"ready":return l("prepare"),r.push(e),s((function(){l("ready")})),e;case"prepare":return r.push(e),e;default:return e}}(n.e(e))},d}(h.require,h.id);g.hot=(v=h.id,m=g,b={_acceptedDependencies:{},_acceptedErrorHandlers:{},_declinedDependencies:{},_selfAccepted:!1,_selfDeclined:!1,_selfInvalidated:!1,_disposeHandlers:[],_main:y=e!==v,_requireSelf:function(){c=m.parents.slice(),e=y?void 0:v,t(v)},active:!0,accept:function(e,r,n){if(void 0===e)b._selfAccepted=!0;else if("function"==typeof e)b._selfAccepted=e;else if("object"==typeof e&&null!==e)for(var o=0;o<e.length;o++)b._acceptedDependencies[e[o]]=r||function(){},b._acceptedErrorHandlers[e[o]]=n;else b._acceptedDependencies[e]=r||function(){},b._acceptedErrorHandlers[e]=n},decline:function(e){if(void 0===e)b._selfDeclined=!0;else if("object"==typeof e&&null!==e)for(var r=0;r<e.length;r++)b._declinedDependencies[e[r]]=!0;else b._declinedDependencies[e]=!0},dispose:function(e){b._disposeHandlers.push(e)},addDisposeHandler:function(e){b._disposeHandlers.push(e)},removeDisposeHandler:function(e){var r=b._disposeHandlers.indexOf(e);r>=0&&b._disposeHandlers.splice(r,1)},invalidate:function(){switch(this._selfInvalidated=!0,u){case"idle":n=[],Object.keys(t.hmrI).forEach((function(e){t.hmrI[e](v,n)})),l("ready");break;case"ready":Object.keys(t.hmrI).forEach((function(e){t.hmrI[e](v,n)}));break;case"prepare":case"check":case"dispose":case"apply":(o=o||[]).push(v)}},check:f,apply:p,status:function(e){if(!e)return u;a.push(e)},addStatusHandler:function(e){a.push(e)},removeStatusHandler:function(e){var r=a.indexOf(e);r>=0&&a.splice(r,1)},data:d[v]},e=void 0,b),g.parents=c,g.children=[],c=[],h.require=E})),t.hmrC={},t.hmrI={}})(),t.p="./",(()=>{var e,r,n,o,d={520:0},i={};function c(e){return new Promise(((r,n)=>{i[e]=r;var o=t.p+t.hu(e),d=new Error;t.l(o,(r=>{if(i[e]){i[e]=void 0;var o=r&&("load"===r.type?"missing":r.type),t=r&&r.target&&r.target.src;d.message="Loading hot update chunk "+e+" failed.\n("+o+": "+t+")",d.name="ChunkLoadError",d.type=o,d.request=t,n(d)}}))}))}function a(i){function c(e){for(var r=[e],n={},o=r.map((function(e){return{chain:[e],id:e}}));o.length>0;){var d=o.pop(),i=d.id,c=d.chain,u=t.c[i];if(u&&(!u.hot._selfAccepted||u.hot._selfInvalidated)){if(u.hot._selfDeclined)return{type:"self-declined",chain:c,moduleId:i};if(u.hot._main)return{type:"unaccepted",chain:c,moduleId:i};for(var l=0;l<u.parents.length;l++){var s=u.parents[l],f=t.c[s];if(f){if(f.hot._declinedDependencies[i])return{type:"declined",chain:c.concat([s]),moduleId:i,parentId:s};-1===r.indexOf(s)&&(f.hot._acceptedDependencies[i]?(n[s]||(n[s]=[]),a(n[s],[i])):(delete n[s],r.push(s),o.push({chain:c.concat([s]),id:s})))}}}}return{type:"accepted",moduleId:e,outdatedModules:r,outdatedDependencies:n}}function a(e,r){for(var n=0;n<r.length;n++){var o=r[n];-1===e.indexOf(o)&&e.push(o)}}t.f&&delete t.f.jsonpHmr,e=void 0;var u={},l=[],s={},f=function(e){console.warn("[HMR] unexpected require("+e.id+") to disposed module")};for(var p in r)if(t.o(r,p)){var h,v=r[p],m=!1,y=!1,b=!1,g="";switch((h=v?c(p):{type:"disposed",moduleId:p}).chain&&(g="\nUpdate propagation: "+h.chain.join(" -> ")),h.type){case"self-declined":i.onDeclined&&i.onDeclined(h),i.ignoreDeclined||(m=new Error("Aborted because of self decline: "+h.moduleId+g));break;case"declined":i.onDeclined&&i.onDeclined(h),i.ignoreDeclined||(m=new Error("Aborted because of declined dependency: "+h.moduleId+" in "+h.parentId+g));break;case"unaccepted":i.onUnaccepted&&i.onUnaccepted(h),i.ignoreUnaccepted||(m=new Error("Aborted because "+p+" is not accepted"+g));break;case"accepted":i.onAccepted&&i.onAccepted(h),y=!0;break;case"disposed":i.onDisposed&&i.onDisposed(h),b=!0;break;default:throw new Error("Unexception type "+h.type)}if(m)return{error:m};if(y)for(p in s[p]=v,a(l,h.outdatedModules),h.outdatedDependencies)t.o(h.outdatedDependencies,p)&&(u[p]||(u[p]=[]),a(u[p],h.outdatedDependencies[p]));b&&(a(l,[h.moduleId]),s[p]=f)}r=void 0;for(var E,_=[],w=0;w<l.length;w++){var I=l[w],D=t.c[I];D&&(D.hot._selfAccepted||D.hot._main)&&s[I]!==f&&!D.hot._selfInvalidated&&_.push({module:I,require:D.hot._requireSelf,errorHandler:D.hot._selfAccepted})}return{dispose:function(){var e;n.forEach((function(e){delete d[e]})),n=void 0;for(var r,o=l.slice();o.length>0;){var i=o.pop(),c=t.c[i];if(c){var a={},s=c.hot._disposeHandlers;for(w=0;w<s.length;w++)s[w].call(null,a);for(t.hmrD[i]=a,c.hot.active=!1,delete t.c[i],delete u[i],w=0;w<c.children.length;w++){var f=t.c[c.children[w]];f&&(e=f.parents.indexOf(i))>=0&&f.parents.splice(e,1)}}}for(var p in u)if(t.o(u,p)&&(c=t.c[p]))for(E=u[p],w=0;w<E.length;w++)r=E[w],(e=c.children.indexOf(r))>=0&&c.children.splice(e,1)},apply:function(e){for(var r in s)t.o(s,r)&&(t.m[r]=s[r]);for(var n=0;n<o.length;n++)o[n](t);for(var d in u)if(t.o(u,d)){var c=t.c[d];if(c){E=u[d];for(var a=[],f=[],p=[],h=0;h<E.length;h++){var v=E[h],m=c.hot._acceptedDependencies[v],y=c.hot._acceptedErrorHandlers[v];if(m){if(-1!==a.indexOf(m))continue;a.push(m),f.push(y),p.push(v)}}for(var b=0;b<a.length;b++)try{a[b].call(null,E)}catch(r){if("function"==typeof f[b])try{f[b](r,{moduleId:d,dependencyId:p[b]})}catch(n){i.onErrored&&i.onErrored({type:"accept-error-handler-errored",moduleId:d,dependencyId:p[b],error:n,originalError:r}),i.ignoreErrored||(e(n),e(r))}else i.onErrored&&i.onErrored({type:"accept-errored",moduleId:d,dependencyId:p[b],error:r}),i.ignoreErrored||e(r)}}}for(var g=0;g<_.length;g++){var w=_[g],I=w.module;try{w.require(I)}catch(r){if("function"==typeof w.errorHandler)try{w.errorHandler(r,{moduleId:I,module:t.c[I]})}catch(n){i.onErrored&&i.onErrored({type:"self-accept-error-handler-errored",moduleId:I,error:n,originalError:r}),i.ignoreErrored||(e(n),e(r))}else i.onErrored&&i.onErrored({type:"self-accept-errored",moduleId:I,error:r}),i.ignoreErrored||e(r)}}return l}}}self.webpackHotUpdateLiveTL=(e,n,d)=>{for(var c in n)t.o(n,c)&&(r[c]=n[c]);d&&o.push(d),i[e]&&(i[e](),i[e]=void 0)},t.hmrI.jsonp=function(e,d){r||(r={},o=[],n=[],d.push(a)),t.o(r,e)||(r[e]=t.m[e])},t.hmrC.jsonp=function(i,u,l,s,f,p){f.push(a),e={},n=u,r=l.reduce((function(e,r){return e[r]=!1,e}),{}),o=[],i.forEach((function(r){t.o(d,r)&&void 0!==d[r]&&(s.push(c(r)),e[r]=!0)})),t.f&&(t.f.jsonpHmr=function(r,n){e&&!t.o(e,r)&&t.o(d,r)&&void 0!==d[r]&&(n.push(c(r)),e[r]=!0)})},t.hmrM=()=>{if("undefined"==typeof fetch)throw new Error("No browser support: need fetch API");return fetch(t.p+t.hmrF()).then((e=>{if(404!==e.status){if(!e.ok)throw new Error("Failed to fetch update manifest "+e.statusText);return e.json()}}))}})(),t(2071)})();