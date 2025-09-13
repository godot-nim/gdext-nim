// toc-sidebar.js
(function () {
  function moveToc() {
    const toc = document.querySelector('#markdown-toc');
    if (!toc || toc.children.length === 0) return;

    const left = document.querySelector('.three.columns');
    if (!left) return;

    left.appendChild(toc);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', moveToc);
  } else {
    moveToc();
  }
})();
