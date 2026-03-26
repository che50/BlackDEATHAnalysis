<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
    
    
    <xsl:template match="/" >
        
        <html>
            <head>
                <title>
                    Decameron Analysis
                </title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"/>
                <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
            </head>
            <body>
                <header>
                    <h1> The Decameron and Perceptions Around the Black Death   </h1> 
                    a
                </header>
                
                <div class="list"/>
                <h1>Team Members</h1> 
                <div>Ingrid Lewis </div>
                <div>Charlie Erdos </div>
                <div>Hayden Conely </div>
                <div>Nora Broering </div>
                <h2> Research Question
                </h2>
                <p>
                    How does The Decameron, and it's censored version, address and discuss the Church and what
                    patterns in the explanations for the plague. We analyed perceptions of the Catholic Church in response to the calamity of the Black Death as exemplified by the Decameron and it's subsequent censorhip
                </p>
                <h1> Corpus </h1>
                <h1>Title</h1>
                <xsl:apply-templates select="//root//main_title"></xsl:apply-templates>
              <ul>
                <h1> Introduction</h1>
                  <xsl:apply-templates select="//intro"/>
                  <h1>Story</h1>
                  <xsl:apply-templates select="//div[@day]"/>
              </ul>
               
               
                
            </body>
        </html>
        
    </xsl:template>
    <xsl:template match="div[@day]">
        <li>
            <xsl:value-of select="@day"/> Day
            <ul>
                <xsl:apply-templates select="story"/>
            </ul>
        </li>
    </xsl:template>
 
    <xsl:template match="story">
        <li>
            <xsl:value-of select="p/story_numbr"/>
        </li>
    </xsl:template>
    
    
    <xsl:template match="intro">
        <li>
            <xsl:value-of select="p/intro_title"/>
        </li>
    </xsl:template>
    
    
    
</xsl:stylesheet>

