<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<h1 id='main-heading-jp'>ズモ図鑑</h1>
		<marquee behavior ="scroll" direction="left" scrollamount="5" style="color:white; font-weight: bold;">
		<h4>Terunofuji has won the 2021 Haru Basho! In other news, Juryo Wrestlers will be added soon.</h4></marquee>
		
	</header>
	<p id="artist-credit">Art credit to <a target="_blank" href="https://www.artstation.com/dianayanevaart">Diana Yaneva	</a></p>
		
		<!-- ABOUT SUMODEX -->
		<div class="about-info"> 
			<h3>Sumodex is a project that combines Sumo Wrestler Data in the fashion of a Pokedex.  
			<br>
			<br>
			So that all the data on your favorite Sumo Wrestlers is in one place.</h3>
			
			<p>Currently, only Makuuchi Sumo Wrestlers exist in the Sumodex. I am working on adding Juryo Division Wrestlers.</p>
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
							<p>Birthplace: <c:out value="${wrestler.birthplace}"/></p>
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
		
	</section>
	
	
	<button id="testClick" >CLICK</button>

	<section class="current-tournament-container">
		<h1>WATCH THE CURRENT TOURNAMENT</h1>
		<h3>Discover These Youtube Channels</h3>

		<div class="yt-channel-container">
			<div class="btn btn-primary tooltip yt-channel-item">
				<h4>Natto Sumo</h4>
				<a target="_blank" href="https://www.youtube.com/channel/UCy8YnV1QyWpHLDU56FtAJxA"><img class="yt-channel-img" src="/images/NattoSumo_PicOnly.JPG" alt="Natto Sumo" width="150" height="150"></a>
					<div class="right">
						<p class="yt-channel-info">A Youtuber that posts broadcasts of the current Sumo Basho in Japanese.<a class="yt-channel-link " target="_blank" href="https://www.youtube.com/channel/UCy8YnV1QyWpHLDU56FtAJxA">Click to view.</a></p>
						<i></i>
					</div>
			</div>
	
			<div class="btn btn-primary tooltip yt-channel-item">
				<h4>Jason Sumo</h4>
				<a target="_blank" href="https://www.youtube.com/channel/UCjEHJ_fQxC3wgXcIazGWt3Q"><img class="yt-channel-img" src="/images/JasonSumo_PicOnly.JPG" alt="Jason Sumo" width="150" height="150"></a>
					<div class="right">
						<p class="yt-channel-info">An awesome Youtuber who shows Sumo bouts with fun commentary, and has fantasy sumo.<a class="yt-channel-link " target="_blank" href="https://www.youtube.com/channel/UCjEHJ_fQxC3wgXcIazGWt3Q">Click to view.</a></p>
						<i></i>
					</div>
			</div>
	
			<div class="btn btn-primary tooltip yt-channel-item">
					<h4>Kintamayama</h4>
					<a target="_blank" href="https://www.youtube.com/channel/UCsyhbQggi0M3t_DMePOLgSw"><img class="yt-channel-img" src="/images/Kintamayama_PicOnly.JPG" alt="Kintamayama Sumo" width="150" height="150"></a>
				<div class="right">
					<p class="yt-channel-info">A Youtuber that posts broadcasts of the current Sumo Basho in English.<a class="yt-channel-link " target="_blank" href="https://www.youtube.com/channel/UCsyhbQggi0M3t_DMePOLgSw">Click to view.</a></p>
					<i></i>
				</div>
			</div>
		</div>

		</div>
		
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
					<td>Haru Basho</td>
					<td>Terunofuji</td>
					<td>12-3-0</td>
				</tr>
				<tr>
					<td>2021</td>
					<td>Hatsu Basho</td>
					<td>Daieisho</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>Kyushu Basho</td>
					<td>Takakeisho</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>Aki Basho</td>
					<td>Shodai</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>Nagoya Basho</td>
					<td>Terunofuji</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>Natsu Basho</td>
					<td>NO TOURNAMENT DUE TO COVID</td>
					<td>13-2-0</td>
				</tr>
				<tr>
					<td>2020</td>
					<td>Haru Basho</td>
					<td>Hakuho</td>
					<td>13-2-0</td>
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
					<br>
					<p>Sumo Tournaments last 15 days, where everyday, each Rikishi (also known as a Sumo Wrestler) will need to wrestle another Sumo wrestler. 
					There will be always be one winner and one loser and there are never any ties. The Rikishi with the most wins at the end of the 
					15 days is declared the winner. If multiple Rikishi are tied with wins, then tie-breaker matches ensue on the final day to determine the tournament champion.</p>
		
					<br>
						<p>The matches, also referred to as 'bouts' take place in a four-meter wide clay stage called a "dohyo", where the Rikishi have to make their opponent 
						either leave the dohyo or have a body part other than the soles of their feet touch the ground. If a Rikishi is able to do any of the aforementioned, 
						the referee, also known as the, Gyoji, will point to the winners side of the dohyo and the match will be concluded.</p>
						<br>
						<p>The Gyoji: Also known as the referee in Sumo matches stands in the dohyo with the Rikishi and commands things such as if the Wrestlers
						had an acceptable start, and which Wrestler was the first to lose. These Gyoji are usually in colorful robes to stand out from the Wrestlers sometimes colorful miwashi belts. 
						Gyoji's hold a wooden fan in their hands which they use to point to the winner. There are different ranks of Gyoji, where the highest rank of Gyoji
						is defined by their beautiful silk robes and purple colorings which is the color of Japanese nobility.</p>
						<div id="gyoji-img"><p>The Gyoji</p></div>
						<br>
						<p>If for any reason the Shimpan (the judges in black attire sitting at the edges of the dohyo), disagree with the Gyoji's call for winner, they will call a 
						"Mono-ii", which is a discussion held amongst themselves and the Gyoji where they review each other's perspective and the video tapes to determin if the call
						was accurate.</p>
						<p>If for any reason the Shimpan are unable to determine a winner, such as both Rikishi leaving the dohyo at the same time, the judges will call a 
						Torinaoshi, which is where the Wrestlers will have to redo the entire bout, including the Pre-Match Rituals.</p>
						<br>
						<p>Wrestlers start the match with a Pre-Match Ritual (which is described more below) but afterwards, the wrestlers face off on equal sides of the dohyo,
						where they will both squat and lay down their fists. Once both Rikishi touch the ground with their fists, the bout commences. 
						If a wrestler starts the match without touching their hands down the Gyoji will call a "Matta" (which is a name for a false start) and they must start again.</p>
						<br>
						<p>There is no time limit for the bouts and some matches have been known to last four seconds, others have been known to last four minutes.</p>
						<br>
				</div>
				<!-- <div><img src="/images/sumo-ruleset.jpg" alt="Sumos wrestling" /></div> -->
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
					<p>There are ten ranks in professional Sumo Wrestling. A Rikishi's placement in one of those ranks is determined by their wins and loses throughout a Basho. 
					They can be promoted or demoted accordingly depending on their scores.
					The top five ranks are known as "Makuuchi" or "TOP Division" where the matches are Televized and the salaries are way higher than lower ranks.
					The ultimate goal of many Rikishi is to become a Yokozuna but in order to do that Wrestlers must either win two tournaments in a row at the rank
					of Ozeki or do something of equivalent performance, and have the Unanimous vote of the Yokozuna deliberation coucil of the Japan Sumo Association.
					This would then allow you to be crowned either a Yokozuna or a Grand Champion. Yokozuna are usually differentiated by their white miwashi belts they wear
					before tournaments. Being a Yokozuna brings a lot of fame throughout Japan because it shows that you are one of the best Sumo Wrestlers on the planet.</p>

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
				<div class="sumo-history-main">
					<br>
					<img id="sumo-history-img" src="/images/sumo-history.jpeg" alt="Painting of sumo history"/>
					<div class="sumo-history-text">
						<p>Sumo Wrestling is Japan's oldest sport dating back over 2000 years ago but didn't gain real cultural significance until about 700AD,
						also known as the Nara Period (710AD - 794AD) where Sumo became an event conducted at the Imperial Court, and bouts were performed in 
						front of the Emperor.</p>
						<p>Sumo took its present form in the Edo period (1603AD - 1868AD). Matches were held to raise money to construct shrines and temples or to 
						replace bridges, and the professional Sumo Wrestler was born. A sport that was once enjoyed only by the rich and powerful became popular 
						among the masses. Sumo events were often held in Tokyo, Osaka, and Kyoto, and the sport's popularity grew exponentially. 
						The government of the time, though, disapproved of fighting and often issued orders banning Sumo.</p>
						<p>For this reason, the organizers of Sumo decided on a set of rules, including the creation of a list of 48 legal moves and the 
						round ring that is still used today.
						As for today, many aspects of old Japan remain in Sumo. Top knot hairstyles, traditional dress, and ancient customs prove that Sumo is more than just a sport; 
						it's a living example of traditional Japanese culture.</p>
					</div>
		
				</div>
				
				<!-- PREMATCH RITUAL -->
				<div class="prematch-ritual-container">	
					<h1>Pre-match Ritual</h1>
					<div class="prematch-ritual-text">
						<p>Back in the beginning of Sumo Wrestling. Sumo began as a violent sport. Men beating up other men for the sport of impressing the Emperor.
						Overtime a belief began that because of the violence that took place in the dohyo, evil spirits would be waiting within the dohyo to prey on whoever entered; to cause injury.
						To combat this, Wrestlers and Founders established pre-match rituals that had a series of purposes which included but were not limited to:</p>
							<ul>
								<li>Cleansing their mouths with sacred water. The same sacred water that is drunk at shrines when visited</li>
								<li>Showing their opponent that fairness is important to both Wrestlers and that no one will cheat or is "hiding weapons"</li>
								<li>Throwing salt in the dohyo to purify it so that the wrestlers can prevent injuries caused by spirits</li>
								<li>Together stomping out evil spirits that may be waiting in the dohyo with the Wrestlers</li>
								<li>Also, more presently, Wrestlers use this time to psych up their fans in the audience or to intimidate their opponent</li>
							</ul>

							<p>Before a bout, people will walk along the perimeter of the dohyo holding giant and sometimes colorful signs. These are sponsors. They pay money to show their
							signs at the Sumo bouts sponsoring a certain Rikishi, which if they win that money gets turned into prize money. Prize money is given to Wrestlers at the end of a bout,
							if they've won, within a stack of white envelopes.</p>
							<br>
					</div>		
				</div>
			</div>
		</div>
			<!-- ----LEARN MORE----- -->
		<button class="accordion">Learn more!</button>
			<div class="panel" style="background-color:#2746f5;">
				<div class="learn-more-container">
					<div class="learn-more-content">
						<p>I have compiled a YouTube playlist of some cool or fun Sumo videos for you to watch! If you want to discover more about Sumo, feel free to oblige!</p>
						<br>
						<p>Finally here is a link to Wikipedia with useful terms and definitions within the world of Sumo. <a target="_blank" href="https://en.wikipedia.org/wiki/Glossary_of_sumo_terms">Sumo Terms.</a></p>
						<br>
						<p>If you've gotten it this far, I thank you for participating in my web application. I'd love to hear some comments from you or some feedback so feel free to drop a comment 
						or <a target="_blank" href="/admin/user/feedback/createUserFeedback">leave some feedback and critique!</a> I am always looking to improve!</p>
						<br>	
					</div>
	
					<div class="learn-more-video">
						<iframe  
							id="learn-more-yt-playlist"
							src="https://www.youtube.com/embed/videoseries?list=PL_43pSa7LSO7NQ7xhqgcha-YpkRTOUBhi" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>
						</iframe> 
					</div>
				</div>

			</div>
	</section>

	<footer>
		<a href="https://ko-fi.com/danieljcoh" target="_blank">Buy us a coffee! <img src="/svg/mug-hot-solid.svg"/></a>
		<a href="/admin/user/feedback/createUserFeedback" target="_blank">Leave Feedback!</a>
		
		
	</footer>
	
	<!-- SEPARATE SCRIPT FILE -->
	<!-- <script src="/js/app.js"></script> -->
	
	<script>
	//Accordian JS Function
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
	    acc[i].addEventListener("click", function() {
	      /* Toggle between adding and removing the "active" class,
	      to highlight the button that controls the panel */
	      this.classList.toggle("active");
	  
	      /* Toggle between hiding and showing the active panel */
	      var panel = this.nextElementSibling;
	      if (panel.style.display === "block") {
	        panel.style.display = "none";
	      } else {
	        panel.style.display = "block";
	      }
	    });
	}

	//Save Scroll Position
	var testClick = document.getElementById("testClick")
	
	testClick.addEventListener("click", function(){
		//scrollY is the amount the user has scrolled down
		alert('Current scroll from the top: ' + document.pageYOffset);
		});
		
	
	</script>

</body>
</html>