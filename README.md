# Hoho Blog

[Jekyll](https://jekyllrb.com/) + [**Chirpy**](https://github.com/cotes2020/jekyll-theme-chirpy) 테마([chirpy-starter](https://github.com/cotes2020/chirpy-starter) 기반)로 구성된 GitHub Pages용 블로그입니다.

## 로컬에서 미리보기

1. [Ruby](https://www.ruby-lang.org/)와 Bundler 설치
2. 저장소 루트에서:

```bash
bundle install
bundle exec jekyll s
```

3. 브라우저에서 `http://127.0.0.1:4000` (또는 출력된 주소)

**먼저** `_config.yml`의 `url`을 설정하세요. 예: `https://YOUR_USERNAME.github.io` (프로젝트 저장소면 `baseurl`도 함께, 주석 참고)

## GitHub Pages 배포

1. 이 저장소를 GitHub에 푸시 (기본 브랜치: `main` 또는 `master`)
2. 저장소 **Settings → Pages → Build and deployment → Source**: **GitHub Actions**
3. 워크플로가 성공하면 `url`에 맞는 주소에서 사이트 확인

테마 사용법·업그레이드: [Chirpy Wiki](https://github.com/cotes2020/jekyll-theme-chirpy/wiki)

## 라이선스

MIT (Chirpy Starter 기준)
