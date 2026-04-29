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
                <xsl:call-template name="nav"/>
               
                <header>
                    <h1> The Decameron and Perceptions Around the Black Death   </h1> 
                    
                </header>
                <figure class="intropic">
                    <img src="images/triumph.jpg"
                        alt="The Triumph of Death by Pieter Bruegel the Elder, c. 1562"/>
                    <figcaption>
                        Pieter Bruegel the Elder, <em>The Triumph of Death</em>, c. 1562.
                        Public domain via Wikimedia Commons.
                    </figcaption>
                </figure>
                
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
                        How does The Decameron, and its censored version, address and discuss the Church, and what
                        patterns appear in the explanations for the plague? We analyzed perceptions of the Catholic Church
                        in response to the calamity of the Black Death as exemplified by the Decameron and its
                        subsequent censorship.
                    </p>
                
                             
               
                
            </body>
        </html>
      </xsl:result-document> 
        <xsl:result-document href="corpus.html" method="xhtml">
            <!-- This section is the XSL to make another page for corpus. It generates another HTML file, which can be navigated to from the top. USES SAME CSS as index document, but can probably be changed --> 
            <html>
            <head><title>Corpus</title>
                 
                 <!-- add image as background -->
                <style>
                    body {
                    background-image: url(images/Decameron_image_2.jpeg);
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    }
                </style>
                
                 
                <link rel="stylesheet" type="text/css" href="project_website_style.css"/></head>
            <body>
                <div id="tooltip"></div>
                 <xsl:call-template name="nav"/>
                
                <h1 id="corpus"> Corpus </h1>
                
                
              <h1 class="main_title"><xsl:apply-templates select="//root//main_title"></xsl:apply-templates> </h1>
             
                <ul>
                    <li>Introduction
                        <ul>
                            <li><a href="proem.html">Proem</a></li>
                        </ul>
                    </li>
                    <xsl:apply-templates select="//div[@day]" mode="toc"/>
                </ul>
                <hr/>
               
            
               
                <script type="text/javascript">
                    var tooltip = document.getElementById("tooltip");
                    document.querySelectorAll(".story-link").forEach(function(link) {
                    link.addEventListener("mousemove", function(e) {
                    tooltip.style.display = "block";
                    tooltip.style.left = (e.clientX + 12) + "px";
                    tooltip.style.top = (e.clientY - 28) + "px";
                    tooltip.textContent = this.getAttribute("data-title");
                    });
                    link.addEventListener("mouseleave", function() {
                    tooltip.style.display = "none";
                    });
                    });
                </script>
               
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
                    
                    <!-- add image as background -->
                    <style>
                        body {
                        background-image: url(images/Decameron_image_3.jpeg);
                            background-size: cover;
                            background-position: center;
                            background-repeat: no-repeat;
                        }
                    </style>
                </head>
                <body>
                     <xsl:call-template name="nav"/>
                    <!-- hard coded about page from google doc, will have to manually update to change -->
                    <h1>About</h1>
                    <h2><strong>Author</strong></h2>
                    <div class="author-section">
                       
                        <div class="author-text">
               
                            <figure class="author-portrait">
                                <img src="images/boccaccio-portrait.jpg" alt="Portrait of Giovanni Boccaccio"/>
                                <figcaption>Giovanni Boccaccio, c. 1375</figcaption>
                            </figure>
                   
                        </div>
                    </div>
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
                    <div class="rules-grid">
                        <div class="rule-card highlighted">
                            <span class="rule-number">I</span>
                            <p>All books condemned by popes or councils before 1515 will remain prohibited.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">II</span>
                            <p>All books by "heresiarchs" (heretical leaders) and theological books by heretics are prohibited.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">III</span>
                            <p>Heretics' Bible translations are banned; heretics' translations of other texts require approval.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">IV</span>
                            <p>Vernacular translations of the Bible by Catholic scholars require approval.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">V</span>
                            <p>Compilations of earlier works edited by heretics require correction and approval.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">VI</span>
                            <p>Theological writings in vernacular languages require correction and approval.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">VII</span>
                            <p>Obscene or immoral works are prohibited; Classical works may be read by adults.</p>
                            
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">VIII</span>
                            <p>Books that are generally sound, but which contain isolated heresies must be corrected.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">IX</span>
                            <p>All books treating magic, superstition, astrology, or occult practices are prohibited.</p>
                        </div>
                        <div class="rule-card highlighted">
                            <span class="rule-number">X</span>
                            <p>The bishop and the inquisitor require all books to be licensed prior to publication.</p>
                        </div>
                    </div>
                    
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
            <html>
            <!-- first set of variables for graph 1 --> 
            <xsl:variable name="count-judaism" select="count(//faith[@ref='#Judaism'])"/>
            <xsl:variable name="count-islam" select="count(//faith[@ref='#Islam'])"/>
            <xsl:variable name="count-christianity" select="count(//faith[@ref='#Roman Catholic'])"/>
            <xsl:variable name="bar-width-1" select="80"/>
            <xsl:variable name="bar-spacing-1" select="40"/>
            
            <!-- variables for person count -->
            
            <xsl:variable name="count-pampinea" select="count(//person[@name='pampinea'])"/>
            <xsl:variable name="count-fiammetta" select="count(//person[@name='fiammetta'])"/>
            <xsl:variable name="count-filomena" select="count(//person[@name='filomena'])"/>
            <xsl:variable name="count-emilia" select="count(//person[@name='emilia'])"/>
            <xsl:variable name="count-lauretta" select="count(//person[@name='lauretta'])"/>
            <xsl:variable name="count-neifile" select="count(//person[@name='neifile'])"/>
            <xsl:variable name="count-elisa" select="count(//person[@name='elisa'])"/>
            <xsl:variable name="count-pamfilo" select="count(//person[@name='pamfilo'])"/>
            <xsl:variable name="count-filostrato" select="count(//person[@name='filostrato'])"/>
            <xsl:variable name="count-dioneo" select="count(//person[@name='dioneo'])"/>
            <xsl:variable name="bar-width-2" select="40"/>
            <xsl:variable name="bar-spacing-2" select="50"/>
            
            
            <!--<xsl:variable name="religion-x" select="(position() - 1) * ($bar-width + $bar-spacing)"/>-->
            <xsl:variable name="scale" select="8"/>
            <body>
                <div id="tooltip"></div>
                <xsl:call-template name="nav"/>
                <h1>Statistics of <em>The Decameron</em></h1>
                <h2><em>Religious References</em></h2>
                <h3><em>The Decameron</em> as a text has a heavy focus on religion. This graph counts the frequency as they appear in the text.</h3>
                
                <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="500" viewBox="-50 -400 1200 450">
                    <line x1="0" y1="0" x2="360" y2="0" stroke="black"/>
                    <line x1="0" y1="0" x2="0" y2="-320" stroke="black"/>
                    
                    <!-- gridlines and y axis labels -->
                    <xsl:for-each select="(0, 10, 20, 30, 40)">
                        <line x1="0" x2="360" y1="{-. * $scale}" y2="{-. * $scale}" stroke="#ccc" stroke-width="0.5"/>
                        <text x="-35" y="{-. * $scale}">
                            <xsl:value-of select="."/>
                        </text>
                    </xsl:for-each>
                    
                    <!-- variables for heights for religion -->
                    <xsl:variable name="height-islam" select="$count-islam * $scale"/>
                    <xsl:variable name="height-christianity" select="$count-christianity * $scale"/>
                    <xsl:variable name="height-judaism" select="$count-judaism * $scale"/>
                    
                    <!-- rectangles -->
                    <rect x="20" y="{-$height-islam}" width="{$bar-width-1}" height="{$height-islam}" fill="#4A7C4E" data-value="Islam: {$count-islam}" />
                    <rect x="{$bar-spacing-1 + $bar-width-1 + 20}" y="{-$height-judaism}" width="{$bar-width-1}" height="{$height-judaism}" fill="#2E5E8E" data-value="Judaism: {$count-judaism}" />
                    <rect x="{2 * ($bar-spacing-1 + $bar-width-1) + 20}" y="{-$height-christianity}" width="{$bar-width-1}" height="{$height-christianity}" fill="#D4A017" data-value="Christianity: {$count-christianity}" />
                    
                    <!-- labels -->
                    <text x="{20 + $bar-width-1 div 2}" y="20" font-size="15" text-anchor="middle">Islam</text>
                    <text x="{$bar-spacing-1 + $bar-width-1 + 20 + $bar-width-1 div 2}" y="20" font-size="15" text-anchor="middle">Judaism</text>
                    <text x="{2 * ($bar-spacing-1 + $bar-width-1) + 20 + $bar-width-1 div 2}" y="20" font-size="15" text-anchor="middle">Christianity</text>
                    <text x="170" y="-340" font-size="20" text-anchor="middle" font-weight="bold">Religious References in The Decameron</text>
                </svg>
                
                
                <h2><em>Character Frequency</em></h2>
                <h3><em>The Decameron</em> primarily follows the stories of ten main characters. This graph tracks the frequency which their names appear in the text.</h3>
                
                <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="500" viewBox="-100 -460 1400 560">
                    <line x1="0" y1="0" x2="0" y2="-450" stroke="black"/>
                    <line x1="0" y1="0" x2="850" y2="0" stroke="black"/>
                    
                    <!-- gridlines and y axis labels -->
                    <xsl:for-each select="(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55)">
                        <line x1="0" x2="850" y1="{-. * $scale}" y2="{-. * $scale}" stroke="#ccc" stroke-width="0.5"/>
                        <text x="-35" y="{-. * $scale}">
                            <xsl:value-of select="."/>
                        </text>
                    </xsl:for-each>
                    
                    <!-- name variables -->
                    <xsl:variable name="height-pampinea" select="$count-pampinea * $scale"/>
                    <xsl:variable name="height-fiammetta" select="$count-fiammetta * $scale"/>
                    <xsl:variable name="height-emilia" select="$count-emilia * $scale"/>
                    <xsl:variable name="height-lauretta" select="$count-lauretta * $scale"/>
                    <xsl:variable name="height-neifile" select="$count-neifile * $scale"/>
                    <xsl:variable name="height-elisa" select="$count-elisa * $scale"/>
                    <xsl:variable name="height-pamfilo" select="$count-pamfilo * $scale"/>
                    <xsl:variable name="height-filostrato" select="$count-filostrato * $scale"/>
                    <xsl:variable name="height-dioneo" select="$count-dioneo * $scale"/>
                    <xsl:variable name="height-filomena" select="$count-filomena * $scale"/>
                    
                    <!-- sex variables -->
                    <xsl:variable name="sex-pampinea" select="(//person[@name='pampinea'])[1]/@sex"/>
                    <xsl:variable name="sex-fiammetta" select="(//person[@name='fiammetta'])[1]/@sex"/>
                    <xsl:variable name="sex-emilia" select="(//person[@name='emilia'])[1]/@sex"/>
                    <xsl:variable name="sex-lauretta" select="(//person[@name='lauretta'])[1]/@sex"/>
                    <xsl:variable name="sex-neifile" select="(//person[@name='neifile'])[1]/@sex"/>
                    <xsl:variable name="sex-elisa" select="(//person[@name='elisa'])[1]/@sex"/>
                    <xsl:variable name="sex-pamfilo" select="(//person[@name='pamfilo'])[1]/@sex"/>
                    <xsl:variable name="sex-filostrato" select="(//person[@name='filostrato'])[1]/@sex"/>
                    <xsl:variable name="sex-dioneo" select="(//person[@name='dioneo'])[1]/@sex"/>
                    <xsl:variable name="sex-filomena" select="(//person[@name='filomena'])[1]/@sex"/>
                    
                    <!-- rectangles -->
                    <rect x="20" y="{-$height-pampinea}" width="{$bar-width-2}" height="{$height-pampinea}" fill="black" data-value="Pampinea: {$count-pampinea}" />
                    <rect x="{1 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-fiammetta}" width="{$bar-width-2}" height="{$height-fiammetta}" fill="black" data-value="Fiammetta: {$count-fiammetta}" />
                    <rect x="{2 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-emilia}" width="{$bar-width-2}" height="{$height-emilia}" fill="black" data-value="Emilia: {$count-emilia}" />
                    <rect x="{3 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-lauretta}" width="{$bar-width-2}" height="{$height-lauretta}" fill="black" data-value="Lauretta: {$count-lauretta}" />
                    <rect x="{4 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-neifile}" width="{$bar-width-2}" height="{$height-neifile}" fill="black" data-value="Neifile: {$count-neifile}" />
                    <rect x="{5 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-elisa}" width="{$bar-width-2}" height="{$height-elisa}" fill="black" data-value="Elisa: {$count-elisa}" />
                    <rect x="{6 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-pamfilo}" width="{$bar-width-2}" height="{$height-pamfilo}" fill="black" data-value="Pamfilo: {$count-pamfilo}" />
                    <rect x="{7 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-filostrato}" width="{$bar-width-2}" height="{$height-filostrato}" fill="black" data-value="Filostrato: {$count-filostrato}" />
                    <rect x="{8 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-dioneo}" width="{$bar-width-2}" height="{$height-dioneo}" fill="black" data-value="Dioneo: {$count-dioneo}" />
                    <rect x="{9 * ($bar-spacing-2 + $bar-width-2) + 20}" y="{-$height-filomena}" width="{$bar-width-2}" height="{$height-filomena}" fill="black" data-value="Filomena: {$count-filomena}" />
                    
                    <!-- name labels -->
                    <text x="{20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Pampinea</text>
                    <text x="{1 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Fiammetta</text>
                    <text x="{2 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Emilia</text>
                    <text x="{3 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Lauretta</text>
                    <text x="{4 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Neifile</text>
                    <text x="{5 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Elisa</text>
                    <text x="{6 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Pamfilo</text>
                    <text x="{7 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Filostrato</text>
                    <text x="{8 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Dioneo</text>
                    <text x="{9 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="30" font-size="15" text-anchor="middle">Filomena</text>
                    
                    <!-- sex labels -->
                    <text x="{20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-pampinea"/></text>
                    <text x="{1 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-fiammetta"/></text>
                    <text x="{2 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-emilia"/></text>
                    <text x="{3 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-lauretta"/></text>
                    <text x="{4 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-neifile"/></text>
                    <text x="{5 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-elisa"/></text>
                    <text x="{6 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-pamfilo"/></text>
                    <text x="{7 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-filostrato"/></text>
                    <text x="{8 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-dioneo"/></text>
                    <text x="{9 * ($bar-spacing-2 + $bar-width-2) + 20 + $bar-width-2 div 2}" y="45" font-size="15" text-anchor="middle"><xsl:value-of select="$sex-filomena"/></text>
                    <text x="550" y="-440" font-size="20" text-anchor="middle" font-weight="bold">Character Mention Frequency in The Decameron</text>
                </svg>
                
                
                <!-- variables for problematic story counts per day -->
                <xsl:variable name="prob-day1" select="count(//div[@day='First']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day2" select="count(//div[@day='Second']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day3" select="count(//div[@day='Third']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day4" select="count(//div[@day='Fourth']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day5" select="count(//div[@day='Fifth']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day6" select="count(//div[@day='Sixth']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day7" select="count(//div[@day='Seventh']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day8" select="count(//div[@day='Eighth']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day9" select="count(//div[@day='Ninth']/story[@status='problematique'])"/>
                <xsl:variable name="prob-day10" select="count(//div[@day='Tenth']/story[@status='problematique'])"/>
                <xsl:variable name="bar-width-3" select="60"/>
                <xsl:variable name="bar-spacing-3" select="30"/>
                <xsl:variable name="scale-3" select="30"/>
                <xsl:variable name="prob-height-1" select="$prob-day1 * $scale-3"/>
                <xsl:variable name="prob-height-2" select="$prob-day2 * $scale-3"/>
                <xsl:variable name="prob-height-3" select="$prob-day3 * $scale-3"/>
                <xsl:variable name="prob-height-4" select="$prob-day4 * $scale-3"/>
                <xsl:variable name="prob-height-5" select="$prob-day5 * $scale-3"/>
                <xsl:variable name="prob-height-6" select="$prob-day6 * $scale-3"/>
                <xsl:variable name="prob-height-7" select="$prob-day7 * $scale-3"/>
                <xsl:variable name="prob-height-8" select="$prob-day8 * $scale-3"/>
                <xsl:variable name="prob-height-9" select="$prob-day9 * $scale-3"/>
                <xsl:variable name="prob-height-10" select="$prob-day10 * $scale-3"/>
                
                <h2><em>Problematic Stories Per Day</em></h2>
                <h3>This graph tracks the number of stories per day that were flagged as problematic in the eyes of the Church.</h3>
                
                <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="500" viewBox="-100 -360 1400 440">
                    <line x1="0" y1="0" x2="0" y2="-340" stroke="black" stroke-width="2"/>
                    <line x1="0" y1="0" x2="980" y2="0" stroke="black"/>
                    
                    <!-- gridlines and y axis labels -->
                    <xsl:for-each select="(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)">
                        <line x1="0" x2="980" y1="{-. * $scale-3}" y2="{-. * $scale-3}" stroke="#ccc" stroke-width="0.5"/>
                        <text x="-35" y="{-. * $scale-3 + 5}" font-size="14">
                            <xsl:value-of select="."/>
                        </text>
                    </xsl:for-each>
                    
                    <!-- rectangles -->
                    <rect x="20" y="{-$prob-height-1}" width="{$bar-width-3}" height="{$prob-height-1}" fill="#34150F" data-value="Day 1: {$prob-day1} problematic stories"/>
                    <rect x="{1 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-2}" width="{$bar-width-3}" height="{$prob-height-2}" fill="#34150F" data-value="Day 2: {$prob-day2} problematic stories"/>
                    <rect x="{2 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-3}" width="{$bar-width-3}" height="{$prob-height-3}" fill="#34150F" data-value="Day 3: {$prob-day3} problematic stories"/>
                    <rect x="{3 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-4}" width="{$bar-width-3}" height="{$prob-height-4}" fill="#34150F" data-value="Day 4: {$prob-day4} problematic stories"/>
                    <rect x="{4 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-5}" width="{$bar-width-3}" height="{$prob-height-5}" fill="#34150F" data-value="Day 5: {$prob-day5} problematic stories"/>
                    <rect x="{5 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-6}" width="{$bar-width-3}" height="{$prob-height-6}" fill="#34150F" data-value="Day 6: {$prob-day6} problematic stories"/>
                    <rect x="{6 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-7}" width="{$bar-width-3}" height="{$prob-height-7}" fill="#34150F" data-value="Day 7: {$prob-day7} problematic stories"/>
                    <rect x="{7 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-8}" width="{$bar-width-3}" height="{$prob-height-8}" fill="#34150F" data-value="Day 8: {$prob-day8} problematic stories"/>
                    <rect x="{8 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-9}" width="{$bar-width-3}" height="{$prob-height-9}" fill="#34150F" data-value="Day 9: {$prob-day9} problematic stories"/>
                    <rect x="{9 * ($bar-spacing-3 + $bar-width-3) + 20}" y="{-$prob-height-10}" width="{$bar-width-3}" height="{$prob-height-10}" fill="#34150F" data-value="Day 10: {$prob-day10} problematic stories"/>
                    
                    <!-- day labels -->
                    <text x="{20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 1</text>
                    <text x="{1 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 2</text>
                    <text x="{2 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 3</text>
                    <text x="{3 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 4</text>
                    <text x="{4 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 5</text>
                    <text x="{5 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 6</text>
                    <text x="{6 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 7</text>
                    <text x="{7 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 8</text>
                    <text x="{8 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 9</text>
                    <text x="{9 * ($bar-spacing-3 + $bar-width-3) + 20 + $bar-width-3 div 2}" y="20" font-size="15" text-anchor="middle">Day 10</text>
                    
                    <text x="490" y="-320" font-size="20" text-anchor="middle" font-weight="bold">Problematic Stories Per Day</text>
                </svg>
                
                <p>Across all ten days, a total of <xsl:value-of select="count(//story[@status='problematique'])"/> stories were flagged as problematic in the eyes of the Church.</p>
                
            </body>
            <script type="text/javascript">
                var tooltip = document.getElementById("tooltip");
                document.querySelectorAll("rect").forEach(function(rect) {
                rect.addEventListener("mousemove", function(e) {
                tooltip.style.display = "block";
                tooltip.style.left = (e.clientX + 12) + "px";
                tooltip.style.top = (e.clientY - 28) + "px";
                tooltip.textContent = this.getAttribute("data-value");
                });
                rect.addEventListener("mouseleave", function() {
                tooltip.style.display = "none";
                });
                });
            </script>
            </html>
        </xsl:result-document>
        
    </xsl:template>
    
    <!-- main templates -->
    <xsl:template match="div[@day]">
        <h1><xsl:value-of select="@day"/> Day</h1>
        <xsl:apply-templates select="story"/>
    </xsl:template>
    
 
    <xsl:template name="nav">
        <nav>
            <ul>
                <li><a href="index.html">Home Page</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="corpus.html">Corpus</a></li>
                <li><a href="censorship.html">Censorship</a></li>
                <li><a href="statistics.html">Stats</a></li>
                <li><a href="themes.html">Sources</a></li>
            </ul>
        </nav>
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
                     <xsl:call-template name="nav"/>
                    
                    <h2> <xsl:value-of select="$day"/> 
                        Day
                    </h2>
                    <h3>
                        <xsl:value-of select="p/story_numbr"/>
                    </h3>
                    
                    <!-- creates legend at the top of every story page  -->
                    <div class="legend">
                        <div><span class="scandalous">Problematic Text</span></div>
                        <div><strong>Person</strong></div>
                    </div>
                    
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
    
    <!-- template for styling of scandalous lines -->
    <xsl:template match="scandalous">
        <!-- span creates an inline container that can be used in styling later -->
        <span class="scandalous">
            <!-- uses <p> template -->
            <xsl:apply-templates/>
        </span>
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
                     <xsl:call-template name="nav"/>
                    
                    <h2><xsl:value-of select="p/intro_title"/></h2>
                    <xsl:apply-templates select="p[not(intro_title)]"/>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document href="themes.html" method="xhtml">
            <html>
                <head><title>Sources</title>
                    
                    <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
                </head>
                
                
                <body>
                    
                     <xsl:call-template name="nav"/>
                    
                    <h1>
                        Decameron Links
                    </h1>
                    <p><a href="https://www.gutenberg.org/files/23700/23700-h/23700-h.htm" target="_blank">Original Text</a>, Courtesy of The Project Gutenberg</p>
                    <p>Florio's 1620 Censored Version (<a href="https://www.gutenberg.org/cache/epub/52617/pg52617-images.html" target="_blank">part 1</a>) (<a href="https://www.gutenberg.org/cache/epub/52618/pg52618-images.html" target="_blank">part 2</a>), Courtesy of the Project Gutenberg</p>
                    
                    <h1>
                        Research Sources
                    </h1>
                    
                        <p>McGrath, Christina. “Manipulated, Misrepresented, and Maligned: The Censorship and <em>Rassettatura</em> of the <em>Decameron</em>.” <em>Heliotropia 15</em>, (2018): 189-203. <a href= "https://heliotropia.org/15/mcgrath.pdf" target="_blank">https://heliotropia.org/15/mcgrath.pdf</a></p>
                        
                        <p>“The Ten Rules: <em>Concilium Tridentinum</em>, Council of Trent (1545-1563).” SMU Libraries: Bridwell Library Special Collections, <a href="https://bridwell.omeka.net/exhibits/show/heresyerror/indexprohibitedbooks/tenrules" target="_blank">https://bridwell.omeka.net/exhibits/show/heresyerror/indexprohibitedbooks/tenrules</a></p>
                        
                        <p>Tonozzi, Daniel Thomas. 2010. "Reading the ‘Decameron’ from Boccaccio to Salviati." Order No. 3396289, <em>Cornell University</em>. <a href="https://pitt.idm.oclc.org/login?url=https://www.proquest.com/dissertations-theses/reading-decameron-boccaccio-salviati/docview/305198899/se-2." target="_blank">https://pitt.idm.oclc.org/login?url=https://www.proquest.com/dissertations-theses/reading-decameron-boccaccio-salviati/docview/305198899/se-2.</a></p>
                        
                    
                </body>
            </html>
            
            
            
        </xsl:result-document>
        
        <xsl:result-document href="censorship.html"  method="xhtml">  <!--Censorship test page -->
            <html>
                <head><title>censorship</title>
                    
                    <link rel="stylesheet" type="text/css" href="project_website_style.css"/>
                </head>
                
                
                <body>
                   <xsl:call-template name="nav"/>
                    
                    <h1>Censorship</h1>
                    <p>The following stories were identified as censored or problematic. Details on each will be added below.</p>
      <!-- test -->
                    
                     <!--creates an entry for each censored story--> 
                    <xsl:for-each select="//story[@status='problematique']">
                        <xsl:variable name='day' as='xs:string' select='parent::div/@day'/>
                        <div class="censorship-entry">
                            <a href="story-{$day}-{@numbr}.html">
                            <h2 id="story-{$day}-{@numbr}">
                                <xsl:value-of select="$day"/> Day - <xsl:value-of select="p/story_numbr"/>
                            </h2>
                                </a>
                            
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
            <strong><xsl:value-of select="@day"/> Day</strong>
            <ul>
                <xsl:apply-templates select="story" mode="toc"/>
            </ul>
        </li>
    </xsl:template>
    <xsl:template match="story" mode="toc">
        <xsl:variable name="day" select="parent::div/@day"/>
        <xsl:variable name="hover-text" 
            select="normalize-space(string-join(p[not(story_numbr) and not(ch_title)][1]//text(), ' '))"/>
            <a href="story-{$day}-{@numbr}.html"
                class="story-link"
                data-title="{substring($hover-text, 1, 200)}…">
                <span class="story-num"><xsl:value-of select="p/story_numbr"/></span>
                <xsl:if test="@status='problematique'">
                    <span class="censor-badge">⚠</span>
                </xsl:if>
            </a>
    </xsl:template>
    
    <xsl:template match="person"> <!-- template for person, just bolds it in the text for now-->
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
  
    
</xsl:stylesheet>

