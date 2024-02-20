---
layout: default
title: Tight binding model
parent: notes
child_nav_order: 2
---
## 固体の模型
### 結晶
$\bar{d}$ 次元結晶を考える．
$d$ は $0\sim \bar{d}-1$ を動くと約束する．

$\bar{d}$ 個の線形独立なベクトル $(\bm{a}_d)_d$ の方向に，このベクトルだけずらす離散並進操作に対する対称性があるような系を，結晶という．
適当な原点 $\bm{O}$ をとって，
$$
    \bm{R}_{(n_d)_d}= \bm{O}+\sum_{d}n_d\bm{a}_d \quad ((n_d)_d\in\mathbb{Z}^{\bar{d}})
$$
を格子点 (lattice point) といい，その全体を格子 (lattice) という．
「点 $\bm{x}$ が $(\bm{a}_d)_d$ の離散並進操作によって点 $\bm{y}$ に移動できること」により空間中の二点を同一視する（同値類で割る）．
代表元の取り方を，代表元全体が $\mathbb{R}^{\bar{d}}$ の連結領域を成すようにとったとき，この代表元全体のなす集合を単位胞 (unit cell) という．
つまりトーラスを切り開いたものである．

一般的には，
$$
    \{\sum_d s_d\bm{a}_d \colon \forall d,\,s_d\in[0,1)\},\\
    \{\bm{r}\colon \forall d, \,[|\bm{r}|<|\bm{r}-\bm{a}_d| \wedge |\bm{r}|\leq |\bm{r}+\bm{a}_d|]\}
$$
のようにとる．
後者は Wigner-Seiz cell と呼ばれる．

結晶の構造は unit cell 内の内部構造を指定すれば決定される．
特に原子配置に着目して， unit cell 内の原子の位置（異なる種類の原子は区別する）を指定して定まる構造を結晶構造という．

### 固体中の電子
固体中の電子の Hamiltonian は一般に二体以上の項を含むが，一体のポテンシャルに，これらの項をうまく取り入れることで一体の有効ポテンシャルが働いている問題とみなすことができる．
したがって，
$$
    H= \int d^d\bm{r} \bar{\psi}(\bm{r}) h(\bm{r})\psi(\bm{r})
$$
のように書けるとする．
$\psi(\bm{r})=(\psi_\uparrow(\bm{r}),\psi_\downarrow(\bm{r}))^T$ は場の演算子であり，$\bar{\psi}(\bm{r}) = (\psi^\dagger_\uparrow(\bm{r}),\psi^\dagger_\downarrow(\bm{r}))$ である．

いま，Hamiltonian は 離散並進対称性を持つ．
すなわち，
$$
    [H,e^{i\bm{a}_d\cdot\bm{P}/\hbar}]=0
$$
である．
ここで $\bm{P}$ は全運動エネルギーであり，
$$
    \bm{P} = \int d^d\bm{r} \bar{\psi}(\bm{r})\frac{\hbar}{i}\nabla\psi(\bm{r})
$$
である．
この $\bm{P}$ と場の演算子の交換子を計算することで，
$e^{-i\bm{x}\cdot\bm{P}/\hbar}\bar{\psi}(\bm{r})e^{i\bm{x}\cdot\bm{P}/\hbar}=\bar{\psi}(\bm{r}-\bm{x})$
を示すことができる．
離散並進対称性の条件を書き直して
$$
    \int d^d\bm{r}e^{-i\bm{a}_d\cdot\bm{P}/\hbar}\bar{\psi}(\bm{r})h(\bm{r})\psi(\bm{r})e^{i\bm{a}_d\cdot\bm{P}/\hbar}
    = \int d^d\bm{r}\bar{\psi}(\bm{r})h(\bm{r})\psi(\bm{r})
$$
と書いて，左辺に $e^{i\bm{a}_d\cdot\bm{P}/\hbar}e^{-i\bm{a}_d\cdot\bm{P}/\hbar}$ を挿入して，$h(\bm{r})$は$\bm{P}$と交換することを用いて，さらに積分変数をシフトすれば
$$
    \int d^d\bm{r} \bar{\psi}(\bm{r})h(\bm{r+\bm{a}_d})\psi(\bm{r})=\int d^d\bm{r} \bar{\psi}(\bm{r})h(\bm{r})\psi(\bm{r})
$$
となる．
$h$ の部分を取り出せば，
$$
    h(\bm{r}) = h(\bm{r}+\bm{a}_d)
$$
という一体の演算子 $h(\bm{r})$ に対する周期性が導かれる．
$h(\bm{r})$ の周期性が多体の Hamiltonian の離散並進対称性を導くことも，逆にたどっていけば分かる．

$h(\bm{r})$ を対角化するような一粒子の Hilbert 空間の基底をとりたい．
$p_\mu=\frac{\hbar}{i}\partial_\mu$として，
$$
    [e^{ia_d^\mu p_\mu/\hbar},h(\bm{r})]=0,
$$
なので，$h(\bm{r})$ の固有値は $e^{ia_d^\mu p_\mu/\hbar}$ の固有値でラベルできる．

## 補遺
$$
    [\bm{P},\bar{\psi}(\bm{r})]=\frac{\hbar}{i}\nabla\bar{\psi}(\bm{r}),\qquad
    [\bm{P},\psi(\bm{r})]=-\frac{\hbar}{i}\nabla\psi(\bm{r})\\
    e^{-i\bm{x}\cdot\bm{P}/\hbar}\bar{\psi}(\bm{r})e^{i\bm{x}\cdot\bm{P}/\hbar}=\bar{\psi}(\bm{r}-\bm{x})
$$
$$
\begin{align*}
    \frac{d^n}{d^n x^\mu}\big|_{x=0}e^{-i\bm{x}\cdot\bm{P}/\hbar}\bar{\psi}(\bm{r})e^{i\bm{x}\cdot\bm{P}/\hbar}
    &=[-\frac{i}{\hbar}P_\mu,\dots,[-\frac{i}{\hbar}P_\mu,\bar{\psi}(\bm{r})]\dots]\\
    &= (-\partial_\mu)^n\bar{\psi}(\bm{r})\\
    e^{-i\bm{x}\cdot\bm{P}/\hbar}\bar{\psi}(\bm{r})e^{i\bm{x}\cdot\bm{P}/\hbar}
    &=\sum_{n=0}^\infty\frac{(x^\mu)^n(-\partial_\mu)^n}{n!}\bar{\psi}(\bm{r}) 
    = \bar{\psi}(\bm{r}-\bm{x}^\mu)
\end{align*}
$$