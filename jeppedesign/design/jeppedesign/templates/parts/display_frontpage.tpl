{* Display the headline, use huge characters. *}
<div class="frontpage_headline">
   {*attribute_view_gui attribute=$the_node.object.data_map.name*}
</div>


{* Display the thumbnail image, right-justified. *}
<div class="frontpage_maincontent">
   {attribute_view_gui attribute=$the_node.object.data_map.center_column}
</div>

<!--{* Display the thumbnail image, right-justified. *}
<div class="frontpage_rightcontent">
   {*attribute_view_gui attribute=$the_node.object.data_map.right_column*}
</div>


{* Display the thumbnail image, right-justified. *}
<div class="frontpage_rightcontent">
   {*attribute_view_gui attribute=$the_node.object.data_map.campo_valentia*}
</div>
-->
{*$the_node|attribute(show,3)*}