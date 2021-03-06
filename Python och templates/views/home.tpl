<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>nabo</title>
		<link rel="stylesheet" href="/static/style.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>


	<div id="wrapper">

		<header>
			<div id="logga">
				<a href="/home/">
				<img src="/static/Bilder/logotypnabo.jpg" alt="Nabologga" style="width:260px;height:82px;border:0"></a>
			</div>
			<div id="loggaUt">
				<p id="adress"> Rönnblomsgatan 11</p>
				<p id="user">
				<a href="/myProfile/">{{username}}   </a>
				<a href="/">  Logga ut</a>
				</p>
			</div>
		</header>

		<nav>
			<nav class="profile">
				<ul>
					<li><p id="user"><a href="/myProfile/"> Min Profil </a></p></li>
					<li><a href="/editProfile/" class="nav">Redigera min profil</a></li>
				</ul>
			</nav>

			<nav class="boardClick">
				<ul>
					<li><a href="/home/" class="nav"><span style="color: #4d6630">Anslagstavlan</span></a></li>
				</ul>
			</nav>

			<nav class="messages">
				<ul>
					<li><a href="/inbox/" class="nav">Mina meddelanden</a></li>
					<li><a href="/write/" class="nav">Skriv nytt meddelande</a></li>
				</ul>
			</nav>

			<nav class="nabos">
				<ul>
					<li><a href="/nabos/" class="nav">Nabos</a></li>
				</ul>
			</nav>
		</nav>

		<div id="content">
				<div class="writeAPost">
					<p id="picWhenPosting">
					<img src="{{profile_pic}}" alt="Bild på en Nabo" style="width:60px;height:60px;padding:5px">
					</p>

					<form action="/home/" method="POST" class="form">

					<p class="publishAPost">
						<input required type="text" name="writtenPost" id="writtenPost" placeholder="Lämna ett meddelande på husets anslagstavla">			
					</p>

					<p class="submitPost">
					<input type="image" src="/static/Bilder/1431441645_MapMarker_PushPin_Left_Chartreuse.png" alt="Häftstift att trycka på för att publicera" name="submitPost" id="submitPost" style="width:35px;height:35px;padding:1px">
					</p>
				</div>
			%for namn, picture, content, time in zip(namn_list, pict_list, content_list, time_list):
				<div class="publishedPosts">
					<img src="{{picture}}" alt="Bild på en Nabo" style="width:60px;height:60px;padding:5px">
					<p id="publishedName">{{namn}}: </p>
					<p id="publishedText"> {{content}}</p>
					<p id="publishedDate">Postat: {{time[:-4]}}</p>
					<p id="replyToPost">Svara på anslaget</p>
				</div>
			%end
		</div>
		
		<footer>
			<a href="/contact/">Kontakta oss</a>
			<a href="/about/">Om Nabo</a>
			<a href="/help/">Hjälp</a>
		</footer>	

	</div>
</html>