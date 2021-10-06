\RequirePackage
	{etoolbox}

\newcommand
	{\precontentau}
	[7]
	{%
		\opening{%
			Sehr geehrte
			\ifstrequal
				{#1}
				{Arbeitskollegen}
				{Kollegen}
				{}%
			\ifstrequal
				{#1}
				{Krankenkasse}
				{Damen und Herren}
				{}%
			,%
		}
		anbei sende ich
		{%
			\ifstrequal
				{#1}
				{Arbeitskollegen}
				{Euch}
				{}%
			\ifstrequal
				{#1}
				{Krankenkasse}
				{Ihnen}
				{}%
		}
		die zur Vorlage bei
		{%
			\ifstrequal
				{#1}
				{Arbeitskollegen}
				{der Firma}
				{}%
			\ifstrequal
				{#1}
				{Krankenkasse}
				{Ihnen}
				{}%
		}
		bestimmte
		%vorgesehene
		%gedachte
		Ausfertigung der am
		%#3.~#2 #1
		\\*[.5\baselineskip]%
		\begin{tabular}{ l l l }
			#4.%
			&%
			#3%
			&%
			#2%
			\\%
		\end{tabular}
		\\*[.5\baselineskip]%
		von
		#5
		\\*[.5\baselineskip]%
		\begin{tabular}{ l l }
			#6%
			&%
			#7%
			\\%
		\end{tabular}
		\\*[.5\baselineskip]%
		für mich ausgestellten Arbeitsunfähigkeitsbescheinigung im Original.

		\ifstrequal
			{#1}
			{Arbeitskollegen}
			{%
				Bitte fügt diese meiner Personalakte bei und bestätigt mir ihren Eingang bei Euch innerhalb von 10~Werktagen nach Erhalt dieses Schreibens.%
			}
			{}%
		\ifstrequal
			{#1}
			{Krankenkasse}
			{%
				Bitte bestätigen Sie mir den Erhalt dieser Originalurkunde.%
			}
			{}%
%		\ifstrequal
%			{#1}
%			{Krankenkasse}
%			{%
%				Bitte
%				{%
%					\ifstrequal
%						{#1}
%						{Arbeitskollegen}
%						{bestätigt}
%						{}%
%					\ifstrequal
%						{#1}
%						{Krankenkasse}
%						{bestätigen Sie}
%						{}%
%				}
%				mir innerhalb von 10~Werktagen nach Erhalt dieses Schreibens,
%				daß
%				{%
%					\ifstrequal
%						{#1}
%						{Arbeitskollegen}
%						{Ihr}
%						{}%
%					\ifstrequal
%						{#1}
%						{Krankenkasse}
%						{Sie}
%						{}%
%				}
%				die
%				beiliegende
%				%genannte
%				%erwähnte
%				Originalurkunde
%				%erhalten und
%				{%
%					\ifstrequal
%						{#1}
%						{Arbeitskollegen}
%						{meiner Personalakte}
%						{}%
%					\ifstrequal
%						{#1}
%						{Krankenkasse}
%						{Ihren Unterlagen}
%						{}%
%				}
%				beigefügt
%				\ifstrequal
%					{#1}
%					{Arbeitskollegen}
%					{habt}
%					{}%
%				\ifstrequal
%					{#1}
%					{Krankenkasse}
%					{haben}
%					{}%
%				.%
%			}
%			{}%
		\closing{Mit freundlichen Grüßen}
		%\encl{Ausfertigung zur Vorlage bei Ihnen meiner Arbeitsunfähigkeitsbescheinigung vom #3.#2.#1 im Original}
		%\encl{Ausfertigung meiner Arbeitsunfähigkeitsbescheinigung vom #3.#2.#1 zur Vorlage bei Ihnen im Original}
		\encl{%
			%Ausfertigung meiner am #4.~#3 #2 ausgestellten
			Ausfertigung der am #4.~#3 #2 für mich ausgestellten
			Arbeitsunfähigkeitsbescheinigung zur Vorlage
			{%
				\ifstrequal
					{#1}
					{Arbeitskollegen}
					{beim Arbeitgeber}
					{}%
				\ifstrequal
					{#1}
					{Krankenkasse}
					{bei der Krankenkasse}
					{}%
			}
			im Original%
		}
	}

\newcommand
	{\preletterau}
	[8]
	{%
		\setkomavar*
			{enclseparator}
			{%
				\IfLanguageName
					{ngerman}
					{Anlage}
					{}%
			}
		\setkomavar
			{subject}
			%{Arbeitsunfähigkeitsbescheinigung}
			{Arbeitsunfähigkeit}
		%\setkomavar
		%	{myref}
		%	{AU:#1#2#3}
		\begin{letter}{\csname #1\endcsname}%
			\precontentau
				{#2}
				{#3}
				{#4}
				{#5}
				{#6}
				{#7}
				{#8}
		\end{letter}%
	}

\newcommand
	{\precontentlbs}
	{%
		\opening{Sehr geehrte Damen und Herren,}
		anbei sende ich Ihnen eine Kopie der am \AusstellungsTag.~\AusstellungsMonatName~\AusstellungsJahr{} \AusstellerVon{} für mich ausgestellten Liegebescheinigung, mit der bescheinigt wird, daß ich vom \AufnahmeTag.~\AufnahmeMonat~\AufnahmeJahr{} bis zum \EntlassungsTag.~\EntlassungsMonat~\EntlassungsJahr{} dort behandelt wurde.

		Bitte bestätigen Sie mir innerhalb einer Woche, nachdem dieses Schreiben Sie erreicht, daß Sie die beiliegende Urkunde erhalten und Ihren Unterlagen beigefügt haben.
		\closing{Mit freundlichen Grüßen}
		\encl{Kopie der am \AusstellungsTag.~\AusstellungsMonatName~\AusstellungsJahr{} \AusstellerVon{} für mich ausgestellten Liegebescheinigung}
	}

\newcommand
	{\preletterlbs}
	{%
		\setkomavar*
			{enclseparator}
			{Anlage}
		\setkomavar
			{subject}
			{Liegebescheinigung}
		\setkomavar
			{myref}
			{LbS:\AusstellungsJahr\AusstellungsMonatNummer\AusstellungsTag}
		\begin{letter}{}%
			\precontentlbs%
		\end{letter}%
	}

\newcommand
	{\precontentmedpex}
	[5]
	{%
		\opening{Sehr geehrte Damen und Herren,}
		anbei sende ich Ihnen
		\ifnum #1=1%
			das
		\else%
			die
		\fi%
		am #4.~#3~#2 von #5 für mich
		\ifnum #1=1%
			ausgestellte Rezept%
		\else%
			ausgestellten Rezepte%
		\fi%
		,
		\ifnum #1=1%
			das
		\else%
			die
		\fi%
		ich bei Ihrer Apotheke einlösen möchte,
		im Original.

		Bitte
		%nehmen Sie meine Bestellung an und
		senden Sie
		%mir
		\ifnum #1=1%
			das verordnete
		\else%
			die verordneten
		\fi%
		Arzneimittel unter Angabe meiner

		\begin{tabular}{ m{30mm} >{\ttspaced} m{8cm} }
			Postnummer%
			&%
			931223230%
			\\%
		\end{tabular}

		an folgende von der DHL betriebene Packstation:

		\vskip\parskip%
		\relax%
		\hbox%
			{%
				\hskip 6mm%
				\relax%
				\vbox%
					{%
						\ttfamily%
						\hbox%
							{%
								Packstation~\@Packstation@Nummer%
							}%
						\hbox%
							{%
								\@Packstation@PLZ~\@Packstation@Ort%
							}%
					}%
			}%

		%Den Kaufpreis habe ich bereits bezahlt.
		Die entsprechende Zuzahlung habe ich bereits
		%entrichtet%
		geleistet%
		.
		\closing{Mit freundlichen Grüßen}
		%\encl{Ausfertigung zur Vorlage bei Ihnen meiner Arbeitsunfähigkeitsbescheinigung vom #4.#3.#2 im Original}
		\encl{Am #4.~#3~#2 von #5 für mich ausgestelltes Rezept im Original}
	}

\newcommand
	{\prelettermedpex}
	[6]
	{%
		\setkomavar*%
			{enclseparator}%
			{%
				\IfLanguageName
					{english}
					{Enclosed}
					{}%
				\IfLanguageName
					{ngerman}
					{Beigefügt}
					{}%
			}
		\setkomavar
			{subject}
			{Einreichung von
				\ifnum #2=1%
					Originalrezept
				\else%
					Originalrezepten
				\fi%
			}
		\setkomavar
			{customer}
			{KN-18108762}
		\setkomavar
			{yourref}
			[Bestellnummer]
			{#1}
		\begin{letter}{}%
			\precontentmedpex
				{#2}
				{#3}
				{#4}
				{#5}
				{#6}
		\end{letter}%
	

\newcommand
	{\precontentpostfach}
	[1]
	{%
		\setlength{\tabcolLlength}{25mm}
		\setlength{\tabcolRlength}{8cm}
		\opening{Sehr geehrte Damen und Herren,}
%		bitte senden Sie an mich gerichtete Post möglichst nicht an
%		meine Wohnanschrift%
%		%meine Wohnadresse%
%		, sondern
%		%adressieren diese
%		an
%		folgendes
%		%mein
%		bei der Deutschen~Post
%		angemietetes
%		%angemietete
%		Postfach:
		bitte senden Sie an mich gerichtete Post
		fortan
%		möglichst nicht an
%		meine
%		Ihnen bereits
%		%vorliegende
%		bekannte
%		%Wohnanschrift%
%		Wohnadresse%
%		, sondern
		an mein im
		\pretabular
		\begin{tabular}{ m{\tabcolLlength} m{\tabcolRlength} }
			Postort%
			&%
			\PostfachOrt%
			\\%
		\end{tabular}
		\posttabular
		mit der
		\pretabular
		\begin{tabular}{ m{\tabcolLlength} >{\ttspaced} m{\tabcolRlength} }
			Postleitzahl%
			&%
			\PostfachPostleitzahl%
			\\%
		\end{tabular}
		\posttabular
		%bei der
		%%Deutschen~Post
		%Deutschen~Post~AG
		unter der
		\pretabular
		\begin{tabular}{ m{\tabcolLlength} >{\ttspaced} m{\tabcolRlength} }
			Nummer%
			&%
			\Postfachnummer%
			\\%
		\end{tabular}
		\posttabular
		angemietetes Postfach%
		%, dessen vollständige Anschrift im Briefkopf aufgeführt ist.
		%, dessen vollständige Anschrift lautet:
		.
%		Die vollständige Anschrift lautet:
%
%		\vskip 2\parskip%
%		\relax%
%		\hbox%
%			{%
%				\hskip 6mm%
%				\relax%
%				\vbox%
%					{%
%						\ttfamily%
%						\hbox%
%							{%
%								David~Joaquín~Shourabi~Porcel%
%							}%
%						\hbox%
%							{%
%								Postfach~\Postfachnummer%
%							}%
%						\hbox%
%							{%
%								\PostfachPostleitzahl~\PostfachOrt%
%							}%
%					}%
%			}%
%		\vskip\parskip%
%		\relax%

%		Ich bestätige hiermit, daß ich dieses Postfach derzeit anmiete und in absehbarer Zukunft weiterhin anmieten werde und daß
%		%meines Wissens
%		%nach bestem Wissen und Gewissen
%		niemand anderes als ich auf in dieses Postfach eingelegte Sendungen zugreifen kann. Ferner verpflichte ich mich dazu, das Postfach regelmäßig zu leeren und Ihnen jede Änderung meiner Postanschrift
%		%ohne Verzögerung
%		%unmittelbar
%		%postwendend
%		unverzüglich
%		mitzuteilen, um die Zuverlässigkeit
%		%unserer Kommunikation
%		%unseres Briefverkehrs
%		unseres Schriftverkehrs
%		aufrechtzuerhalten.
		Ich
		%bestätige,
		bestätige und
		kann nachweisen,
		%kann Ihnen nachweisen,
		%weise auf Ihre Nachfrage hin nach,
		%werde auf Ihre Nachfrage hin nachweisen,
		%weise Ihnen auf Nachfrage nach,
		daß ich
		%dieses
		%das genannte
		das aufgeführte
		Postfach derzeit
		anmiete.
		%anmiete, und weise Ihnen dies nach, wenn Sie mich dazu auffordern.
		Ferner beabsichtige ich,
		es weiterhin
		anzumieten, und
		%anzumieten. Sollte wider Erwarten,
		verpflichte mich
		%auf jeden Fall
		%jedenfalls
		dazu,
		%es regelmäßig zu leeren und
		Ihnen jede Änderung meiner Postanschrift unverzüglich mitzuteilen, um die Zuverlässigkeit unseres Schriftverkehrs aufrechtzuerhalten.
%		Ich beabsichtige, dieses Postfach weiterhin anzumieten.
%%		Sollte sich meine Postanschrift
%%		doch
%%		%jedoch
%%		ändern, verpflichte ich mich dazu, Ihnen 
%		Jedoch verpflichte ich mich dazu, Ihnen jede Änderung meiner Postanschrift unverzüglich mitzuteilen, um die Zuverlässigkeit unseres Schriftverkehrs aufrechtzuerhalten.
%		Für
%		etwaige
%		%jegliche
%		%%Störungen,
%		%%Unstimmigkeiten,
%		%Schwierigkeiten,
%		%die
%		%%welche
%		%auf zurückzuführen sein sollten,
%		durch
%		%Ihre Sendung an das hingewiesene Postfach
%		Ihre Erfüllung meines hiermit dargelegten Bitte
%		entstandene Schwierigkeiten, die sich ergeben sollten,
%		hafte ich.
%
%		%Ferner versichere ich nach bestem Wissen und Gewissen, daß niemand anderes als ich auf in dieses Postfach eingelegte Sendungen zugreifen kann.
%		Nach bestem Wissen und Gewissen kann niemand anderes als ich auf in dieses Postfach eingelegte Sendungen zugreifen.

		Bitte teilen Sie mir schriftlich mit, ob Sie meine Bitte berücksichtigen können und werden.
		\closing{#1}
	}

\newcommand
	{\preletterpostfach}
	[2]
	[In jedem Fall dankend]
	{%
		\setkomavar
			{subject}
			{Postanschrift}
		\begin{letter}{\csname #2\endcsname}%
			\precontentpostfach%
				{#1}%
		\end{letter}%
	}

\newcommand
	{\precontentzzb}
	{%
		\opening{Sehr geehrte Damen und Herren,}
		bitte stellen Sie mir eine Bescheinigung über meine
		im laufenden Jahr
		%im Jahr #1
		%beim Kauf von
		%Arzneimitteln
		%%Medikamenten
		%auf Rezept
		%im Rahmen von Bestellungen auf Rezept
		bei
		%Ihrer Apotheke
		Ihnen
		%geleisteten
		entrichteten
		Zuzahlungen
		zum Einreichen bei meiner Krankenkasse
		aus
		und senden mir diese nach Möglichkeit per E-Mail an meine im Briefkopf genannte Adresse.

%		Diese können Sie mir gerne per E-Mail an
%
%		\noindent%
%		\hskip 6mm%
%		\relax%
%		{
%			\ttspaced
%			david%
%			\hskip 1mm%
%			\relax%
%			@%
%			\hskip 1mm%
%			\relax%
%			djsp.eu
%		}
%
%		zusenden.
		Bei Rückfragen stehe ich Ihnen
		%unter der im Briefkopf aufgeführten Postanschrift sowie per E-Mail
		gerne zur Verfügung.
		\closing{Einen schönen Tag wünscht Ihnen}
	}

\newcommand
	{\preletterzzb}
	{%
		\setkomavar*%
			{enclseparator}%
			{%
				\IfLanguageName
					{english}
					{Attached}
					{}%
				\IfLanguageName
					{ngerman}
					{Anhang}
					{}%
			}
		\setkomavar
			{subject}
			{Bescheinigung über geleistete Zuzahlungen}
		\setkomavar
			{myref}
			[Versichertennummer]
			{G562177985}
		\begin{letter}{}%
			\precontentzzb%
		\end{letter}%
	}
