<div class="article">
	{* Display the headline, use huge characters. *}
	<div class="frontpage_headline">
	   {attribute_view_gui attribute=$the_node.object.data_map.title}
	</div>


	<div class="frontpage_maincontent">
	   {attribute_view_gui attribute=$the_node.object.data_map.body}
	</div>
</div>