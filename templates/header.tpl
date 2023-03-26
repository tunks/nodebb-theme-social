<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
	<title>{browserTitle}</title>
    <link rel="icon" href="images/fav.png" type="image/png" sizes="16x16"> 
    
    <link rel="stylesheet" href="{relative_path}/assests/css/main.min.css">
    <link rel="stylesheet" href="{relative_path}/assests/css/style.css">
    <link rel="stylesheet" href="{relative_path}/assests/css/color.css">
    <link rel="stylesheet" href="{relative_path}/assests/css/responsive.css">
	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			user: JSON.parse('{{userJSON}}')
		};

		document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
	</script>

	{{{if useCustomHTML}}}
	{{customHTML}}
	{{{end}}}
	{{{if useCustomCSS}}}
	<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">
	<nav id="menu" class="slideout-menu hidden">
		<!-- IMPORT partials/slideout-menu.tpl -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		<!-- IMPORT partials/chats-menu.tpl -->
	</nav>
     <h3>Testing </h3>
 	<main id="panel" class="slideout-panel">
		<nav class="navbar sticky-top navbar-expand-lg bg-light header border-bottom py-0" id="header-menu" component="navbar">
			<div class="container justify-content-start flex-nowrap">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<script>
			const rect = document.getElementById('header-menu').getBoundingClientRect();
			const offset = Math.max(0, rect.bottom);
			document.documentElement.style.setProperty('--panel-offset', offset + `px`);
		</script>
		<div class="container pt-3" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->
		<!-- IMPORT partials/noscript/message.tpl -->
