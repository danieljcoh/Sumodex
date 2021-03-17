<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="/css/Style.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.6.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Sumodex</title>
</head>
<body>
	<!-- HEADER, TITLE & DESCRIPTION -->
	<header>
		<h1 id='main-heading'>Welcome to Sumodex</h1>
	</header>
	<p id="artist-credit">Art credit to <a target="_blank" href="https://www.artstation.com/dianayanevaart">Diana Yaneva	</a></p>
		
		<!-- ABOUT SUMODEX -->
		<div class="about-info"> 
			<h3>Sumodex is a project that combines Sumo Wrestler Data in the fashion of
		 	a Pokedex.  
			<br>
			<br>
			So that all the data on your favorite Sumo Wrestlers is in one place.</h3>
			
			<p>Currently, only Makuuchi and Juryo Sumo Wrestlers exist in the Sumodex because 
			they are the only public profiles that I could find.</p>
		</div>
		
	<!-- SEARCH FUNCTION -->	
		<div class="search-container">
			<h1 id="searchBarTitle">Browse our Data Base for your favorite Sumo Wrestlers</h1>
			<form method="GET" action="/wrestler/search">
				<button id="searchBarButton">Browse</button>
			</form>
		</div>
		
	<!-- SUMODEX -->	
	<section id="sumodex-section">

		<div class="sumodex-main">
			<div class="wrestlerName">
				<p><c:out value="${wrestler.shikona}"/></p>
			</div>

			<div class="sumodex-content-container">

				<div class="sumodex-left-side">
				<div class="wrestlerPic">
					<c:forEach items="${pics}" var="pic">
						<img src="${pic.image_url }" alt="image of <c:out value="${wrestler.shikona}"/>">
					</c:forEach>
				</div>
					<div class="info-buttons">
							<form method="GET" action="/wrestler/last/${wrestler.id}">
								<button class="btn btn-warning">Last</button>
							</form>		
							<form method="GET" action="/wrestler/next/${wrestler.id}">
								<button class="btn btn-warning">Next</button>
							</form>
						</div>	
				</div>

					<div class="sumodex-right-side">
						<div class="wrestlerInfo">
							<p>Shikona: <c:out value="${wrestler.shikona}"/></p>
							<p>Real Name: <c:out value="${wrestler.name}"/></p>
							<p>Rank: <c:out value="${wrestler.sumoRank}"/></p>
							<p>Birthday: <c:out value="${wrestler.birthday}"/></p>
							<p>Birthplace:<c:out value="${wrestler.birthplace}"/></p>
							<p>Heya: <c:out value="${wrestler.heya}"/></p>
							<p>Height: <c:out value="${wrestler.height}"/></p>
							<p>Weight: <c:out value="${wrestler.weight}"/></p>
							<p>Favorite Technique: <c:out value="${wrestler.favTechnique}"/></p>
						</div>
						<div class="picture-buttons">
							<a target="_blank"  href="http://www.sumo.or.jp/EnSumoDataRikishi/search/"><button>Rikishi Data Search</button></a>
							<a target="_blank"  href="http://sumodb.sumogames.de/Rikishi.aspx"><button>Sumodb Reference</button></a>
						</div>
					</div>
		</div>			
	</div>
	
		<!-- CURRENT SUMO TOURNAMENT -->
		<h1>WATCH THE CURRENT TOURNAMENT</h1>
		<h3>Youtube Channels</h3>
		
		<h4>Natto Sumo</h4>
		<p>A Youtuber that posts broadcasts of the current Sumo Basho in Japanese.</p>
		<a target="_blank" href="https://www.youtube.com/channel/UCy8YnV1QyWpHLDU56FtAJxA"><img src="/images/YoutubeChannels/NattoSumo_PicOnly.JPG" alt="Natto Sumo" width="150" height="150"></a>
		 
		<h4>Jason Sumo</h4>
		<p>An awesome Youtuber who shows Sumo bouts on his website, has fantasy sumo, gives prizes to the winners, and has fun commentary.</p>
		<a target="_blank" href="https://www.youtube.com/channel/UCjEHJ_fQxC3wgXcIazGWt3Q"><img src="/images/YoutubeChannels/JasonSumo_PicOnly.JPG" alt="Jason Sumo" width="150" height="150"></a>
	
		<h4>Kintamayama</h4>
		<p>A Youtuber that posts broadcasts of the current Sumo Basho in English.</p>
		<a target="_blank" href="https://www.youtube.com/channel/UCsyhbQggi0M3t_DMePOLgSw"><img src="/images/YoutubeChannels/Kintamayama_PicOnly.JPG" alt="Kintamayama Sumo" width="150" height="150"></a>
		
	</section>

	<!-- CURRENT SUMO TOURNAMENT -->	
	<section class="accordion-container">
	
		<button class="accordion">Tournament Information</button> 
		<div class="panel tournament-container">
		<h1>General Tournament Information</h1>
			<p>Sumo Wrestling is Japan's oldest sport dating back over 2000 years ago. More presently Japan holds a Sumo Tournament every two months, or six times a year.
				Each tournament, also known as a Honbasho, has a specific title and starts on a specific day and a specific month.</p>
			<br>
			<table>
				<tr>
					<th>Honbasho</th>
					<th>Nickname</th>
					<th>City</th>
					<th>Venue</th>
					<th>Opening Day</th>
				</tr>
				<tr>
					<td>January</td>
					<td>Hatsu (Opening) Basho</td>
					<td>Tokyo</td>
					<td>Ryogoku Kokugikan</td>
					<td>1st or 2nd Sunday</td>
				</tr>
				<tr>
					<td>March</td>
					<td>Haru (Spring) Basho</td>
					<td>Osaka</td>
					<td>Osaka Prefectural Gymnasium</td>
					<td>2nd Sunday</td>
				</tr>
				<tr>
					<td>May</td>
					<td>Natsu (Summer) Basho</td>
					<td>Tokyo</td>
					<td>Ryogoku Kokugikan</td>
					<td>2nd Sunday</td>
				</tr>
				<tr>
					<td>July</td>
					<td>Nagoya Basho</td>
					<td>Nagoya</td>
					<td>Aichi Prefectural Gymnasium</td>
					<td>1st or 2nd Sunday </td>
				</tr>
				<tr>
					<td>September</td>	
					<td>Aki (Autumn) Basho</td>
					<td>Tokyo</td>
					<td>Ryogoku Kokugikan</td>
					<td>2nd Sunday</td>
				</tr>
				<tr>
					<td>November</td>
					<td>Kyushu Basho</td>
					<td>Fukuoka</td>
					<td>Fukuoka Kokusai Center</td>
					<td>2nd Sunday</td>
				</tr>
			</table>
			
		<!-- MOST RECENT TOURNAMENTS -->
			<h1>Recent Tournaments</h1>

			<table id="recent-tournaments-table">
				<tr>
					<th>Year</th>
					<th>Honbash</th>
					<th>Shikona</th>
					<th>Final Score</th>
				</tr>
				<tr>
					<td>2021</td>
					<td>Hatsu Basho</td>
					<td>Daieisho</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>November</td>
					<td>Takakeisho</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>September</td>
					<td>Shodai</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>July</td>
					<td>Terunofuji</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>May</td>
					<td>No tournament</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>March</td>
					<td>Hakuho</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>January</td>
					<td>No Tokushoryu</td>
					<td>14-1-0</td>
				</tr>
			</table>
			
		<!-- UPCOMING TOURNAMENTS -->
			<h1>Upcoming Tournaments</h1>
			<table>
				<tr>
					<th>Tournament</th>
					<th>Venue</th>
					<th>Tickets Sold From</th>
					<th>First to Last Day</th>
				</tr>
				<tr>
					<td>The March Tournament</td>
					<td>Kokugikan</td>
					<td>February 28, 2021</td>
					<td>March 14, 2021 - March 28, 2021</td>
				</tr>
				<tr>
					<td>The May Tournament</td>
					<td>Kokugikan</td>
					<td>April 10, 2021</td>
					<td>May 9, 2021 - May 23, 2021</td>
				</tr>
				<tr>
					<td>The July Tournament</td>
					<td>Aichi Prefectural Gymnasium</td>
					<td>May 22, 2021</td>
					<td>July 4, 2021 - July 18, 2021</td>
				</tr>
				<tr>
					<td>The September Tournament</td>
					<td>Kokugikan</td>
					<td>August 7, 2021</td>
					<td>September 12, 2021 - September 26, 2021</td>
				</tr>
				<tr>
					<td>The November Tournament</td>
					<td>Fukuoka Kokusai Center</td>
					<td>September 18, 2021</td>
					<td>November 14, 2021 - November 28, 2021</td>
				</tr>
			</table>

			<br>

			<p><a href="https://trulytokyo.com/how-to-buy-tickets-for-a-tokyo-sumo-match/" target="_blank">Learn how to buy tickets here</a></p>
		</div>
		
	<!-- SUMO RULESET -->
		<button class="accordion">Sumo Ruleset</button>
		<div class="panel sumo-ruleset-container">
			<div class="sumo-ruleset-body">
				<div>
					<p>Sumo Tournaments last 15 days, where everyday, each Rikishi will need to wrestle another Sumo wrestlers. There will be always be one winner and 
						one loser. There are never any ties.</p>
		
					<br>
						<p>The matches, also referred to as 'bouts' take place in a 4-meter wide, clay stage called a "dohyo" (Dojo), where the Rikishi have to make their opponent 
						either leave the dohyo or have a body part other than the soles of their feet touch the ground. If a rikishi is able to do any of the aforementioned, 
						the referee, also known as the, Gyoji, will point to the winners side of the dohyo and the match will be concluded.</p>
						<br>
						<p>Wrestlers start the match with a Pre-Match Ritual (which is described more below) but afterwards, the wrestlers face off on equal sides of the dohyo,
						where they will both squat and lay down their fists. Once both Rikishi touch the ground with their fists, the bout commences. 
						If a wrestler starts the match without touching their hands down the Gyoji will call a 'foul' and they must start again.</p>
						<br>
						<p>There is no time limit for the bouts and some matches have been known to last four seconds, others have been known to last four minutes.</p>
						<br>
				</div>
				<div><img src="/images//sumo-ruleset.jpg" alt="Sumos wrestling" /></div>
			</div>
				
				<!-- RULESET ALLOWANCES -->
		<div class="allowances-disqualifications-container">
			<div>
				<h3>Allowances</h3>
					<p>Wrestlers are allowed to: </p>
					<ul>
						<li>Push their Opponents</li>
						<li>Slap their Opponents</li>
						<li>Grab their Miwashi their Opponents</li>
						<li>Grab their limbs</li>
						<li>Redirect their opponent out of the dohyo</li>
						<li>Trip their Opponent</li>
						<li>Throw their Opponent</li>
						<li>REALLY throw their Opponent</li>
					</ul>
			</div>
			<div>
				<!-- RULESET DISQUALIFICATIONS -->
				<h3>Disqualifications</h3>
					<p>Wrestlers are NOT allowed to: </p>
					<ul>
						<li>Punch their Opponents</li>
						<li>Poke in sensative places</li>
						<li>Grab opponents by the crotch</li>
						<li>Lose their miwashi or undress in anyway</li>
					</ul>
			<br>
			</div>
		</div>
		
		<!-- RANKINGS -->
		<div class="rankings-container">
			<h3>Rankings</h3>
				<br>
					<p>There are ten ranks in professional sumo wrestling and based on a rikishi's wins and loses, they can be promoted or demoted accordingly.
					The top five ranks are known as "Makuuchi" or 'TOP Division" where the matches are Televized and the salaries are way higher than lower ranks.
					The ultimate goal of many rikishi is to become a Yokozuna but in order to do that Wrestlers must either win two tournaments in a row at the rank
					of 'Ozeki' or do something of equivalent performance, and have the Unanimous vote of the Yokozuna deliberation coucil of the Japan Sumo Association.
					This would then allow you to be crowned either a Yokozuna or a Grand Champion. Yokozuna are usually differentiated by their white miwashis they wear
					before tournaments. Being a Yokozuna brings much money and fame in Japan as it brings the notion that you are one of the best Sumo Wrestlers in the world.</p>

				<div class="rankings-bottom">
					<div>
						<h3>Makuuchi Rankings</h3>
							<ul>
								<li>Yokozuna</li>
								<li>Ozeki</li>
								<li>Sekiwake</li>
								<li>Komusubi</li>
								<li>Maegashira</li>
							</ul>	
					</div>
					<div>
						<h3>Lower Rankings</h3>
							<ul>
								<li>Juryo</li>
								<li>Makushita</li>
								<li>Sandanme</li>
								<li>Jonidan</li>
								<li>Jonokuchi</li>
							</ul>
						</div>
				</div>
		
		</div>

		<br>
			
		</div>

	<!-- SUMO HISTORY -->
		<button class="accordion">History of Sumo</button>
		<div class="panel sumo-history-container">
			<div class="sumo-history-body">
				<div class="sumo-history-text">
					<br>
					<img id="sumo-history-img" src="/images/sumo-history.jpeg" alt="Painting of sumo history"/>
					<p>Sumo Wrestling is Japan's oldest sport dating back over 2000 years ago but didn't gain real cultural signifigance until about 700AD,
					also known as the Nara Period (710 - 794) where sumo became an event conducted at the imperial court, and bouts were performed in 
					front of the emperor.</p>
					<br>
					<p>Sumo basically took its present form in the Edo period. Matches were held to raise money to construct shrines and temples or to 
					replace bridges, and the professional sumo wrestler was born. A sport that was once enjoyed only by the rich and powerful became popular 
					among the masses. Sumo events are often held in Tokyo, Osaka, and Kyoto, and the sport's popularity grew with the sales of 
					color woodblock prints featuring sumo scenes and pictures of wrestlers. The government of the time, though, disapproved of fighting and 
					often issued orders banning sumo.
					</p>
					<br>
					<p>For this reason, the organizers of sumo decided on a set of rules, including the creation of a list of 48 legal moves and the 
					round ring that is still used today. A system of stables was created to train wrestlers. As many aspects of old Japan remain in sumo, 
					such as topknots, traditional dress, and ancient customs, professional sumo is more than just a sport; it's a living example of traditional 
					Japanese culture. The wrestlers serve as cultural ambassadors when they take part in events overseas.</p>
					
			<br>
			<p>In Japan the word "Basho" means tournament in the sense of Sumo. Within a Sumo basho, the wrestlers, also known as 'Rikishi', undergo
				one vs one bouts (matches) where there will be one winner and one loser.</p>
				<br>
				<p>The bouts take place in a 4 meter wide, clay stage called a "dohyo" (Dojo) where the rikishi have to make their opponent either leave the dohyo or have
				a body part other than the soles of their feet touch the ground. If a rikishi is able to do any of the aforementioned, the referee, also known as the,
				gyoji, will point to the winners side of the dohyo and the match will be concluded.</p>
				<br>
				<p>Once both Rikishi touch the ground with their fists, the bout commences. If a wrestler starts the match without touching their hands down
				the gyoji will call a 'foul' (What's this actually called?) and they must start again.</p>
				<br>
				<p>There is no time limit for bouts and some matches have been known to last four seconds, others have been known to last four minutes.</p>
				<br>
				<p>Sumo wrestlers may seem fat and that may come with it's own set of stereotypes, but like many stereotypes turn out to be, this is 
				also not the case. Sumo wrestlers devote their entire lives to become strong and quick on their feet. They are anything but fat.</p>
		<br>
		
				</div>

		<!-- PREMATCH RITUAL -->
		<h1>Pre-match Ritual</h1>

		<div class="prematch-ritual-container">	
			<div class="prematch-ritual-text">
				<p>The process to starting a sumo match is a religious ceremony that includes:</p>
				<br>
				<ul>
					<li>Cleansing their mouths with water</li>
					<li>Throwing salt in the dohyo to purify it from "Oni's"</li>
					<li>Stomping out evil spirits that may be waiting in the dohyo with the wrestlers</li>
					<li>Showing their opponent that fairness is important to both wrestlers and no one will cheat or is 'hiding weapons'</li>
					<li>Finally, psyching each other out and intimidating the other</li>
				</ul>
				<br>
				<p>If there is a dispute regarding who won the bout because of both wrestlers leaving the dohyo at the same time or an accidental touch
				outside the dohyo from one of the wrestlers, five judges, sitting in the closest seat along the area of the dohyo, will enter the dohyo
				and discuss the match from their individual point of views. This is called a "mono-ii" (moan-o-e). The judges will then decide to agree with
				the Gyoji, change the Gyoji's original outcome, or if they can't decide, they will have the wrestlers verse each other again.</p>
				
				<br>

				<p>The Gyoji: Also known as the referee in Sumo matches. He stands in the dohyo with the rikishi and commands things like if the sumo wrestlers
				had an acceptedable start, and which sumo wrestler was the first to lose. These Gyoji are usually in colorful robes to standout from the wrestlers. 
				Gyoji's hold a wooden fan in their hands which they use to point to the winner. There are different ranks of Gyoji, where the highest rank of gyoji
				is definted by their beautiful silk robes and purple colorings which is the coilor of Japanese nobility.</p>

				<p>Before a bout, people will walk along the perimeter of the dohyo holding these giant signs. These are sponsors. They pay money to show their
				signs at the sumo bouts which that money then turns into the prize money for the rikishi if they were to win. These are usually given to the wrestlers
				in a stack of white envelopes at the end of the bouts. More sponsors equals more money.</p>
				
				<br>

				<p>Tournaments are 15 days long where each wrestler must wrestle once a day for 15 days. The rikishi with the most wins at the end of the 
				15 days is declared the winner. If multiple rikishi are tied then tie-breaker matches ensue to determine the winner.</p>

				</div>
				
				<div id="gyoji-img"><p>The Gyoji</p></div>
		</div>
		</div>
		</div>
		<button class="accordion">Learn more!</button>
		<div class="panel">
			<p>Some content</p>
		</div>
	</section>

	<footer>
		<a href="#">Buy us a coffee! <img src="/svg/mug-hot-solid.svg"/></a>
		
	</footer>
	<script src="/js/app.js"></script>

</body>
</html>