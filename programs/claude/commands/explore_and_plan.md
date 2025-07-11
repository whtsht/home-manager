---
description: 実装方針プランを考える
---

### 概要

GitHub上のイシュー `#$ARGUMENTS` に対応する問題について取り組みます。まずはそのイシューを取得し、内容を把握してください。そのうえで、関連するコード・画像・ドキュメント等を読み、どのように解決するべきか実装方針を立ててください


### 注意事項

- <>で囲われた内容はあなたが適切なものに読み変えてください
- このステップでは、**コードは一切書かないでください**


### 手順

1. GitHub Issueの取得
  - コマンド： `gh issue view $ARGUMENTS`、`gh issue view $ARGUMENTS --comments`

2. 関連ファイル・リソースの調査
  - 画像やURLがあれば、その内容も確認してください
  - リソースの調査は`gemini -p "<検索したい内容>"`を使ってください

3. 実装方針の立案
  - イシューに対してどのような実装を行えば良いか考えてください
  - 代替案がある場合は、それも含めて提示してください
  - どのように検証を行うかも含めて提示してください

4. ユーザーとの壁打ち
  - 実装方針をまとめて、ユーザーに相談してください
  - ユーザーからのフィードバックを元に実装方針を修正してくだい

5. 実装方針をIssueにコメントする
   - 立案した計画は、対応するイシュー `#$ARGUMENTS` にコメントとして投稿してください
     - コマンド：`gh issue comment $ARGUMENTS --body "<コメント内容>"`
   - 後の工程で参照・再利用できるよう、詳細かつ明確にまとめてください
   - あなたがコメントしたことがわかるように、コメントの文頭に[Claude Code]と書いてください

---

### 留意事項

- 関連ファイル・リソースの調査にサブエージェントを積極的に活用してください
- 実装方針の立案のフェーズでは、特によく考えてください
- Issueにコメントにはユーザーからのフィードバックを含めないでください
