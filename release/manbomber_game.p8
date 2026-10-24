pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
n4=sin function sin(n)return n4(-n/6.283)end n6=cos function cos(n)return n6(n/6.283)end function nt(n)return 64-#n*2end function J(n,e,o)o=o or false if(o==true)for o=1,#e do n=J(n,e[o])end return n else for e,o in pairs(e)do n[e]=o end
return n end function g(e,t,l,n,o)l=l or false n=n or nil o=o or false if l then for l=1,#t do e=g(e,t[l],false,n,o)end return e else for t,l in pairs(t)do local i=false if o then for e=1,#n do if(t==n[e])i=true
end elseif n then if(t==n)i=true
end if not i then if(type(l)=="table")e[t]=g({},l,false,n,o)else e[t]=l
end end end return e end function nl(n,e)n[e]=nil end function K(n,e)n:nG()n=e n:nw()return n end C={N={0,1,5,6,11,11,11,11,6,5,1,0},nb=3,h=1}function C:ng(e,o,t,n)local n=n or self.N if(self.h>#n)self.h=1
?e,o,t,n[self.h]
self.nb-=1if(self.nb<0)self.h+=1self.nb=3
end M={I=true,nS=false}function M:nH(n)self.nS=n end N=0h={nr={},A={},v="entity",c="entity_"..N,O=0,b=2}g(h,M)function h:x(n)if(not n or not n.v or n.v~="component")return
self.nr[n.c]=n add(self.A,n)n.O=#self.A n.r=self end function h:e4(n)self.nr[n]:nH(true)end function h:l(n)return self.nr[n]end function h:e6()self:y()end function h:y()for n in all(self.A)do n:y()end end function h:d()if(not self.I)return
for n in all(self.A)do if(n.I)n:d()
end for n in all(self.A)do if(n.nS)nl(self.nr,n.c)del(self.A,n)
end do return end local n=1for e in all(self.A)do e.O=n n+=1end end function h:i()if(not self.I)return
for n in all(self.A)do if(n.I)n:i()
end end ni=0I={r=nil,v="component",c="component_"..ni,O=0}g(I,M)function I:y()end function I:d()end function I:i()end d={C={},k={},U={},v="scene"}function d:g(n)if(not n or not n.v or n.v~="entity")return
self.C[n.c]=n add(self.k,n)n.O=#self.k self.U[n.b]=self.U[n.b]or{}add(self.U[n.b],n)self.C[n.c]:e6()end function d:nJ(n)self.C[n]:nH(true)end function d:e5(n)return self.C[n]end function d:d()local e=false for n in all(self.k)do if(n.I)n:d()
end for n in all(self.k)do if(n.nS)nl(self.C,n.c)del(self.k,n)del(self.U[n.b],n)e=true
end self:nK()if(not e)return
local n=1for e in all(self.k)do e.O=n n+=1end end function d:nK()end function d:i()for n=0,8do S()for n in all(self.U[n])do if(n.I)n:i()
end end end function d:nw()for n in all(self.k)do n:y()end self:nA()end function d:nA()end function d:nG()end function O(n)local n=n or{}n=g({},{d,n},true)return n end function i(n)local n=n or{}n=g({},{h,n},true)n.c="entity_"..N N+=1return n end function l(n)local n=n or{}n=g({},{I,n},true)ni+=1return n end function nf(e)local n=i()n:x(l(o))n:x(l(U))n:x(l(p))n:x(l(A))n.b=4local o=n:l("Player")o.W=e return n end function n5()local n=i()n:x(l(k))n:x(l(U))n:x(l(p))n:x(l(A))n.b=3return n end function nd(n,e)local e,n=B(n,e),i()n:x(l(U))n:x(l(p))n:x(l(A))n:l("Transform"):n1(e.o,e.e)n:y()return n end _={w={}}n8=4function _:d()for n in all(self.w)do n:d()end end function _:i()for n in all(self.w)do n:i()end end function _:e8(o,t,l,i,f,d,r,n)local e=self add(e.w,{o=o,e=t,e7=l,nM=i,nN=f,nk=d,e9=r,em=n%16*8,ep=n\16*8,r=e,i=function(n)sspr(n.em,n.ep,8,8,n.o,n.e,rnd(4)+4-n.nk,rnd(4)+4-n.nk)end,d=function(n)n.o+=n.e7 n.e+=n.nM n.nM+=n.e9 n.nk*=.8n.nN-=1if(n.nN<0)del(n.r.w,n)
end})end n7,n9,nm=1.6,6,6np={{o=3,e=4},{o=13,e=14},{o=3,e=14},{o=13,e=4}}nx={"SideIdle","SideIdle","UpIdle","DownIdle"}o={nV,c="Player",t=nil,nc=0,na=0,f=nil,a=nil,s=.8,u=1,Q=1,R=true,X=0,nP=3,nT=false,nE}function o:y()self.R=true self.t=self.r:l("Transform")local n=np[self.W+1]local n=B(n.o,n.e)self.t:n1(n.o+4,n.e+4)self.f=self.r:l("Sprite")self.f:Y(68)self.f:nO(1,2)self.f:nQ(4,12)self.a=self.r:l("Animator")local n=c.m({77,78,77,79,96,97,96,79},3)self.a:p("SideWalk",n)local n=c.m({70,71,70,72},2,true)self.a:p("UpWalk",n)local n=c.m({64,64,65,66},2,true)self.a:p("DownWalk",n)local n=c.m({64,102,103,104,105,105,105,105,105,105,105},4,false,false)self.a:p("Die",n)local n=c.m({64,106,107,108,108,107},4)self.a:p("Victory",n)local n=c.m({79,98,99,100,100,100,99},4)self.a:p("SideIdle",n)local n=c.m({73,74,75,76,76,76,75},4)self.a:p("UpIdle",n)local n=c.m({64,64,67,68,69,69,68},4)self.a:p("DownIdle",n)end function o:i()S()V(self.W)end function o:d()if self.R then self:ex()self:ey()if self.B then coresume(self.B,self)if(costatus(self.B)=="dead")self.B=nil
end end end function o:Z(n)if(self.nR)return self._[n]
if(n==5)return btnp(5,self.W)
return btn(n,self.W)end function o:ex()if(self.nR)self:ew()
local e,o,n=self.nP,self.s,nx[self.nP+1]if self:Z(0)then self.nc-=o n="SideWalk"self.f.V=true e=0elseif self:Z(1)then self.nc+=o n="SideWalk"self.f.V=false e=1elseif self:Z(2)then self.na-=o n="UpWalk"e=2elseif self:Z(3)then self.na+=o n="DownWalk"e=3end if(self:Z(5))self:nX()
if(not(self.a.E==n))self.a:S(n)
self.nP=e end function o:nX()if(self.u>0and not r:z(f(self.t.o,self.t.e)))local n=n5()n:y()local e=n:l("Bomb")e.nI=self.Q e:eb(self.t.o,self.t.e,self)r:g(n)self.u-=1return true
return false end function o:ey()local t,l,n,e=self.t.o,self.t.e,self.nc,self.na local o=f(t,l)local i=mget(o.o,o.e)if(r:eg(o)~=nil or fget(i,0)and not fget(i,1))self:eS()return
local i=self:eA()if n~=0then local e if(n>0)e="right"else e="left"
local t,l=nr(t+n,l,3,3,e),n1(t+n,l,3,3,e)if t>0or i and l then local o,e=n,0if(not(i and l))o=t==3and n or n/3if t==1then e=-n elseif t==2then e=n end
self.t.o+=o self.t.e+=e elseif self.nT then o.o+=sgn(n)local n=r:z(o)if(n)n:nY(e)
end elseif e~=0then t=self.t.o local n if(e>0)n="down"else n="up"
local t,l=nr(t,l+e,3,3,n),n1(t,l+e,3,3,n)if t>0or i and l then local n,o=0,e if(not(i and l))o=t==3and e or e/3if t==1then n=-e elseif t==2then n=e end
self.t.o+=n self.t.e+=o elseif self.nT then o.e+=sgn(e)local e=r:z(o)if(e)e:nY(n)
end end self:ek()self.nc,self.na=0,0end function o:ek()local e=f(self.t.o,self.t.e)local n=mget(e.o,e.e)local n=fget(n)if n==6and self.s<n7 and not self.B then self.s+=.2elseif n==10and self.Q<nm then self.Q+=1elseif n==18and self.u<n9 then self.u+=1elseif n==34then self.nT=true elseif n==66and not self.B then self.s-=.4if(self.s<.6)self.s=.6
elseif n==14then self.B=cocreate(function()local e,o=self.i,self.s self.i=function(n)nc()end local n=6self.s=.4while n>0do n-=x local n=flr(rnd(100))/100printh(n)if(n<.03)self:nX()
yield()end self.s,self.i=o,e end)else nz=false end if(n&Q~=0)W(e.o,e.e)sfx(41,3)
end function o:eA()return r:z(f(self.t.o,self.t.e))end function o:eP()self.a:S("Victory")self.R=false end function o:eS()self.a:S("Die")self.R=false self.i=function(n)nc()end r:eT(self.r.c)end k={c="Bomb",t=nil,f=nil,a=nil,nZ=nil,nI=1,P=2,eN=false,nL,nj}function k:y()self.t=self.r:l("Transform")self.f=self.r:l("Sprite")self.f:Y(20)self.f:nO(1,1)self.a=self.r:l("Animator")local n=c.m({20,21},12)self.a:p("Bomb",n)end function k:eb(n,e,o)local n=f(n,e)local e=B(n.o,n.e)self.t:n1(e.o,e.e)self.nZ=o self.a:S("Bomb")r:eI(self,n)sfx(0,3)end function k:d()self.P-=x if(self.P<=0)self:n0()return
if self.en then local e,o,n,t=self.t.o+self.nu,self.t.e+self.nh,self.nu>0and 7or 0,self.nh>0and 7or 0local n=f(e+n,o+t)local t=r:z(n)if(fget(mget(n.o,n.e),0)or ny(n)or t~=nil and t~=self)self.en=false else self.t.o,self.t.e=e,o
end end function k:n0()local n=f(self.t.o,self.t.e)r:ee(n)local n=i()n:x(l(y))n:l("Explosion"):n0(self.t,self.nI)r:nJ(self.r.c)r:g(n)self.nZ.u+=1sfx(1,3)end function k:nY(n)self.nu,self.nh=0,0if n=="right"then self.nu=2elseif n=="left"then self.nu=-2elseif n=="down"then self.nh=2elseif n=="up"then self.nh=-2end self.en=true end y={c="Explosion",w={},P=.9,eo=false}function y:n0(n,t)local e,l,i,f,d,n=f(n.o,n.e),true,true,true,true,0self:eW(e.o,e.e)if(fget(mget(e.o,e.e),1))W(e.o,e.e)
for o=1,t do if l==true then n=self:n2(e.o-o,e.e)if(n>0)n=o==t and 1or n self:ns(e.o-o,e.e,n,"horizontal",true)
l=n>1end if i==true then n=self:n2(e.o,e.e-o)if(n>0)n=o==t and 1or n self:ns(e.o,e.e-o,n,"vertical",false)
i=n>1end if f==true then n=self:n2(e.o+o,e.e)if(n>0)n=o==t and 1or n self:ns(e.o+o,e.e,n,"horizontal",false)
f=n>1end if d==true then n=self:n2(e.o,e.e+o)if(n>0)n=o==t and 1or n self:ns(e.o,e.e+o,n,"vertical",true)
d=n>1end end P:l("Camera"):nW(self.P/2,1.5)end function y:n2(n,e)local o,t=mget(n,e),r:z({o=n,e=e})if(t)t:n0()return 0
if fget(o,1)then if(fget(o)&Q==0)self.eD(n,e)else W(n,e)
return 1elseif fget(o,0)then return 0end return 2end function y:ns(t,l,o,i,f)local d,n=nd(t,l),{}local e=d:l("Animator")if i=="horizontal"then if(o==1)n={160,161,162,163}
if(o==2)n={144,145,146,147}
e.f.V=f elseif i=="vertical"then if(o==1)n={176,177,178,176}
if(o==2)n={135,134,133,132}
e.f.et=f end e:p("burn",c.m(n,1.5))e:p("fade",c.m({n[4],n[3],n[2],n[1],58},1.5,false,false))e:S("burn")add(self.w,d)r:nD({o=t,e=l},1)end function y:eW(e,o)local t=nd(e,o)local n=t:l("Animator")n:p("burn",c.m({128,129,130,131},1.5))n:p("fade",c.m({131,130,129,128,58},2,false,false))n:S("burn")add(self.w,t)r:nD({o=e,e=o},1)end function y:d()self.P-=x if(self.P<=.3and not self.eo)for n in all(self.w)do n:l("Animator"):S("fade")local n=n:l("Transform")local n=f(n.o,n.e)r:nD(n,nil)end self.eo=true
if(self.P<=0)r:nJ(self.r.c)return
for n in all(self.w)do n:d()end end function y:i()for n in all(self.w)do n:i()end end function y.eD(n,e)local o=B(n,e)for n=0,n8 do R:e8(o.o+4,o.e+4,rnd(4)-2,rnd(4)-2,8,1,0,D)end W(n,e)if flr(rnd(100))<50then local o,t,l,i=flr(rnd(100)),0,0,{25,25,20,9,10,11}for f,i in pairs(i)do t+=i if(o>=l and o<=t)mset(n,e,47+f)return
l+=i end end end U={c="Transform",o=0,e=0}function U:n1(n,e)self.o=n self.e=e end p={c="Sprite",f=0,t=nil,V=false,et=false,el=1,ei=1,ef=0,ed=0}function p:y()self.t=self.r:l("Transform")end function p:i()local n,e=self.t.o-self.ef-3,self.t.e-self.ed spr(self.f,n,e,self.el,self.ei,self.V,self.et)end function p:Y(n)self.f=n end function p:nO(n,e)self.el,self.ei=n,e end function p:nQ(n,e)self.ef,self.ed=n,e end A={c="Animator",f=nil,nn={},E="",n3=0,n4=false}function A:y()self.f=self.r:l("Sprite")end function A:p(e,n)n.r=self self.nn[e]=n end function A:S(n)if(n==self.E)return
if(n~="")self.f:Y(self.nn[n]:D())self.n4=true else self.f:Y(self.nn[self.E]:D())self.n4=false
self.E=n self.n3=0end function A:d()if self.n4 then self.n3+=1if(self.n3>=self.nn[self.E].er)self.f:Y(self.nn[self.E]:D())self.n3=0
end end c={r=nil,n6={},h=0,er=0,e1=false,nv=true}function c.m(o,t,l,e)local n=J({},{c},true)n.n6=o n.er=t n.e1=l or false if(e==nil)n.nv=true else n.nv=e
return n end function c:D()self.h+=1if self.h>#self.n6 then if(self.e1)self.r.f.V=not self.r.f.V
if(self.nv)self:nC()else self.r.n4=false return self.n6[self.h-1]
end return self.n6[self.h]end function c:nC()self.h=1end E={nq,nF,n5=false}v,D={},0function E:ev()reload(8192,8192,4096)local n,e=self.o,self.e for o=n,n+15do for t=e,e+15do mset(o-n,t-e,mget(o,t))end end end function E:i()map(0,0,-3,0)if(self.n5)nw()map(0,0,-3,0,16,16,128)
end function E:eC()local o={}for n=3,13do for e=4,14do local t={o=n,e=e}if not fget(mget(n,e),0)then if(mget(n,e)~=53)add(o,t)else W(n,e)
end end end local n=60+flr(rnd(5))for n=1,n do local n=1+flr(rnd(#o-1))local n=deli(o,n)mset(n.o,n.e,D)end end X={X={0,0,0,0},eU={28,86,4,110}}function X:nC()self.X={0,0,0,0}end function X:i()rectfill(0,0,129,24,0)for n=1,w.nU do V(n-1)local e,o=self.eU[n],n%2==0spr(164,e,1,2,2,o)local o=o and 2or 0spr(137,e-o,16,2.25,1)?self.X[n],e+8-o,18,11
end S()end Y={ne=true,L=180}function Y:d()if(not self.ne)return
self.L-=x if(self.L<=0)self.L=0self.ne=false
end function Y:i()spr(136,61,3)spr(166,55,10,2.5,1)local n=flr(self.L)local e,n=n\60,n%60if(n<10)n="0"..n
?e..":"..n,58,12,0
end s={ec=false,nG,no=0,j=0,e=60,nB=false,N={2,3,4,5,6,7,8,9,10,11,12,13,14,15},nH}function s:ea(n)if n=="victory"then self.n_=self.eB elseif n=="tie"then self.n_=self.e_ elseif n=="champ"then self.n_=self.q end end function s:d()if not self.nB then if(self.no<64)self.no+=6
if(self.no>56)self.j+=2
if(self.j>=18)self.nB=true
else if(btnp(❎))self:e0()
end end function s:i()rectfill(64-self.no,self.e-self.j,64+self.no,self.e+self.j,0)if(self.nB)rect(1,self.e-self.j+1,127,self.e+self.j-1,11)self:n_()
end function s:eB()C:ng("player "..self.nt+1 .." wins!",48,self.e-2,self.N)?"❎",114,self.e+8,11
V(self.nt)spr(164,23,self.e-9,2,2)S()end function s:e_()local n="tie!"C:ng(n,nt(n),self.e-2,self.N)?"❎",114,self.e+8,11
end function s:e0()if(self.ec)na=O(z)na.nV=self.nt music(-1,-800)r=K(w,na)else music(-1,-800)L.nE+=1r=K(w,L)
end function s:q()C:ng("player "..self.nt+1 .." is the champion!!",13,self.e-2,self.N)?"❎",114,self.e+8,11
end function B(e,o)local n={}n.o=e*a n.e=o*a return n end function f(e,o)local n={}n.o=e\a n.e=o\a return n end function T(n)return n.e*u+n.o end function n0(n)return{o=n%u,e=n\u}end function m(n,e)return n.o==e.o and n.e==e.e end function W(n,e)local o=flr(rnd(#v-1))+1mset(n,e,v[o])mset(n+u,e+u,0)end function nb()for n=0,15do for e=0,15do local o=mget(n,e)if(fget(o,0))mset(n+u,e+u,o)
end end end function b(n,e)local n=f(n,e)local n=mget(n.o+u,n.e+u)return fget(n,0)end function nr(e,o,t,l,i)assert(i=="up"or i=="down"or i=="left"or i=="right","wrong direction entered!")local n=3if i=="up"then if(b(e-t,o-l))n-=2
if(b(e+t,o-l))n-=1
elseif i=="down"then if(b(e-t,o+l))n-=1
if(b(e+t,o+l))n-=2
elseif i=="left"then if(b(e-t,o-l))n-=2
if(b(e-t,o+l))n-=1
elseif i=="right"then if(b(e+t,o-l))n-=1
if(b(e+t,o+l))n-=2
end return n end function n1(n,e,o,t,l)assert(l=="up"or l=="down"or l=="left"or l=="right","wrong direction entered!")local i=f(n,e)if l=="up"then return m(i,f(n-o,e-t))and m(i,f(n+o,e-t))elseif l=="down"then return m(i,f(n-o,e+t))and m(i,f(n+o,e+t))elseif l=="left"then return m(i,f(n-o,e-t))and m(i,f(n-o,e+t))elseif l=="right"then return m(i,f(n+o,e-t))and m(i,f(n+o,e+t))end end function ny(e)for n in all(j)do if(m(f(n.t.o,n.t.e),e))return true
end return false end q={c="Camera",nz={o=0,e=0},n8=false,n7=0,nl=0}function q:nW(e,n)self.n7=e if(n>self.nl)self.nl=n
self.n8=true end function q:d()if self.n8 then if(self.n7<=0)self.n8=false self.nl,self.n7=0,0else self.nz={o=rnd(self.nl),e=rnd(self.nl)}self.n7-=x
end end function q:i()if(self.n8)camera(self.nz.o,self.nz.e)else camera(0,0)
end function ng(n)if n==1then e.o,e.e,e.n5=0,0,false v={4,5,6,8,9}D=2elseif n==2then e.o,e.e,e.n5=32,16,false v={23,24,25,184}D=3else e.o,e.e,e.n5=16,16,true v={4,5,6,8,9}D=22end end function nS()local n=Z w.nU,w.eu,w.eV=n[1],n[2],n[5]nu(n[3])ng(n[4])F:nC()L.nE=1end function nA()load("manbomber.p8",nil,stat(6))end n={u={},n9={},nJ,eu=0,F={},nK,nk}function n:nA()e.b=1self:g(e)e:ev()e:eC()R.b=5self:g(R)self:g(F)self.T=i(Y)self:g(self.T)local n=i(G)n.T=self.T self:g(n)nb()self:eE()music(5,700)end function n:nK()if(#self.F<=1and self.T.ne)self:ez()
self:eL()end function n:nG()self.C={}self.k={}self.U={}self.F={}self.u={}self.n9={}j={}end function n:eE()for e=0,self.nU-1do local n=nf(e)n:l("Player").nR=e>=self.nU-self.eu self:g(n)add(self.F,n.c)add(j,n:l("Player"))end end function n:eT(n)del(self.F,n)end function n:ez()local n,e=i(s)local o=#self.F if o==0then e="tie"music(25)else e="victory"music(24)local e=self:e5(self.F[1]):l("Player")e:eP()F.X[e.W+1]+=1local o=F.X[e.W+1]n.nt=e.W if(o==self.eV)n.ec=true
n.b=8end n:ea(e)self:g(n)self.T.ne=false end function n:eL()local o={}for t,n in pairs(self.u)do local e=f(n.t.o,n.t.e)local l=T(e)if(l~=t)self:ee(n0(t))o[l]=n mset(e.o+u,e.e+u,n.f.f)
end self.u=J(self.u,o)end function n:nD(n,e)self.n9[T(n)]=e end function n:eg(n)return self.n9[T(n)]end function n:eI(e,n)self.u[T(n)]=e mset(n.o+u,n.e+u,e.f.f)end function n:ee(n)local e=T(n)if(self.u[e])mset(n.o+u,n.e+u,0)self.u[e]=nil
end function n:z(n)return self.u[T(n)]end G={G=0,H=10,J=0,K=10,nm=1,h=0,nL=0,nM,nN,nk}function G:d()if(not self.T.ne or self.T.L>40)return
self.nL-=x if(self.nL<=0)local n=self:D()mset(n.o,n.e,175)mset(n.o+u,n.e+u,1)local n=self:ej()mset(n.o,n.e,38)sfx(42,3)self.nL=.3
end function G:D()local e,n,o,t=self.nm,self.h,self.np,self.nx if e==1then t=self.G o=n n+=1if(n>self.K)self.G+=1e=2n=self.G
elseif e==2then t=n o=self.K n+=1if(n>self.H)self.K-=1e=3n=self.K
elseif e==3then t=self.H o=n n-=1if(n<self.J)self.H-=1e=4n=self.H
elseif e==4then t=n o=self.J n-=1if(n<self.G)self.J+=1e=1n=self.J
end self.nm,self.h=e,n self.np,self.nx=o,t local n=mget(o+3,t+4)if(fget(n,0)and not fget(n,1))return self:D()else return{o=self.np+3,e=self.nx+4}
end function G:ej()local n,e,o,t,l,i,f,d,r=self.nm,self.h,self.np,self.nx,self.J,self.K,self.H,self.G,self:D()self.nm,self.h,self.np,self.nx=n,e,o,t self.J,self.K,self.H,self.G=l,i,f,d return r end H={nE=1,nj=1.5,o=0,e=64,nO}function H:nA()self.nj,self.e=1.5,64self.eh="round "..self.nE.."!"self.o=nt(self.eh)end function H:d()if(self.nj>0)self.nj-=x else self.e-=5
if(self.e<-10)r=K(self,w)P:l("Camera"):nW(.4,3)sfx(1,3)
end function H:i()?self.eh,self.o,self.e,11
end z={nQ,nR,eO=108,ny="fall",nX,ni=35,nY}function z:nw()local n=nf(self.nV)n:y()n:l("Player").I=false n:e4("Player")local e,o=n:l("Animator"),c.m({69,106,106,69,69,69,69},5)e:p("Landing",o)self.nq=n:l("Transform")self.nq:n1(63,0)n:l("Sprite"):nQ(0,0)self.q=n local n=i(s)n.nt=self.nV n.e=35n.e0=nA n:ea("champ")self.e2=n music(21)end function z:d()local n,e=self.nq.e,self.ny if e=="fall"then if(n<=20)n+=3
if(n>20and n<80)n+=7
if(n>=80)self.q:l("Animator"):S("Landing")self.ny="landing"P:l("Camera"):nW(.4,3)
elseif e=="landing"then self.ni-=1if(self.ni<=0)self.q:l("Animator"):S("Victory")self.ny="jumping"self.ni=1
elseif e=="jumping"then local e=self.ni%24if(e>=8and e<16)n-=1
if(e>=16and e<24)n+=1
self.ni+=1end self.nq.e=n self.q:d()if(e~="fall")self.e2:d()
end function z:i()map(64,0,0,0)V(self.nV)self.q:i()S()spr(47,60,106)if(self.ny~="fall")self.e2:i()
end nh={{-1,0},{1,0},{0,-1},{0,1}}nP={[6]=true,[10]=true,[18]=true,[34]=true}n2={[66]=true,[14]=true}ns=.9nT={{12,8,8,.18,4,8,.00222,1},{6,4,4,.08,8,4,.0011,1.2},{3,2,2,.03,14,2,.00055,1.4}}function nu(n)nI,nW,nD,nv,nC,nU,nB,nn=unpack(nT[n])end nu(2)function n_(n,e)return fget(mget(n+u,e+u),0)end function ne(n,o,t)t(n.o,n.e)for e in all(nh)do for o=1,o do local n,e=n.o+e[1]*o,n.e+e[2]*o local o=mget(n,e)if(fget(o,0)and not fget(o,1))break
t(n,e)if(fget(o,1)or r.u[e*u+n])break
end end end function n3(o)local n,e={},{}for e in pairs(r.n9)do n[e]=0end for o,n in pairs(r.u)do add(e,{nf=n0(o),M=n.P,nF=n.nI})end if(o)add(e,o)
for n=1,2do for n in all(e)do ne(n.nf,n.nF,function(o,t)for e in all(e)do if(e.nf.o==o and e.nf.e==t and e.M>n.M)e.M=n.M
end end)end end for e in all(e)do ne(e.nf,e.nF,function(o,t)local o=t*u+o n[o]=min(n[o]or 99,e.M)end)end if w.T.L<=41then for e=0,15do for o=0,15do if(mget(e,o)==38)n[o*u+e]=0
end end end return n end function no(n,e,i,r,h,s)local n=e*u+n local n,c,e,t,f={[n]=0},{},{n},1,{}while t<=#e or#f>0do if(t>#e)add(e,deli(f,1))
local o=e[t]t+=1local a=(n[o]+1)*a/r/30for t in all(nh)do local t,l=o%u+t[1],o\u+t[2]local i,d,u=l*u+t,i[l*u+t],fget(mget(t,l))if(not n[i]and not n_(t,l)and(s or not n2[u])and not(d and d<a+(h or.5)and d+.7>a))n[i],c[i]=n[o]+1,o add(u==6and r>nn-.1and f or e,i)
end end return n,c end function o:eq(e,o,l)local n=0ne({o=e,e=o},self.Q,function(o,t)local e=fget(mget(o,t))if(e&2>0and e&Q==0or n2[e])n+=3
if(l[t*u+o])n+=nC
end)return n end function o:eF(n,e)local o=n3{nf={o=n,e=e},M=2,nF=self.Q}for n in pairs(no(n,e,o,self.s,ns))do if(not o[n])return true
end end function o:eG(n,e)local t,l,n,e=self._,self.s/2,n*a+4-self.t.o,e*a+4-self.t.e local function o(n,e,o)if(n<-l)t[e]=true
if(n>l)t[o]=true
end if abs(n)>abs(e)then if(abs(e)>1)o(e,2,3)else o(n,0,1)
else if(abs(n)>1)o(n,0,1)else o(e,2,3)
end end function o:ew()self._={}if(rnd()<nB)self.eH=time()+1.5
local e,o=self.t.o\a,self.t.e\a self.nd=(self.nd or 0)-1if(self.nd<=0)self.nd=nI+flr(rnd(nW+1))self:eJ(e,o)
local n=self.eK if(n[1]==o*u+e and#n>1)deli(n,1)
self:eG(n[1]%u,n[1]\u)local n=self.s-nn if(n>.1and rnd()<n/9)self.es=4+flr(rnd(5))
if((self.es or 0)>0)self.es-=1self._=self.eM self._[5]=nil
self.eM=self._ end function o:eJ(n,e)local o,t,l=e*u+n,n3(),time()<(self.eH or 0)local i,f=no(n,e,t,self.s,ns,l)local l for n in pairs(i)do if(not t[n])l=true
end if(not l)i,f=no(n,e,t,self.s,nil,true)
local d,r={},{}for n in all(j)do if(n~=self and n.R)local n,e=n.t.o\a,n.t.e\a add(d,{n,e})r[e*u+n]=true
end local l,c,a=o,-999,0for e,n in pairs(i)do local i,f,n=e%u,e\u,-n if t[e]then n+=t[e]*10-100else n+=rnd(nD)local t=fget(mget(i,f))if(nP[t])n+=12
if(t==6and self.s>nn-.1)n-=18
if self.u>0and e~=self.e3 then local t=self:eq(i,f,r)n+=t if(e==o)a=t
end local e=99for n in all(d)do e=min(e,abs(n[1]-i)+abs(n[2]-f))end n-=e/nU end if(n>c)l,c=e,n
end self.eQ=l if l==o and a>0then if(rnd()<nv or self:eF(n,e))self._[5],self.e3=true self.nd=1else self.e3,self.nd=o,1
end local n={l}while n[1]~=o do add(n,f[n[1]],1)end if(#n>1)deli(n,1)
self.eK=n end u,a=16,8Q=124j={}Z={2,1,2,1,1}P=i()P:x(l(q))e=i(E)R=i(_)F=i(X)w=O(n)L=O(H)Z=split(stat(6))if(#Z<5)load"manbomber.p8"
nS()r=L function _init()S()poke(24366,1)r:nw()end function _update()P:d()r:d()end x=.03333function _draw()x=1/stat(7)cls()P:i()r:i()end function S()pal()local n={0,129,130,138,139,5,6,10,13,140,8,7,9,132,136,12}for n,e in pairs(n)do pal(n-1,e,1)end end function V(n)if(n==0)S()return
local e={{15,9},{3,4},{7,12}}local n=e[n]pal(10,n[1])pal(14,n[2])end function nc()pal(1,0)pal(10,1)pal(14,2)pal(5,1)pal(2,1)pal(7,2)pal(11,2)pal(13,2)pal(12,1)pal(8,1)end function nw()pal(3,4)pal(4,5)pal(7,8)pal(5,13)end
__gfx__
00000000111111122cccd7b2eaac7aaa888888888888888888888888377342528888888888888888ffffffff3333333333333333333333332444433333442000
000000001b6b66622dddddd2e33c73aa888528888888888883888828344422d28828885888288888ffffffff3733374734377333333773432437344333774200
0070070016b666622ccdc7b2cc344377888888688888888888388888377774228888588888888838ffffffff4733374734373333333373434433733333337420
000770001b6666622dddddd2eaa33aaa888888288888888882488b88333334422888888888888488ffffffff47333743437333733733373474733773333334d0
000770001bbbbbb22cdccdb2eaac7aaa88888888888888888888bcb8333334d08888828883888428ffffffff2473372447337743347733747347337333333442
007007001111111222222222eaac7aaa885688888888888885884b88333374208868888884888888ffffffff2244442243374433334473347347333337777422
000000001558bb822aaa2ac2eeecceee882288288888888888882428337742008888882882488858ffffffff552d42d5444433733733444447347333344422d2
000000002222222222222222222cc222888888888888888888888888334420008288888888888888ffffffff2222222222477743347774223333333337734252
99999999bbbbbbbbbbbbbbbbbbbbbbbb00c0000001a111008d7cc7d8bbbbbbbbbbbbbbbbbbbbbbbb881111883344225222222222252244333334444200024433
9bbfbff9bbbb66bbbb56bbbbbbbbbbbb0c7c11001a7a1110dce43e7dbbbbbbbbbbb66bbbbbbbbb6b81555618337742525d24d255252477333443734200247733
9bbfbff9bbbb56bbbbbbbbbbbbbbbbbb0eced1101eced12127e44ec7bbbbbbbbbb666bbbbbbbbbbb151111613333742222444422224733333337334402473333
1bbfbff9bbbbbbbbbbbbbbbb66bbbb6601edb11011edb121edcee7ccbbbbbbbbbb66bbbbbbbbbbbb11556611333334d2427337422d433333377337470d433333
1bbbbbb9b6bbbb6666bbb56b886666810111121011111221ddcccd7cbbbbbbbbbbbb66bbb6bb6bbb1552d6613333344234733374244333333733743724433333
11111999b5bbb611116bb66b1111111101112110111222112eeccd7cbbbbbbbbbbb666bbbbbbbbbb1522dd613777742274733374224777733333743722477773
1fbbfbf9bbbb61181116bbbb8188818802111120211111122eeecd72bbbbbbbbbbb66bbbbbbbbbbb1552d661344422d2747333332d224443333743742d224443
11111111bbbb61111816bbbb11111111002222000222222082222d28bbbbbbbbbbbbbbbbbbbbbb6b222222223773425233333333252437733333333325243773
bbbb61111116bbbbbb681181bbb6118100000000000110008888888600000000000000000000000000000c0000000000000000000000000000000000000ccc00
bbbb61188116bbbbbbb6bb81bbb68181000010000001610086b6bbb6cc007b00777b00c7007b0c777b00c7c1100cc007b0c777b0007777b0c777b00000c7bc00
b5bbb611116bbb5bbbbb6111bbbb61110001b10000016b108b6bbbb6c7777b0c7cc7b0c7707b0c7ccb00eced110c7777b0c7ccb00c7cccc0c7cc7b000c77bc00
b6bbbb6666bbbb6bbbbb6181bbbb61810016bb1000016bb186bbbbb6c777770c777770c7c7770c7777701edb110c777770c777770c777770c77777000cd77c00
bbbbbbbbbbbbbbbbbbbb6bb1bbbb6181016666610001661086666666c7cc770c7cc770c7dc770c7cc7701111d10c7cc770c7cc770c7cccc0c7c7700000c77c00
bbbb56bbbb65bbbbbbbb6181bbbb6181011111110001610088888886ccddcc0ccddcc0cc0dcc0cccccc0111d110ccddcc0cccccc0c777770cc0ccc000c7777c0
bbbb66bbbb66bbbbbbb68111bbb6811100000000000110008bb6bb66dd00dd0dd00dd0dd00dd0dddddd00111100dd00dd0dddddd00ddddd0dd0ddd000cddddc0
bbbbbbbbbbbbbbbbbbb6b181bbb6818100000000000000006666666600000000000000000000000000000000000000000000000000000000000000000cccccc0
f7fffff93333333477c7777c333a7134fffffff92bbbb625bbbbbbbb18186bbb181b6bbb11111111000000009999999999999999ffffffff2524377311111111
777bfbf9333a33347c7c117c33b1cb14aaaffff9b6bb6665bbbbbbbb11186bbb11186bbb11111111000000009999999999999999ffffffff2d22444311111111
f7f6f6f933a33a347eced11c3b311214fffff5f9b1161165bbbbbbb61816bbbb1816bbbb10101010000000009999999999999999ffff9fff2247777311111111
fffbbbf933caac3471edb11c3aa311b4ffddfcf9baebea6566bbbb681816bbbb1bb6bbbb01010101000000009999999999999999fff999ff2443333311111111
bb61b1f93ac77a347111121ceaaeb334fd77dc29616b6165b86666b11816bbbb1816bbbb10101010000000009999999999999999ff99999f0d43333311111111
fbbbbb693c7b7a347111211ceee53334fd7d7cc966bbb665111b11b11116bbbb1116bbbb01010101000000009999999999999999f99999990247333311111111
f66f6ff933cba3347711117cee533334ccccccf92b0b0625818b818818186bbb18bb6bbb10101010000000009919991999999999999999990024773311111111
9999999944444444cccccccc4444444499999999555555551111111118116bbb181186bb01010101000000009111911199999999999999990002443311111111
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000c000000000000000000000c0000000000000000000000000000000000000000000000000000000000000
000000c000000000000000000000c000000000c00000cc000000000000000000000cc000000c000000000c000000000000000c00000000000000000000c00000
0000cc0000000d7c00000d7c0000cc000000cc0000007c000c7d00000c7d0000000c70000000cc000000cc00000c00000000cc000c7d000000000000000cc000
00007c000000d00c0000d0cc00007c0000007c000000d0000c00d0000cc0d0000000d00000007c0000007c000000cc0000007c000cc0d000000d0000000c7000
0000d0000000d0000000d00c0000d0000000d0000155d1100000d0000c00d0000000d0000000d0000000d00000007c000115d1100c00d0000c70d0000000d000
0155d110055551100aaaaaaa0155d1100155d110eaaaaaae0111d1100111d1100115d1100115d1100115d1100115d110a555db5a011155b00aaaaaa00111d110
a5552b5aaaaaaaaeeeeeeee1a5552b5aeaaaaaae1eeeeee1a1555b5111225b51a55a5b5aa55a5b5aa55a5b5aa555db5aa555555aeaaaaaaaeeeeeeeee11155ba
eaaaaaaeeeeeeee122222211eaaaaaae1eeeeee115155151eaaaaaaaaa255555eaaeaaaeeaaeaaaeeaaeaaaea555555aeaaeaaae1eeeeeee11122222eaaaaaaa
1eeeeee121221221515515211eeeeee112122121151551511eeeeeeeeeaaaaaa1eeaaee11eeaaee11eeaaee1eaaeaaae1eeeaee111222221111255551eeeeeee
121221215155152151551521121221211515515112555521122aa5521eeeeeee1222222112222221122222211eeeaee1122a2221112555511112555511222212
1515515105555210055552ea1515515115555551ae1111ea11a22221a1aa2221125555511255555112555551122a2221a211112a01125550011125ea11255515
01555510021111eaea1111ee0155551001111110eedd7deea1111120e5a111ae02111120021111200211112002111120e5dddd5e002112ea0e0112ee01125550
aedd7deaeadd7dee0aad7d00aedd7deaaedd7dea00111100e2ddddae00ddddeea5dddd5aa5dddd5aa5dddd5aa5dddd5a0a1111a00e0dddee000ddda000eadd00
ee1111ee0aa111000aa11100ee1111eeee1111ee00a00a00001111ee001111a0ee1111eeee1111eeee1111eeee1111ee0ee00ee000a111a000a111a000ee1100
2aa22aa22ee22aa222222aa22aa22aa22aa22aa20aa22aa02aa22aa22aa222222aa22aa22aa22aa22aa22aa22aa22aa22ee22ee202aa2a2002a22220022aa220
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c00000c0007777bb07777bb0bb55555555
00000000000000000000000000000000000c00000000000000000000000000000000000000000000000000000000cc0000007c0077cccc077cc770775bbbbbbb
0000000000000000000c000000c00000000cc00000000c00000007c000000c0000000000000000000000c00000007c000000d00077dddd077dd770775bbbbbbb
00007c0000000000000cc000000cc000000c70000000cc000000d0c00000700000000000000000000000cc000000d0000155d11077077707700770cc5bbbbbbb
0000dc00000007c0000c7000000c70000000d00000007c000000d0000000d000000070000000000000007c000155d110a5552b5a770d7707700770dd55555555
0000d0000000dcc00000d0000000d0000111d1100000d000055551100aaaaaa00000d000000070000000d000a5552b5aeaaaaaae777777077777707756666666
011155b00aaaaaa00111d1100111d110a11aaaaa0155d110aaaaaaae1e1ee1e10aaaaaa00000d0000155d110eaaaaaae1eeeeee1cccccc0cccccc0cc56bbbbbb
eaaaaaaaeeeeeeeee11155baa11aaaaaaaaeeeeea5552b5a1e1ee1e121555512121221210aaaaaa01555db511eeeeee151555515dddddd0dddddd0dd56bbbbbb
1eeeeeee11222222eaaaaaaaaaaeeeeeeee55515eaaaaaae21555512ae1551ea2155551212122121a555525a21222212151551515555555556bbbbbbbbbbbb65
11222122112515511eeeeeeeeee22212112555151eeeeee112155121ee1111eeae1551ea21555512eaaaaaae15155151ae5555eabbbbbbb556bbbbbbbbbbbb65
112551551125155111222212112555151112555111555511ae2222ea0aad7aa0ee1111ee151551511eeeeee102555520eedd7deebbbbbbb556bbbbbbbbbbbb65
011255500ea255521125551511125551011ea11015555551ee1111ee0ee11ee02aad7aa22555555212122121aedd7dea00111100bbbbbbb556bbbbbbbbbbbb65
0ea511e00ee2112e0112555001111110000eed000155551000dd7d000ee00ee00ee11ee0e211112eae1551eaee1111ee00a00a005555555556bbbbbbbbbbbb65
0eedd700000d7da000eadd0000eadd0000011100aedd7dea0aa11aa0000000000ee11ee0aadd7daaeedd7dee00a00a0000a00a006666666556bbbbbbbbbbbb65
000111a000a111a000ee110000ee1100000a0000ee1111ee0ee00ee00000000000000000ee1111ee0011110000a00a0000000000bbbbbb6556bbbbbbbbbbbb65
02aa2a2002a22220022aa220022aa220002ee2002aa22aa2022222200022220002222220ee2222ee0aa00aa00022220000022000bbbbbb6556bbbbbbbbbbbb65
007bb7000c7bb7c0ac7bb7caac7bb7caac7bb7caac7bb700007bb700000bb70000cc700000000000000000000000000000000000000a00000000000000000000
07bbb700c7bbb700cbbbbbbbc7bbbb7cac7bb7caa77bb7c0007bb700000bb7000c6067000cccccccccccccccc00000000000000000000000000a000000000000
7bbbbbb77bbbbb777bbbbbb77bbbbbb7ac7bb7ca0c7bb7ca007bb700007bb700c6b0b670cccccccccccccccccc000000000000aa00000aaaac00a00000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbac7bb7ca0c7bb7ca0c7bb700007bb700cbb50070cccccccccccccccccc0000000000000aa0000000c77ac00000c00000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbac7bb7ca0c7bb77a0c7bb700007bb700cbbbbbc0cccccccccccccccccc00000000000000000000000bbb700000000000
7bbbbbb77bbbbb777bbbbbbc7bbbbbb7ac7bb7caac7bb7c00c7bb7c0000bb7000cbbbc00cccccccccccccccccc0000000000000000002d2d2bbcc00000000000
007bbb70cb7bb700cbbbbbbbc7bbbb7cac7bb7ca077bb7c0077bb7c0007bb70000ccc000cccccccccccccccccc00000000000000000d2d2d2cbc000000000000
007bb7000c7bb7c0ac7bb7caac7bb7caac7bb7ca0c7bb7ca077bb7c0007bb700000000000cccccccccccccccc000000000000000002200000000000000000000
000000000000000000aaa00aaaaaaaaa00aab0000077b0000000b00056bbbbbbbbbbbb6500000e00000000000022222222d25555555000000000000000000000
0000000000000ccc0ccc7ccccccccccc0aeeeb0007cccb000008b00056bbbbbbbbbbbb650000ee00000ee00022222221112d2222222550000000000000000000
777777777777777777777777777777770a222a000c2227000082800056bbbbbbbbbbbb650000e00000eeee022222221100226122222265000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0e2aae0002277c000822800056bbbbbbbbbbbb650000e0000eeeee222222211111666615566666500000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb02aee200022cc7000888880056bbbbbbbbbbbb650000ee00eeee0e222222221111666155566666650000000000000000
007770777777777777777777777777770ae22200072227000222820056bbbbbbbbbbbb6500000eeee000eee2222222211111155555666226500000000000c000
00000000000ccc77c7cccc7ccccccccc0aaaaa000c777c000000800056bbbbbbbbbbbb65000000000000eeeee22222255555555555552222500000000000a000
0000000000000000aa000a00aaaaaaaa0eeeee0000ccc000000000005555555555555555000000000000eeeeeee2222255555555555200026500000000000000
0000000000000000aa00a000aaaaa0000000c0c77000000000000000000000000000000000000000000eeeeeeeeeeeee2222222222222eeee500000022222221
000000000cccc0007cccc000ccccca0000000cc7b00000000bbbbbbbbbbbbbbbbbb0000000eeee00000eeeeeeaaa1111eeeeeeeeeeee1111e500000028585551
7770000077777c0077777ca077777ca000000000d0000000bbbbbbbbbbbbbbbbbbbb00000eeeeee000e222eeeaaa11111aaaaaaaaaa11111e500000025855551
bbbbb700bbbbb7c0bbbbb7cabbbbb7ca00002222d2220000bbbbbbbbbbbbbbbbbbbb0000ee0eeeeeee02222eeeaaa11111aaaaaaaa11111ae500000028555551
bbbbb000bbbbb000bbbbb000bbbbb7c000022b65d2582e00bbbbbbbbbbbbbbbbbbbb0000e000eeeee00222222eeeeea111aaaaaaaa111aaae500000028888881
0077000077777c00b7777caa77777caa00ea26552555aa00bbbbbbbbbbbbbbbbbbbb0000000000000002222222222eeeeeeeeeeeeeeeeeee2500000022222221
00000000c000c000c7ccca00ccccca000e1eeaaaaaaaae00bbbbbbbbbbbbbbbbbbbb000000000000000222222222222200022222220022222500000025586681
0000000000000000aaaaa000aaaaa000aa12ee1eeeee12000bbbbbbbbbbbbbbbbbb0000000000000000222222222222000002222200002222500000011111111
0000000000000000000a0a00000a0a0000122211122112001111111111111111bbbbbbbb00000000000222222222255000605555500602222500000000000000
00000000000c000000ac0a0000acca000e122850555082008818b81888188818bbbbb66b00000000000222222222555000005555500002222522200000000000
0007000000c70c0000c70ca00ac77ca0ee122850555052a01b11b11111111111bbbbb56b0000000aeeaaaa2228825550000055555000028225eaa20000000000
000bb0000c7bb7c0ac7bb7caac7bb7caa001228555552aba1b66668b18666688bbbbbbbb000000aeeeeaaaa288885555000555555500288825eaa20002220000
000bb7000c7bb7000c7bb7caac7bb7ca00ea12222222eaab86bbbb6666bbbb66bbbbbbbb000000aeeeeeaaa228825555555555555555228225eaa2002aaa2000
007bb7000c7bb7000c7bb7caac7bb7ca0eeaa1111111eeaa6bbbbbbbbbbbbbbbb66bbbbb000000aeeee22222222255555555055505522222522220022aaa2000
007bb0000c7bb700ac7bb77aac7bb7ca0eeea1ddd7d00ee0bbbbbbbbbbbbbbbbb5bbbbbb000000aeeeeeeaaaa2222555555550005552222252eea22e2aaa2000
007bb000007bb7c0a77bbbcaac7bb7ca0111111111111111bbbbbbbbbbbbbbbbbbbbbbbb000000aeeeeeeaaaa2222555555555555522222502eea2ee22220000
000000099ff222222222222225166611111122222f000000000000000000000000000000000000aeeeeeeaaaa2552255555555555222225002eeaeeeaa200000
0000000999ff22222222222222216661111262222f000000000000000000000000000000000000aeeeee22222110555555555555555222222eeeaeeaa2000000
0000000999fff2222222222222221111112666222f000000000000000000000000000000000000aaeeeeeeaaa110011112dddd211002eea2eeeeeeea22022200
00000009999fff222222222222222222226666222f000000000000010000000000000000000000222222eeaaa1101111112222111102eea2eeeeeeeeee2aaa20
000000099999fff2222222222222225555666622f90000000000001100011000000000000000aaaaaaaa2aaa11111111111111111102eea2eeeeeeeeee2aaa20
00000000999999fff2222222222222555556622ff9000000555555550011111055555555000a1111111aa22111111111117771111d00222eeeeeeeeeaa2aaa20
000000009999999ffff2222222222225555522ff990000005555555a001111552555555500a111111222aa21222ddddd2ccc772ddd0000222eeeeeaaa2022200
00000000599999999ffff2222222222222222ff91100000055555550000115222555555500e1111222222aa2222ddddd2ccc772ddd0002eee2aaaaaa20000000
0000000052999999999ffffff11111211111ff919999000000000000000ff2222555555500e1112222222aa22222dddd2cc7772ddd112eeeee22222200000000
000000005222999999999fff1fffff1fffff1919999990000000000009ff22222255555500e1112222222aa21111111111777111111122eeeeeeeeee00000000
000000000522299999999991fffff11ffffff19111999900000000000ff222222255555500e1112222222aa211111111111111111112aa2eaaeeeeee00000e00
000000000522229999999991fffff191ffffff1220099990000000009ff222222225555500e1112222222aa211110011111111101112aa2aaaaeeee000002e00
000000000052222299999919ffff19991111111220909990000000009ff222222222555500e1112222222aa200011001111111001112aa2aaaaaaee000002000
009990111005222222299919ffff19999999222209909999000000099ff222222222255500e1112222222aea25001100111111001112aa2aaaaaae0000000000
0999900111005222222222999fff12222222222099109999000000099ff222222222225500e1111222000aeaa250100000000000000022eaaaaaae0000000000
999999001110055522222299999922222222220091109999000000099ff222222222222200e1111000000aeaa25010000000000000000eeaaaaaa00000000000
999991111110000000111199999900000111000201109999000000099ff2222222222222000e000000222aeaa22000000000000000000eeaaaaa000000000000
9991111111022200011111999999000000099922011099990000000999ff222222222222000e000111222aaaa200000000000000000000eeaaa0000000000000
9911111110222220111110999999000000999922011099990000000999fff22222222222000e111111222aaa2000000000e000000000000eee00000000000000
99111111102222201111000999990000009919920111099900000009999fff2222222222000e111111122ae2000000000ee00000000000000000000000200000
911111111022222011110000999990000990112201111000000000099999fff2222222220000e11111111e20000000000ee00000000000000000000000200000
91111111110222001110000009999999990011000111100000000009999999fff222222200000e111111ee20000000000eee0000000000000000000000000000
9111111111100000d11000000009999990001d0000111000000000009999999ffff22222000000eeeeeee2000000000000ee0000000000000000000000000000
0111111111100000ddd00000000000000000d2000000000000000000599999999ffff22200000000000000000000000000000000000000000000000000000000
0011111111000000dddddddddddddddddddd220025166611111122222f00000055555552e7bb700000000000000a000000000000000000000a00000000000000
00000000000000001ddd2222222222222222210022216661111262222f0000005555555c20bb2f000000000000a0000000000000000000000a00000000000000
000000000000000011dd2222222222222222110022221111112666222f0000005555111dcc0055f0000000000a00000a0000000000000000a000000000000a00
000000000000000011100000000000000000110022222222226666222f0000005551661220c2555f000000001aa000a000000000000000000000000000000000
00000000000000001110000000000000000011002222225555666622f90000005516661dd2115555f00000001ac000a00000000000000000000a000000000000
0000000000000000011000000000000000011000222222555556622ff900000055166122dd115552f0000000acca0aa000000000000000000000000000000000
000000000000000000110000000000000001000022222225555522ff99000000551661dd211155522f000000ac7aac000000000a000000000000000000000000
00000000000000000000000000000000000000002222222222222ff91100000055166111111155222f000000c7bb7a000000000a000a00000000000000000000
__map__
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000008d8e0000000000000000000000000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000011361313120000000d0b0b0b0c000d0b0b0b0c000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000999a9b9c9d9e00000000000000000000000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000023b81719380000001b0405091d001b0508061d000000000000000000000000000000000000000000000000000000
001f0d0b0b0b0b0b0b0b0b0b0b0b0c0f00000000000000000000000000000000a9aaabacadae00000000000000000000000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000022170317370000001b0502081d001b0916051d000000000000000000000000000000000000000000000000000000
001d1b35350505040504050535351d1b00000000000000000000000000000000b9babbbcbdbebf000000000000000000000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000023171817370000001b0605051d001b0505041d000000000000000000000000000000000000000000000000000000
001d1b35010801050105010801351d1b00000000000000000000000000000000c9cacbcccdcecf000000000000000000000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000020b7b7b6210000001e1c1c1c0e001e1c1c1c0e000000000000000000000000000000000000000000000000000000
001d1b05050505060504050505051d1b00000000000000000000000000000000d9dadbdcddde00000000000000000000000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b05010501050105010501051d1b00000000000000000000000000000000e9eaeb00edee000000000000fc0000fe000000000000000000000000000000000a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b08050505050506050505061d1b000000000000000000000000000000000000000000000000000000c7c8c6fb00000000000000000000000000000000003d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b05010501040105010801051d1b000000000000000000000000000000000000000000000000000000d7d8f8f9fa000000000000000000000000000000003c3c3c3c3c3c3c3c3c3c3c3c3c3c3c3c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b06090505050508050505061d1b0000000000000000000000000000000000000000000000000000c0c1c2c3c4c5000000000000000000000000000000003c3c3c3c3c3c3c3c3c3c3c3c3c3c3c3c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b09010501050105010401051d1b0000000000000000000000000000000000000000000000000000d0d1d2d3d4d5000000000000000000000000000000003b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b05090504050508050505051d1b0000000000000000000000000000000000000000000000000000e0e1e2e3e4e5000000000000000000000000000000003f3f3f3f3f3f3f6f7d3f3f3f3f3f3f3f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b35010501060105010401351d1b0000000000000000000000000000000000000000000000000000f0f1f2f3f40000000000000000000000000000000000393939393939397e7f39393939393939000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001d1b35350505050405050535351d1b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a3a3a3a3a3a3a97983a3a3a3a3a3a3a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
003e1e1c1c1c1c1c1c1c1c1c1c1c0e070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001f0d0b0b0b0b0b0b0b0b0b0b0b0c0f003711133613363613361313361312220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b35350504050408050535351d1b0038233535181717b8171917353538220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b351a051a091a051a081a351d1b003823351017101710181017103537220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b05050408050506040505091d1b0037221917b819191717b817171737230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b051a051a051a051a081a051d1b003823191017101710171019101738230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b04090505090804050506081d1b003823b8171817b8171917b8171837230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b051a081a041a051a091a051d1b00372217101710171017101710b838220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b06050504050508050505041d1b003823191717191717171819171737220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b041a091a051a051a091a051d1b003823171017101710171017101937220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b05050405080509050605081d1b00372219b817171817b81717b81937230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b351a051a051a041a051a351d1b003822351017101910171017103538230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000001d1b35350506040505050535351d1b0037233535191717b8171719353537220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000003e1e1c1c1c1c1c1c1c1c1c1c1c0e07003720b6b6b7b6b7b7b6b6b7b7b721230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
000103030000008100000081818181810101010101010300000001818181818101010101000000000000000000000000060a1222420e0101010000000000810000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
010100002375021750177501875012750057500a7500975006750067500275000750067500b350143500732004310043000230002300013000170001700007000070000700087000770007700077000770007700
000300001962018610186701867018660176601e6501f6501d6500f6500e6400d6400c64015630176301563007630066300563004630036201162011620116200162001610016100061000620006100061000600
0109000023555275552f5552a5502a5202a5102a5002a50000000177041c6001e700277001c7001e70017700177001c7001e70027700177001c7001e70027700177001c7001e70027700177001c7001e70027700
010900002a55527555235552f5502f5302f5100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01030000000000000026520285402b520063000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01100000201422010021142231420000028142281001c14200000000001c12200000000001c1121c1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01100000041600ce75041600ce75041600ce750416510164001000015310124001530e1650e1000e165101650016508e7508e0008e750c16508e75001650c1640c100001630c124001630b165001630b16509165
010f00000000000000000001e4421e442000001e4401b440174402544225444234400000021440000002344023444234442342423413234002340000000000000000000000000000000000000000000000000000
01100010156530e6250000000000326351a635006350966309635046350063500600356351a6350063509635156630e6350000000000326351a635006350963309655046350063500635296451a6450063509624
01100000281242312521125201252112523125281242312521125201252112523125281242312521125201252812423125211251f125211252312528124241252312521127231252412528124241252312521125
0108002009631026352b40029400286241c400346250000011633345002b635286352663334500286422863028625000002b645286451a64500000286353450030625306133b6101a40030625306133b61032500
011000001441214412144121441214412144121441214412144121441215412154121541217412174121741218412184121841218412184121841218412184121841218412174121741217412154121541215412
010f000000000000000000000453000000000017240192401b2401c240034001b2400040019250152001b2421b2321b2221b21300000000000000000000000000000000000000000000000000000000000000000
010f00000000000000000000b05000655246350b0550b0550b0553062230612246120905007050090500b0500b0500b0320b0320b0220b0130000000000000000000000000000000000000000000000000000000
010f0000000000000000000200500000021055230510000028055000001c0501c0530000000000000001b0511a051190511805118050180501805018052180521805218052180530000000000000000000000000
010f00000000000000000001f0300000020030220300000027030000001b030000000000000000000001a03019030180301703017030170301703017030160301502014020130560000000000000000000000000
010f0000281242312521125201252112523125281242312521125201252112523125281242312521125201252812423125211251f1252112523125281242a1252b1252d12532125341252f5342d5452c5552a565
010f0000041400414004140041400414004140041400414004140041400414404140041400214402140021400014500145001000014500140001400014000140021400414006144091400e140151441e14026140
010f00001a6651a6651c0551a6651a0551c055326751e0552d7331c0551c0001c0551a055000001c055277331a6651a665180551a6651a0551c0551a67515055000002f65513055170552f655150452f6552f655
011000000414004140041400414004140041400414004140041400414004144041400414002144021400214000144001400014000140001400014000140001400014000140001440014000140021440214002143
010f0010156530e6250000000000326351a635006350966309635046350063500600356351a6350063509635156630e6350000000000326351a635006350963309655046350063500635296451a6450063509624
010f0000281242312521125201252112523125281242312521125201252112523125281242312521125201252812423125211251f125211252312528124241252312521125231252412528124241252312521125
010f00000414004140041400414004140041400414004140041400414004144041400414002144021400214000145001450010000145001400014000140001400014000140001440014000140021440214002143
01100000070551d615070551d615070551d6153562035615070551d615070551d615070551d6150705535615070551d6153562035615070551d615070551d615080501d6150805035615080501d6153562035615
011000002a04000000260300000023020000001f01000000230200000026030000002a04000000260300000023020000001f0100000023020000002d030000002a04000000270300000023020000002001000000
0108000023020230200000000000270302703000000000002a0402a040000000000027030270300000000000230202302000000000002d0102d010000000000000000000002b0202b0202b000000000000000000
011000001a6351a6352b733007352d635277331a6352d635007352f635000001a6352f635000001a635007351a6351a6352d733007372d635277331a6352d635000002f635007351a6352f6352b7332873324733
0110000000165001650c16500165001650c16500165001650c16500165001650c16500165001650c1650116502165021650e16502165021650e16502165021650e16502165021650e16502665026650e6651b665
010f00000443021600104300f655286550e4302f65510430256000e4300165510430326550e43032645326350943021675154300265530655134301765515430326550e430104303265500000174303265532655
010f00003275034751347503475034750347503475034750347403474034730347333472334713237131b72300000000001b75300000000001b7730000000000346550c6550c6553465518655186553465528655
010f000000165001650c16500165001650c16500165001650c16500165001650c16500165001650c1650116502165021650e16502165021650e16502165021650e16502165021650e16502665026650e6651b665
010f000013763000001c6551a65513763000001c6551a65513763000001065534640137633461017655156551376328655106551065513763286551c6551a6551376334655346001d65513763246551f6551a655
010f000000000000002f550000002d5502f550000002855000000265502855000000000002b5502f5503455032550325503255032550325503255032550325502d5502d5502d5502d55032550325503255032550
010f00002f5502f5522f5522f5522f5522f5522f5522f5522f5522f5522f5522f5550564505645376150564505645056453761505645056453761535645356453564535645376153564535645376153564535645
010f000004165041651016504165041650e16504165041651016504165041650e1650416504165101650416504165041651016504165041650e16504165041651016504165041650e16504165041650b16509165
010f00000265502655200300e6551e030200302963521030000002003000000200301e03000000200301c6550e6550e655200300c6551e030200303d645210303d600200303d625200301e0303d6151c0303a600
010f00000414004140041400414004140041400414004140041400414004144041400414002144021400214000140001400014000140001400014000140001400014000140001440014000140001440214002140
010f0000000000000020030000001e030200300000021030000002003000000200301e03000000200300000000000000001f030000001e0301f0300000021030000001f030000001f0301e030000001c03000000
0110000000000041600ce75041600ce75041600cf75041651016400100000001012400000000001012400000000000016008e750016008e750016008e75001650c16400000000000c12400000000000c12400000
01100000231302313023130231302313023130231302313023130231302313423130231302113421130211301f1341f1301f1301f1301f1301f1301f1301f1301f1301f1301f1341f1301f130211342113021133
01100000080551d615080551d615080551d6150805535615080551d6153562035615080551d615080551d615080001d6000800035600080001d60035600356000000000000000000000000000000000000000000
000100000a2500a2500c2500e250112501425016250192501c2502025024250282502d250342503d250232502a250312503f250190001b0001d0001f0002200025000270002a0002d00031000310000000000000
00010000216501f6501f6501f6501e6501d6501c6501a6501965017650126500f6500f6500d6500b6500a65008650076500665006650056500560004600036000260002600016000260001600016000060000600
01110000201422010021142231420000028102231221c10200000231221c10200000231121c102000001c1521f152000001f1001f1221f102000001f12200000211021f1121e100150001f1521e152000001e114
01110020156430e6150000000000326251a625006250965309625046250062500600356251a6250062509625156430e6150000000000326251a625006250965309625046250062500600356251a6250062509625
011100002014220100211422314200000281322810028100281240000228100281120000028100281120000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01110000041600ce75041600ce75041600cf750416510164001000015310124001530e1650e1000e165101650016508e7508e0008e750c16508e75001650c1640c100001630c124001630b165001630b16509165
01110000041600ce75041600ce75041600ce75041651016400100000001012400000000001012400000000000016008e750016008e750016008e75001650c16400000000000c12400000000000c1240000000000
010e002a211402114023140211403c0001e1403c00020140201422013200000000003c0001c14023140281402a1402b1412b1402b1402b1402b1302b1322b1322b1322b1222b1222b1222b1122b1102b1102b110
010e00000415004150041500415204152041520415204152041500415004150041500415002150021500215002150001500015000150001520015200152001520015200152001420014200132001220011200112
010a003128642286222862228612286122861234133341000000013773137731377313773000000000000000000002860017773000000e773286550e773286553465234622346123461234612346120000000000
010a000018053000001c0001c0551c0551c0551c0501c0521c0502505023050210502305223052230522305223052230523805036050340502f0502c0502805023050180401c036180261c020180101c01018010
010f00002c5502d5002d5502f55000000345500000028550285502855500000000000000023550285502a5502b550000002d5502a5502a5502a55000000000002a550000002b5502a55000000265502155000000
010f00001a6351a6352b733007352d635277331a6352d635007352f635000001a6352f635000001a635007351a6351a6352d733007372d635277331a6352d635000002f635007351a6352f6352b7332873324733
010f00000417504175101750417504175101750417504175101750417504175101750417504175101750417500175001750c17500175001750c175001750117502175021750e17502175021750e1750c1750b175
010f000021532215322353021532000001e5300000020530205322053220522000001c530000001a53000000155301553215532155250000017530185301c5301a5401a5421a5321a5251e50021540285402a540
010f000004175041751417504175041751417504175041751417504175041751517504175041751717502175001750017518175001750017518175001750b17518175091750917517175001750e175151750b175
010f00001865504175101750265504175101753464234615101753b133001351017504175041750d6750367518655001750c17502655001750c17534642346153c64528645286453c64526635266353c63524635
010f00002c5402d5002d5402f54000000345400000028540285402854500000000000000023540285402a5402b540000002d5402a5422a5422a54200000000002a540000002b5402d540000002f5403254032540
010f0000285402d5002a5402c540101002f540000002354023542235420000000000000002654023540225402154021545235402454000000285402f550000001a540000001c5401e54000000215402654000000
010f0000346453461310050041502d6551377304155041551376304554137630455432645137630415504155137630015513763001502d665137631a6652d665021630216513763021602f665137631c7630c743
010f00003652636520365203652236522365203452034522345223452234522345223452234522345223451300000000000000000000000000000000000000000000000000000000000000000000000000000000
010f000004165041651016504165041650e16504165041651016504165041650e1650416504165101650416504165041651016504165041650e16504165041651016504165041650e16504165041650b16509165
010f000013773000001c665000001377302665000001c6651377302665000001c66513773000001c6652b76313773000001c665000001377302665000001c6651377302665000001c665137732b7631c66510773
__music__
01 05064340
00 064e4b44
01 05060809
02 09060b08
00 0a060b09
01 34353644
00 37383944
00 3a3b3c44
00 3d3e3f44
00 1e1f2044
00 21222355
00 1c201e44
00 1d221f44
00 24256665
00 14151653
00 24251265
02 14111053
00 2324250b
02 26272565
01 2b2f2c44
02 2d2f2c44
00 32313330
01 17184344
02 19285a44
04 070c0d44
04 0f0e4344
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000888890080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000800000009aa890000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000777a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000ikiki77990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000kikiki97900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000ii0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000o000000000000iiiiiiiiki5555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000oo00000oo000iiiiiiihhhikiiiiiii550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000o00000oooo0iiiiiiihh00ii6hiiiiii65000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000o0000oooooiiiiiiihhhhh6666h5566666500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000oo00oooo0oiiiiiiiihhhh666h55566666650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000oooo000oooiiiiiiiihhhhhh55555666ii65000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000oooooiiiiii5555555555555iiii5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000oooooooiiiii55555555555i000i6500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000oooooooooooooiiiiiiiiiiiiioooo500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00oooo00000oooooo888hhhhoooooooooooohhhho500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0oooooo000oiiiooo888hhhhh8888888888hhhhho500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
oo0ooooooo0iiiiooo888hhhhh88888888hhhhh8o500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
o000ooooo00iiiiiiooooo8hhh88888888hhh888o500000000000000000000000000000000000000000000000000090000000000000000000000000000000000
00000000000iiiiiiiiiioooooooooooooooooooi500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000iiiiiiiiiiiii000iiiiiii00iiiii500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000iiiiiiiiiiii00000iiiii0000iiii500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000iiiiiiiiii5500000555550000iiii500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000iiiiiiiii55500000555550000iiii5iii00000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000008oo8888iiiddi55500000555550000idii5o88i0000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000008oooo8888idddd5555000555555500idddi5o88i000iii0000000000000000000000000000000000000000000000000000000000000000000000000000
0000008ooooo888iiddi5555555555555555iidii5o88i00i888i000000000000000000000000000000000000000000000000000000000000000000000000000
0000008ooooiiiiiiiii555555550555055iiiii5iiii00ii888i000000000000000000000000000000000000000000000000000000000000000000000000000
0000008oooooo8888iiii55555550555055iiiii5ioo8iioi888i000000000000000000000000000000000000000000000000000000000000000000000000000
0000008oooooo8888iiii5555555500055iiiii50ioo8iooiiii0000000000000000000000000000000000000000000000000000000000000000000000000000
0000008oooooo8888i55ii55555555555iiiii500ioo8ooo88i00000000000000000000000000000000000000000000000000000000000000000000000000000
0000008oooooiiiiihh0555555555555555iiiiiiooo8oo88i000000000000000000000000000000000000000000000000000000000000000000000000000000
00000088oooooo888hh00hhhhikkkkihh00ioo8iooooooo8ii0iii00000000000000000000000000000000000000000000000000000000000000000000000000
000000iiiiiioo888hh0hhhhhhiiiihhhh0ioo8iooooooooooi888i0000000000000000000000000000000000000000000000000000000000000000000000000
000088888888i888hhhhhhhhhhhhhhhhhh0ioo8iooooooooooi888i0000000000000000000000000000000000000000000000000000000000000000000000000
0008hhhhhhh88iihhhhhhhhhhhaaahhhhk00iiiooooooooo88i888i0000000000000000000000000000000000000000000000000000000000000000000000000
008hhhhhhiii88ihiiikkkkki999aaikkk0000iiiooooo888i0iii00000000000000000000000000000000000000000000000000000000000000000000000000
00ohhhhiiiiii88iiiikkkkki999aaikkk000ioooi888888i0000000000000000000000000000000000000000000000000000000000000000000000000000000
00ohhhiiiiiii88iiiiikkkki99aaaikkkhhioooooiiiiii00000000000000000000000000000000000000000000000000000000000000000000000000000000
00ohhhiiiiiii88ihhhhhhhhhhaaahhhhhhhiioooooooooo0000000000hh88hhhhhh000000000000000000000000000000000000000000000000000000000000
00ohhhiiiiiii88ihhhhhhhhhhhhhhhhhhhi88io88oooooo0000000000hh88hhhhhh000000000000000000000000000000000000000000000000000000000000
00ohhhiiiiiii88ihhhh00hhhhhhhhh0hhhi88i8888oooo000000000hh88aa88hhhhhh0000000000000000000000000000000000000000000000000000000000
009999iiiiaa778i00aaaaaa77hhhh99aahi88aa778899aaaaaa7700hh88aa88hhhhhh0099990000aa770099aaaaaa77000000aaaaaaaa770099aaaaaa770000
009999iiiiaa77o8i5aaaaaa77hhhh99aahi88aa778899aaaaaa7700hhoo99ookkhhiihh99990000aa770099aaaaaa77000000aaaaaaaa770099aaaaaa770000
0099aaaaaaaa77o899aa9999aa770099aaaaiiaa778899aa99997700hhoo99ookkhhiihh99aaaaaaaa770099aa999977000099aa999999990099aa9999aa7700
0099aaaaaaaa77o899aa9999aa770099aaaa0oaa778899aa99997700hhhhookk77hhiihh99aaaaaaaa770099aa999977000099aa999999990099aa9999aa7700
0099aaaaaaaaaao899aaaaaaaaaa0099aa99aaaaaa8899aaaaaaaaaahhhhookk77hhiihh99aaaaaaaaaa0099aaaaaaaaaa0099aaaaaaaaaa0099aaaaaaaaaa00
0099aaaaaaaaaa8899aaaaaaaaaa0099aa99aaaaaa8099aaaaaaaaaahhhhhhhhhhiiiihh99aaaaaaaaaa0099aaaaaaaaaa0099aaaaaaaaaa0099aaaaaaaaaa00
0099aa9999aaaa8899aa9999aaaa0099aakk99aaaa0099aa9999aaaahhhhhhhhhhiiiihh99aa9999aaaa0099aa9999aaaa0099aa999999990099aa99aaaa0000
0099aa9999aaaaoi99aa9999aaaa0099aakk99aaaa0099aa9999aaaahhhhhhiiiiiihhhh99aa9999aaaa0099aa9999aaaa0099aa999999990099aa99aaaa0000
009999kkkk9999i09999kkkk999900999900kk999900999999999999hhhhhhiiiiiihhhh9999kkkk9999009999999999990099aaaaaaaaaa0099990099999900
009999kkkk9999i09999kkkk999900999900kk999900999999999999iihhhhhhhhhhhhii9999kkkk9999009999999999990099aaaaaaaaaa0099990099999900
00kkkkooookkkk00kkkk0000kkkk00kkkk0000kkkk00kkkkkkkkkkkkiihhhhhhhhhhhhiikkkk0000kkkk00kkkkkkkkkkkk0000kkkkkkkkkk00kkkk00kkkkkk00
00kkkk0000kkkk00kkkk0000kkkk00kkkk0000kkkk00kkkkkkkkkkkk00iiiiiiiiiiii00kkkk0000kkkk00kkkkkkkkkkkk0000kkkkkkkkkk00kkkk00kkkkkk00
0000000000000000000000000000000000000000000000000000000000iiiiiiiiiiii0000000000000000000000000000000000000000000008000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000800000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hh880008000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hh00000000000000000hhh890008000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hhhhh055555555555555558998088000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hhhh55i55555555555555889a8890000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hh5iii5555555555555509a77a80000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cciiii55555555555555ioa77a00000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000scciiiiii55555555555559i077ic0000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cciiiiiii5555555555hhhk990055c000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000scciiiiiiii55555555h66hii09i555c00000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000scciiiiiiiii555555h666hkkihh5555c0000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000scciiiiiiiiii55555h66hiikkhh555ic0000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000scciiiiiiiiiii5555h66hkkihhh555iic000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000scciiiiiiiiiiiii55h66hhhhhhh55iiic000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000sscciiiiiiiiiiiiii5h666hhhhhhiiiiic000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ssscciiiiiiiiiiiiiiih666hhhhi6iiiic000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000sssccciiiiiiiiiiiiiiihhhhhhi666iiic000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ssssccciiiiiiiiiiiiiiiiiiii6666iiic000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000sssssccciiiiiiiiiiiiiii55556666iics000000
000000000000000000000000000000o000000000000000000000000000000000000000000000000000000000ssssssccciiiiiiiiiiiii5555566iiccs000000
00000000000000000000000000000io000000000000000000000000000000000000000000000000000000000ssssssscccciiiiiiiiiiii55555iiccss000000
00000000000000000000000000000i00000000000000000000000000000000000000000000000000000000005sssssssscccciiiiiiiiiiiiiiiiccshh000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000005issssssssscccccchhhhhihhhhhccshssss0000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000005iiisssssssssccchccccchccccchshssssss000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005iiisssssssssshccccchhcccccchshhhssss00
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005iiiissssssssshccccchshcccccchii00ssss0
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005iiiiisssssshscccchssshhhhhhhii0s0sss0
0000000000000000000000000000000000000000000000000000000000000000000000000000000000sss0hhh005iiiiiiissshscccchsssssssiiii0ss0ssss
000000000000000000000000000000000000000000000000000000000000000000000000000000000ssss00hhh005iiiiiiiiisssccchiiiiiiiiii0ssh0ssss
00000000000000000000000000000000000000000000000000000000000000000000000000000000ssssss00hhh00555iiiiiissssssiiiiiiiiii00shh0ssss
00000000000000000000000000000000000000000000000000000000000000000000000000000000ssssshhhhhh0000000hhhhssssss00000hhh000i0hh0ssss
00000000000000000000000000000000000000000000000000000000000000000000000000000000ssshhhhhhh0iii000hhhhhssssss0000000sssii0hh0ssss
00000000000000000000000000000000000000000000000000000000000000000000000000000000sshhhhhhh0iiiii0hhhhh0ssssss000000ssssii0hh0ssss
00000000000000000000000000000000000000000o00000000000000000000000000000000000000sshhhhhhh0iiiii0hhhh000sssss000000sshssi0hhh0sss
0000000000000000000000000000000000000000oo00000000000000000000000000000000000000shhhhhhhh0iiiii0hhhh0000sssss0000ss0hhii0hhhh000
0000000000000000000000000000000000000000oo00000000000000000000000000000000000000shhhhhhhhh0iii00hhh000000sssssssss00hh000hhhh000
0000000000000000000000000000000000000000ooo0000000000000000000000000000000000000shhhhhhhhhh00000khh00000000ssssss000hk0000hhh000
00000000000000000000000000000000000000000oo00000000000000000000000000000000000000hhhhhhhhhh00000kkk00000000000000000ki0000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000hhhhhhhh000000kkkkkkkkkkkkkkkkkkkkii0000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hkkkiiiiiiiiiiiiiiiiih0000000000
000000000000000000000i00000000000000000000000000000000000000000000000000000000000000000000000000hhkkiiiiiiiiiiiiiiiihh0000000000
000000000000000000000i0000000000000000000000000000i000000000000000000000000000000000000000000000hhh00000000000000000hh0000000000
00000000000000000000000000000000000000000000000000i000000000000000000000000000000000000000000000hhh00000000000000000hh0000000000
0i00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hh0000000000000000hh00000000000
0i000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000hh000000000000000h000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__meta:title__
PICO EC - 
A small scene/entity/component
