baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Balletie/Griotte/main/'.
		spec
			baseline: 'GitHub' with: [
				spec
					repository: 'github://Balletie/GitHub:master' ];
			import: 'GitHub';
			configuration: 'Epicea' with: [
				spec
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/MartinDias/Epicea/main/' ].

		spec
			package: 'Griotte-Epicea' with: [
				spec requires: #('Epicea')];
			package: 'Griotte-Model' with: [
				spec requires: #('Griotte-Epicea') ];
			package: 'Griotte-GitHub' with: [
				spec requires: #('Griotte-Model' 'GitHub-Tool') ];
			package: 'Widget-Extensions-Balletie' with: [
				spec file: 'Widget-Extensions-Balletie-SkipLentz.3'.
				spec repository: 'http://smalltalkhub.com/mc/Balletie/Widget-Extensions/main/' ];
			package: 'Griotte-UI' with: [
				spec requires: #('Griotte-Model' 'Griotte-GitHub' 'Widget-Extensions-Balletie') ]
	].