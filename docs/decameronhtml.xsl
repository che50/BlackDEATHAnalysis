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
                <nav>
                    <ul>
                        <li>
                            <a href="index.html">Home Page</a>
                        </li>
                        <li>
                            <a href="corpus.html">Corpus </a>
                        </li>
                    </ul>
                </nav>
               
                <header>
                    <h1> The Decameron and Perceptions Around the Black Death   </h1> 
                    
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
                             
               
                
            </body>
        </html>
        
        <xsl:result-document href="corpus.html" method="xhtml">
            <!-- This section is the XSL to make another page for corpus. It generates another HTML file, which can be navigated to from the top. USES SAME CSS as index document, but can probably be changed --> 
            <html>
            <head><title>Corpus</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"/>
                <link rel="stylesheet" type="text/css" href="project_website_style.css"/></head>
            <body>
                <nav>
                    <ul>
                        <li>
                            <a href="index.html">Home Page</a>
                        </li>
                        <li>
                            <a href="corpus.html">Corpus </a>
                        </li>
                    </ul>
                </nav>
                <h1 id="corpus"> Corpus </h1>
                
                <h1>Title</h1>
              <h1 class="title"><xsl:apply-templates select="//root//main_title"></xsl:apply-templates> </h1>
                <h1> Introduction</h1>
                <ul>
                    
                    <xsl:apply-templates select="//intro"/>
                </ul>
                <h1>Story</h1>
                <ul>
                    <xsl:apply-templates select="//div[@day]"/>
                </ul>
            </body>
            </html>
        </xsl:result-document>

        
    </xsl:template>
    
    <!-- The following 3 templates pulls the names of Days and Stories and puts them into a list -->
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

