/** @type {import("snowpack").SnowpackUserConfig } */
export default {
	mount: {
		public: { url: '/', static: true, resolve: false },
		src: '/dist',
	},
	exclude: ['**/*.{res,resi}'],
	plugins: [
		'@snowpack/plugin-react-refresh',
		'@snowpack/plugin-sass',
		'@jihchi/plugin-rescript',
	],
	routes: [
		/* Enable an SPA Fallback in development: */
		// {"match": "routes", "src": ".*", "dest": "/index.html"},
	],
	optimize: {
		bundle: true,
		minify: true,
	},
	packageOptions: {
		/* ... */
	},
	devOptions: {
		/* ... */
	},
	buildOptions: {
		/* ... */
	},
};
