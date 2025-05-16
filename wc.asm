
_wc:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

int
main(int argc, char *argv[])
{
    3000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    3004:	83 e4 f0             	and    $0xfffffff0,%esp
    3007:	ff 71 fc             	push   -0x4(%ecx)
    300a:	55                   	push   %ebp
    300b:	89 e5                	mov    %esp,%ebp
    300d:	57                   	push   %edi
    300e:	56                   	push   %esi
    300f:	be 01 00 00 00       	mov    $0x1,%esi
    3014:	53                   	push   %ebx
    3015:	51                   	push   %ecx
    3016:	83 ec 18             	sub    $0x18,%esp
    3019:	8b 01                	mov    (%ecx),%eax
    301b:	8b 59 04             	mov    0x4(%ecx),%ebx
    301e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3021:	83 c3 04             	add    $0x4,%ebx
  int fd, i;

  if(argc <= 1){
    3024:	83 f8 01             	cmp    $0x1,%eax
    3027:	7e 56                	jle    307f <main+0x7f>
    3029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wc(0, "");
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
    3030:	83 ec 08             	sub    $0x8,%esp
    3033:	6a 00                	push   $0x0
    3035:	ff 33                	push   (%ebx)
    3037:	e8 d7 03 00 00       	call   3413 <open>
    303c:	83 c4 10             	add    $0x10,%esp
    303f:	89 c7                	mov    %eax,%edi
    3041:	85 c0                	test   %eax,%eax
    3043:	78 26                	js     306b <main+0x6b>
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit();
    }
    wc(fd, argv[i]);
    3045:	83 ec 08             	sub    $0x8,%esp
    3048:	ff 33                	push   (%ebx)
  for(i = 1; i < argc; i++){
    304a:	83 c6 01             	add    $0x1,%esi
    304d:	83 c3 04             	add    $0x4,%ebx
    wc(fd, argv[i]);
    3050:	50                   	push   %eax
    3051:	e8 4a 00 00 00       	call   30a0 <wc>
    close(fd);
    3056:	89 3c 24             	mov    %edi,(%esp)
    3059:	e8 9d 03 00 00       	call   33fb <close>
  for(i = 1; i < argc; i++){
    305e:	83 c4 10             	add    $0x10,%esp
    3061:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
    3064:	75 ca                	jne    3030 <main+0x30>
  }
  exit();
    3066:	e8 68 03 00 00       	call   33d3 <exit>
      printf(1, "wc: cannot open %s\n", argv[i]);
    306b:	50                   	push   %eax
    306c:	ff 33                	push   (%ebx)
    306e:	68 7b 38 00 00       	push   $0x387b
    3073:	6a 01                	push   $0x1
    3075:	e8 b6 04 00 00       	call   3530 <printf>
      exit();
    307a:	e8 54 03 00 00       	call   33d3 <exit>
    wc(0, "");
    307f:	52                   	push   %edx
    3080:	52                   	push   %edx
    3081:	68 6d 38 00 00       	push   $0x386d
    3086:	6a 00                	push   $0x0
    3088:	e8 13 00 00 00       	call   30a0 <wc>
    exit();
    308d:	e8 41 03 00 00       	call   33d3 <exit>
    3092:	66 90                	xchg   %ax,%ax
    3094:	66 90                	xchg   %ax,%ax
    3096:	66 90                	xchg   %ax,%ax
    3098:	66 90                	xchg   %ax,%ax
    309a:	66 90                	xchg   %ax,%ax
    309c:	66 90                	xchg   %ax,%ax
    309e:	66 90                	xchg   %ax,%ax

000030a0 <wc>:
{
    30a0:	55                   	push   %ebp
    30a1:	89 e5                	mov    %esp,%ebp
    30a3:	57                   	push   %edi
    30a4:	56                   	push   %esi
    30a5:	53                   	push   %ebx
  l = w = c = 0;
    30a6:	31 db                	xor    %ebx,%ebx
{
    30a8:	83 ec 1c             	sub    $0x1c,%esp
  inword = 0;
    30ab:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  l = w = c = 0;
    30b2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    30b9:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  while((n = read(fd, buf, sizeof(buf))) > 0){
    30c0:	83 ec 04             	sub    $0x4,%esp
    30c3:	68 00 02 00 00       	push   $0x200
    30c8:	68 e0 3b 00 00       	push   $0x3be0
    30cd:	ff 75 08             	push   0x8(%ebp)
    30d0:	e8 16 03 00 00       	call   33eb <read>
    30d5:	83 c4 10             	add    $0x10,%esp
    30d8:	89 c6                	mov    %eax,%esi
    30da:	85 c0                	test   %eax,%eax
    30dc:	7e 62                	jle    3140 <wc+0xa0>
    for(i=0; i<n; i++){
    30de:	31 ff                	xor    %edi,%edi
    30e0:	eb 14                	jmp    30f6 <wc+0x56>
    30e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        inword = 0;
    30e8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    for(i=0; i<n; i++){
    30ef:	83 c7 01             	add    $0x1,%edi
    30f2:	39 fe                	cmp    %edi,%esi
    30f4:	74 42                	je     3138 <wc+0x98>
      if(buf[i] == '\n')
    30f6:	0f be 87 e0 3b 00 00 	movsbl 0x3be0(%edi),%eax
        l++;
    30fd:	31 c9                	xor    %ecx,%ecx
    30ff:	3c 0a                	cmp    $0xa,%al
    3101:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
    3104:	83 ec 08             	sub    $0x8,%esp
    3107:	50                   	push   %eax
        l++;
    3108:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
    310a:	68 58 38 00 00       	push   $0x3858
    310f:	e8 4c 01 00 00       	call   3260 <strchr>
    3114:	83 c4 10             	add    $0x10,%esp
    3117:	85 c0                	test   %eax,%eax
    3119:	75 cd                	jne    30e8 <wc+0x48>
      else if(!inword){
    311b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    311e:	85 d2                	test   %edx,%edx
    3120:	75 cd                	jne    30ef <wc+0x4f>
    for(i=0; i<n; i++){
    3122:	83 c7 01             	add    $0x1,%edi
        w++;
    3125:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
        inword = 1;
    3129:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    for(i=0; i<n; i++){
    3130:	39 fe                	cmp    %edi,%esi
    3132:	75 c2                	jne    30f6 <wc+0x56>
    3134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      c++;
    3138:	01 75 dc             	add    %esi,-0x24(%ebp)
    313b:	eb 83                	jmp    30c0 <wc+0x20>
    313d:	8d 76 00             	lea    0x0(%esi),%esi
  if(n < 0){
    3140:	75 24                	jne    3166 <wc+0xc6>
  printf(1, "%d %d %d %s\n", l, w, c, name);
    3142:	83 ec 08             	sub    $0x8,%esp
    3145:	ff 75 0c             	push   0xc(%ebp)
    3148:	ff 75 dc             	push   -0x24(%ebp)
    314b:	ff 75 e0             	push   -0x20(%ebp)
    314e:	53                   	push   %ebx
    314f:	68 6e 38 00 00       	push   $0x386e
    3154:	6a 01                	push   $0x1
    3156:	e8 d5 03 00 00       	call   3530 <printf>
}
    315b:	83 c4 20             	add    $0x20,%esp
    315e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3161:	5b                   	pop    %ebx
    3162:	5e                   	pop    %esi
    3163:	5f                   	pop    %edi
    3164:	5d                   	pop    %ebp
    3165:	c3                   	ret    
    printf(1, "wc: read error\n");
    3166:	50                   	push   %eax
    3167:	50                   	push   %eax
    3168:	68 5e 38 00 00       	push   $0x385e
    316d:	6a 01                	push   $0x1
    316f:	e8 bc 03 00 00       	call   3530 <printf>
    exit();
    3174:	e8 5a 02 00 00       	call   33d3 <exit>
    3179:	66 90                	xchg   %ax,%ax
    317b:	66 90                	xchg   %ax,%ax
    317d:	66 90                	xchg   %ax,%ax
    317f:	90                   	nop

00003180 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3180:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3181:	31 c0                	xor    %eax,%eax
{
    3183:	89 e5                	mov    %esp,%ebp
    3185:	53                   	push   %ebx
    3186:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3189:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    318c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3190:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3194:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3197:	83 c0 01             	add    $0x1,%eax
    319a:	84 d2                	test   %dl,%dl
    319c:	75 f2                	jne    3190 <strcpy+0x10>
    ;
  return os;
}
    319e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31a1:	89 c8                	mov    %ecx,%eax
    31a3:	c9                   	leave  
    31a4:	c3                   	ret    
    31a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000031b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    31b0:	55                   	push   %ebp
    31b1:	89 e5                	mov    %esp,%ebp
    31b3:	53                   	push   %ebx
    31b4:	8b 55 08             	mov    0x8(%ebp),%edx
    31b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    31ba:	0f b6 02             	movzbl (%edx),%eax
    31bd:	84 c0                	test   %al,%al
    31bf:	75 17                	jne    31d8 <strcmp+0x28>
    31c1:	eb 3a                	jmp    31fd <strcmp+0x4d>
    31c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    31c7:	90                   	nop
    31c8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    31cc:	83 c2 01             	add    $0x1,%edx
    31cf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    31d2:	84 c0                	test   %al,%al
    31d4:	74 1a                	je     31f0 <strcmp+0x40>
    p++, q++;
    31d6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    31d8:	0f b6 19             	movzbl (%ecx),%ebx
    31db:	38 c3                	cmp    %al,%bl
    31dd:	74 e9                	je     31c8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    31df:	29 d8                	sub    %ebx,%eax
}
    31e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31e4:	c9                   	leave  
    31e5:	c3                   	ret    
    31e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31ed:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    31f0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    31f4:	31 c0                	xor    %eax,%eax
    31f6:	29 d8                	sub    %ebx,%eax
}
    31f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31fb:	c9                   	leave  
    31fc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    31fd:	0f b6 19             	movzbl (%ecx),%ebx
    3200:	31 c0                	xor    %eax,%eax
    3202:	eb db                	jmp    31df <strcmp+0x2f>
    3204:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    320b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    320f:	90                   	nop

00003210 <strlen>:

uint
strlen(const char *s)
{
    3210:	55                   	push   %ebp
    3211:	89 e5                	mov    %esp,%ebp
    3213:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3216:	80 3a 00             	cmpb   $0x0,(%edx)
    3219:	74 15                	je     3230 <strlen+0x20>
    321b:	31 c0                	xor    %eax,%eax
    321d:	8d 76 00             	lea    0x0(%esi),%esi
    3220:	83 c0 01             	add    $0x1,%eax
    3223:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3227:	89 c1                	mov    %eax,%ecx
    3229:	75 f5                	jne    3220 <strlen+0x10>
    ;
  return n;
}
    322b:	89 c8                	mov    %ecx,%eax
    322d:	5d                   	pop    %ebp
    322e:	c3                   	ret    
    322f:	90                   	nop
  for(n = 0; s[n]; n++)
    3230:	31 c9                	xor    %ecx,%ecx
}
    3232:	5d                   	pop    %ebp
    3233:	89 c8                	mov    %ecx,%eax
    3235:	c3                   	ret    
    3236:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    323d:	8d 76 00             	lea    0x0(%esi),%esi

00003240 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3240:	55                   	push   %ebp
    3241:	89 e5                	mov    %esp,%ebp
    3243:	57                   	push   %edi
    3244:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3247:	8b 4d 10             	mov    0x10(%ebp),%ecx
    324a:	8b 45 0c             	mov    0xc(%ebp),%eax
    324d:	89 d7                	mov    %edx,%edi
    324f:	fc                   	cld    
    3250:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3252:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3255:	89 d0                	mov    %edx,%eax
    3257:	c9                   	leave  
    3258:	c3                   	ret    
    3259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003260 <strchr>:

char*
strchr(const char *s, char c)
{
    3260:	55                   	push   %ebp
    3261:	89 e5                	mov    %esp,%ebp
    3263:	8b 45 08             	mov    0x8(%ebp),%eax
    3266:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    326a:	0f b6 10             	movzbl (%eax),%edx
    326d:	84 d2                	test   %dl,%dl
    326f:	75 12                	jne    3283 <strchr+0x23>
    3271:	eb 1d                	jmp    3290 <strchr+0x30>
    3273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3277:	90                   	nop
    3278:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    327c:	83 c0 01             	add    $0x1,%eax
    327f:	84 d2                	test   %dl,%dl
    3281:	74 0d                	je     3290 <strchr+0x30>
    if(*s == c)
    3283:	38 d1                	cmp    %dl,%cl
    3285:	75 f1                	jne    3278 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3287:	5d                   	pop    %ebp
    3288:	c3                   	ret    
    3289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3290:	31 c0                	xor    %eax,%eax
}
    3292:	5d                   	pop    %ebp
    3293:	c3                   	ret    
    3294:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    329b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    329f:	90                   	nop

000032a0 <gets>:

char*
gets(char *buf, int max)
{
    32a0:	55                   	push   %ebp
    32a1:	89 e5                	mov    %esp,%ebp
    32a3:	57                   	push   %edi
    32a4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    32a5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    32a8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    32a9:	31 db                	xor    %ebx,%ebx
{
    32ab:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    32ae:	eb 27                	jmp    32d7 <gets+0x37>
    cc = read(0, &c, 1);
    32b0:	83 ec 04             	sub    $0x4,%esp
    32b3:	6a 01                	push   $0x1
    32b5:	57                   	push   %edi
    32b6:	6a 00                	push   $0x0
    32b8:	e8 2e 01 00 00       	call   33eb <read>
    if(cc < 1)
    32bd:	83 c4 10             	add    $0x10,%esp
    32c0:	85 c0                	test   %eax,%eax
    32c2:	7e 1d                	jle    32e1 <gets+0x41>
      break;
    buf[i++] = c;
    32c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    32c8:	8b 55 08             	mov    0x8(%ebp),%edx
    32cb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    32cf:	3c 0a                	cmp    $0xa,%al
    32d1:	74 1d                	je     32f0 <gets+0x50>
    32d3:	3c 0d                	cmp    $0xd,%al
    32d5:	74 19                	je     32f0 <gets+0x50>
  for(i=0; i+1 < max; ){
    32d7:	89 de                	mov    %ebx,%esi
    32d9:	83 c3 01             	add    $0x1,%ebx
    32dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    32df:	7c cf                	jl     32b0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    32e1:	8b 45 08             	mov    0x8(%ebp),%eax
    32e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    32e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    32eb:	5b                   	pop    %ebx
    32ec:	5e                   	pop    %esi
    32ed:	5f                   	pop    %edi
    32ee:	5d                   	pop    %ebp
    32ef:	c3                   	ret    
  buf[i] = '\0';
    32f0:	8b 45 08             	mov    0x8(%ebp),%eax
    32f3:	89 de                	mov    %ebx,%esi
    32f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    32f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    32fc:	5b                   	pop    %ebx
    32fd:	5e                   	pop    %esi
    32fe:	5f                   	pop    %edi
    32ff:	5d                   	pop    %ebp
    3300:	c3                   	ret    
    3301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    330f:	90                   	nop

00003310 <stat>:

int
stat(const char *n, struct stat *st)
{
    3310:	55                   	push   %ebp
    3311:	89 e5                	mov    %esp,%ebp
    3313:	56                   	push   %esi
    3314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3315:	83 ec 08             	sub    $0x8,%esp
    3318:	6a 00                	push   $0x0
    331a:	ff 75 08             	push   0x8(%ebp)
    331d:	e8 f1 00 00 00       	call   3413 <open>
  if(fd < 0)
    3322:	83 c4 10             	add    $0x10,%esp
    3325:	85 c0                	test   %eax,%eax
    3327:	78 27                	js     3350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3329:	83 ec 08             	sub    $0x8,%esp
    332c:	ff 75 0c             	push   0xc(%ebp)
    332f:	89 c3                	mov    %eax,%ebx
    3331:	50                   	push   %eax
    3332:	e8 f4 00 00 00       	call   342b <fstat>
  close(fd);
    3337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    333a:	89 c6                	mov    %eax,%esi
  close(fd);
    333c:	e8 ba 00 00 00       	call   33fb <close>
  return r;
    3341:	83 c4 10             	add    $0x10,%esp
}
    3344:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3347:	89 f0                	mov    %esi,%eax
    3349:	5b                   	pop    %ebx
    334a:	5e                   	pop    %esi
    334b:	5d                   	pop    %ebp
    334c:	c3                   	ret    
    334d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3350:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3355:	eb ed                	jmp    3344 <stat+0x34>
    3357:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    335e:	66 90                	xchg   %ax,%ax

00003360 <atoi>:

int
atoi(const char *s)
{
    3360:	55                   	push   %ebp
    3361:	89 e5                	mov    %esp,%ebp
    3363:	53                   	push   %ebx
    3364:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3367:	0f be 02             	movsbl (%edx),%eax
    336a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    336d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3370:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3375:	77 1e                	ja     3395 <atoi+0x35>
    3377:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    337e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3380:	83 c2 01             	add    $0x1,%edx
    3383:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3386:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    338a:	0f be 02             	movsbl (%edx),%eax
    338d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3390:	80 fb 09             	cmp    $0x9,%bl
    3393:	76 eb                	jbe    3380 <atoi+0x20>
  return n;
}
    3395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3398:	89 c8                	mov    %ecx,%eax
    339a:	c9                   	leave  
    339b:	c3                   	ret    
    339c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000033a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    33a0:	55                   	push   %ebp
    33a1:	89 e5                	mov    %esp,%ebp
    33a3:	57                   	push   %edi
    33a4:	8b 45 10             	mov    0x10(%ebp),%eax
    33a7:	8b 55 08             	mov    0x8(%ebp),%edx
    33aa:	56                   	push   %esi
    33ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    33ae:	85 c0                	test   %eax,%eax
    33b0:	7e 13                	jle    33c5 <memmove+0x25>
    33b2:	01 d0                	add    %edx,%eax
  dst = vdst;
    33b4:	89 d7                	mov    %edx,%edi
    33b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33bd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    33c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    33c1:	39 f8                	cmp    %edi,%eax
    33c3:	75 fb                	jne    33c0 <memmove+0x20>
  return vdst;
}
    33c5:	5e                   	pop    %esi
    33c6:	89 d0                	mov    %edx,%eax
    33c8:	5f                   	pop    %edi
    33c9:	5d                   	pop    %ebp
    33ca:	c3                   	ret    

000033cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    33cb:	b8 01 00 00 00       	mov    $0x1,%eax
    33d0:	cd 40                	int    $0x40
    33d2:	c3                   	ret    

000033d3 <exit>:
SYSCALL(exit)
    33d3:	b8 02 00 00 00       	mov    $0x2,%eax
    33d8:	cd 40                	int    $0x40
    33da:	c3                   	ret    

000033db <wait>:
SYSCALL(wait)
    33db:	b8 03 00 00 00       	mov    $0x3,%eax
    33e0:	cd 40                	int    $0x40
    33e2:	c3                   	ret    

000033e3 <pipe>:
SYSCALL(pipe)
    33e3:	b8 04 00 00 00       	mov    $0x4,%eax
    33e8:	cd 40                	int    $0x40
    33ea:	c3                   	ret    

000033eb <read>:
SYSCALL(read)
    33eb:	b8 05 00 00 00       	mov    $0x5,%eax
    33f0:	cd 40                	int    $0x40
    33f2:	c3                   	ret    

000033f3 <write>:
SYSCALL(write)
    33f3:	b8 10 00 00 00       	mov    $0x10,%eax
    33f8:	cd 40                	int    $0x40
    33fa:	c3                   	ret    

000033fb <close>:
SYSCALL(close)
    33fb:	b8 15 00 00 00       	mov    $0x15,%eax
    3400:	cd 40                	int    $0x40
    3402:	c3                   	ret    

00003403 <kill>:
SYSCALL(kill)
    3403:	b8 06 00 00 00       	mov    $0x6,%eax
    3408:	cd 40                	int    $0x40
    340a:	c3                   	ret    

0000340b <exec>:
SYSCALL(exec)
    340b:	b8 07 00 00 00       	mov    $0x7,%eax
    3410:	cd 40                	int    $0x40
    3412:	c3                   	ret    

00003413 <open>:
SYSCALL(open)
    3413:	b8 0f 00 00 00       	mov    $0xf,%eax
    3418:	cd 40                	int    $0x40
    341a:	c3                   	ret    

0000341b <mknod>:
SYSCALL(mknod)
    341b:	b8 11 00 00 00       	mov    $0x11,%eax
    3420:	cd 40                	int    $0x40
    3422:	c3                   	ret    

00003423 <unlink>:
SYSCALL(unlink)
    3423:	b8 12 00 00 00       	mov    $0x12,%eax
    3428:	cd 40                	int    $0x40
    342a:	c3                   	ret    

0000342b <fstat>:
SYSCALL(fstat)
    342b:	b8 08 00 00 00       	mov    $0x8,%eax
    3430:	cd 40                	int    $0x40
    3432:	c3                   	ret    

00003433 <link>:
SYSCALL(link)
    3433:	b8 13 00 00 00       	mov    $0x13,%eax
    3438:	cd 40                	int    $0x40
    343a:	c3                   	ret    

0000343b <mkdir>:
SYSCALL(mkdir)
    343b:	b8 14 00 00 00       	mov    $0x14,%eax
    3440:	cd 40                	int    $0x40
    3442:	c3                   	ret    

00003443 <chdir>:
SYSCALL(chdir)
    3443:	b8 09 00 00 00       	mov    $0x9,%eax
    3448:	cd 40                	int    $0x40
    344a:	c3                   	ret    

0000344b <dup>:
SYSCALL(dup)
    344b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3450:	cd 40                	int    $0x40
    3452:	c3                   	ret    

00003453 <getpid>:
SYSCALL(getpid)
    3453:	b8 0b 00 00 00       	mov    $0xb,%eax
    3458:	cd 40                	int    $0x40
    345a:	c3                   	ret    

0000345b <sbrk>:
SYSCALL(sbrk)
    345b:	b8 0c 00 00 00       	mov    $0xc,%eax
    3460:	cd 40                	int    $0x40
    3462:	c3                   	ret    

00003463 <sleep>:
SYSCALL(sleep)
    3463:	b8 0d 00 00 00       	mov    $0xd,%eax
    3468:	cd 40                	int    $0x40
    346a:	c3                   	ret    

0000346b <uptime>:
SYSCALL(uptime)
    346b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3470:	cd 40                	int    $0x40
    3472:	c3                   	ret    
    3473:	66 90                	xchg   %ax,%ax
    3475:	66 90                	xchg   %ax,%ax
    3477:	66 90                	xchg   %ax,%ax
    3479:	66 90                	xchg   %ax,%ax
    347b:	66 90                	xchg   %ax,%ax
    347d:	66 90                	xchg   %ax,%ax
    347f:	90                   	nop

00003480 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3480:	55                   	push   %ebp
    3481:	89 e5                	mov    %esp,%ebp
    3483:	57                   	push   %edi
    3484:	56                   	push   %esi
    3485:	53                   	push   %ebx
    3486:	83 ec 3c             	sub    $0x3c,%esp
    3489:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    348c:	89 d1                	mov    %edx,%ecx
{
    348e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3491:	85 d2                	test   %edx,%edx
    3493:	0f 89 7f 00 00 00    	jns    3518 <printint+0x98>
    3499:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    349d:	74 79                	je     3518 <printint+0x98>
    neg = 1;
    349f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    34a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    34a8:	31 db                	xor    %ebx,%ebx
    34aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
    34ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    34b0:	89 c8                	mov    %ecx,%eax
    34b2:	31 d2                	xor    %edx,%edx
    34b4:	89 cf                	mov    %ecx,%edi
    34b6:	f7 75 c4             	divl   -0x3c(%ebp)
    34b9:	0f b6 92 f0 38 00 00 	movzbl 0x38f0(%edx),%edx
    34c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    34c3:	89 d8                	mov    %ebx,%eax
    34c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    34c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    34cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    34ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    34d1:	76 dd                	jbe    34b0 <printint+0x30>
  if(neg)
    34d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    34d6:	85 c9                	test   %ecx,%ecx
    34d8:	74 0c                	je     34e6 <printint+0x66>
    buf[i++] = '-';
    34da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    34df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    34e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    34e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    34e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    34ed:	eb 07                	jmp    34f6 <printint+0x76>
    34ef:	90                   	nop
    putc(fd, buf[i]);
    34f0:	0f b6 13             	movzbl (%ebx),%edx
    34f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    34f6:	83 ec 04             	sub    $0x4,%esp
    34f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    34fc:	6a 01                	push   $0x1
    34fe:	56                   	push   %esi
    34ff:	57                   	push   %edi
    3500:	e8 ee fe ff ff       	call   33f3 <write>
  while(--i >= 0)
    3505:	83 c4 10             	add    $0x10,%esp
    3508:	39 de                	cmp    %ebx,%esi
    350a:	75 e4                	jne    34f0 <printint+0x70>
}
    350c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    350f:	5b                   	pop    %ebx
    3510:	5e                   	pop    %esi
    3511:	5f                   	pop    %edi
    3512:	5d                   	pop    %ebp
    3513:	c3                   	ret    
    3514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3518:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    351f:	eb 87                	jmp    34a8 <printint+0x28>
    3521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3528:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    352f:	90                   	nop

00003530 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3530:	55                   	push   %ebp
    3531:	89 e5                	mov    %esp,%ebp
    3533:	57                   	push   %edi
    3534:	56                   	push   %esi
    3535:	53                   	push   %ebx
    3536:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3539:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    353c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    353f:	0f b6 13             	movzbl (%ebx),%edx
    3542:	84 d2                	test   %dl,%dl
    3544:	74 6a                	je     35b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    3546:	8d 45 10             	lea    0x10(%ebp),%eax
    3549:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    354c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    354f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3551:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3554:	eb 36                	jmp    358c <printf+0x5c>
    3556:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    355d:	8d 76 00             	lea    0x0(%esi),%esi
    3560:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3563:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3568:	83 f8 25             	cmp    $0x25,%eax
    356b:	74 15                	je     3582 <printf+0x52>
  write(fd, &c, 1);
    356d:	83 ec 04             	sub    $0x4,%esp
    3570:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3573:	6a 01                	push   $0x1
    3575:	57                   	push   %edi
    3576:	56                   	push   %esi
    3577:	e8 77 fe ff ff       	call   33f3 <write>
    357c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    357f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3582:	0f b6 13             	movzbl (%ebx),%edx
    3585:	83 c3 01             	add    $0x1,%ebx
    3588:	84 d2                	test   %dl,%dl
    358a:	74 24                	je     35b0 <printf+0x80>
    c = fmt[i] & 0xff;
    358c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    358f:	85 c9                	test   %ecx,%ecx
    3591:	74 cd                	je     3560 <printf+0x30>
      }
    } else if(state == '%'){
    3593:	83 f9 25             	cmp    $0x25,%ecx
    3596:	75 ea                	jne    3582 <printf+0x52>
      if(c == 'd'){
    3598:	83 f8 25             	cmp    $0x25,%eax
    359b:	0f 84 07 01 00 00    	je     36a8 <printf+0x178>
    35a1:	83 e8 63             	sub    $0x63,%eax
    35a4:	83 f8 15             	cmp    $0x15,%eax
    35a7:	77 17                	ja     35c0 <printf+0x90>
    35a9:	ff 24 85 98 38 00 00 	jmp    *0x3898(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    35b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    35b3:	5b                   	pop    %ebx
    35b4:	5e                   	pop    %esi
    35b5:	5f                   	pop    %edi
    35b6:	5d                   	pop    %ebp
    35b7:	c3                   	ret    
    35b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    35bf:	90                   	nop
  write(fd, &c, 1);
    35c0:	83 ec 04             	sub    $0x4,%esp
    35c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    35c6:	6a 01                	push   $0x1
    35c8:	57                   	push   %edi
    35c9:	56                   	push   %esi
    35ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    35ce:	e8 20 fe ff ff       	call   33f3 <write>
        putc(fd, c);
    35d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    35d7:	83 c4 0c             	add    $0xc,%esp
    35da:	88 55 e7             	mov    %dl,-0x19(%ebp)
    35dd:	6a 01                	push   $0x1
    35df:	57                   	push   %edi
    35e0:	56                   	push   %esi
    35e1:	e8 0d fe ff ff       	call   33f3 <write>
        putc(fd, c);
    35e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
    35e9:	31 c9                	xor    %ecx,%ecx
    35eb:	eb 95                	jmp    3582 <printf+0x52>
    35ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    35f0:	83 ec 0c             	sub    $0xc,%esp
    35f3:	b9 10 00 00 00       	mov    $0x10,%ecx
    35f8:	6a 00                	push   $0x0
    35fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
    35fd:	8b 10                	mov    (%eax),%edx
    35ff:	89 f0                	mov    %esi,%eax
    3601:	e8 7a fe ff ff       	call   3480 <printint>
        ap++;
    3606:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    360a:	83 c4 10             	add    $0x10,%esp
      state = 0;
    360d:	31 c9                	xor    %ecx,%ecx
    360f:	e9 6e ff ff ff       	jmp    3582 <printf+0x52>
    3614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3618:	8b 45 d0             	mov    -0x30(%ebp),%eax
    361b:	8b 10                	mov    (%eax),%edx
        ap++;
    361d:	83 c0 04             	add    $0x4,%eax
    3620:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    3623:	85 d2                	test   %edx,%edx
    3625:	0f 84 8d 00 00 00    	je     36b8 <printf+0x188>
        while(*s != 0){
    362b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    362e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    3630:	84 c0                	test   %al,%al
    3632:	0f 84 4a ff ff ff    	je     3582 <printf+0x52>
    3638:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    363b:	89 d3                	mov    %edx,%ebx
    363d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3640:	83 ec 04             	sub    $0x4,%esp
          s++;
    3643:	83 c3 01             	add    $0x1,%ebx
    3646:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3649:	6a 01                	push   $0x1
    364b:	57                   	push   %edi
    364c:	56                   	push   %esi
    364d:	e8 a1 fd ff ff       	call   33f3 <write>
        while(*s != 0){
    3652:	0f b6 03             	movzbl (%ebx),%eax
    3655:	83 c4 10             	add    $0x10,%esp
    3658:	84 c0                	test   %al,%al
    365a:	75 e4                	jne    3640 <printf+0x110>
      state = 0;
    365c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    365f:	31 c9                	xor    %ecx,%ecx
    3661:	e9 1c ff ff ff       	jmp    3582 <printf+0x52>
    3666:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    366d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3670:	83 ec 0c             	sub    $0xc,%esp
    3673:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3678:	6a 01                	push   $0x1
    367a:	e9 7b ff ff ff       	jmp    35fa <printf+0xca>
    367f:	90                   	nop
        putc(fd, *ap);
    3680:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3683:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3686:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3688:	6a 01                	push   $0x1
    368a:	57                   	push   %edi
    368b:	56                   	push   %esi
        putc(fd, *ap);
    368c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    368f:	e8 5f fd ff ff       	call   33f3 <write>
        ap++;
    3694:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3698:	83 c4 10             	add    $0x10,%esp
      state = 0;
    369b:	31 c9                	xor    %ecx,%ecx
    369d:	e9 e0 fe ff ff       	jmp    3582 <printf+0x52>
    36a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    36a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    36ab:	83 ec 04             	sub    $0x4,%esp
    36ae:	e9 2a ff ff ff       	jmp    35dd <printf+0xad>
    36b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    36b7:	90                   	nop
          s = "(null)";
    36b8:	ba 8f 38 00 00       	mov    $0x388f,%edx
        while(*s != 0){
    36bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    36c0:	b8 28 00 00 00       	mov    $0x28,%eax
    36c5:	89 d3                	mov    %edx,%ebx
    36c7:	e9 74 ff ff ff       	jmp    3640 <printf+0x110>
    36cc:	66 90                	xchg   %ax,%ax
    36ce:	66 90                	xchg   %ax,%ax

000036d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    36d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    36d1:	a1 e0 3d 00 00       	mov    0x3de0,%eax
{
    36d6:	89 e5                	mov    %esp,%ebp
    36d8:	57                   	push   %edi
    36d9:	56                   	push   %esi
    36da:	53                   	push   %ebx
    36db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    36de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    36e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36e8:	89 c2                	mov    %eax,%edx
    36ea:	8b 00                	mov    (%eax),%eax
    36ec:	39 ca                	cmp    %ecx,%edx
    36ee:	73 30                	jae    3720 <free+0x50>
    36f0:	39 c1                	cmp    %eax,%ecx
    36f2:	72 04                	jb     36f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    36f4:	39 c2                	cmp    %eax,%edx
    36f6:	72 f0                	jb     36e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    36f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    36fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    36fe:	39 f8                	cmp    %edi,%eax
    3700:	74 30                	je     3732 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3702:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3705:	8b 42 04             	mov    0x4(%edx),%eax
    3708:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    370b:	39 f1                	cmp    %esi,%ecx
    370d:	74 3a                	je     3749 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    370f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3711:	5b                   	pop    %ebx
  freep = p;
    3712:	89 15 e0 3d 00 00    	mov    %edx,0x3de0
}
    3718:	5e                   	pop    %esi
    3719:	5f                   	pop    %edi
    371a:	5d                   	pop    %ebp
    371b:	c3                   	ret    
    371c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3720:	39 c2                	cmp    %eax,%edx
    3722:	72 c4                	jb     36e8 <free+0x18>
    3724:	39 c1                	cmp    %eax,%ecx
    3726:	73 c0                	jae    36e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    3728:	8b 73 fc             	mov    -0x4(%ebx),%esi
    372b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    372e:	39 f8                	cmp    %edi,%eax
    3730:	75 d0                	jne    3702 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    3732:	03 70 04             	add    0x4(%eax),%esi
    3735:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3738:	8b 02                	mov    (%edx),%eax
    373a:	8b 00                	mov    (%eax),%eax
    373c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    373f:	8b 42 04             	mov    0x4(%edx),%eax
    3742:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3745:	39 f1                	cmp    %esi,%ecx
    3747:	75 c6                	jne    370f <free+0x3f>
    p->s.size += bp->s.size;
    3749:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    374c:	89 15 e0 3d 00 00    	mov    %edx,0x3de0
    p->s.size += bp->s.size;
    3752:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3755:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3758:	89 0a                	mov    %ecx,(%edx)
}
    375a:	5b                   	pop    %ebx
    375b:	5e                   	pop    %esi
    375c:	5f                   	pop    %edi
    375d:	5d                   	pop    %ebp
    375e:	c3                   	ret    
    375f:	90                   	nop

00003760 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3760:	55                   	push   %ebp
    3761:	89 e5                	mov    %esp,%ebp
    3763:	57                   	push   %edi
    3764:	56                   	push   %esi
    3765:	53                   	push   %ebx
    3766:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3769:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    376c:	8b 3d e0 3d 00 00    	mov    0x3de0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3772:	8d 70 07             	lea    0x7(%eax),%esi
    3775:	c1 ee 03             	shr    $0x3,%esi
    3778:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    377b:	85 ff                	test   %edi,%edi
    377d:	0f 84 9d 00 00 00    	je     3820 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3783:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3785:	8b 4a 04             	mov    0x4(%edx),%ecx
    3788:	39 f1                	cmp    %esi,%ecx
    378a:	73 6a                	jae    37f6 <malloc+0x96>
    378c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3791:	39 de                	cmp    %ebx,%esi
    3793:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3796:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    379d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    37a0:	eb 17                	jmp    37b9 <malloc+0x59>
    37a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    37a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    37aa:	8b 48 04             	mov    0x4(%eax),%ecx
    37ad:	39 f1                	cmp    %esi,%ecx
    37af:	73 4f                	jae    3800 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    37b1:	8b 3d e0 3d 00 00    	mov    0x3de0,%edi
    37b7:	89 c2                	mov    %eax,%edx
    37b9:	39 d7                	cmp    %edx,%edi
    37bb:	75 eb                	jne    37a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    37bd:	83 ec 0c             	sub    $0xc,%esp
    37c0:	ff 75 e4             	push   -0x1c(%ebp)
    37c3:	e8 93 fc ff ff       	call   345b <sbrk>
  if(p == (char*)-1)
    37c8:	83 c4 10             	add    $0x10,%esp
    37cb:	83 f8 ff             	cmp    $0xffffffff,%eax
    37ce:	74 1c                	je     37ec <malloc+0x8c>
  hp->s.size = nu;
    37d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    37d3:	83 ec 0c             	sub    $0xc,%esp
    37d6:	83 c0 08             	add    $0x8,%eax
    37d9:	50                   	push   %eax
    37da:	e8 f1 fe ff ff       	call   36d0 <free>
  return freep;
    37df:	8b 15 e0 3d 00 00    	mov    0x3de0,%edx
      if((p = morecore(nunits)) == 0)
    37e5:	83 c4 10             	add    $0x10,%esp
    37e8:	85 d2                	test   %edx,%edx
    37ea:	75 bc                	jne    37a8 <malloc+0x48>
        return 0;
  }
}
    37ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    37ef:	31 c0                	xor    %eax,%eax
}
    37f1:	5b                   	pop    %ebx
    37f2:	5e                   	pop    %esi
    37f3:	5f                   	pop    %edi
    37f4:	5d                   	pop    %ebp
    37f5:	c3                   	ret    
    if(p->s.size >= nunits){
    37f6:	89 d0                	mov    %edx,%eax
    37f8:	89 fa                	mov    %edi,%edx
    37fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3800:	39 ce                	cmp    %ecx,%esi
    3802:	74 4c                	je     3850 <malloc+0xf0>
        p->s.size -= nunits;
    3804:	29 f1                	sub    %esi,%ecx
    3806:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3809:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    380c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    380f:	89 15 e0 3d 00 00    	mov    %edx,0x3de0
}
    3815:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3818:	83 c0 08             	add    $0x8,%eax
}
    381b:	5b                   	pop    %ebx
    381c:	5e                   	pop    %esi
    381d:	5f                   	pop    %edi
    381e:	5d                   	pop    %ebp
    381f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    3820:	c7 05 e0 3d 00 00 e4 	movl   $0x3de4,0x3de0
    3827:	3d 00 00 
    base.s.size = 0;
    382a:	bf e4 3d 00 00       	mov    $0x3de4,%edi
    base.s.ptr = freep = prevp = &base;
    382f:	c7 05 e4 3d 00 00 e4 	movl   $0x3de4,0x3de4
    3836:	3d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3839:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    383b:	c7 05 e8 3d 00 00 00 	movl   $0x0,0x3de8
    3842:	00 00 00 
    if(p->s.size >= nunits){
    3845:	e9 42 ff ff ff       	jmp    378c <malloc+0x2c>
    384a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3850:	8b 08                	mov    (%eax),%ecx
    3852:	89 0a                	mov    %ecx,(%edx)
    3854:	eb b9                	jmp    380f <malloc+0xaf>
