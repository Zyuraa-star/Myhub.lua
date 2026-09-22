return(function(...)do local f,m,O,p,Q=math,table,tonumber,setmetatable,string local B,P,n,R,K,g=f.floor,f.max,Q.unpack,m.concat,Q.char,Q.sub local d="iiihhhiiiiihssss","\136%\250\025N\201pwzg\019(A_Y&l\r\200N\181\000\181\226\r\001O\134\212\001\a\202\154;\000\000\001\000\000\001\a\000\000\000__index\006\000\000\000__call\005\000\000\000__sub\005\000\000\000__mul"local U=1 local function k()if U+3<=#d then local f,m,O,p=d:byte(U,U+3)U=U+4 return((f+m*256)+O*65536)+p*16777216 end return 0 end local function E()if U+1<=#d then local f,m=d:byte(U,U+1)U=U+2 return f+m*256 end return 0 end local function L()local f=0 for m=U,#d,1 do if d:byte(m)==0 then f=m-U break end end if f>0 then local m=d:sub(U,(U+f)-1)U=(U+f)+1 return m end return""end local V=k()local H=k()local a=k()local M=E()local b=E()local W=E()local w=k()local G=k()local T=k()local t=k()local s=k()local A=E()local J=L()local Y=L()local q=L()local S=L()local o,l,c,Z,v,j,N,i,r,I=1,1,1,16807,48271,2147483647,2147483647,2147483647,2147483647,0 local function h()c,o,l=(j*c)%r,(Z*o)%N,(v*l)%i return B((((((o+w)+l)+G)+c)+T)/s)%A end local function e(f)local m={}for p=1,#f,2 do local Q=g(f,p,p+1)if Q and#Q==2 then local f=O(Q,16)if f then m[#m+1]=K(((f-h())+A)%A)end end end return m end _G["4Ura8exaM8MaQkO"]=xhider end local f={{76;"1BA9AEAF"},{15,"ABAF44"};{50;"1AA7ABA11AA745484118ACA7ADA1"};{11,"11A748A9A5ADAF"},{37;"1312FAF944A4411BAE471FF4"},{57;"B57DCF5018A640A7AFA159"},{35,"AD89"};{9;"F1AF4C411DA9A5AFAD"},{41;"AF4545A645"};{55;"12A147FC18A819"};{39;"1DA6A8A9ADF0ADA947AF45"};{78;"18A6ADA64588"};{2;"17A1ADAFA1"};{30;"F1AF4C41154F4141A6AB"};{72,"F74A12F1181AA1AB8048851CF5"};{65,"15A9A8A2A445A64FABA118A6ADA64588"};{21,"1EA64F48AF154F4141A6AB8918ADA7A8A2"};{56;"AD85"},{48,"41A6484145A7ABA4"};{85;"FF11A7AE"};{89;"1FAB4FAE"};{29;"AEA941AC"};{38,"F8A7A5ADA7ABA4"},{53;"1A87471E1E1843A11488ACA4"},{7,"1AA6AB41"};{80;"A4AEA941A8AC"},{22;"408481F4AD434FA4F7A9A1F3"},{49,"1EA64F48AF1DAFA94AAF"},{58,"AC41414048835656A1A748A8A645A15BA8A6AE56A7AB4AA741AF561F851B8444888F43A241"},{3,"1EA64F48AF1FAB41AF45"};{84,"818713168414FFA4F31D4487"},{67,"F8A743AF"},{44;"F6F6ADAFAB"},{47;"15AD4F451FAAAAAFA841"};{52,"F1AF4C41F8A743AF"},{34,"FF1718A645ABAF45"};{16;"F1AF4C41"};{82;"48AF41A8ADA740A5A6A945A1"};{19;"45A9ABA1A6AE"},{18;"F6F6A7ABA1AF4C"},{63;"A4AF41A8A6ABABAFA841A7A6AB48"},{83,"4FAB40A9A8A2"};{1;"FAA7B922C4418350F8A845A7404150D179D83850ADB92274A75041ACB9227EA75B50FA4FA750ADD825ABA4504AD830A65011A748A8A645A150D179B922C850ABACB9233EAB5048A845A7404150AEB92272A75B"};{86;"1FABA4ADA748AC8350F8A845A7404150A64F41A1A941AFA15B5013A6A7AB5011A748A8A645A15041A650A4AF4150ABAF445048A845A74041485B"};{45;"4A888912F48849121FA3F8F0FCA4"};{51;"1DF9A7481FF54AFAF8AA87A7FA"},{24;"F8A845AFAFAB144FA7"};{13,"1FABA9A5ADAFA1"},{71,"FAAFA841A64585"},{90;"F91484A14187"},{64,"FF11A7AE85"};{46;"40A8A9ADAD"},{25;"F1AF4C4118A6ADA64588"},{42,"607678C25018A640475011A748A8A645A1501DA7ABA2"},{79,"18A6ABABAFA841"},{73;"F0A945AFAB41"};{32,"19ABA8ACA645F0A6A7AB41"};{4,"484145A7ABA4"};{81;"414815ACABFF11A6884C1680"},{61,"83"},{10,"41A6AB4FAEA5AF45"},{8;"F1AF4C41F445A94040AFA1"},{6,"F7A64F501945AF501DA6484159"},{5;"F0ADA947AF4548"},{43,"F6F6A4A8"},{20,"17AB4841A9ABA8AF"},{69;"1D89"};{12,"4519A8F511F016F9801481F9F4"};{36;"835C5FA1535783"},{60,"4F811D154A87AB841D11A887F513"};{75,"18A645AF144FA7"};{17;"A4A9AEAF"};{54;"A8A6ABA8A941"},{87;"F317ABA1AF4C15AFACA94AA7A645"},{88;"ABAF4C41"},{14,"14AF41F8AF454AA7A8AF"},{31,"F0A648A741A7A6AB"},{62,"1E884C1A84F4F9A6A8F04443AC"},{91,"AA45A6AEF51415"};{40,"44A9A741"},{59;"1711A813"};{28;"A4484FA5"},{33;"894C43AFFF15A9F713FC4C1F"};{26;"15A9A8A2A445A64FABA1F145A9AB4840A945AFABA847"};{23;"17481DA6A9A1AFA1"},{27;"1DA7A4AC41A7ABA4"},{70;"AF4AA94CA68548F7"},{68,"41A9A5ADAF"};{74,"14A641ACA9AE15A6ADA1"};{77,"18A645ABAF45F5A9A1A74F48"};{66,"41A948A2"}}for m,O in ipairs({{1;91},{1;41};{42,91}})do while O[1]<O[2]do f[O[1]],f[O[2]],O[1],O[2]=f[O[2]],f[O[1]],O[1]+1,O[2]-1 end end local function m(m)return f[m+60549]end do local m=string.sub local O=string.char local p=table.insert local Q=table.concat local B=type local P=f local n={["0"]=0;["9"]=1,["5"]=2,["8"]=3;["1"]=4,F=5,A=6,["4"]=7;C=8;["7"]=9;["3"]=10,["2"]=11,D=12,E=13;B=14;["6"]=15}for f=1,#P,1 do local R=P[f]local K=R[2]if B(K)=="string"then local f={}for Q=1,#K,2 do local B=n[m(K,Q,Q)]local P=n[m(K,Q+1,Q+1)]local R=B*16+P p(f,O(R))end R[2]=Q(f)end end end return(function(f,p,Q,B,P,n,R,g,L,a,k,d,E,O,U,H,K,b,M,V)U,L,E,O,b,H,V,a,d,k,K,M,g=0,function(f)g[f]=g[f]-1 if g[f]==0 then g[f],K[f]=nil,nil end end,function(f)local m,O=1,f[1]while O do g[O],m=g[O]-1,m+1 if 0==g[O]then g[O],K[O]=nil,nil end O=f[m]end end,function(O,Q,B,P)local z,r,N,E,k,R,Z,T,W,D,v,g,w,G,F,j,i,o,U,C,s,V,e,h,Y,X,l,t,I,A,q,J,c,S while O do if O<9752795 then if O<4656848 then if O<2019674 then if O<1162931 then if O<382496 then if O<198453 then O=2969711 else l=l+S Z=not c R=l<=o R=Z and R Z=l>=o Z=c and Z R=Z or R Z=7749110 O=R and Z R=14887631 O=O or R end else if O<747377 then S=(m(-60489))[2]O=f[S]Z=(m(-60501))[2]c=f[Z]S=O(c)O=(m(-60490))[2]f[O]=S O=151215 else o=s==t O=3387778 l=o end end else if O<1851909 then if O<1268748 then U=K[B[2]]O=1881533 k=K[B[3]]g=U==k R=g else t=(m(-60511))[2]w=R W=(m(-60486))[2]R=f[W]W=(m(-60469))[2]O=R[W]G=(m(-60511))[2]W=d()K[W]=O R=f[G]G=(m(-60526))[2]O=R[G]G=O T=O s=f[t]O=s and 8835411 or 11122628 A=s end else if O<1876043 then D=K[U]O=D and 8100800 or 10623827 R=D else O=R and 3088588 or 13121123 end end end else if O<3147705 then if O<3004809 then if O<2242346 then O=3039067 else O=true O=O and 10956310 or 13085255 end else if O<3064966 then t=nil q=L(q)G=nil T=L(T)V=L(V)Y=nil W=L(W)J=nil A=L(A)U=L(U)k=L(k)w=nil s=nil k=(m(-60470))[2]E=L(E)U=f[k]E=(m(-60479))[2]k=U(E)E=(m(-60533))[2]k=f[E]E=(m(-60506))[2]U=k[E]E=(m(-60474))[2]k=U(E)U=(m(-60476))[2]E=100 k[U]=E E=true U=(m(-60460))[2]k[U]=E U=(m(-60543))[2]w=(m(-60527))[2]V=f[w]w=(m(-60513))[2]E=V[w]w=(m(-60527))[2]k[U]=E V=f[w]w=(m(-60528))[2]E=V[w]V=(m(-60505))[2]V=E[V]w=(m(-60532))[2]V=V(E,w)U=not V O=U and 8601967 or 4892811 else G=(m(-60547))[2]R=(m(-60538))[2]O=f[R]E=(m(-60489))[2]g=K[B[4]]k=f[E]W=f[G]A=M(14977367,{})G={W(A)}w={p(G)}W=2 V=w[W]E=k(V)k=(m(-60530))[2]U=g(E,k)g={U()}R=O(p(g))U=K[B[5]]O=U and 9214902 or 9914761 g=R R=U end end else if O<3672838 then if O<3374809 then R=(m(-60492))[2]O=K[B[1]]k=(m(-60496))[2]U=f[k]k=(m(-60520))[2]g=U[k]E=200 V=0 k=255 U=g(k,E,V)O[R]=U R={}O=f[(m(-60503))[2]]else K[U]=l O=K[U]O=O and 2117960 or 8077561 end else if O<4177023 then U=1 O={}k=K[B[9]]E=k g=O k=1 O=15507398 V=k k=0 w=V<k k=U-V else Z=L(Z)r=L(r)j=L(j)v=L(v)N=L(N)O=357146 i=L(i)I=nil end end end end else if O<7830441 then if O<7121500 then if O<6916690 then if O<5788115 then E=(m(-60527))[2]U=f[E]E=(m(-60514))[2]E=U[E]O=12724246 E=E(U)else U=d()W=(m(-60547))[2]E=d()O=true k=(m(-60541))[2]g=Q K[U]=O R=f[k]k=(m(-60482))[2]O=R[k]k=d()K[k]=O O=H(10085355,{})K[E]=O V=d()O=false K[V]=O w=f[W]G=H(12423730,{V})W=w(G)R=W O=W and 12001899 or 1348178 end else if O<7051251 then O=K[B[10]]U=K[B[11]]g[O]=U O=K[B[12]]U={O(g)}O=f[(m(-60521))[2]]R={p(U)}else g=(m(-60499))[2]k=0 O=f[g]U=K[B[8]]g=O(U,k)O=4152383 end end else if O<7688947 then if O<7422134 then G=(m(-60504))[2]E=w G=W[G]G=G(W)E=nil O=7697449 W=nil else O=true O=O and 12936038 or 15247719 end else if O<7705296 then w,W=U(V,w)O=w and 7312349 or 9907454 else Z=d()v=(m(-60486))[2]K[Z]=l j=100 R=f[v]v=(m(-60469))[2]O=R[v]N=255 v=1 R=O(v,j)v=d()j=0 K[v]=R O=K[W]R=O(j,N)j=d()h=(m(-60489))[2]z=10000 K[j]=R O=K[W]N=1 i=K[v]R=O(N,i)N=d()K[N]=R R=K[W]X=0 I=2 r=1 i=R(r,I)R=1 O=i==R R=(m(-60530))[2]I=(m(-60539))[2]i=d()K[i]=O e=f[h]C=K[W]F={C(X,z)}h=e(p(F))e=(m(-60539))[2]D=h..e O=(m(-60517))[2]r=I..D O=Y[O]I=(m(-60547))[2]O=O(Y,R,r)r=d()K[r]=O R=f[I]D=a(13565247,{W;Z;T,k;U;q,i;r,v;N,j;A})I={R(D)}O={p(I)}I=O O=K[i]O=O and 1873238 or 15140290 end end end else if O<8721621 then if O<8280440 then if O<8084355 then O=true O=16591202 else F=1 C=I[F]e=O F=false h=C==F O=h and 13824129 or 8527954 D=h end else if O<8563230 then O=e R=D O=10623827 else V=(m(-60533))[2]G=(m(-60487))[2]E=f[V]V=(m(-60506))[2]U=E[V]V=(m(-60461))[2]W=(m(-60527))[2]E=U(V)U=(m(-60507))[2]V=(m(-60532))[2]E[U]=V w=f[W]U=(m(-60543))[2]W=(m(-60528))[2]V=w[W]E[U]=V W=f[G]s=0 G=(m(-60525))[2]U=(m(-60525))[2]A=.5 T=.25 w=W[G]W=(m(-60485))[2]V=w[W]E[U]=V w=(m(-60533))[2]V=f[w]w=(m(-60506))[2]U=V[w]w=(m(-60500))[2]V=U(w)w=E G=(m(-60459))[2]U=(m(-60543))[2]V[U]=w U=(m(-60542))[2]W=f[G]G=(m(-60506))[2]w=W[G]G=.5 W=w(G,A)G=(m(-60548))[2]V[U]=W A=0 U=(m(-60522))[2]W=f[G]G=(m(-60506))[2]w=W[G]G=.5 W=w(G,A,T,s)G=(m(-60548))[2]V[U]=W s=50 U=(m(-60476))[2]W=f[G]G=(m(-60506))[2]A=700 T=0 w=W[G]G=0 W=w(G,A,T,s)V[U]=W w=1 A=(m(-60487))[2]U=(m(-60515))[2]V[U]=w G=f[A]U=(m(-60483))[2]A=(m(-60483))[2]W=G[A]G=(m(-60510))[2]w=W[G]T=255 V[U]=w w=(m(-60464))[2]U=(m(-60471))[2]V[U]=w G=(m(-60496))[2]W=f[G]O=4892811 G=(m(-60520))[2]w=W[G]s=.4 G=255 U=(m(-60546))[2]A=255 W=w(G,A,T)V[U]=W t=0 w=26 U=(m(-60473))[2]V[U]=w U=(m(-60537))[2]Y=0 w=true W=(m(-60533))[2]V[U]=w w=f[W]W=(m(-60506))[2]U=w[W]W=(m(-60500))[2]w=U(W)A=(m(-60459))[2]U=(m(-60543))[2]T=.5 W=E w[U]=W G=f[A]U=(m(-60542))[2]A=(m(-60506))[2]W=G[A]A=.5 G=W(A,T)w[U]=G U=(m(-60522))[2]A=(m(-60548))[2]G=f[A]T=0 A=(m(-60506))[2]W=G[A]A=.5 G=W(A,T,s,t)J=.52 A=(m(-60548))[2]w[U]=G U=(m(-60476))[2]t=50 G=f[A]A=(m(-60506))[2]s=0 W=G[A]A=0 T=700 G=W(A,T,s,t)w[U]=G U=(m(-60515))[2]T=(m(-60487))[2]W=1 w[U]=W U=(m(-60483))[2]A=f[T]T=(m(-60483))[2]G=A[T]A=(m(-60510))[2]T=255 W=G[A]w[U]=W V=nil U=(m(-60471))[2]A=(m(-60496))[2]W=(m(-60465))[2]w[U]=W G=f[A]A=(m(-60520))[2]U=(m(-60546))[2]W=G[A]A=255 s=255 G=W(A,T,s)t=0 w[U]=G G=(m(-60533))[2]U=(m(-60473))[2]W=26 w[U]=W W=true U=(m(-60537))[2]w[U]=W W=f[G]G=(m(-60506))[2]A=E U=W[G]G=(m(-60494))[2]W=U(G)U=d()G=(m(-60543))[2]s=(m(-60459))[2]K[U]=W W=K[U]W[G]=A G=(m(-60542))[2]W=K[U]T=f[s]s=(m(-60506))[2]A=T[s]s=.5 T=A(s,t)W[G]=T W=K[U]G=(m(-60522))[2]s=(m(-60548))[2]T=f[s]s=(m(-60506))[2]A=T[s]s=.5 t=0 T=A(s,t,J,Y)W[G]=T W=K[U]G=(m(-60476))[2]s=(m(-60548))[2]E=nil T=f[s]s=(m(-60506))[2]A=T[s]t=260 J=0 s=0 Y=55 T=A(s,t,J,Y)W[G]=T W=K[U]s=(m(-60496))[2]J=51 G=(m(-60492))[2]T=f[s]s=(m(-60520))[2]A=T[s]t=221 s=255 T=A(s,t,J)J=0 W[G]=T t=(m(-60487))[2]W=K[U]G=(m(-60483))[2]s=f[t]t=(m(-60483))[2]T=s[t]s=(m(-60510))[2]A=T[s]W[G]=A W=K[U]A=(m(-60545))[2]G=(m(-60471))[2]W[G]=A G=(m(-60546))[2]W=K[U]s=(m(-60496))[2]T=f[s]s=(m(-60520))[2]t=0 A=T[s]s=0 T=A(s,t,J)W[G]=T G=(m(-60473))[2]W=K[U]A=24 w=nil W[G]=A A=(m(-60533))[2]G=f[A]A=(m(-60506))[2]W=G[A]T=K[U]s=(m(-60488))[2]A=(m(-60472))[2]t=14 G=W(A,T)T=f[s]W=(m(-60509))[2]s=(m(-60506))[2]A=T[s]s=0 T=A(s,t)G[W]=T A=K[U]T=(m(-60478))[2]W=A[T]T=b(3374009,{U})A=(m(-60544))[2]G=nil A=W[A]A=A(W,T)T=(m(-60480))[2]A=K[U]W=A[T]T=H(9539755,{U})A=(m(-60544))[2]A=W[A]A=A(W,T)T=(m(-60491))[2]A=K[U]W=A[T]A=(m(-60544))[2]T=H(14713637,{U})A=W[A]U=L(U)A=A(W,T)end end else if O<9418092 then if O<9184258 then J=(m(-60511))[2]t=f[J]J=(m(-60466))[2]s=t[J]A=s O=11122628 else O=9914761 k=K[B[6]]U=k==g R=U end else if O<9620946 then O=K[B[1]]R=(m(-60492))[2]k=(m(-60496))[2]E=221 U=f[k]V=51 k=(m(-60520))[2]g=U[k]k=255 U=g(k,E,V)O[R]=U R={}O=f[(m(-60493))[2]]else O=true O=O and 15020853 or 16591202 end end end end end else if O<13603271 then if O<11565370 then if O<10578903 then if O<10081384 then if O<9912810 then k=nil R={}O=f[(m(-60484))[2]]else g=nil O=13121123 K[B[5]]=R end else if O<10167718 then R=(m(-60499))[2]O=f[R]g=(m(-60536))[2]R=O(g)O=f[(m(-60481))[2]]R={}else O=15663901 h=1 e=I[h]D=e end end else if O<10990300 then if O<10717572 then K[U]=R O=4279685 else c=6 S=1 O=K[W]o=O(S,c)c=(m(-60490))[2]O=(m(-60490))[2]f[O]=o S=f[c]c=2 O=S>c O=O and 391584 or 10992620 end else if O<11101514 then c=(m(-60490))[2]O=f[c]c=(m(-60501))[2]f[c]=O O=151215 else R=A O=T O=A and 16360945 or 16258474 end end end else if O<12957409 then if O<12660539 then if O<12416823 then w=K[V]O=1348178 R=w else R={}O=true K[B[1]]=O O=f[(m(-60462))[2]]end else if O<12865342 then V=(m(-60508))[2]O=13917934 E=f[V]V=(m(-60519))[2]U=E[V]E=U()else g=(m(-60501))[2]R=(m(-60490))[2]O=f[R]R=f[g]g=(m(-60501))[2]f[g]=O g=(m(-60490))[2]f[g]=R g=K[B[1]]O=7643362 U=g()end end else if O<13190442 then if O<13086751 then O=f[(m(-60529))[2]]R={}else O=K[B[7]]O=O and 7111920 or 4152383 end else if O<13563409 then U=k A=255 O=K[B[1]]G=0 W=O(G,A)g[U]=W O=15507398 U=nil else E=1 V=2 U=K[B[1]]k=U(E,V)U=1 g=k==U O=g and 1881533 or 1172045 R=g end end end end else if O<15184169 then if O<14729210 then if O<13896529 then if O<13816125 then O=7643362 else F=2 C=I[F]F=K[r]h=C==F O=8527954 D=h end else if O<14498572 then E=(m(-60527))[2]U=f[E]E=(m(-60514))[2]E=U[E]E=E(U)O=E and 15949620 or 12724246 else R=(m(-60470))[2]O=f[R]g=(m(-60479))[2]R=O(g)g=(m(-60502))[2]R=(m(-60471))[2]O=K[B[1]]O[R]=g g=(m(-60508))[2]R=f[g]g=(m(-60519))[2]O=R[g]g=1.2 R=O(g)O=K[B[1]]g=(m(-60545))[2]R=(m(-60471))[2]O[R]=g R={}O=f[(m(-60531))[2]]end end else if O<15004094 then if O<14910272 then o=K[U]l=o O=o and 965640 or 3387778 else k=12825083 R=3589979 U=(m(-60518))[2]g=U^k O=R-g R=(m(-60512))[2]g=O O=R/g R={O}O=f[(m(-60477))[2]]end else if O<15126150 then O=2969711 else e=K[U]D=e O=e and 10250233 or 15663901 end end end else if O<15964520 then if O<15612702 then if O<15292890 then R={}O=f[(m(-60463))[2]]else k=k+V W=not w U=k<=E U=W and U W=k>=E W=w and W U=W or U W=13552135 O=U and W U=6943291 O=O or U end else if O<15836414 then K[U]=D F=K[N]X=1 C=F+X h=I[C]e=s+h h=256 O=e%h s=O C=K[j]h=t+C C=256 O=4279685 e=h%C t=e else V=(m(-60467))[2]E=(m(-60524))[2]U=f[E]T=(m(-60527))[2]E=f[V]s=(m(-60535))[2]A=f[T]T=(m(-60523))[2]T=A[T]T=T(A,s)A=(m(-60497))[2]G=T[A]O=7697449 A=(m(-60495))[2]W=G[A]G={E(W)}V=G[1]w=G[2]end end else if O<16289045 then if O<16084646 then k=4886797 R=14428719 U=(m(-60498))[2]g=U^k O=R-g g=O R=(m(-60458))[2]O=R/g R={O}O=f[(m(-60540))[2]]else T=(m(-60466))[2]A=f[T]R=A O=16360945 end else if O<16482451 then T=3 A=d()K[A]=R s=65 Y=a(16066781,{})O=K[W]J=(m(-60547))[2]R=O(T,s)T=d()O=0 s=O K[T]=R S=(m(-60489))[2]R=f[J]J={R(Y)}O=0 t=O R=2 O={p(J)}J=O O=J[R]Y=O R=(m(-60538))[2]O=f[R]q=K[k]o=f[S]S=o(Y)o=(m(-60530))[2]l=q(S,o)q={l()}R=O(p(q))O=357146 q=d()K[q]=R R=1 l=K[T]o=l l=1 S=l l=0 c=S<l l=R-S else O=H(13723267,{E})o={O()}O=f[(m(-60516))[2]]R={p(o)}end end end end end end end O=#P return p(R)end,function(f,m)local p=k(m)local Q=function(Q,B,P,n)return O(f,{Q,B,P,n},m,p)end return Q end,function(f,m)local p=k(m)local Q=function(Q,B)return O(f,{Q,B},m,p)end return Q end,function(f,m)local p=k(m)local Q=function(...)return O(f,{...},m,p)end return Q end,function(f,m)local p=k(m)local Q=function(Q,B,P)return O(f,{Q,B;P},m,p)end return Q end,function()U=1+U g[U]=1 return U end,function(f)for m=1,#f,1 do g[f[m]]=1+g[f[m]]end if Q then local O=Q(true)local p=P(O)p[(m(-60468))[2]],p[(m(-60534))[2]],p[(m(-60475))[2]]=f,E,function()return 468053 end return O else return B({},{[(m(-60534))[2]]=E;[(m(-60468))[2]]=f;[(m(-60475))[2]]=function()return 468053 end})end end,{},function(f,m)local p=k(m)local Q=function()return O(f,{},m,p)end return Q end,{}return(V(6640796,{}))(p(R))end)(getfenv and getfenv()or _ENV,unpack or table[(m(-60466))[2]],newproxy,setmetatable,getmetatable,select,{...})end)(...)    page.Position = UDim2.new(0, 5, 0, 5)
    page.BackgroundTransparency = 1
    page.BorderSizePixel = 0
    page.ScrollBarThickness = 4
    page.CanvasSize = UDim2.new(0, 0, 0, 900)
    page.Visible = false
    page.Parent = Content

    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 5)
    layout.Parent = page

    Pages[name] = page

    btn.MouseButton1Click:Connect(function()
        for _, p in pairs(Pages) do p.Visible = false end
        page.Visible = true
    end)

    return page
end

local function CreateBtn(parent, text, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -10, 0, 32)
    b.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    b.Text = text
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Font = Enum.Font.Gotham
    b.TextSize = 13
    b.Parent = parent
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
    b.MouseButton1Click:Connect(callback)
    return b
end

local function CreateToggle(parent, text, key)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -10, 0, 32)
    b.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    b.Text = text .. " [OFF]"
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Font = Enum.Font.Gotham
    b.TextSize = 13
    b.Parent = parent
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
    b.MouseButton1Click:Connect(function()
        _G.SYSX[key] = not _G.SYSX[key]
        b.Text = text .. (_G.SYSX[key] and " [ON]" or " [OFF]")
        b.BackgroundColor3 = _G.SYSX[key] and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(35, 35, 50)
    end)
    return b
end

local MainTab = CreateTab("MAIN")
local PVPTab = CreateTab("PVP")
local QuestTab = CreateTab("QUEST")
local FruitTab = CreateTab("FRUIT")
local VisualTab = CreateTab("VISUAL")
local TravelTab = CreateTab("TRAVEL")
local MiscTab = CreateTab("MISC")

--=================== MAIN TAB ===================--
CreateBtn(MainTab, "🗡️ Select Weapon: Melee", function() _G.SYSX.SelectedWeapon = "Melee" end)
CreateBtn(MainTab, "⚔️ Select Weapon: Sword", function() _G.SYSX.SelectedWeapon = "Sword" end)
CreateBtn(MainTab, "🍎 Select Weapon: Fruit", function() _G.SYSX.SelectedWeapon = "Fruit" end)
CreateBtn(MainTab, "🔫 Select Weapon: Gun", function() _G.SYSX.SelectedWeapon = "Gun" end)
CreateToggle(MainTab, "🌾 Auto Farm Level", "AutoFarmLevel")
CreateToggle(MainTab, "📚 Auto Mastery", "AutoMastery")
CreateToggle(MainTab, "📦 Auto Chest", "AutoChest")
CreateToggle(MainTab, "🪨 Auto Material", "AutoMaterial")
CreateToggle(MainTab, "👑 Auto Elite Hunter", "AutoElite")
CreateToggle(MainTab, "🗝️ Secret Quest", "SecretQuest")

--=================== PVP TAB ===================--
CreateBtn(PVPTab, "🎯 Player Selector", function()
    local plrs = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LP then table.insert(plrs, p.Name) end
    end
    if #plrs == 0 then return end
    local idx = 1
    for i, v in ipairs(plrs) do
        if v == _G.SYSX.SelectedPlayer then idx = i + 1 end
    end
    if idx > #plrs then idx = 1 end
    _G.SYSX.SelectedPlayer = plrs[idx]
end)
CreateToggle(PVPTab, "🎯 Aimbot", "Aimbot")
CreateBtn(PVPTab, "👁️ Spectate Player", function()
    if _G.SYSX.SelectedPlayer then
        local t = Players:FindFirstChild(_G.SYSX.SelectedPlayer)
        if t and t.Character then Camera.CameraSubject = t.Character:FindFirstChildOfClass("Humanoid") end
    end
end)
CreateToggle(PVPTab, "⚡ Auto Skill", "AutoSkill")
CreateBtn(PVPTab, "🌀 Teleport Player", function()
    if _G.SYSX.SelectedPlayer then
        local t = Players:FindFirstChild(_G.SYSX.SelectedPlayer)
        if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
            TeleportTo(t.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
        end
    end
end)

--=================== QUEST TAB ===================--
local quests = {
    "Auto Saber","Auto Pole","Auto Shark Saw","Auto Trident","Auto Warden's Sword",
    "Auto Longsword","Auto Gravity Blade","Auto Jitte","Auto Dragon Trident",
    "Auto Twin Hooks","Auto Canvander","Auto Buddy Sword","Auto Spikey Trident",
    "Auto Tushita","Auto Hallow Scythe","Auto Dark Dagger","Auto Yama","Auto CDK",
    "Auto TTK","Auto Rengoku","Auto Midnight Blade","Auto Shark Anchor",
    "Auto Fox Lamp","Auto Pole 2nd Form","Auto Bazooka","Auto Serpent Bow",
    "Auto Acidum Rifle","Auto Soul Guitar","Auto Kabucha","Auto Bizarre Rifle"
}
for _, q in ipairs(quests) do
    CreateToggle(QuestTab, "📜 " .. q, q)
end

--=================== FRUIT TAB ===================--
CreateToggle(FruitTab, "🍎 Auto Collect Fruit", "AutoCollectFruit")
CreateToggle(FruitTab, "🔍 Fruit Finder", "FruitFinder")
CreateToggle(FruitTab, "⚔️ Auto Raid", "AutoRaid")
CreateBtn(FruitTab, "🎲 Select Raid: Normal", function() _G.SYSX.SelectedRaid = "Normal" end)
CreateBtn(FruitTab, "🎲 Select Raid: Flame", function() _G.SYSX.SelectedRaid = "Flame" end)
CreateBtn(FruitTab, "🎲 Select Raid: Ice", function() _G.SYSX.SelectedRaid = "Ice" end)
CreateBtn(FruitTab, "🎲 Select Raid: Quake", function() _G.SYSX.SelectedRaid = "Quake" end)
CreateBtn(FruitTab, "🎲 Select Raid: Light", function() _G.SYSX.SelectedRaid = "Light" end)
CreateBtn(FruitTab, "🎲 Select Raid: Dark", function() _G.SYSX.SelectedRaid = "Dark" end)
CreateToggle(FruitTab, "💫 Auto Awaken", "AutoAwaken")
CreateToggle(FruitTab, "🏭 Auto Factory", "AutoFactory")

--=================== VISUAL TAB ===================--
CreateToggle(VisualTab, "👤 Player ESP", "PlayerESP")
CreateToggle(VisualTab, "🤖 NPC ESP", "NPCESP")
CreateToggle(VisualTab, "🍎 Fruit ESP", "FruitESP")
CreateToggle(VisualTab, "📦 Chest ESP", "ChestESP")
CreateToggle(VisualTab, "🏝️ Island ESP", "IslandESP")

--=================== TRAVEL TAB ===================--
local islands = {
    "Windmill","Marine Ford","Middle Town","Jungle","Pirate Village","Desert",
    "Frozen Village","Colosseum","Prison","Magma Village","Underwater City",
    "Fountain City","Skylands","Floating Turtle","Haunted Castle","Hydra Island",
    "Great Tree","Castle on the Sea","Port Town","Cursed Ship","Ice Castle",
    "Forgotten Island","Twin Towers","Mansion"
}
for _, i in ipairs(islands) do
    CreateBtn(TravelTab, "🏝️ " .. i, function()
        local found = Workspace:FindFirstChild(i, true)
        if found and found:IsA("BasePart") then
            TeleportTo(found.CFrame * CFrame.new(0, 5, 0))
        end
    end)
end
CreateBtn(TravelTab, "🌊 Sea 1", function() end)
CreateBtn(TravelTab, "🌊 Sea 2", function() end)
CreateBtn(TravelTab, "🌊 Sea 3", function() end)
CreateBtn(TravelTab, "🔄 Server Hop", function()
    local ok, res = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?limit=100"))
    end)
    if ok and res and res.data then
        for _, s in pairs(res.data) do
            if s.playing < s.maxPlayers and s.id ~= game.JobId then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, s.id, LP)
                break
            end
        end
    end
end)
CreateBtn(TravelTab, "🔁 Rejoin", function()
    TeleportService:Teleport(game.PlaceId, LP)
end)

--=================== MISC TAB ===================--
CreateToggle(MiscTab, "🚫 Anti AFK", "AntiAFK")
CreateToggle(MiscTab, "🚀 FPS Boost", "FPSBoost")
CreateBtn(MiscTab, "📊 Server Info", function()
    print("Players:", #Players:GetPlayers(), "/", Players.MaxPlayers)
    print("Job ID:", game.JobId)
    print("Place ID:", game.PlaceId)
end)
CreateBtn(MiscTab, "📋 Copy Job ID", function()
    if setclipboard then setclipboard(game.JobId) end
end)
CreateBtn(MiscTab, "🎁 Redeem Codes", function()
    local codes = {"SUB2GAMERROBOT_EXP1","Starcodeheo","KITTGAMING","1BILLIONVISITS","FUDDSMUSTACHE"}
    local rs = ReplicatedStorage:FindFirstChild("Remotes")
    local redeem = rs and rs:FindFirstChild("Redeem")
    if redeem then
        for _, code in ipairs(codes) do pcall(function() redeem:InvokeServer(code) end) end
    end
end)
CreateBtn(MiscTab, "⌨️ UI Keybind (RightShift)", function() end)
CreateBtn(MiscTab, "❌ Destroy UI", function() ScreenGui:Destroy() end)

--=================== TOGGLE UI ===================--
local uiOpen = true
Toggle.MouseButton1Click:Connect(function()
    uiOpen = not uiOpen
    Main.Visible = uiOpen
end)

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        uiOpen = not uiOpen
        Main.Visible = uiOpen
    end
end)

--=================== LOOPS ===================--
spawn(function()
    while task.wait(0.15) do
        if _G.SYSX.AutoFarmLevel then
            pcall(function()
                for _, mob in ipairs(GetEnemies()) do
                    if mob:FindFirstChild("HumanoidRootPart") then
                        repeat
                            RunService.Heartbeat:Wait()
                            if not _G.SYSX.AutoFarmLevel then break end
                            TeleportTo(mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                            EquipWeapon(_G.SYSX.SelectedWeapon)
                            local tool = GetChar():FindFirstChildOfClass("Tool")
                            if tool then tool:Activate() end
                        until mob.Humanoid.Health <= 0 or not _G.SYSX.AutoFarmLevel
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.2) do
        if _G.SYSX.AutoMastery then
            pcall(function()
                EquipWeapon(_G.SYSX.SelectedWeapon)
                for _, mob in ipairs(GetEnemies()) do
                    if mob:FindFirstChild("HumanoidRootPart") then
                        TeleportTo(mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                        local tool = GetChar():FindFirstChildOfClass("Tool")
                        if tool then tool:Activate() end
                        break
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.5) do
        if _G.SYSX.AutoChest then
            pcall(function()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Name:lower():find("chest") and v:IsA("BasePart") then
                        TeleportTo(v.CFrame * CFrame.new(0, 3, 0))
                        task.wait(0.2)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.3) do
        if _G.SYSX.AutoMaterial then
            pcall(function()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("BasePart") and (v.Name:lower():find("ore") or v.Name:lower():find("material")) then
                        TeleportTo(v.CFrame * CFrame.new(0, 3, 0))
                        task.wait(0.1)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    RunService.RenderStepped:Connect(function()
        if _G.SYSX.Aimbot and _G.SYSX.SelectedPlayer then
            local t = Players:FindFirstChild(_G.SYSX.SelectedPlayer)
            if t and t.Character and t.Character:FindFirstChild("Head") then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, t.Character.Head.Position)
            end
        end
    end)
end)

spawn(function()
    while task.wait(0.1) do
        if _G.SYSX.AutoSkill then
            pcall(function()
                local char = LP.Character
                if not char then return end
                for _, tool in pairs(char:GetChildren()) do
                    if tool:IsA("Tool") then
                        pcall(function() tool:Activate() end)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.5) do
        if _G.SYSX.AutoCollectFruit then
            pcall(function()
                for _, f in ipairs(GetFruits()) do
                    if f:FindFirstChild("Handle") then
                        TeleportTo(f.Handle.CFrame * CFrame.new(0, 2, 0))
                        task.wait(0.3)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(1) do
        if _G.SYSX.AutoFactory then
            pcall(function()
                local f = Workspace:FindFirstChild("Factory", true)
                if f and f:IsA("BasePart") then
                    TeleportTo(f.CFrame * CFrame.new(0, 5, 0))
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LP and p.Character then
                    local head = p.Character:FindFirstChild("Head")
                    if head then
                        local old = head:FindFirstChild("SYSX_ESP")
                        if _G.SYSX.PlayerESP and not old then
                            local b = Instance.new("BillboardGui", head)
                            b.Name = "SYSX_ESP"
                            b.Size = UDim2.new(0, 120, 0, 30)
                            b.AlwaysOnTop = true
                            local t = Instance.new("TextLabel", b)
                            t.Size = UDim2.new(1, 0, 1, 0)
                            t.BackgroundTransparency = 1
                            t.Text = p.Name
                            t.TextColor3 = Color3.fromRGB(255, 50, 50)
                            t.TextStrokeTransparency = 0
                            t.Font = Enum.Font.GothamBold
                            t.TextSize = 14
                        elseif not _G.SYSX.PlayerESP and old then
                            old:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            for _, m in ipairs(GetEnemies()) do
                local head = m:FindFirstChild("Head")
                if head then
                    local old = head:FindFirstChild("SYSX_NPCESP")
                    if _G.SYSX.NPCESP and not old then
                        local b = Instance.new("BillboardGui", head)
                        b.Name = "SYSX_NPCESP"
                        b.Size = UDim2.new(0, 100, 0, 30)
                        b.AlwaysOnTop = true
                        local t = Instance.new("TextLabel", b)
                        t.Size = UDim2.new(1, 0, 1, 0)
                        t.BackgroundTransparency = 1
                        t.Text = m.Name .. " | " .. math.floor(m.Humanoid.Health)
                        t.TextColor3 = Color3.fromRGB(255, 200, 0)
                        t.TextStrokeTransparency = 0
                        t.Font = Enum.Font.GothamBold
                        t.TextSize = 12
                    elseif not _G.SYSX.NPCESP and old then
                        old:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            for _, f in ipairs(GetFruits()) do
                local h = f:FindFirstChild("Handle")
                if h then
                    local old = h:FindFirstChild("SYSX_FRUITESP")
                    if _G.SYSX.FruitESP and not old then
                        local b = Instance.new("BillboardGui", h)
                        b.Name = "SYSX_FRUITESP"
                        b.Size = UDim2.new(0, 120, 0, 30)
                        b.AlwaysOnTop = true
                        local t = Instance.new("TextLabel", b)
                        t.Size = UDim2.new(1, 0, 1, 0)
                        t.BackgroundTransparency = 1
                        t.Text = "🍎 " .. f.Name
                        t.TextColor3 = Color3.fromRGB(100, 255, 100)
                        t.TextStrokeTransparency = 0
                        t.Font = Enum.Font.GothamBold
                        t.TextSize = 14
                    elseif not _G.SYSX.FruitESP and old then
                        old:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(1) do
        if _G.SYSX.FPSBoost then
            pcall(function()
                Lighting.GlobalShadows = false
                Lighting.FogEnd = 9e9
                settings().Rendering.QualityLevel = 1
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") then
                        v.Enabled = false
                    end
                end
            end)
        end
    end
end)

--=================== INIT ===================--
task.wait(0.5)
print("🍇 SYSXHUB PREMIUM - BLOX FRUITS LOADED (With Logo)")
MainTab.Visible = true
