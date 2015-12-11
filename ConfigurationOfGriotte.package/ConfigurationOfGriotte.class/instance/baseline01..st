baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec project: 'GitHub' with: [
				spec
					className: #ConfigurationOfGitHub;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Balletie/GitHub/main/' ].
		spec package: 'Griotte'.
		spec package: 'Widget-Extensions-Balletie' with: [
			spec file: 'Widget-Extensions-Balletie-SkipLentz.1'.
			spec repository: 'http://smalltalkhub.com/mc/Balletie/Widget-Extensions/main/' ] ].
