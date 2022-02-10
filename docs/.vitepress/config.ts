import { defineConfig } from 'vitepress'

export default defineConfig({
	srcDir: 'src',
	locales: {
		'/': {
			lang: 'en-US',
			title: "Peter's Dotfiles"
		},
		'/zh-TW/': {
			lang: 'zh-TW',
			title: '彼得的 Dotfiles'
		}
	},
	themeConfig: {
		locales: {
			'/': {
				selectText: 'Languages',
				label: 'English'
			},
			'/zh-TW/': {
				selectText: '選擇語言',
				label: '繁體中文'
			}
		}
	}
})
