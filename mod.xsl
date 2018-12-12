<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.product-brief">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-product-brief" ox-mod="product-brief">
            <ul>
                <xsl:for-each select="data/ecom-products/i">
                    <li>
                        <a href="{LINK/detail}">
                            <span class="img" style="background-image:url({media/i[type='image']/src}@!w240)"></span>
                        </a>
                        <h4 class="title">
                        	<a href="{LINK/detail}">
                            <xsl:value-of select="title"/>
                            </a>
                        </h4>
                        <p class="brief">
                        	<a href="{LINK/detail}">
                            <xsl:value-of select="brief"/>
                            </a>
                        </p>
                       
                    </li>
                </xsl:for-each>
            </ul>

        </div>
    </xsl:template>
</xsl:stylesheet>
