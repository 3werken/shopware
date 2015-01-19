{block name="frontend_widgets_manufacturer_slider"}
    <div class="emotion--manufacturer panel has--border">

        {* Manufacturer title *}
        {block name="frontend_widgets_manufacturer_slider_title"}
            {if $Data.manufacturer_slider_title}
                <div class="panel--title is--underline manufacturer--title">
                    {$Data.manufacturer_slider_title}
                </div>
            {/if}
        {/block}

        {* Manufacturer Content *}
        {block name="frontend_widgets_manufacturer_slider_content"}
            <div class="manufacturer--content">

                {block name="frontend_widgets_manufacturer_slider_container"}
                    <div class="manufacturer--slider product-slider" data-product-slider="true">

                        <div class="product-slider--container">
                            {foreach $Data.values as $supplier}
                                {block name="frontend_widgets_manufacturer_slider_item"}
                                    <div class="manufacturer--item product-slider--item">

                                        {block name="frontend_widgets_manufacturer_slider_item_link"}
                                            <a href="{$supplier.link}" title="{$supplier.name|escape:'html'}" class="manufacturer--link">
                                                {if $supplier.image}
                                                    {block name="frontend_widgets_manufacturer_slider_item_image"}
                                                        <img class="manufacturer--image" src="{$supplier.image}" alt="{$supplier.name|escape:'html'}" />
                                                    {/block}
                                                {else}
                                                    {block name="frontend_widgets_manufacturer_slider_item_text"}
                                                        <span class="manufacturer--name">{$supplier.name}</span>
                                                    {/block}
                                                {/if}
                                            </a>
                                        {/block}
                                    </div>
                                {/block}
                            {/foreach}
                        </div>
                    </div>
                {/block}
            </div>
        {/block}
    </div>
{/block}