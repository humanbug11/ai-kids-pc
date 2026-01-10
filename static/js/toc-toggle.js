/**
 * モバイル用目次(TOC)折りたたみ機能
 */
document.addEventListener('DOMContentLoaded', function() {
    const toc = document.querySelector('.toc');
    if (!toc) return;
    
    // モバイルのみ適用
    if (window.innerWidth > 767) return;
    
    toc.addEventListener('click', function() {
        this.classList.toggle('expanded');
    });
});
