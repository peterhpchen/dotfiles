import { defineConfig } from 'vitepress'

export default defineConfig({
	srcDir: 'src',
	locales: {
		'/': {
			lang: 'en-US',
			title: "Peter's Dotfiles"
		},
    '/zh-TW/': {
      selectText: '選擇語言',
      label: '繁體中文',
			lang: 'zh-TW',
			title: 'Dotfiles'
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
        label: '繁體中文',
        nav: [
          {text: '指南', link: '/zh-TW/guide/quick-start'}
        ],
        sidebar: {
          '/zh-TW/guide/': [
            {
              text: '指南',
              children: [
                { text: '快速上手', link: '/zh-TW/guide/quick-start' },
                { text: '目錄結構', link: '/zh-TW/guide/directory-structure' },
                { text: '腳本', link: '/zh-TW/guide/scripts' },
                { text: '參考資料', link: '/zh-TW/guide/references' },
              ]
            }
          ]
        }
			}
		}
	}
})
