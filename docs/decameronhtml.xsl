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
                            <a href="statistics.html">Stats</a>
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
                            <a href="statistics.html">Stats</a>
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
                                <a href="statistics.html">Stats</a>
                            </li>
                        </ul>
                    </nav>
                    <!-- hard coded about page from google doc, will have to manually update to change -->
                    <h1>About</h1>
                    <h2><strong>Author</strong></h2>
                    <p>Giovanni Boccaccio</p>
                   <h2><em>The Decameron</em></h2>
                    <p>As the Black Death swept through Europe, Giovanni Boccaccio witnessed the horrors that such an apocalyptic event could cause. 
                        Witnessing the death of up to 60% of his fellow Florentines, he turned the horror into a catalyst for creativity. 
                        Writing in Italian for the sake of the common man, Boccaccio created The Decameron, a collection of 100 witty and often indecent stories designed to provide an escape from the horrors of the plague. 
                    </p>
                    <p>
                        
                        The book is built around a simple "frame" story: ten young Florentines flee the plague-ridden city for a secluded villa in the countryside.  
                        To maintain sanity in this period of extreme suffering they spend ten days telling the stories that make up the bulk of the text. 
                        While the world around them was falling into chaos and despair, Boccaccio’s characters used storytelling to rebuild a sense of structure and bring joy to the often bleak reality of fourteenth century life.  
                        Through his satirical style, Boccaccio made pointed criticisms of powerful institutions such as the Church, establishing The Decameron as a target for future censorship.
                        
                    </p>
                    <h2> <strong>Catholic Church Struggles (Avignon, Reformation)</strong></h2>
                    <p>The Renaissance was an especially turbulent period for the Catholic Church, making The Decameron just another thorn in the side of the already fractured institution.  
                        Both The Black Plague and the writing of the Decameron occurred during what would come to be known as the Avignon papacy.  
                        This period of ‘Babylonian Captivity’, sparked by the violent end of the papacy of Pope Boniface VIII, created a crisis of legitimacy over the authority of the Pope. 
                        Over the next 70 years, including the height of the plague, seven consecutive French popes would be elected and choose to keep the papacy in Avignon, making the pontiff seem more like a political tool of the French crown than a divine authority.
                        For Boccaccio this made the Catholic Church a perfect target for pointed political satire. 
                        We see in The Decameron that members of the clergy are not depicted as holy men, rather Boccaccio depicts a distinct aura of hedonism around the men of faith.
                    </p>
                    <p>However, what began as a witty fourteenth century critique ultimately became a liability two centuries later. 
                        Following the outbreak of the Protestant Reformation the Catholic Church could no longer afford to allow this overt criticism. 
                        The church saw the critiques of Boccaccio as additional ammunition for figures like Martin Luther to attack along with his 95 theses. 
                        The invention of the printing press and the subsequent mass production of The Decameron only served to add more fuel to this fire of anxiety. 
                        This added threat changed the attitude of the Catholic Church from one of tolerance to that of aggressive defense. 
                        This ultimately led to the codification of their anxieties into the Tridentine Index in 1564, a rigid list of rules set to guide future church censorship (see below).
                    </p>
                    <h2><strong>Research Methodology</strong></h2>
                    <p>By using Boccaccio's Decameron as an exemplar text of the time period, we analyzed the perceptions around the Catholic Church in late Medieval Europe in the wake of the Black Plague.
                        In 1564 the Catholic Church published the aforementioned list of ten rules to guide their process of censorship:</p>
                    <ul>
                        <li>1. All books condemned by popes or councils before 1515 will remain prohibited.</li>
                        <li>2. All books by “heresiarchs” (heretical leaders) and theological books by heretics are prohibited.</li>
                        <li>3. Heretics’ Bible translations are banned; heretics’ translations of other texts require approval.</li>
                        <li>4. Vernacular translations of the Bible by Catholic scholars require approval.</li>
                        <li>5. Compilations of earlier works edited by heretics require correction and approval.</li>
                        <li>6. Theological writings in vernacular languages require correction and approval..</li>
                        <li>7. Obscene or immoral works are prohibited; Classical works may be read by adults.</li>
                        <li>8. Books that are generally sound, but which contain isolated heresies must be corrected.</li>
                        <li>9. All books treating magic, superstition, astrology, or occult practices are prohibited.</li>
                        <li>10. The bishop and the inquisitor require all books to be licensed prior to publication.</li>
                    </ul>
                    
                    <p>
                        We utilized this as a guide to flag certain stories in the text as problematic in the eyes of the church, based on our modern sensibilities and interpretations. 
                        Then using a 1620 censored translation of the stories by John Florio, we were able to compare our evaluation of certain stories to the actual revisions that were made by the early seventeenth century.
                        
                    </p>
                </body>
                
            </html>
            
        </xsl:result-document>
        
        <xsl:result-document href="statistics.html" method="xhtml" >
            <head>
                <title> Stats </title>
                <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
            </head>
            <xsl:variable name="count-judaism" select="count(//faith[@ref='#Judaism'])"/>
            <xsl:variable name="count-islam" select="count(//faith[@ref='#Islam'])"/>
            <xsl:variable name="count-christianity" select="count(//faith[@ref='#Roman Catholic'])"/>
            <xsl:variable name="bar-width" select="80"/>
            <xsl:variable name="bar-spacing" select="40"/>
            <!--<xsl:variable name="religion-x" select="(position() - 1) * ($bar-width + $bar-spacing)"/>-->
            <xsl:variable name="scale" select="8"/>
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
                            <a href="statistics.html">Stats</a>
                        </li>
                    </ul>
                </nav>
                
                <h1>Statistics of <em>The Decameron</em></h1>
                <h2><em>Religious References</em></h2>
                <!-- ngl this some bs just copy and pasting from other assignment for bar chart hopefully it works lol -->
                
                <!-- creates graph -->
                <svg width="1400" height="500" viewBox="-50 -400 1200 450">
                    <line x1="0" y1="0" x2="360" y2="0" stroke="black"/>
                    <line x1="0" y1="0" x2="0" y2="-320" stroke="black"/>
                    <xsl:for-each select="(0, 10, 20, 30, 40)">
                        <text x="-35" y="{-. * $scale}" >
                            <xsl:value-of select="."/>
                        </text>
                
                    </xsl:for-each>
                    <!-- variables for heights for religion -->
                    <xsl:variable name="height-islam" select="$count-islam * $scale"/>
                    <xsl:variable name="height-christianity" select="$count-christianity * $scale"/>
                    <xsl:variable name="height-judaism" select="$count-judaism * $scale"/>
                    <!-- rectangles -->
                    <!-- islam rectangle -->
                    <rect x="0" y="{-$height-islam}" width="{$bar-width}" height="{$height-islam}" fill="green" />            
                    <!-- judaism -->
                    <rect x="{$bar-spacing + $bar-width}" y="{-$height-judaism}" width="{$bar-width}" height="{$height-judaism}" fill="blue" />            
                    
                    <!-- christianity -->
                    <rect x="{2 * ($bar-spacing + $bar-width)}" y="{-$height-christianity}" width="{$bar-width}" height="{$height-christianity}" fill="yellow" />            
                    
                    <!-- the name of religion -->
                        
                </svg>
                
               
                
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
                                <a href="statistics.html">Stats</a>
                            </li>
                        </ul>
                    </nav>
                    
                    <h2> <xsl:value-of select="$day"/> 
                        Day
                    </h2>
                    <h3>
                        <xsl:value-of select="p/story_numbr"/>
                    </h3>
                    <!-- adds link on story pages with censorship -->
                    <xsl:if test="normalize-space(@status)='problematique'">
                        <div class="censorship-link">
                            <a href="censorship.html#story-{$day}-{@numbr}">
                                This story was censored - see the Censorship page for details
                            </a>
                        </div>
                    </xsl:if>
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
                                <a href="statistics.html">Stats</a>
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
                                <a href="statistics.html">Stats</a>
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
                                <a href="statistics.html">Stats</a>
                            </li>
                        </ul>
                    </nav>
                    
                    <h1>Censorship</h1>
                    <p>The following stories were identified as censored or problematic. Details on each will be added below.</p>
      
                    
                     <!--creates an entry for each censored story--> 
                    <xsl:for-each select="//story[@status='problematique']">
                        <xsl:variable name='day' as='xs:string' select='parent::div/@day'/>
                        <div class="censorship-entry">
                            <a href="story-{$day}-{@numbr}.html">
                            <h2 id="story-{$day}-{@numbr}">
                                <xsl:value-of select="$day"/> Day - <xsl:value-of select="p/story_numbr"/>
                            </h2>
                                </a>
                            <!-- placeholder for information on censorship details -->
                            <p class="placeholder">Censorship details for this story coming soon.</p>
                            
                            <!-- use this line for when we add the actual censorship data -->
                           
                                <xsl:for-each select="./censorship_note/p">
                                    <p><xsl:value-of select="."/></p>
                                </xsl:for-each>
                                
                                
                          
                        </div>    
                     
                    </xsl:for-each>
                  
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

