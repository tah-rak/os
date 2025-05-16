
_ls:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
  close(fd);
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
    300f:	53                   	push   %ebx
    3010:	bb 01 00 00 00       	mov    $0x1,%ebx
    3015:	51                   	push   %ecx
    3016:	83 ec 08             	sub    $0x8,%esp
    3019:	8b 31                	mov    (%ecx),%esi
    301b:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  if(argc < 2){
    301e:	83 fe 01             	cmp    $0x1,%esi
    3021:	7e 1f                	jle    3042 <main+0x42>
    3023:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3027:	90                   	nop
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
    3028:	83 ec 0c             	sub    $0xc,%esp
    302b:	ff 34 9f             	push   (%edi,%ebx,4)
  for(i=1; i<argc; i++)
    302e:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
    3031:	e8 ca 00 00 00       	call   3100 <ls>
  for(i=1; i<argc; i++)
    3036:	83 c4 10             	add    $0x10,%esp
    3039:	39 de                	cmp    %ebx,%esi
    303b:	75 eb                	jne    3028 <main+0x28>
  exit();
    303d:	e8 51 05 00 00       	call   3593 <exit>
    ls(".");
    3042:	83 ec 0c             	sub    $0xc,%esp
    3045:	68 60 3a 00 00       	push   $0x3a60
    304a:	e8 b1 00 00 00       	call   3100 <ls>
    exit();
    304f:	e8 3f 05 00 00       	call   3593 <exit>
    3054:	66 90                	xchg   %ax,%ax
    3056:	66 90                	xchg   %ax,%ax
    3058:	66 90                	xchg   %ax,%ax
    305a:	66 90                	xchg   %ax,%ax
    305c:	66 90                	xchg   %ax,%ax
    305e:	66 90                	xchg   %ax,%ax

00003060 <fmtname>:
{
    3060:	55                   	push   %ebp
    3061:	89 e5                	mov    %esp,%ebp
    3063:	56                   	push   %esi
    3064:	53                   	push   %ebx
    3065:	8b 75 08             	mov    0x8(%ebp),%esi
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
    3068:	83 ec 0c             	sub    $0xc,%esp
    306b:	56                   	push   %esi
    306c:	e8 5f 03 00 00       	call   33d0 <strlen>
    3071:	83 c4 10             	add    $0x10,%esp
    3074:	01 f0                	add    %esi,%eax
    3076:	89 c3                	mov    %eax,%ebx
    3078:	73 0f                	jae    3089 <fmtname+0x29>
    307a:	eb 12                	jmp    308e <fmtname+0x2e>
    307c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3080:	8d 43 ff             	lea    -0x1(%ebx),%eax
    3083:	39 c6                	cmp    %eax,%esi
    3085:	77 0a                	ja     3091 <fmtname+0x31>
    3087:	89 c3                	mov    %eax,%ebx
    3089:	80 3b 2f             	cmpb   $0x2f,(%ebx)
    308c:	75 f2                	jne    3080 <fmtname+0x20>
  p++;
    308e:	83 c3 01             	add    $0x1,%ebx
  if(strlen(p) >= DIRSIZ)
    3091:	83 ec 0c             	sub    $0xc,%esp
    3094:	53                   	push   %ebx
    3095:	e8 36 03 00 00       	call   33d0 <strlen>
    309a:	83 c4 10             	add    $0x10,%esp
    309d:	83 f8 0d             	cmp    $0xd,%eax
    30a0:	77 4a                	ja     30ec <fmtname+0x8c>
  memmove(buf, p, strlen(p));
    30a2:	83 ec 0c             	sub    $0xc,%esp
    30a5:	53                   	push   %ebx
    30a6:	e8 25 03 00 00       	call   33d0 <strlen>
    30ab:	83 c4 0c             	add    $0xc,%esp
    30ae:	50                   	push   %eax
    30af:	53                   	push   %ebx
    30b0:	68 f4 3d 00 00       	push   $0x3df4
    30b5:	e8 a6 04 00 00       	call   3560 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    30ba:	89 1c 24             	mov    %ebx,(%esp)
    30bd:	e8 0e 03 00 00       	call   33d0 <strlen>
    30c2:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
    30c5:	bb f4 3d 00 00       	mov    $0x3df4,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    30ca:	89 c6                	mov    %eax,%esi
    30cc:	e8 ff 02 00 00       	call   33d0 <strlen>
    30d1:	ba 0e 00 00 00       	mov    $0xe,%edx
    30d6:	83 c4 0c             	add    $0xc,%esp
    30d9:	29 f2                	sub    %esi,%edx
    30db:	05 f4 3d 00 00       	add    $0x3df4,%eax
    30e0:	52                   	push   %edx
    30e1:	6a 20                	push   $0x20
    30e3:	50                   	push   %eax
    30e4:	e8 17 03 00 00       	call   3400 <memset>
  return buf;
    30e9:	83 c4 10             	add    $0x10,%esp
}
    30ec:	8d 65 f8             	lea    -0x8(%ebp),%esp
    30ef:	89 d8                	mov    %ebx,%eax
    30f1:	5b                   	pop    %ebx
    30f2:	5e                   	pop    %esi
    30f3:	5d                   	pop    %ebp
    30f4:	c3                   	ret    
    30f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    30fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003100 <ls>:
{
    3100:	55                   	push   %ebp
    3101:	89 e5                	mov    %esp,%ebp
    3103:	57                   	push   %edi
    3104:	56                   	push   %esi
    3105:	53                   	push   %ebx
    3106:	81 ec 64 02 00 00    	sub    $0x264,%esp
    310c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
    310f:	6a 00                	push   $0x0
    3111:	57                   	push   %edi
    3112:	e8 bc 04 00 00       	call   35d3 <open>
    3117:	83 c4 10             	add    $0x10,%esp
    311a:	85 c0                	test   %eax,%eax
    311c:	0f 88 9e 01 00 00    	js     32c0 <ls+0x1c0>
  if(fstat(fd, &st) < 0){
    3122:	83 ec 08             	sub    $0x8,%esp
    3125:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
    312b:	89 c3                	mov    %eax,%ebx
    312d:	56                   	push   %esi
    312e:	50                   	push   %eax
    312f:	e8 b7 04 00 00       	call   35eb <fstat>
    3134:	83 c4 10             	add    $0x10,%esp
    3137:	85 c0                	test   %eax,%eax
    3139:	0f 88 c1 01 00 00    	js     3300 <ls+0x200>
  switch(st.type){
    313f:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
    3146:	66 83 f8 01          	cmp    $0x1,%ax
    314a:	74 64                	je     31b0 <ls+0xb0>
    314c:	66 83 f8 02          	cmp    $0x2,%ax
    3150:	74 1e                	je     3170 <ls+0x70>
  close(fd);
    3152:	83 ec 0c             	sub    $0xc,%esp
    3155:	53                   	push   %ebx
    3156:	e8 60 04 00 00       	call   35bb <close>
    315b:	83 c4 10             	add    $0x10,%esp
}
    315e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3161:	5b                   	pop    %ebx
    3162:	5e                   	pop    %esi
    3163:	5f                   	pop    %edi
    3164:	5d                   	pop    %ebp
    3165:	c3                   	ret    
    3166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    316d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    3170:	83 ec 0c             	sub    $0xc,%esp
    3173:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
    3179:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
    317f:	57                   	push   %edi
    3180:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
    3186:	e8 d5 fe ff ff       	call   3060 <fmtname>
    318b:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
    3191:	59                   	pop    %ecx
    3192:	5f                   	pop    %edi
    3193:	52                   	push   %edx
    3194:	56                   	push   %esi
    3195:	6a 02                	push   $0x2
    3197:	50                   	push   %eax
    3198:	68 40 3a 00 00       	push   $0x3a40
    319d:	6a 01                	push   $0x1
    319f:	e8 4c 05 00 00       	call   36f0 <printf>
    break;
    31a4:	83 c4 20             	add    $0x20,%esp
    31a7:	eb a9                	jmp    3152 <ls+0x52>
    31a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
    31b0:	83 ec 0c             	sub    $0xc,%esp
    31b3:	57                   	push   %edi
    31b4:	e8 17 02 00 00       	call   33d0 <strlen>
    31b9:	83 c4 10             	add    $0x10,%esp
    31bc:	83 c0 10             	add    $0x10,%eax
    31bf:	3d 00 02 00 00       	cmp    $0x200,%eax
    31c4:	0f 87 16 01 00 00    	ja     32e0 <ls+0x1e0>
    strcpy(buf, path);
    31ca:	83 ec 08             	sub    $0x8,%esp
    31cd:	57                   	push   %edi
    31ce:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
    31d4:	57                   	push   %edi
    31d5:	e8 66 01 00 00       	call   3340 <strcpy>
    p = buf+strlen(buf);
    31da:	89 3c 24             	mov    %edi,(%esp)
    31dd:	e8 ee 01 00 00       	call   33d0 <strlen>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
    31e2:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
    31e5:	01 f8                	add    %edi,%eax
    *p++ = '/';
    31e7:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
    31ea:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
    31f0:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
    31f6:	c6 00 2f             	movb   $0x2f,(%eax)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
    31f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3200:	83 ec 04             	sub    $0x4,%esp
    3203:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
    3209:	6a 10                	push   $0x10
    320b:	50                   	push   %eax
    320c:	53                   	push   %ebx
    320d:	e8 99 03 00 00       	call   35ab <read>
    3212:	83 c4 10             	add    $0x10,%esp
    3215:	83 f8 10             	cmp    $0x10,%eax
    3218:	0f 85 34 ff ff ff    	jne    3152 <ls+0x52>
      if(de.inum == 0)
    321e:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
    3225:	00 
    3226:	74 d8                	je     3200 <ls+0x100>
      memmove(p, de.name, DIRSIZ);
    3228:	83 ec 04             	sub    $0x4,%esp
    322b:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
    3231:	6a 0e                	push   $0xe
    3233:	50                   	push   %eax
    3234:	ff b5 a4 fd ff ff    	push   -0x25c(%ebp)
    323a:	e8 21 03 00 00       	call   3560 <memmove>
      p[DIRSIZ] = 0;
    323f:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
    3245:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
    3249:	58                   	pop    %eax
    324a:	5a                   	pop    %edx
    324b:	56                   	push   %esi
    324c:	57                   	push   %edi
    324d:	e8 7e 02 00 00       	call   34d0 <stat>
    3252:	83 c4 10             	add    $0x10,%esp
    3255:	85 c0                	test   %eax,%eax
    3257:	0f 88 cb 00 00 00    	js     3328 <ls+0x228>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    325d:	83 ec 0c             	sub    $0xc,%esp
    3260:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
    3266:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
    326c:	57                   	push   %edi
    326d:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
    3274:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
    327a:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
    3280:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
    3286:	e8 d5 fd ff ff       	call   3060 <fmtname>
    328b:	5a                   	pop    %edx
    328c:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
    3292:	59                   	pop    %ecx
    3293:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
    3299:	51                   	push   %ecx
    329a:	52                   	push   %edx
    329b:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
    32a1:	50                   	push   %eax
    32a2:	68 40 3a 00 00       	push   $0x3a40
    32a7:	6a 01                	push   $0x1
    32a9:	e8 42 04 00 00       	call   36f0 <printf>
    32ae:	83 c4 20             	add    $0x20,%esp
    32b1:	e9 4a ff ff ff       	jmp    3200 <ls+0x100>
    32b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32bd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
    32c0:	83 ec 04             	sub    $0x4,%esp
    32c3:	57                   	push   %edi
    32c4:	68 18 3a 00 00       	push   $0x3a18
    32c9:	6a 02                	push   $0x2
    32cb:	e8 20 04 00 00       	call   36f0 <printf>
    return;
    32d0:	83 c4 10             	add    $0x10,%esp
}
    32d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    32d6:	5b                   	pop    %ebx
    32d7:	5e                   	pop    %esi
    32d8:	5f                   	pop    %edi
    32d9:	5d                   	pop    %ebp
    32da:	c3                   	ret    
    32db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    32df:	90                   	nop
      printf(1, "ls: path too long\n");
    32e0:	83 ec 08             	sub    $0x8,%esp
    32e3:	68 4d 3a 00 00       	push   $0x3a4d
    32e8:	6a 01                	push   $0x1
    32ea:	e8 01 04 00 00       	call   36f0 <printf>
      break;
    32ef:	83 c4 10             	add    $0x10,%esp
    32f2:	e9 5b fe ff ff       	jmp    3152 <ls+0x52>
    32f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32fe:	66 90                	xchg   %ax,%ax
    printf(2, "ls: cannot stat %s\n", path);
    3300:	83 ec 04             	sub    $0x4,%esp
    3303:	57                   	push   %edi
    3304:	68 2c 3a 00 00       	push   $0x3a2c
    3309:	6a 02                	push   $0x2
    330b:	e8 e0 03 00 00       	call   36f0 <printf>
    close(fd);
    3310:	89 1c 24             	mov    %ebx,(%esp)
    3313:	e8 a3 02 00 00       	call   35bb <close>
    return;
    3318:	83 c4 10             	add    $0x10,%esp
}
    331b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    331e:	5b                   	pop    %ebx
    331f:	5e                   	pop    %esi
    3320:	5f                   	pop    %edi
    3321:	5d                   	pop    %ebp
    3322:	c3                   	ret    
    3323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3327:	90                   	nop
        printf(1, "ls: cannot stat %s\n", buf);
    3328:	83 ec 04             	sub    $0x4,%esp
    332b:	57                   	push   %edi
    332c:	68 2c 3a 00 00       	push   $0x3a2c
    3331:	6a 01                	push   $0x1
    3333:	e8 b8 03 00 00       	call   36f0 <printf>
        continue;
    3338:	83 c4 10             	add    $0x10,%esp
    333b:	e9 c0 fe ff ff       	jmp    3200 <ls+0x100>

00003340 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3340:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3341:	31 c0                	xor    %eax,%eax
{
    3343:	89 e5                	mov    %esp,%ebp
    3345:	53                   	push   %ebx
    3346:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3349:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    334c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3350:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3354:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3357:	83 c0 01             	add    $0x1,%eax
    335a:	84 d2                	test   %dl,%dl
    335c:	75 f2                	jne    3350 <strcpy+0x10>
    ;
  return os;
}
    335e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3361:	89 c8                	mov    %ecx,%eax
    3363:	c9                   	leave  
    3364:	c3                   	ret    
    3365:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    336c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003370 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3370:	55                   	push   %ebp
    3371:	89 e5                	mov    %esp,%ebp
    3373:	53                   	push   %ebx
    3374:	8b 55 08             	mov    0x8(%ebp),%edx
    3377:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    337a:	0f b6 02             	movzbl (%edx),%eax
    337d:	84 c0                	test   %al,%al
    337f:	75 17                	jne    3398 <strcmp+0x28>
    3381:	eb 3a                	jmp    33bd <strcmp+0x4d>
    3383:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3387:	90                   	nop
    3388:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    338c:	83 c2 01             	add    $0x1,%edx
    338f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3392:	84 c0                	test   %al,%al
    3394:	74 1a                	je     33b0 <strcmp+0x40>
    p++, q++;
    3396:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    3398:	0f b6 19             	movzbl (%ecx),%ebx
    339b:	38 c3                	cmp    %al,%bl
    339d:	74 e9                	je     3388 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    339f:	29 d8                	sub    %ebx,%eax
}
    33a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    33a4:	c9                   	leave  
    33a5:	c3                   	ret    
    33a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    33b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    33b4:	31 c0                	xor    %eax,%eax
    33b6:	29 d8                	sub    %ebx,%eax
}
    33b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    33bb:	c9                   	leave  
    33bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    33bd:	0f b6 19             	movzbl (%ecx),%ebx
    33c0:	31 c0                	xor    %eax,%eax
    33c2:	eb db                	jmp    339f <strcmp+0x2f>
    33c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    33cf:	90                   	nop

000033d0 <strlen>:

uint
strlen(const char *s)
{
    33d0:	55                   	push   %ebp
    33d1:	89 e5                	mov    %esp,%ebp
    33d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    33d6:	80 3a 00             	cmpb   $0x0,(%edx)
    33d9:	74 15                	je     33f0 <strlen+0x20>
    33db:	31 c0                	xor    %eax,%eax
    33dd:	8d 76 00             	lea    0x0(%esi),%esi
    33e0:	83 c0 01             	add    $0x1,%eax
    33e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    33e7:	89 c1                	mov    %eax,%ecx
    33e9:	75 f5                	jne    33e0 <strlen+0x10>
    ;
  return n;
}
    33eb:	89 c8                	mov    %ecx,%eax
    33ed:	5d                   	pop    %ebp
    33ee:	c3                   	ret    
    33ef:	90                   	nop
  for(n = 0; s[n]; n++)
    33f0:	31 c9                	xor    %ecx,%ecx
}
    33f2:	5d                   	pop    %ebp
    33f3:	89 c8                	mov    %ecx,%eax
    33f5:	c3                   	ret    
    33f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33fd:	8d 76 00             	lea    0x0(%esi),%esi

00003400 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3400:	55                   	push   %ebp
    3401:	89 e5                	mov    %esp,%ebp
    3403:	57                   	push   %edi
    3404:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3407:	8b 4d 10             	mov    0x10(%ebp),%ecx
    340a:	8b 45 0c             	mov    0xc(%ebp),%eax
    340d:	89 d7                	mov    %edx,%edi
    340f:	fc                   	cld    
    3410:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3412:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3415:	89 d0                	mov    %edx,%eax
    3417:	c9                   	leave  
    3418:	c3                   	ret    
    3419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003420 <strchr>:

char*
strchr(const char *s, char c)
{
    3420:	55                   	push   %ebp
    3421:	89 e5                	mov    %esp,%ebp
    3423:	8b 45 08             	mov    0x8(%ebp),%eax
    3426:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    342a:	0f b6 10             	movzbl (%eax),%edx
    342d:	84 d2                	test   %dl,%dl
    342f:	75 12                	jne    3443 <strchr+0x23>
    3431:	eb 1d                	jmp    3450 <strchr+0x30>
    3433:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3437:	90                   	nop
    3438:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    343c:	83 c0 01             	add    $0x1,%eax
    343f:	84 d2                	test   %dl,%dl
    3441:	74 0d                	je     3450 <strchr+0x30>
    if(*s == c)
    3443:	38 d1                	cmp    %dl,%cl
    3445:	75 f1                	jne    3438 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3447:	5d                   	pop    %ebp
    3448:	c3                   	ret    
    3449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3450:	31 c0                	xor    %eax,%eax
}
    3452:	5d                   	pop    %ebp
    3453:	c3                   	ret    
    3454:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    345b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    345f:	90                   	nop

00003460 <gets>:

char*
gets(char *buf, int max)
{
    3460:	55                   	push   %ebp
    3461:	89 e5                	mov    %esp,%ebp
    3463:	57                   	push   %edi
    3464:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3465:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3468:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3469:	31 db                	xor    %ebx,%ebx
{
    346b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    346e:	eb 27                	jmp    3497 <gets+0x37>
    cc = read(0, &c, 1);
    3470:	83 ec 04             	sub    $0x4,%esp
    3473:	6a 01                	push   $0x1
    3475:	57                   	push   %edi
    3476:	6a 00                	push   $0x0
    3478:	e8 2e 01 00 00       	call   35ab <read>
    if(cc < 1)
    347d:	83 c4 10             	add    $0x10,%esp
    3480:	85 c0                	test   %eax,%eax
    3482:	7e 1d                	jle    34a1 <gets+0x41>
      break;
    buf[i++] = c;
    3484:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3488:	8b 55 08             	mov    0x8(%ebp),%edx
    348b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    348f:	3c 0a                	cmp    $0xa,%al
    3491:	74 1d                	je     34b0 <gets+0x50>
    3493:	3c 0d                	cmp    $0xd,%al
    3495:	74 19                	je     34b0 <gets+0x50>
  for(i=0; i+1 < max; ){
    3497:	89 de                	mov    %ebx,%esi
    3499:	83 c3 01             	add    $0x1,%ebx
    349c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    349f:	7c cf                	jl     3470 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    34a1:	8b 45 08             	mov    0x8(%ebp),%eax
    34a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    34a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34ab:	5b                   	pop    %ebx
    34ac:	5e                   	pop    %esi
    34ad:	5f                   	pop    %edi
    34ae:	5d                   	pop    %ebp
    34af:	c3                   	ret    
  buf[i] = '\0';
    34b0:	8b 45 08             	mov    0x8(%ebp),%eax
    34b3:	89 de                	mov    %ebx,%esi
    34b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    34b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34bc:	5b                   	pop    %ebx
    34bd:	5e                   	pop    %esi
    34be:	5f                   	pop    %edi
    34bf:	5d                   	pop    %ebp
    34c0:	c3                   	ret    
    34c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34cf:	90                   	nop

000034d0 <stat>:

int
stat(const char *n, struct stat *st)
{
    34d0:	55                   	push   %ebp
    34d1:	89 e5                	mov    %esp,%ebp
    34d3:	56                   	push   %esi
    34d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    34d5:	83 ec 08             	sub    $0x8,%esp
    34d8:	6a 00                	push   $0x0
    34da:	ff 75 08             	push   0x8(%ebp)
    34dd:	e8 f1 00 00 00       	call   35d3 <open>
  if(fd < 0)
    34e2:	83 c4 10             	add    $0x10,%esp
    34e5:	85 c0                	test   %eax,%eax
    34e7:	78 27                	js     3510 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    34e9:	83 ec 08             	sub    $0x8,%esp
    34ec:	ff 75 0c             	push   0xc(%ebp)
    34ef:	89 c3                	mov    %eax,%ebx
    34f1:	50                   	push   %eax
    34f2:	e8 f4 00 00 00       	call   35eb <fstat>
  close(fd);
    34f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    34fa:	89 c6                	mov    %eax,%esi
  close(fd);
    34fc:	e8 ba 00 00 00       	call   35bb <close>
  return r;
    3501:	83 c4 10             	add    $0x10,%esp
}
    3504:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3507:	89 f0                	mov    %esi,%eax
    3509:	5b                   	pop    %ebx
    350a:	5e                   	pop    %esi
    350b:	5d                   	pop    %ebp
    350c:	c3                   	ret    
    350d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3510:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3515:	eb ed                	jmp    3504 <stat+0x34>
    3517:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    351e:	66 90                	xchg   %ax,%ax

00003520 <atoi>:

int
atoi(const char *s)
{
    3520:	55                   	push   %ebp
    3521:	89 e5                	mov    %esp,%ebp
    3523:	53                   	push   %ebx
    3524:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3527:	0f be 02             	movsbl (%edx),%eax
    352a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    352d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3530:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3535:	77 1e                	ja     3555 <atoi+0x35>
    3537:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    353e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3540:	83 c2 01             	add    $0x1,%edx
    3543:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3546:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    354a:	0f be 02             	movsbl (%edx),%eax
    354d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3550:	80 fb 09             	cmp    $0x9,%bl
    3553:	76 eb                	jbe    3540 <atoi+0x20>
  return n;
}
    3555:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3558:	89 c8                	mov    %ecx,%eax
    355a:	c9                   	leave  
    355b:	c3                   	ret    
    355c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003560 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3560:	55                   	push   %ebp
    3561:	89 e5                	mov    %esp,%ebp
    3563:	57                   	push   %edi
    3564:	8b 45 10             	mov    0x10(%ebp),%eax
    3567:	8b 55 08             	mov    0x8(%ebp),%edx
    356a:	56                   	push   %esi
    356b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    356e:	85 c0                	test   %eax,%eax
    3570:	7e 13                	jle    3585 <memmove+0x25>
    3572:	01 d0                	add    %edx,%eax
  dst = vdst;
    3574:	89 d7                	mov    %edx,%edi
    3576:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    357d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3580:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3581:	39 f8                	cmp    %edi,%eax
    3583:	75 fb                	jne    3580 <memmove+0x20>
  return vdst;
}
    3585:	5e                   	pop    %esi
    3586:	89 d0                	mov    %edx,%eax
    3588:	5f                   	pop    %edi
    3589:	5d                   	pop    %ebp
    358a:	c3                   	ret    

0000358b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    358b:	b8 01 00 00 00       	mov    $0x1,%eax
    3590:	cd 40                	int    $0x40
    3592:	c3                   	ret    

00003593 <exit>:
SYSCALL(exit)
    3593:	b8 02 00 00 00       	mov    $0x2,%eax
    3598:	cd 40                	int    $0x40
    359a:	c3                   	ret    

0000359b <wait>:
SYSCALL(wait)
    359b:	b8 03 00 00 00       	mov    $0x3,%eax
    35a0:	cd 40                	int    $0x40
    35a2:	c3                   	ret    

000035a3 <pipe>:
SYSCALL(pipe)
    35a3:	b8 04 00 00 00       	mov    $0x4,%eax
    35a8:	cd 40                	int    $0x40
    35aa:	c3                   	ret    

000035ab <read>:
SYSCALL(read)
    35ab:	b8 05 00 00 00       	mov    $0x5,%eax
    35b0:	cd 40                	int    $0x40
    35b2:	c3                   	ret    

000035b3 <write>:
SYSCALL(write)
    35b3:	b8 10 00 00 00       	mov    $0x10,%eax
    35b8:	cd 40                	int    $0x40
    35ba:	c3                   	ret    

000035bb <close>:
SYSCALL(close)
    35bb:	b8 15 00 00 00       	mov    $0x15,%eax
    35c0:	cd 40                	int    $0x40
    35c2:	c3                   	ret    

000035c3 <kill>:
SYSCALL(kill)
    35c3:	b8 06 00 00 00       	mov    $0x6,%eax
    35c8:	cd 40                	int    $0x40
    35ca:	c3                   	ret    

000035cb <exec>:
SYSCALL(exec)
    35cb:	b8 07 00 00 00       	mov    $0x7,%eax
    35d0:	cd 40                	int    $0x40
    35d2:	c3                   	ret    

000035d3 <open>:
SYSCALL(open)
    35d3:	b8 0f 00 00 00       	mov    $0xf,%eax
    35d8:	cd 40                	int    $0x40
    35da:	c3                   	ret    

000035db <mknod>:
SYSCALL(mknod)
    35db:	b8 11 00 00 00       	mov    $0x11,%eax
    35e0:	cd 40                	int    $0x40
    35e2:	c3                   	ret    

000035e3 <unlink>:
SYSCALL(unlink)
    35e3:	b8 12 00 00 00       	mov    $0x12,%eax
    35e8:	cd 40                	int    $0x40
    35ea:	c3                   	ret    

000035eb <fstat>:
SYSCALL(fstat)
    35eb:	b8 08 00 00 00       	mov    $0x8,%eax
    35f0:	cd 40                	int    $0x40
    35f2:	c3                   	ret    

000035f3 <link>:
SYSCALL(link)
    35f3:	b8 13 00 00 00       	mov    $0x13,%eax
    35f8:	cd 40                	int    $0x40
    35fa:	c3                   	ret    

000035fb <mkdir>:
SYSCALL(mkdir)
    35fb:	b8 14 00 00 00       	mov    $0x14,%eax
    3600:	cd 40                	int    $0x40
    3602:	c3                   	ret    

00003603 <chdir>:
SYSCALL(chdir)
    3603:	b8 09 00 00 00       	mov    $0x9,%eax
    3608:	cd 40                	int    $0x40
    360a:	c3                   	ret    

0000360b <dup>:
SYSCALL(dup)
    360b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3610:	cd 40                	int    $0x40
    3612:	c3                   	ret    

00003613 <getpid>:
SYSCALL(getpid)
    3613:	b8 0b 00 00 00       	mov    $0xb,%eax
    3618:	cd 40                	int    $0x40
    361a:	c3                   	ret    

0000361b <sbrk>:
SYSCALL(sbrk)
    361b:	b8 0c 00 00 00       	mov    $0xc,%eax
    3620:	cd 40                	int    $0x40
    3622:	c3                   	ret    

00003623 <sleep>:
SYSCALL(sleep)
    3623:	b8 0d 00 00 00       	mov    $0xd,%eax
    3628:	cd 40                	int    $0x40
    362a:	c3                   	ret    

0000362b <uptime>:
SYSCALL(uptime)
    362b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3630:	cd 40                	int    $0x40
    3632:	c3                   	ret    
    3633:	66 90                	xchg   %ax,%ax
    3635:	66 90                	xchg   %ax,%ax
    3637:	66 90                	xchg   %ax,%ax
    3639:	66 90                	xchg   %ax,%ax
    363b:	66 90                	xchg   %ax,%ax
    363d:	66 90                	xchg   %ax,%ax
    363f:	90                   	nop

00003640 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3640:	55                   	push   %ebp
    3641:	89 e5                	mov    %esp,%ebp
    3643:	57                   	push   %edi
    3644:	56                   	push   %esi
    3645:	53                   	push   %ebx
    3646:	83 ec 3c             	sub    $0x3c,%esp
    3649:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    364c:	89 d1                	mov    %edx,%ecx
{
    364e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3651:	85 d2                	test   %edx,%edx
    3653:	0f 89 7f 00 00 00    	jns    36d8 <printint+0x98>
    3659:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    365d:	74 79                	je     36d8 <printint+0x98>
    neg = 1;
    365f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    3666:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    3668:	31 db                	xor    %ebx,%ebx
    366a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    366d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3670:	89 c8                	mov    %ecx,%eax
    3672:	31 d2                	xor    %edx,%edx
    3674:	89 cf                	mov    %ecx,%edi
    3676:	f7 75 c4             	divl   -0x3c(%ebp)
    3679:	0f b6 92 c4 3a 00 00 	movzbl 0x3ac4(%edx),%edx
    3680:	89 45 c0             	mov    %eax,-0x40(%ebp)
    3683:	89 d8                	mov    %ebx,%eax
    3685:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    3688:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    368b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    368e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    3691:	76 dd                	jbe    3670 <printint+0x30>
  if(neg)
    3693:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    3696:	85 c9                	test   %ecx,%ecx
    3698:	74 0c                	je     36a6 <printint+0x66>
    buf[i++] = '-';
    369a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    369f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    36a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    36a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    36a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    36ad:	eb 07                	jmp    36b6 <printint+0x76>
    36af:	90                   	nop
    putc(fd, buf[i]);
    36b0:	0f b6 13             	movzbl (%ebx),%edx
    36b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    36b6:	83 ec 04             	sub    $0x4,%esp
    36b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    36bc:	6a 01                	push   $0x1
    36be:	56                   	push   %esi
    36bf:	57                   	push   %edi
    36c0:	e8 ee fe ff ff       	call   35b3 <write>
  while(--i >= 0)
    36c5:	83 c4 10             	add    $0x10,%esp
    36c8:	39 de                	cmp    %ebx,%esi
    36ca:	75 e4                	jne    36b0 <printint+0x70>
}
    36cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    36cf:	5b                   	pop    %ebx
    36d0:	5e                   	pop    %esi
    36d1:	5f                   	pop    %edi
    36d2:	5d                   	pop    %ebp
    36d3:	c3                   	ret    
    36d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    36d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    36df:	eb 87                	jmp    3668 <printint+0x28>
    36e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36ef:	90                   	nop

000036f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    36f0:	55                   	push   %ebp
    36f1:	89 e5                	mov    %esp,%ebp
    36f3:	57                   	push   %edi
    36f4:	56                   	push   %esi
    36f5:	53                   	push   %ebx
    36f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    36f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    36fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    36ff:	0f b6 13             	movzbl (%ebx),%edx
    3702:	84 d2                	test   %dl,%dl
    3704:	74 6a                	je     3770 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    3706:	8d 45 10             	lea    0x10(%ebp),%eax
    3709:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    370c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    370f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3711:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3714:	eb 36                	jmp    374c <printf+0x5c>
    3716:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    371d:	8d 76 00             	lea    0x0(%esi),%esi
    3720:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3723:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3728:	83 f8 25             	cmp    $0x25,%eax
    372b:	74 15                	je     3742 <printf+0x52>
  write(fd, &c, 1);
    372d:	83 ec 04             	sub    $0x4,%esp
    3730:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3733:	6a 01                	push   $0x1
    3735:	57                   	push   %edi
    3736:	56                   	push   %esi
    3737:	e8 77 fe ff ff       	call   35b3 <write>
    373c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    373f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3742:	0f b6 13             	movzbl (%ebx),%edx
    3745:	83 c3 01             	add    $0x1,%ebx
    3748:	84 d2                	test   %dl,%dl
    374a:	74 24                	je     3770 <printf+0x80>
    c = fmt[i] & 0xff;
    374c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    374f:	85 c9                	test   %ecx,%ecx
    3751:	74 cd                	je     3720 <printf+0x30>
      }
    } else if(state == '%'){
    3753:	83 f9 25             	cmp    $0x25,%ecx
    3756:	75 ea                	jne    3742 <printf+0x52>
      if(c == 'd'){
    3758:	83 f8 25             	cmp    $0x25,%eax
    375b:	0f 84 07 01 00 00    	je     3868 <printf+0x178>
    3761:	83 e8 63             	sub    $0x63,%eax
    3764:	83 f8 15             	cmp    $0x15,%eax
    3767:	77 17                	ja     3780 <printf+0x90>
    3769:	ff 24 85 6c 3a 00 00 	jmp    *0x3a6c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3770:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3773:	5b                   	pop    %ebx
    3774:	5e                   	pop    %esi
    3775:	5f                   	pop    %edi
    3776:	5d                   	pop    %ebp
    3777:	c3                   	ret    
    3778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    377f:	90                   	nop
  write(fd, &c, 1);
    3780:	83 ec 04             	sub    $0x4,%esp
    3783:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    3786:	6a 01                	push   $0x1
    3788:	57                   	push   %edi
    3789:	56                   	push   %esi
    378a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    378e:	e8 20 fe ff ff       	call   35b3 <write>
        putc(fd, c);
    3793:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    3797:	83 c4 0c             	add    $0xc,%esp
    379a:	88 55 e7             	mov    %dl,-0x19(%ebp)
    379d:	6a 01                	push   $0x1
    379f:	57                   	push   %edi
    37a0:	56                   	push   %esi
    37a1:	e8 0d fe ff ff       	call   35b3 <write>
        putc(fd, c);
    37a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
    37a9:	31 c9                	xor    %ecx,%ecx
    37ab:	eb 95                	jmp    3742 <printf+0x52>
    37ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    37b0:	83 ec 0c             	sub    $0xc,%esp
    37b3:	b9 10 00 00 00       	mov    $0x10,%ecx
    37b8:	6a 00                	push   $0x0
    37ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
    37bd:	8b 10                	mov    (%eax),%edx
    37bf:	89 f0                	mov    %esi,%eax
    37c1:	e8 7a fe ff ff       	call   3640 <printint>
        ap++;
    37c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    37ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
    37cd:	31 c9                	xor    %ecx,%ecx
    37cf:	e9 6e ff ff ff       	jmp    3742 <printf+0x52>
    37d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    37d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    37db:	8b 10                	mov    (%eax),%edx
        ap++;
    37dd:	83 c0 04             	add    $0x4,%eax
    37e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    37e3:	85 d2                	test   %edx,%edx
    37e5:	0f 84 8d 00 00 00    	je     3878 <printf+0x188>
        while(*s != 0){
    37eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    37ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    37f0:	84 c0                	test   %al,%al
    37f2:	0f 84 4a ff ff ff    	je     3742 <printf+0x52>
    37f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    37fb:	89 d3                	mov    %edx,%ebx
    37fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3800:	83 ec 04             	sub    $0x4,%esp
          s++;
    3803:	83 c3 01             	add    $0x1,%ebx
    3806:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3809:	6a 01                	push   $0x1
    380b:	57                   	push   %edi
    380c:	56                   	push   %esi
    380d:	e8 a1 fd ff ff       	call   35b3 <write>
        while(*s != 0){
    3812:	0f b6 03             	movzbl (%ebx),%eax
    3815:	83 c4 10             	add    $0x10,%esp
    3818:	84 c0                	test   %al,%al
    381a:	75 e4                	jne    3800 <printf+0x110>
      state = 0;
    381c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    381f:	31 c9                	xor    %ecx,%ecx
    3821:	e9 1c ff ff ff       	jmp    3742 <printf+0x52>
    3826:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    382d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3830:	83 ec 0c             	sub    $0xc,%esp
    3833:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3838:	6a 01                	push   $0x1
    383a:	e9 7b ff ff ff       	jmp    37ba <printf+0xca>
    383f:	90                   	nop
        putc(fd, *ap);
    3840:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3843:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3846:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3848:	6a 01                	push   $0x1
    384a:	57                   	push   %edi
    384b:	56                   	push   %esi
        putc(fd, *ap);
    384c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    384f:	e8 5f fd ff ff       	call   35b3 <write>
        ap++;
    3854:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3858:	83 c4 10             	add    $0x10,%esp
      state = 0;
    385b:	31 c9                	xor    %ecx,%ecx
    385d:	e9 e0 fe ff ff       	jmp    3742 <printf+0x52>
    3862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    3868:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    386b:	83 ec 04             	sub    $0x4,%esp
    386e:	e9 2a ff ff ff       	jmp    379d <printf+0xad>
    3873:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3877:	90                   	nop
          s = "(null)";
    3878:	ba 62 3a 00 00       	mov    $0x3a62,%edx
        while(*s != 0){
    387d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    3880:	b8 28 00 00 00       	mov    $0x28,%eax
    3885:	89 d3                	mov    %edx,%ebx
    3887:	e9 74 ff ff ff       	jmp    3800 <printf+0x110>
    388c:	66 90                	xchg   %ax,%ax
    388e:	66 90                	xchg   %ax,%ax

00003890 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3890:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3891:	a1 04 3e 00 00       	mov    0x3e04,%eax
{
    3896:	89 e5                	mov    %esp,%ebp
    3898:	57                   	push   %edi
    3899:	56                   	push   %esi
    389a:	53                   	push   %ebx
    389b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    389e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    38a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    38a8:	89 c2                	mov    %eax,%edx
    38aa:	8b 00                	mov    (%eax),%eax
    38ac:	39 ca                	cmp    %ecx,%edx
    38ae:	73 30                	jae    38e0 <free+0x50>
    38b0:	39 c1                	cmp    %eax,%ecx
    38b2:	72 04                	jb     38b8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    38b4:	39 c2                	cmp    %eax,%edx
    38b6:	72 f0                	jb     38a8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    38b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    38bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    38be:	39 f8                	cmp    %edi,%eax
    38c0:	74 30                	je     38f2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    38c2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    38c5:	8b 42 04             	mov    0x4(%edx),%eax
    38c8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    38cb:	39 f1                	cmp    %esi,%ecx
    38cd:	74 3a                	je     3909 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    38cf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    38d1:	5b                   	pop    %ebx
  freep = p;
    38d2:	89 15 04 3e 00 00    	mov    %edx,0x3e04
}
    38d8:	5e                   	pop    %esi
    38d9:	5f                   	pop    %edi
    38da:	5d                   	pop    %ebp
    38db:	c3                   	ret    
    38dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    38e0:	39 c2                	cmp    %eax,%edx
    38e2:	72 c4                	jb     38a8 <free+0x18>
    38e4:	39 c1                	cmp    %eax,%ecx
    38e6:	73 c0                	jae    38a8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    38e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    38eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    38ee:	39 f8                	cmp    %edi,%eax
    38f0:	75 d0                	jne    38c2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    38f2:	03 70 04             	add    0x4(%eax),%esi
    38f5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    38f8:	8b 02                	mov    (%edx),%eax
    38fa:	8b 00                	mov    (%eax),%eax
    38fc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    38ff:	8b 42 04             	mov    0x4(%edx),%eax
    3902:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3905:	39 f1                	cmp    %esi,%ecx
    3907:	75 c6                	jne    38cf <free+0x3f>
    p->s.size += bp->s.size;
    3909:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    390c:	89 15 04 3e 00 00    	mov    %edx,0x3e04
    p->s.size += bp->s.size;
    3912:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3915:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3918:	89 0a                	mov    %ecx,(%edx)
}
    391a:	5b                   	pop    %ebx
    391b:	5e                   	pop    %esi
    391c:	5f                   	pop    %edi
    391d:	5d                   	pop    %ebp
    391e:	c3                   	ret    
    391f:	90                   	nop

00003920 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3920:	55                   	push   %ebp
    3921:	89 e5                	mov    %esp,%ebp
    3923:	57                   	push   %edi
    3924:	56                   	push   %esi
    3925:	53                   	push   %ebx
    3926:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3929:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    392c:	8b 3d 04 3e 00 00    	mov    0x3e04,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3932:	8d 70 07             	lea    0x7(%eax),%esi
    3935:	c1 ee 03             	shr    $0x3,%esi
    3938:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    393b:	85 ff                	test   %edi,%edi
    393d:	0f 84 9d 00 00 00    	je     39e0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3943:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3945:	8b 4a 04             	mov    0x4(%edx),%ecx
    3948:	39 f1                	cmp    %esi,%ecx
    394a:	73 6a                	jae    39b6 <malloc+0x96>
    394c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3951:	39 de                	cmp    %ebx,%esi
    3953:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3956:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    395d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3960:	eb 17                	jmp    3979 <malloc+0x59>
    3962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3968:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    396a:	8b 48 04             	mov    0x4(%eax),%ecx
    396d:	39 f1                	cmp    %esi,%ecx
    396f:	73 4f                	jae    39c0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3971:	8b 3d 04 3e 00 00    	mov    0x3e04,%edi
    3977:	89 c2                	mov    %eax,%edx
    3979:	39 d7                	cmp    %edx,%edi
    397b:	75 eb                	jne    3968 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    397d:	83 ec 0c             	sub    $0xc,%esp
    3980:	ff 75 e4             	push   -0x1c(%ebp)
    3983:	e8 93 fc ff ff       	call   361b <sbrk>
  if(p == (char*)-1)
    3988:	83 c4 10             	add    $0x10,%esp
    398b:	83 f8 ff             	cmp    $0xffffffff,%eax
    398e:	74 1c                	je     39ac <malloc+0x8c>
  hp->s.size = nu;
    3990:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3993:	83 ec 0c             	sub    $0xc,%esp
    3996:	83 c0 08             	add    $0x8,%eax
    3999:	50                   	push   %eax
    399a:	e8 f1 fe ff ff       	call   3890 <free>
  return freep;
    399f:	8b 15 04 3e 00 00    	mov    0x3e04,%edx
      if((p = morecore(nunits)) == 0)
    39a5:	83 c4 10             	add    $0x10,%esp
    39a8:	85 d2                	test   %edx,%edx
    39aa:	75 bc                	jne    3968 <malloc+0x48>
        return 0;
  }
}
    39ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    39af:	31 c0                	xor    %eax,%eax
}
    39b1:	5b                   	pop    %ebx
    39b2:	5e                   	pop    %esi
    39b3:	5f                   	pop    %edi
    39b4:	5d                   	pop    %ebp
    39b5:	c3                   	ret    
    if(p->s.size >= nunits){
    39b6:	89 d0                	mov    %edx,%eax
    39b8:	89 fa                	mov    %edi,%edx
    39ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    39c0:	39 ce                	cmp    %ecx,%esi
    39c2:	74 4c                	je     3a10 <malloc+0xf0>
        p->s.size -= nunits;
    39c4:	29 f1                	sub    %esi,%ecx
    39c6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    39c9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    39cc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    39cf:	89 15 04 3e 00 00    	mov    %edx,0x3e04
}
    39d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    39d8:	83 c0 08             	add    $0x8,%eax
}
    39db:	5b                   	pop    %ebx
    39dc:	5e                   	pop    %esi
    39dd:	5f                   	pop    %edi
    39de:	5d                   	pop    %ebp
    39df:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    39e0:	c7 05 04 3e 00 00 08 	movl   $0x3e08,0x3e04
    39e7:	3e 00 00 
    base.s.size = 0;
    39ea:	bf 08 3e 00 00       	mov    $0x3e08,%edi
    base.s.ptr = freep = prevp = &base;
    39ef:	c7 05 08 3e 00 00 08 	movl   $0x3e08,0x3e08
    39f6:	3e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    39f9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    39fb:	c7 05 0c 3e 00 00 00 	movl   $0x0,0x3e0c
    3a02:	00 00 00 
    if(p->s.size >= nunits){
    3a05:	e9 42 ff ff ff       	jmp    394c <malloc+0x2c>
    3a0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3a10:	8b 08                	mov    (%eax),%ecx
    3a12:	89 0a                	mov    %ecx,(%edx)
    3a14:	eb b9                	jmp    39cf <malloc+0xaf>
