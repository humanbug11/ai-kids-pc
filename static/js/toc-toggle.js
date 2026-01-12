/**
 * 目次(TOC)折りたたみ機能
 * 初期状態: 閉じている
 * タップ/クリックで開閉
 */
document.addEventListener('DOMContentLoaded', function() {
    const toc = document.querySelector('.toc');
    if (!toc) return;
    
    // クリック/タップで開閉
    toc.addEventListener('click', function(e) {
        // リンククリック時は目次内のアンカーにジャンプさせる
        if (e.target.tagName === 'A') {
            return; // リンクはそのまま動作
        }
        this.classList.toggle('expanded');
    });
});
