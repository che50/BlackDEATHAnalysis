<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
    
    
    <xsl:template match="/" >
      <xsl:result-document href="index.html" method="xhtml"> 
        <html>
            <head>
                <title>
                    Decameron Analysis
                </title>
                 
                <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
            </head>
           
            <body>
                <nav>
                    <ul>
                        <li>
                            <a href="index.html">Home Page</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="corpus.html">Corpus</a>
                        </li>
                        <li>
                            <a href="censorship.html">Censorship</a>
                        </li>
                        <li>
                            <a href="themes.html">Themes</a>
                        </li>
                        <li>
                            <a hred="statistics.html">Stats</a>
                        </li>
                    </ul>
                </nav>
               
                <header>
                    <h1> The Decameron and Perceptions Around the Black Death   </h1> 
                    
                </header>
               
                
                <div class="list">
                <h1>Team Members</h1> 
                <div>Ingrid Lewis </div>
                <div>Charlie Erdos </div>
                <div>Hayden Conely </div>
                <div>Nora Broering </div>
                </div>
                <h2> Research Question
                </h2>
                <p>
                    How does The Decameron, and it's censored version, address and discuss the Church and what
                    patterns in the explanations for the plague. We analyed perceptions of the Catholic Church in response to the calamity of the Black Death as exemplified by the Decameron and it's subsequent censorhip
                </p>
                             
               
                
            </body>
        </html>
      </xsl:result-document> 
        <xsl:result-document href="corpus.html" method="xhtml">
            <!-- This section is the XSL to make another page for corpus. It generates another HTML file, which can be navigated to from the top. USES SAME CSS as index document, but can probably be changed --> 
            <html>
            <head><title>Corpus</title>
                 
                <link rel="stylesheet" type="text/css" href="project_website_style.css"/></head>
            <body>
                <nav>
                    <ul>
                        <li>
                            <a href="index.html">Home Page</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="corpus.html">Corpus</a>
                        </li>
                        <li>
                            <a href="censorship.html">Censorship</a>
                        </li>
                        <li>
                            <a href="themes.html">Themes</a>
                        </li>
                        <li>
                            <a hred="statistics.html">Stats</a>
                        </li>
                    </ul>
                </nav>
                <h1 id="corpus"> Corpus </h1>
                
                
              <h1 class="title"><xsl:apply-templates select="//root//main_title"></xsl:apply-templates> </h1>
             
                <ul>
                    <li>Introduction
                        <ul>
                            <li><a href="proem.html">Proem</a></li>
                        </ul>
                    </li>
                    <xsl:apply-templates select="//div[@day]" mode="toc"/>
                </ul>
                <hr/>
               
            
               
               
            </body>
            </html>
        </xsl:result-document>
        
        <xsl:result-document href="dummy-document.html" method="xhtml">  <!-- need to call these templates, but dont want them in the base root document -->
            <xsl:apply-templates select="//intro"/>
            <xsl:apply-templates select="//div[@day]"/>
        </xsl:result-document>
        
        <xsl:result-document href="about.html" method="xhtml">
            <html>
                <head>
                    <title>About</title>
                     
                    <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
                </head>
                <body>
                    <nav>
                    <ul>
                        <li>
                            <a href="index.html">Home Page</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="corpus.html">Corpus</a>
                        </li>
                        <li>
                            <a href="censorship.html">Censorship</a>
                        </li>
                        <li>
                            <a href="themes.html">Themes</a>
                        </li>
                        <li>
                            <a hred="statistics.html">Stats</a>
                        </li>
                    </ul>
                </nav>
                    <h1>About</h1>
                    <h2>Author</h2>
                    <p>Giovanni Boccaccio</p>
                </body>
            </html>
            
        </xsl:result-document>
        
        <xsl:result-document href="statistics.html" method="xhtml" >
            <head>
                <title> Stats </title>
                <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
            </head>
            <body>
                <nav>
                    <ul>
                        <li>
                            <a href="index.html">Home Page</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="corpus.html">Corpus</a>
                        </li>
                        <li>
                            <a href="censorship.html">Censorship</a>
                        </li>
                        <li>
                            <a href="themes.html">Themes</a>
                        </li>
                        <li>
                            <a hred="statistics.html">Stats</a>
                        </li>
                    </ul>
                </nav>
                <header>Statistics</header>
                <h2>Statistics of <em>The Decameron</em></h2>
                <h2>Main Cast</h2>
                
            </body>
            
        </xsl:result-document>
        
    </xsl:template>
    
    <!-- main templates -->
    <xsl:template match="div[@day]">
        <h1><xsl:value-of select="@day"/> Day</h1>
        <xsl:apply-templates select="story"/>
    </xsl:template>
    
 
    
    <xsl:template match="story">   <!-- creates new page for every story day -->
        <xsl:variable name="day" select="parent::div/@day"/>
        
        <!-- creating variables for buttons to bring to next page when in the story -->
        <xsl:variable name="next-story" select="following-sibling::story[1]"/>
        <xsl:variable name="prev-story" select="preceding-sibling::story[1]"/> 
        
        <xsl:result-document href="story-{$day}-{@numbr}.html" method="xhtml">
            <html>
                <head>
                    <title>
                        <xsl:value-of select="p/story_numbr"/>
                            </title>
                     
                    <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
                </head>
                <body>
                    <nav>
                        <ul>
                            <li>
                                <a href="index.html">Home Page</a>
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="corpus.html">Corpus</a>
                            </li>
                            <li>
                                <a href="censorship.html">Censorship</a>
                            </li>
                            <li>
                                <a href="themes.html">Themes</a>
                            </li>
                            <li>
                                <a hred="statistics.html">Stats</a>
                            </li>
                        </ul>
                    </nav>
                    <h2> <xsl:value-of select="$day"/> 
                        Day
                    </h2>
                    <h3>
                        <xsl:value-of select="p/story_numbr"/>
                    </h3>
                    <xsl:apply-templates select="p[not(story_numbr) and not(ch_title)]"/>
                    
                    
                    <!-- buttons to take to next story -->
                    <xsl:if test="$prev-story">
                        <a class="prev" href="story-{$day}-{$prev-story/@numbr}.html">Previous</a>
                    </xsl:if>
                    
                    <xsl:if test="$next-story">
                        <a class="next" href="story-{$day}-{$next-story/@numbr}.html">Next</a>
                    </xsl:if>
                </body>
            </html>
        </xsl:result-document>
        
        
    </xsl:template>
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
 
 

 
    <xsl:template match="intro">
        <xsl:result-document href="proem.html" method="xhtml">
            <html>
                <head><title>Proem</title>
                     
                    <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
                </head>
                <body>
                    <nav>
                        <ul>
                            <li>
                                <a href="index.html">Home Page</a>
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="corpus.html">Corpus</a>
                            </li>
                            <li>
                                <a href="censorship.html">Censorship</a>
                            </li>
                            <li>
                                <a href="themes.html">Themes</a>
                            </li>
                            <li>
                                <a hred="statistics.html">Stats</a>
                            </li>
                        </ul>
                    </nav>
                    <h2><xsl:value-of select="p/intro_title"/></h2>
                    <xsl:apply-templates select="p[not(intro_title)]"/>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document href="themes.html" method="xhtml">
            <html>
                <head><title>themes</title>
                    
                    <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
                </head>
                
                
                <body>
                    
                    <nav>
                        <ul>
                            <li>
                                <a href="index.html">Home Page</a>
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="corpus.html">Corpus</a>
                            </li>
                            <li>
                                <a href="censorship.html">Censorship</a>
                            </li>
                            <li>
                                <a href="themes.html">Themes</a>
                            </li>
                            <li>
                                <a hred="statistics.html">Stats</a>
                            </li>
                        </ul>
                    </nav>
                    <h1>
                        test
                    </h1>
                </body>
            </html>
            
            
            
        </xsl:result-document>
        
        <xsl:result-document href="censorship.html"  method="xhtml">  <!--Censorship test page -->
            <html>
                <head><title>censorship</title>
                    
                    <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
                </head>
                
                
                <body>
                    <nav>
                        <ul>
                            <li>
                                <a href="index.html">Home Page</a>
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="corpus.html">Corpus</a>
                            </li>
                            <li>
                                <a href="censorship.html">Censorship</a>
                            </li>
                            <li>
                                <a href="themes.html">Themes</a>
                            </li>
                            <li>
                                <a hred="statistics.html">Stats</a>
                            </li>
                        </ul>
                    </nav>
                    <h1>
                        test
                    </h1>
                </body>
            </html>
            
            
        </xsl:result-document>
        
    </xsl:template>
    
    
    
   
   
    <!-- table of contents templates -->
    <xsl:template match="div[@day]" mode="toc">
        <li>
            <xsl:value-of select="@day"/> Day
            <ul>
                <xsl:apply-templates select="story" mode="toc"/>
            </ul>
        </li>
        </xsl:template>
    <xsl:template match="story" mode="toc">
        <xsl:variable name="day" select="parent::div/@day"/>
        <li>
            <a href="story-{$day}-{@numbr}.html">
                <xsl:value-of select="p/story_numbr"/>
               <!-- <xsl:text>. </xsl:text>
                <xsl:value-of select="p[not(story_numbr) and not(ch_title)][1]"/>-->
            </a>
        </li>
    </xsl:template>
    
    <xsl:template match="person"> <!-- template for person, just bolds it in the text for now-->
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
  
    
</xsl:stylesheet>

