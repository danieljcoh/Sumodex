<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="/css/sumodex.css"/>
<meta charset="ISO-8859-1">
<title>Sumodex</title>
</head>
<body>
	<section class="about">
		<div id="about-heading"><h1>Welcome to Sumodex!</h1></div>
	</section>
		<div id="about-heading-border"> 
			<div id="about-heading-p"><p>Sumodex is a project that combines Sumo Wrestler Data in the fashion of
		 	a Pokedex. So that all the data on your favorite Sumo Wrestlers is in one place.</p></div>
			<div id="about-heading-footnote"><p>Currently, only Makuuchi Sumo Wrestlers exist in the Sumodex because 
			they are the only public profiles that I could find.</p></div>
		</div>
		
		<div class="searchBarTitle"><h3>Search your Favorite Sumo Wrestlers</h3></div>
		<div class="searchBar"><input type="text" name="" placeholder="Search Sumodex..."></div>
		 <div class="searchBarButton"><button action="">Search</button></div>
	
	<section id="sumodex">
		<div class="wrestlerName"><p><c:out value="${wrestler.shikona}"/></p></div>
		
		<div class="wrestlerPic">
		<p>PIC</p>
		<c:forEach items="${pictures}" var="pic">
		<img src="${piture.image_url }">
		</c:forEach>
		</div>
		
		<div class="wrestlerInfo">
			<p><strong>Shikona: </strong><c:out value="${wrestler.shikona}"/></p>
			<p><strong>Real Name: </strong><c:out value="${wrestler.name}"/></p>
			<p><strong>Rank: </strong><c:out value="${wrestler.sumoRank}"/></p>
			<p><strong>Birthday: </strong><c:out value="${wrestler.birthday}"/></p>
			<p><strong>Birthplace: </strong><c:out value="${wrestler.birthplace}"/></p>
			<p><strong>Heya: </strong><c:out value="${wrestler.heya}"/></p>
			<p><strong>Height: </strong><c:out value="${wrestler.height}"/></p>
			<p><strong>Weight: </strong><c:out value="${wrestler.weight}"/></p>
			<p><strong>Favorite Technique: </strong><c:out value="${wrestler.favTechnique}"/></p>
		</div>
		
		<div class="lastWrestlerButton">
		<form method="GET" action="/wrestler/last/${wrestler.id}">
			<button class="btn btn-warning">Last</button>
		</form>		
		</div>		
		<div class="nextWrestlerButton">
		<form method="GET" action="/wrestler/next/${wrestler.id}">
			<button class="btn btn-warning">Next</button>
		</form>
		</div> 
		
		<div class="verticalLine"></div>
		<!-- Links to profiles and youtubes? Sumodb, actual sumo website -- mouse will tell user what link is with hover -->
		
	</section>

	<section id="current-sumo-tournament">
	<h1>WATCH THE CURRENT TOURNAMENT</h1>
	
	<h1>PAST TOURNAMENT WINNERS AND SCORES</h1>
	<p>NINJA GOLD HERE</p>
	
	
	</section>
	
	
	
	
	
	<section class="sumo-rules">
	<h1>Sumo Ruleset</h1>
		
		<p>Sumo Tournaments last 15 days, where everyday, each Rikishi will need to wrestle another Sumo wrestlers. There will be always be one winner and 
		one loser. There are never any ties.</p>
		<p>The matches, also referred to as 'bouts' take place in a 4-meter wide, clay stage called a "dohyo" (Dojo), where the Rikishi have to make their opponent 
		either leave the dohyo or have a body part other than the soles of their feet touch the ground. If a rikishi is able to do any of the aforementioned, 
		the referee, also known as the, Gyoji, will point to the winners side of the dohyo and the match will be concluded.</p>
		<p>Wrestlers start the match with a Pre-Match Ritual (which is described more below) but afterwards, the wrestlers face off on equal sides of the dohyo,
		where they will both squat and lay down their fists. Once both Rikishi touch the ground with their fists, the bout commences. 
		If a wrestler starts the match without touching their hands down the Gyoji will call a 'foul' and they must start again.</p>
		<p>There is no time limit for the bouts and some matches have been known to last four seconds, others have been known to last four minutes.</p>

		<div>
		</div>
		<h1>Allowances</h1>
		<h4>Wrestlers are allowed to: </h4>
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
		<h1>Disqualifications</h1>
		<h4>Wrestlers are NOT allowed to: </h4>
		<ul>
			<li>Punch their Opponents</li>
			<li>Poke in sensative places</li>
			<li>Grab opponents by the crotch</li>
			<li>Lose their miwashi or undress in anyway</li>
		</ul>
		
		</section>
		<section>
		<p>Sumo Wrestling is Japan's oldest sport daying back over 2000 years ago. More presently Japan holds a Sumo Tournament every two months, or six times a year.
		Each tournament, also known as a Honbasho, has a specific title and starts on a specific day and a specific month.</p>
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
		
		</section>
		
		<section>
	<h1>HISTORY OF SUMO WRESTLING</h1>
		<p>Sumo Wrestling is Japan's oldest sport dating back over 2000 years ago but didn't gain real cultural signifigance until about 700AD,
		also known as the Nara Period (710 - 794) where sumo became an event conducted at the imperial court, and bouts were performed in 
		front of the emperor.</p>
		<p>Sumo basically took its present form in the Edo period. Matches were held to raise money to construct shrines and temples or to 
		replace bridges, and the professional sumo wrestler was born. A sport that was once enjoyed only by the rich and powerful became popular 
		among the masses. Sumo events are often held in Tokyo, Osaka, and Kyoto, and the sport's popularity grew with the sales of 
		color woodblock prints featuring sumo scenes and pictures of wrestlers. The government of the time, though, disapproved of fighting and 
		often issued orders banning sumo.</p>
		<p>For this reason, the organizers of sumo decided on a set of rules, including the creation of a list of 48 legal moves and the 
		round ring that is still used today. A system of stables was created to train wrestlers. As many aspects of old Japan remain in sumo, 
		such as topknots, traditional dress, and ancient customs, professional sumo is more than just a sport; it's a living example of traditional 
		Japanese culture. The wrestlers serve as cultural ambassadors when they take part in events overseas.</p>
		<p>In Japan the word "Basho" means tournament in the sense of Sumo. Within a Sumo basho, the wrestlers, also known as 'Rikishi', undergo
		one vs one bouts (matches) where there will be one winner and one loser.</p>
		<p>The bouts take place in a 4 meter wide, clay stage called a "dohyo" (Dojo) where the rikishi have to make their opponent either leave the dohyo or have
		a body part other than the soles of their feet touch the ground. If a rikishi is able to do any of the aforementioned, the referee, also known as the,
		gyoji, will point to the winners side of the dohyo and the match will be concluded.</p>
		<p>Once both Rikishi touch the ground with their fists, the bout commences. If a wrestler starts the match without touching their hands down
		the gyoji will call a 'foul' (What's this actually called?) and they must start again.</p>
		<p>There is no time limit for bouts and some matches have been known to last four seconds, others have been known to last four minutes.</p>
		<p>Sumo wrestlers may seem fat and that may come with it's own set of stereotypes, but like many stereotypes turn out to be, this is 
		also not the case. Sumo wrestlers devote their entire lives to become strong and quick on their feet. They are anything but fat.</p>
		<p>What is a miwashi? PICTURE</p>
		
	<h1>Pre-match Ritual</h1>
		<p>THe process to starting a sumo match is a religious ceremony that includes:</p>
		<ul>
			<li>Cleansing their mouths with water</li>
			<li>Throwing salt in the dohyo to purify it from "Oni's"</li>
			<li>Stomping out evil spirits that may be waiting in the dohyo with the wrestlers</li>
			<li>Showing their opponent that fairness is important to both wrestlers and no one will cheat or is 'hiding weapons'</li>
			<li>Finally, psyching each other out and intimidating the other</li>
		</ul>
		<p>If there is a dispute regarding who won the bout because of both wrestlers leaving the dohyo at the same time or an accidental touch
		outside the dohyo from one of the wrestlers, five judges, sitting in the closest seat along the area of the dohyo, will enter the dohyo
		and discuss the match from their individual point of views. This is called a "mono-ii" (moan-o-e). The judges will then decide to agree with
		the Gyoji, change the Gyoji's original outcome, or if they can't decide, they will have the wrestlers verse each other again.</p>
		
		<p>The Gyoji: Also known as the referee in Sumo matches. He stands in the dohyo with the rikishi and commands things like if the sumo wrestlers
		had an acceptedable start, and which sumo wrestler was the first to lose. These Gyoji are usually in colorful robes to standout from the wrestlers.
		Gyoji's hold a wooden fan in their hands which they use to point to the winner. There are different ranks of Gyoji, where the highest rank of gyoji
		is definted by their beautiful silk robes and purple colorings which is the coilor of Japanese nobility.</p>
		
		<p>Before a bout, people will walk along the perimeter of the dohyo holding these giant signs. These are sponsors. They pay money to show their
		signs at the sumo bouts which that money then turns into the prize money for the rikishi if they were to win. These are usually given to the wrestlers
		in a stack of white envelopes at the end of the bouts. More sponsors equals more money.</p>
		
		<p>Tournaments are 15 days long where each wrestler must wrestle once a day for 15 days. The rikishi with the most wins at the end of the 
		15 days is declared the winner. If multiple rikishi are tied then tie-breaker matches ensue to determine the winner.</p>
		
		<h4>Rankings</h4>
		<p>There are ten ranks in professional sumo wrestling and based on a rikishi's wins and loses, they can be promoted or demoted accordingly.
		The top five ranks are known as "Makuuchi" or 'TOP Division" where the matches are Televized and the salaries are way higher than lower ranks.
		The ultimate goal of many rikishi is to become a Yokozuna but in order to do that Wrestlers must either win two tournaments in a row at the rank
		of 'Ozeki' or do something of equivalent performance, and have the Unanimous vote of the Yokozuna deliberation coucil of the Japan Sumo Association.
		This would then allow you to be crowned either a Yokozuna or a Grand Champion. Yokozuna are usually differentiated by their white miwashis they wear
		before tournaments. Being a Yokozuna brings much money and fame in Japan as it brings the notion that you are one of the best Sumo Wrestlers in the world.</p>
		
		<p>What is a HEYA? </p>
		
		
		<h3><strong>MAKUUCHI RANKINGS</strong></h3>
		<ul>
			<li>Yokozuna</li>
			<li>Ozeki</li>
			<li>Sekiwake</li>
			<li>Komusubi</li>
			<li>Maegashira</li>
		</ul>
		
		<h3><strong>LOWER RANKINGS</strong></h3>
		<ul>
			<li>Juryo</li>
			<li>Makushita</li>
			<li>Sandanme</li>
			<li>Jonidan</li>
			<li>Jonokuchi</li>
		</ul>
	</section>
</body>
</html>