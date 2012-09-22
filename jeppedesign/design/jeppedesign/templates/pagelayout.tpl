<!DOCTYPE html>
<html lang="{$site.http_equiv.Content-language|wash}">

<head>

<style type="text/css">
    @import url({"stylesheets/core.css"|ezdesign});
{*    @import url({ezini('StylesheetSettings','MainCSS','design.ini')|ezdesign}); *}
    @import url({"stylesheets/site.css"|ezdesign});
{*    @import url({"stylesheets/t1/site-colors.css"|ezdesign});   todo -> read from design settings *}
    @import url({ezini('StylesheetSettings','SiteCSS','design.ini')|ezroot});
    @import url({"stylesheets/classes.css"|ezdesign});
 {*    @import url({"stylesheets/t1/classes-colors.css"|ezdesign}); todo -> read from design settings  *}
    @import url({ezini('StylesheetSettings','ClassesCSS','design.ini')|ezroot});
    @import url({"stylesheets/debug.css"|ezdesign});
    {section var=css_file loop=ezini( 'StylesheetSettings', 'CSSFileList', 'design.ini' )}
        @import url({concat( 'stylesheets/', $css_file )|ezdesign});
    {/section}
    {section var=css_file loop=ezini( 'StylesheetSettings', 'FrontendCSSFileList', 'design.ini' )}
        @import url({concat( 'stylesheets/', $css_file )|ezdesign});
    {/section}
</style>

{section name=JavaScript loop=ezini( 'JavaScriptSettings', 'JavaScriptList', 'design.ini' ) }
    <script type="text/javascript" src={concat( 'javascript/',$:item )|ezdesign}></script>
{/section}
{section name=JavaScript loop=ezini( 'JavaScriptSettings', 'FrontendJavaScriptList', 'design.ini' ) }
    <script type="text/javascript" src={concat( 'javascript/',$:item )|ezdesign}></script>
{/section}

{literal}
<!--[if lt IE 6.0]>
<style>
div#maincontent-design { width: 100%; } /* This is needed to avoid width bug in IE 5.5 */
</style>
<![endif]-->
{/literal}

{include uri="design:page_head.tpl"}
<!--END PAGE_HEAD -->
</head>
{*default current_user=fetch('user','current_user')*}

<body>
<div id="display">
<div id="left_content">
    <img src={"images/elg.png"|ezdesign} alt="ELG" />
</div>
<div id="allcontent">
{*cache-block keys=$uri_string*}
    <div id="topcontent">
        
        
        <div id="header">
            <div id="header-design">
                <a href="/"><img src={"images/logo.png"|ezdesign}  alt="Jeppehuset"  id="top_logo_img" /></a>
            </div>
            <div id="menu">
                <ul>
                    <li>
                        <a href="/index.php/Meny">
                            <img src={"images/menu_menu.png"|ezdesign}  alt="Menu" />
                        </a>
                    </li>
                    <li>
                        <a href="/index.php/Galleri">
                            <img src={"images/manu_gallery.png"|ezdesign}  alt="Galleri" />
                        </a>
                    </li>
                    <li>
                        <a href="/index.php/Kontakt">
                            <img src={"images/menu_contact.png"|ezdesign}  alt="Kontakt" />
                        </a>
                    </li>
                    <li>
                        <a href="/index.php/Program">
                            <img src={"images/menu_program.png"|ezdesign}  alt="Program" />
                        </a>
                    </li>
                </ul>
            </div>
      
    {*menu name=TopMenu*}
    </div>
{*/cache-block*}
    <!-- <div id="path">
        <div id="path-design">
            {*include uri="design:parts/path.tpl"*}
        </div>{* id="path-design" *}
    </div>{* id="path" *}
    -->
    {*cache-block keys=array($uri_string, $current_user.role_id_list|implode( ',' ), $current_user.limited_assignment_value_list|implode( ',' ))*}
    <hr class="hide" />

    <div id="columns">

        {*menu name=LeftMenu*}

       
    {*/cache-block*}
    {*/default*}

        {*cache-block*}
            {let maincontentstyle='maincontent-bothmenus'}

            {if eq(ezini('SelectedMenu','LeftMenu','menu.ini'),'')}
                {set maincontentstyle='maincontent-noleftmenu'}
            {/if}

            {if ezini('Toolbar_right','Tool','toolbar.ini')|count|eq(0)}
                {if $maincontentstyle|eq('maincontent-noleftmenu')}
                    {set maincontentstyle='maincontent-nomenus'}
                {else}
                    {set maincontentstyle='maincontent-norightmenu'}
                {/if}
            {/if}

            <div id="maincontent" class="{$maincontentstyle}">
                <div id="fix">
                    <div id="maincontent-design">
            {/let}

        {*/cache-block*}

{def $the_node=fetch( 'content', 'node', hash( 'node_id', $module_result.node_id ) )}



{switch match=$the_node.object.class_name}
	{case match='Frontpage'}
		{include
			name=display_article
			the_node=$the_node
			uri="design:parts/display_frontpage.tpl}
	{/case}
	
	{case match='Folder'}
		
	{/case}
	
	{case match='Article'}
		{include
			name=display_article
			the_node=$the_node
			uri="design:parts/display_article.tpl}
	{/case}
{/switch}

			
                        

                    </div>{* id="maincontent-design" *}
                    <div class="break"></div>
                </div>{* id="fix" *}
            </div>{* id="maincontent" *}

            <div class="break"></div>
    </div>{* id="columns" *}

    {if ezini('Toolbar_bottom','Tool','toolbar.ini')|count}
        <div id="toolbar-bottom">
            <div class="toolbar-design">
                {tool_bar name=bottom view=line}
            </div>{* id="toolbar-design" *}
            <div class="break"></div>
        </div>{* id="toolbar-bottom" *}
    {/if}

    

    <div class="break"></div>
</div>{* id="allcontent" *}

</div>
<div id="right_content">
    <img src={"images/basilikum.png"|ezdesign} alt="Basilikum" />
</div>

<div id="footer">
        <div id="footer-design">
            <img src={"images/laks.png"|ezdesign} alt="Basilikum" />
            <a href="http://www.facebook.com" >
                <img id="img_facebook" src={"images/facebook.png"|ezdesign} />
            </a>

        </div>{* id="footer-design" *}
    </div>{* id="footer" *}
</div>
</body>
</html>
