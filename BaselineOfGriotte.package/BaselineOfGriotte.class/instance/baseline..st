baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'GitHub' with: [
				spec
					repository: 'github://Balletie/GitHub:master' ];
			import: 'GitHub' provides: #('default' 'tool');
			configuration: 'Epicea' with: [
				spec
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/MartinDias/Epicea/main/' ].

		spec
			package: 'Griotte-Epicea' with: [
				spec requires: #('Epicea')];
			package: 'Griotte-Epicea-Tests' with: [
				spec requires: #('Griotte-Epicea') ];
			package: 'Griotte-GitHub' with: [
				spec requires: #('Griotte-Model' 'tool' 'default') ];
			package: 'Griotte-GitHub-Epicea' with: [
				spec requires: #('Griotte-GitHub' 'Griotte-Epicea') ];
			package: 'Griotte-Model' with: [
				spec requires: #('Griotte-Epicea') ];
			package: 'Widget-Extensions-Balletie' with: [
				spec file: 'Widget-Extensions-Balletie-SkipLentz.8'.
				spec repository: 'http://smalltalkhub.com/mc/Balletie/Widget-Extensions/main/' ];
			package: 'Griotte-UI' with: [
				spec requires: #('Griotte-GitHub' 'Widget-Extensions-Balletie') ].
		spec
			group: 'tests' with: #('Griotte-Epicea-Tests' 'default') ].