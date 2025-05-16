
_grep:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
  }
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
    3010:	51                   	push   %ecx
    3011:	83 ec 18             	sub    $0x18,%esp
    3014:	8b 01                	mov    (%ecx),%eax
    3016:	8b 59 04             	mov    0x4(%ecx),%ebx
    3019:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;
  char *pattern;

  if(argc <= 1){
    301c:	83 f8 01             	cmp    $0x1,%eax
    301f:	7e 6f                	jle    3090 <main+0x90>
    printf(2, "usage: grep pattern [file ...]\n");
    exit();
  }
  pattern = argv[1];
    3021:	8b 43 04             	mov    0x4(%ebx),%eax
    3024:	83 c3 08             	add    $0x8,%ebx

  if(argc <= 2){
    3027:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    grep(pattern, 0);
    exit();
  }

  for(i = 2; i < argc; i++){
    302b:	be 02 00 00 00       	mov    $0x2,%esi
  pattern = argv[1];
    3030:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
    3033:	75 2d                	jne    3062 <main+0x62>
    3035:	eb 6c                	jmp    30a3 <main+0xa3>
    3037:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    303e:	66 90                	xchg   %ax,%ax
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit();
    }
    grep(pattern, fd);
    3040:	83 ec 08             	sub    $0x8,%esp
  for(i = 2; i < argc; i++){
    3043:	83 c6 01             	add    $0x1,%esi
    3046:	83 c3 04             	add    $0x4,%ebx
    grep(pattern, fd);
    3049:	50                   	push   %eax
    304a:	ff 75 e0             	push   -0x20(%ebp)
    304d:	e8 7e 01 00 00       	call   31d0 <grep>
    close(fd);
    3052:	89 3c 24             	mov    %edi,(%esp)
    3055:	e8 91 05 00 00       	call   35eb <close>
  for(i = 2; i < argc; i++){
    305a:	83 c4 10             	add    $0x10,%esp
    305d:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
    3060:	7e 29                	jle    308b <main+0x8b>
    if((fd = open(argv[i], 0)) < 0){
    3062:	83 ec 08             	sub    $0x8,%esp
    3065:	6a 00                	push   $0x0
    3067:	ff 33                	push   (%ebx)
    3069:	e8 95 05 00 00       	call   3603 <open>
    306e:	83 c4 10             	add    $0x10,%esp
    3071:	89 c7                	mov    %eax,%edi
    3073:	85 c0                	test   %eax,%eax
    3075:	79 c9                	jns    3040 <main+0x40>
      printf(1, "grep: cannot open %s\n", argv[i]);
    3077:	50                   	push   %eax
    3078:	ff 33                	push   (%ebx)
    307a:	68 68 3a 00 00       	push   $0x3a68
    307f:	6a 01                	push   $0x1
    3081:	e8 9a 06 00 00       	call   3720 <printf>
      exit();
    3086:	e8 38 05 00 00       	call   35c3 <exit>
  }
  exit();
    308b:	e8 33 05 00 00       	call   35c3 <exit>
    printf(2, "usage: grep pattern [file ...]\n");
    3090:	51                   	push   %ecx
    3091:	51                   	push   %ecx
    3092:	68 48 3a 00 00       	push   $0x3a48
    3097:	6a 02                	push   $0x2
    3099:	e8 82 06 00 00       	call   3720 <printf>
    exit();
    309e:	e8 20 05 00 00       	call   35c3 <exit>
    grep(pattern, 0);
    30a3:	52                   	push   %edx
    30a4:	52                   	push   %edx
    30a5:	6a 00                	push   $0x0
    30a7:	50                   	push   %eax
    30a8:	e8 23 01 00 00       	call   31d0 <grep>
    exit();
    30ad:	e8 11 05 00 00       	call   35c3 <exit>
    30b2:	66 90                	xchg   %ax,%ax
    30b4:	66 90                	xchg   %ax,%ax
    30b6:	66 90                	xchg   %ax,%ax
    30b8:	66 90                	xchg   %ax,%ax
    30ba:	66 90                	xchg   %ax,%ax
    30bc:	66 90                	xchg   %ax,%ax
    30be:	66 90                	xchg   %ax,%ax

000030c0 <matchhere>:
  return 0;
}

// matchhere: search for re at beginning of text
int matchhere(char *re, char *text)
{
    30c0:	55                   	push   %ebp
    30c1:	89 e5                	mov    %esp,%ebp
    30c3:	57                   	push   %edi
    30c4:	56                   	push   %esi
    30c5:	53                   	push   %ebx
    30c6:	83 ec 0c             	sub    $0xc,%esp
    30c9:	8b 75 08             	mov    0x8(%ebp),%esi
    30cc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(re[0] == '\0')
    30cf:	0f b6 06             	movzbl (%esi),%eax
    30d2:	84 c0                	test   %al,%al
    30d4:	75 2d                	jne    3103 <matchhere+0x43>
    30d6:	e9 7d 00 00 00       	jmp    3158 <matchhere+0x98>
    30db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    30df:	90                   	nop
    return 1;
  if(re[1] == '*')
    return matchstar(re[0], re+2, text);
  if(re[0] == '$' && re[1] == '\0')
    return *text == '\0';
    30e0:	0f b6 0f             	movzbl (%edi),%ecx
  if(re[0] == '$' && re[1] == '\0')
    30e3:	80 fb 24             	cmp    $0x24,%bl
    30e6:	75 04                	jne    30ec <matchhere+0x2c>
    30e8:	84 c0                	test   %al,%al
    30ea:	74 79                	je     3165 <matchhere+0xa5>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
    30ec:	84 c9                	test   %cl,%cl
    30ee:	74 58                	je     3148 <matchhere+0x88>
    30f0:	38 d9                	cmp    %bl,%cl
    30f2:	74 05                	je     30f9 <matchhere+0x39>
    30f4:	80 fb 2e             	cmp    $0x2e,%bl
    30f7:	75 4f                	jne    3148 <matchhere+0x88>
    return matchhere(re+1, text+1);
    30f9:	83 c7 01             	add    $0x1,%edi
    30fc:	83 c6 01             	add    $0x1,%esi
  if(re[0] == '\0')
    30ff:	84 c0                	test   %al,%al
    3101:	74 55                	je     3158 <matchhere+0x98>
  if(re[1] == '*')
    3103:	0f be d8             	movsbl %al,%ebx
    3106:	0f b6 46 01          	movzbl 0x1(%esi),%eax
    310a:	3c 2a                	cmp    $0x2a,%al
    310c:	75 d2                	jne    30e0 <matchhere+0x20>
    return matchstar(re[0], re+2, text);
    310e:	83 c6 02             	add    $0x2,%esi
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
    3111:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
    3118:	83 ec 08             	sub    $0x8,%esp
    311b:	57                   	push   %edi
    311c:	56                   	push   %esi
    311d:	e8 9e ff ff ff       	call   30c0 <matchhere>
    3122:	83 c4 10             	add    $0x10,%esp
    3125:	85 c0                	test   %eax,%eax
    3127:	75 2f                	jne    3158 <matchhere+0x98>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
    3129:	0f be 17             	movsbl (%edi),%edx
    312c:	84 d2                	test   %dl,%dl
    312e:	74 0c                	je     313c <matchhere+0x7c>
    3130:	83 c7 01             	add    $0x1,%edi
    3133:	83 fb 2e             	cmp    $0x2e,%ebx
    3136:	74 e0                	je     3118 <matchhere+0x58>
    3138:	39 da                	cmp    %ebx,%edx
    313a:	74 dc                	je     3118 <matchhere+0x58>
}
    313c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    313f:	5b                   	pop    %ebx
    3140:	5e                   	pop    %esi
    3141:	5f                   	pop    %edi
    3142:	5d                   	pop    %ebp
    3143:	c3                   	ret    
    3144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3148:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
    314b:	31 c0                	xor    %eax,%eax
}
    314d:	5b                   	pop    %ebx
    314e:	5e                   	pop    %esi
    314f:	5f                   	pop    %edi
    3150:	5d                   	pop    %ebp
    3151:	c3                   	ret    
    3152:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3158:	8d 65 f4             	lea    -0xc(%ebp),%esp
    return 1;
    315b:	b8 01 00 00 00       	mov    $0x1,%eax
}
    3160:	5b                   	pop    %ebx
    3161:	5e                   	pop    %esi
    3162:	5f                   	pop    %edi
    3163:	5d                   	pop    %ebp
    3164:	c3                   	ret    
    return *text == '\0';
    3165:	31 c0                	xor    %eax,%eax
    3167:	84 c9                	test   %cl,%cl
    3169:	0f 94 c0             	sete   %al
    316c:	eb ce                	jmp    313c <matchhere+0x7c>
    316e:	66 90                	xchg   %ax,%ax

00003170 <match>:
{
    3170:	55                   	push   %ebp
    3171:	89 e5                	mov    %esp,%ebp
    3173:	56                   	push   %esi
    3174:	53                   	push   %ebx
    3175:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3178:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(re[0] == '^')
    317b:	80 3b 5e             	cmpb   $0x5e,(%ebx)
    317e:	75 11                	jne    3191 <match+0x21>
    3180:	eb 2e                	jmp    31b0 <match+0x40>
    3182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
    3188:	83 c6 01             	add    $0x1,%esi
    318b:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
    318f:	74 16                	je     31a7 <match+0x37>
    if(matchhere(re, text))
    3191:	83 ec 08             	sub    $0x8,%esp
    3194:	56                   	push   %esi
    3195:	53                   	push   %ebx
    3196:	e8 25 ff ff ff       	call   30c0 <matchhere>
    319b:	83 c4 10             	add    $0x10,%esp
    319e:	85 c0                	test   %eax,%eax
    31a0:	74 e6                	je     3188 <match+0x18>
      return 1;
    31a2:	b8 01 00 00 00       	mov    $0x1,%eax
}
    31a7:	8d 65 f8             	lea    -0x8(%ebp),%esp
    31aa:	5b                   	pop    %ebx
    31ab:	5e                   	pop    %esi
    31ac:	5d                   	pop    %ebp
    31ad:	c3                   	ret    
    31ae:	66 90                	xchg   %ax,%ax
    return matchhere(re+1, text);
    31b0:	83 c3 01             	add    $0x1,%ebx
    31b3:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
    31b6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    31b9:	5b                   	pop    %ebx
    31ba:	5e                   	pop    %esi
    31bb:	5d                   	pop    %ebp
    return matchhere(re+1, text);
    31bc:	e9 ff fe ff ff       	jmp    30c0 <matchhere>
    31c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31cf:	90                   	nop

000031d0 <grep>:
{
    31d0:	55                   	push   %ebp
    31d1:	89 e5                	mov    %esp,%ebp
    31d3:	57                   	push   %edi
    31d4:	56                   	push   %esi
    31d5:	53                   	push   %ebx
    31d6:	83 ec 1c             	sub    $0x1c,%esp
    31d9:	8b 7d 08             	mov    0x8(%ebp),%edi
  m = 0;
    31dc:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    return matchhere(re+1, text);
    31e3:	8d 47 01             	lea    0x1(%edi),%eax
    31e6:	89 45 d8             	mov    %eax,-0x28(%ebp)
    31e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
    31f0:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    31f3:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    31f8:	83 ec 04             	sub    $0x4,%esp
    31fb:	29 c8                	sub    %ecx,%eax
    31fd:	50                   	push   %eax
    31fe:	8d 81 80 3e 00 00    	lea    0x3e80(%ecx),%eax
    3204:	50                   	push   %eax
    3205:	ff 75 0c             	push   0xc(%ebp)
    3208:	e8 ce 03 00 00       	call   35db <read>
    320d:	83 c4 10             	add    $0x10,%esp
    3210:	85 c0                	test   %eax,%eax
    3212:	0f 8e e5 00 00 00    	jle    32fd <grep+0x12d>
    m += n;
    3218:	01 45 dc             	add    %eax,-0x24(%ebp)
    321b:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    p = buf;
    321e:	c7 45 e4 80 3e 00 00 	movl   $0x3e80,-0x1c(%ebp)
    buf[m] = '\0';
    3225:	c6 81 80 3e 00 00 00 	movb   $0x0,0x3e80(%ecx)
    while((q = strchr(p, '\n')) != 0){
    322c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3230:	83 ec 08             	sub    $0x8,%esp
    3233:	6a 0a                	push   $0xa
    3235:	ff 75 e4             	push   -0x1c(%ebp)
    3238:	e8 13 02 00 00       	call   3450 <strchr>
    323d:	83 c4 10             	add    $0x10,%esp
    3240:	89 c3                	mov    %eax,%ebx
    3242:	85 c0                	test   %eax,%eax
    3244:	74 72                	je     32b8 <grep+0xe8>
      *q = 0;
    3246:	c6 03 00             	movb   $0x0,(%ebx)
        write(1, p, q+1 - p);
    3249:	8d 43 01             	lea    0x1(%ebx),%eax
  if(re[0] == '^')
    324c:	80 3f 5e             	cmpb   $0x5e,(%edi)
        write(1, p, q+1 - p);
    324f:	89 45 e0             	mov    %eax,-0x20(%ebp)
    3252:	8b 75 e4             	mov    -0x1c(%ebp),%esi
  if(re[0] == '^')
    3255:	75 12                	jne    3269 <grep+0x99>
    3257:	eb 47                	jmp    32a0 <grep+0xd0>
    3259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  }while(*text++ != '\0');
    3260:	83 c6 01             	add    $0x1,%esi
    3263:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
    3267:	74 2b                	je     3294 <grep+0xc4>
    if(matchhere(re, text))
    3269:	83 ec 08             	sub    $0x8,%esp
    326c:	56                   	push   %esi
    326d:	57                   	push   %edi
    326e:	e8 4d fe ff ff       	call   30c0 <matchhere>
    3273:	83 c4 10             	add    $0x10,%esp
    3276:	85 c0                	test   %eax,%eax
    3278:	74 e6                	je     3260 <grep+0x90>
        write(1, p, q+1 - p);
    327a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    327d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    3280:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
    3283:	c6 03 0a             	movb   $0xa,(%ebx)
        write(1, p, q+1 - p);
    3286:	29 d0                	sub    %edx,%eax
    3288:	50                   	push   %eax
    3289:	52                   	push   %edx
    328a:	6a 01                	push   $0x1
    328c:	e8 52 03 00 00       	call   35e3 <write>
    3291:	83 c4 10             	add    $0x10,%esp
      p = q+1;
    3294:	8b 45 e0             	mov    -0x20(%ebp),%eax
    3297:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    329a:	eb 94                	jmp    3230 <grep+0x60>
    329c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return matchhere(re+1, text);
    32a0:	83 ec 08             	sub    $0x8,%esp
    32a3:	56                   	push   %esi
    32a4:	ff 75 d8             	push   -0x28(%ebp)
    32a7:	e8 14 fe ff ff       	call   30c0 <matchhere>
    32ac:	83 c4 10             	add    $0x10,%esp
      if(match(pattern, p)){
    32af:	85 c0                	test   %eax,%eax
    32b1:	74 e1                	je     3294 <grep+0xc4>
    32b3:	eb c5                	jmp    327a <grep+0xaa>
    32b5:	8d 76 00             	lea    0x0(%esi),%esi
    if(p == buf)
    32b8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    32bb:	81 fa 80 3e 00 00    	cmp    $0x3e80,%edx
    32c1:	74 2e                	je     32f1 <grep+0x121>
    if(m > 0){
    32c3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    32c6:	85 c9                	test   %ecx,%ecx
    32c8:	0f 8e 22 ff ff ff    	jle    31f0 <grep+0x20>
      m -= p - buf;
    32ce:	89 d0                	mov    %edx,%eax
      memmove(buf, p, m);
    32d0:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
    32d3:	2d 80 3e 00 00       	sub    $0x3e80,%eax
    32d8:	29 c1                	sub    %eax,%ecx
      memmove(buf, p, m);
    32da:	51                   	push   %ecx
    32db:	52                   	push   %edx
    32dc:	68 80 3e 00 00       	push   $0x3e80
      m -= p - buf;
    32e1:	89 4d dc             	mov    %ecx,-0x24(%ebp)
      memmove(buf, p, m);
    32e4:	e8 a7 02 00 00       	call   3590 <memmove>
    32e9:	83 c4 10             	add    $0x10,%esp
    32ec:	e9 ff fe ff ff       	jmp    31f0 <grep+0x20>
      m = 0;
    32f1:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    32f8:	e9 f3 fe ff ff       	jmp    31f0 <grep+0x20>
}
    32fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3300:	5b                   	pop    %ebx
    3301:	5e                   	pop    %esi
    3302:	5f                   	pop    %edi
    3303:	5d                   	pop    %ebp
    3304:	c3                   	ret    
    3305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    330c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003310 <matchstar>:
{
    3310:	55                   	push   %ebp
    3311:	89 e5                	mov    %esp,%ebp
    3313:	57                   	push   %edi
    3314:	56                   	push   %esi
    3315:	53                   	push   %ebx
    3316:	83 ec 0c             	sub    $0xc,%esp
    3319:	8b 5d 08             	mov    0x8(%ebp),%ebx
    331c:	8b 75 0c             	mov    0xc(%ebp),%esi
    331f:	8b 7d 10             	mov    0x10(%ebp),%edi
    3322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(matchhere(re, text))
    3328:	83 ec 08             	sub    $0x8,%esp
    332b:	57                   	push   %edi
    332c:	56                   	push   %esi
    332d:	e8 8e fd ff ff       	call   30c0 <matchhere>
    3332:	83 c4 10             	add    $0x10,%esp
    3335:	85 c0                	test   %eax,%eax
    3337:	75 1f                	jne    3358 <matchstar+0x48>
  }while(*text!='\0' && (*text++==c || c=='.'));
    3339:	0f be 17             	movsbl (%edi),%edx
    333c:	84 d2                	test   %dl,%dl
    333e:	74 0c                	je     334c <matchstar+0x3c>
    3340:	83 c7 01             	add    $0x1,%edi
    3343:	39 da                	cmp    %ebx,%edx
    3345:	74 e1                	je     3328 <matchstar+0x18>
    3347:	83 fb 2e             	cmp    $0x2e,%ebx
    334a:	74 dc                	je     3328 <matchstar+0x18>
}
    334c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    334f:	5b                   	pop    %ebx
    3350:	5e                   	pop    %esi
    3351:	5f                   	pop    %edi
    3352:	5d                   	pop    %ebp
    3353:	c3                   	ret    
    3354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3358:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return 1;
    335b:	b8 01 00 00 00       	mov    $0x1,%eax
}
    3360:	5b                   	pop    %ebx
    3361:	5e                   	pop    %esi
    3362:	5f                   	pop    %edi
    3363:	5d                   	pop    %ebp
    3364:	c3                   	ret    
    3365:	66 90                	xchg   %ax,%ax
    3367:	66 90                	xchg   %ax,%ax
    3369:	66 90                	xchg   %ax,%ax
    336b:	66 90                	xchg   %ax,%ax
    336d:	66 90                	xchg   %ax,%ax
    336f:	90                   	nop

00003370 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3370:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3371:	31 c0                	xor    %eax,%eax
{
    3373:	89 e5                	mov    %esp,%ebp
    3375:	53                   	push   %ebx
    3376:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3379:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    337c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3380:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3384:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3387:	83 c0 01             	add    $0x1,%eax
    338a:	84 d2                	test   %dl,%dl
    338c:	75 f2                	jne    3380 <strcpy+0x10>
    ;
  return os;
}
    338e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3391:	89 c8                	mov    %ecx,%eax
    3393:	c9                   	leave  
    3394:	c3                   	ret    
    3395:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    339c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000033a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    33a0:	55                   	push   %ebp
    33a1:	89 e5                	mov    %esp,%ebp
    33a3:	53                   	push   %ebx
    33a4:	8b 55 08             	mov    0x8(%ebp),%edx
    33a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    33aa:	0f b6 02             	movzbl (%edx),%eax
    33ad:	84 c0                	test   %al,%al
    33af:	75 17                	jne    33c8 <strcmp+0x28>
    33b1:	eb 3a                	jmp    33ed <strcmp+0x4d>
    33b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    33b7:	90                   	nop
    33b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    33bc:	83 c2 01             	add    $0x1,%edx
    33bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    33c2:	84 c0                	test   %al,%al
    33c4:	74 1a                	je     33e0 <strcmp+0x40>
    p++, q++;
    33c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    33c8:	0f b6 19             	movzbl (%ecx),%ebx
    33cb:	38 c3                	cmp    %al,%bl
    33cd:	74 e9                	je     33b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    33cf:	29 d8                	sub    %ebx,%eax
}
    33d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    33d4:	c9                   	leave  
    33d5:	c3                   	ret    
    33d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    33e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    33e4:	31 c0                	xor    %eax,%eax
    33e6:	29 d8                	sub    %ebx,%eax
}
    33e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    33eb:	c9                   	leave  
    33ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    33ed:	0f b6 19             	movzbl (%ecx),%ebx
    33f0:	31 c0                	xor    %eax,%eax
    33f2:	eb db                	jmp    33cf <strcmp+0x2f>
    33f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    33ff:	90                   	nop

00003400 <strlen>:

uint
strlen(const char *s)
{
    3400:	55                   	push   %ebp
    3401:	89 e5                	mov    %esp,%ebp
    3403:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3406:	80 3a 00             	cmpb   $0x0,(%edx)
    3409:	74 15                	je     3420 <strlen+0x20>
    340b:	31 c0                	xor    %eax,%eax
    340d:	8d 76 00             	lea    0x0(%esi),%esi
    3410:	83 c0 01             	add    $0x1,%eax
    3413:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3417:	89 c1                	mov    %eax,%ecx
    3419:	75 f5                	jne    3410 <strlen+0x10>
    ;
  return n;
}
    341b:	89 c8                	mov    %ecx,%eax
    341d:	5d                   	pop    %ebp
    341e:	c3                   	ret    
    341f:	90                   	nop
  for(n = 0; s[n]; n++)
    3420:	31 c9                	xor    %ecx,%ecx
}
    3422:	5d                   	pop    %ebp
    3423:	89 c8                	mov    %ecx,%eax
    3425:	c3                   	ret    
    3426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    342d:	8d 76 00             	lea    0x0(%esi),%esi

00003430 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3430:	55                   	push   %ebp
    3431:	89 e5                	mov    %esp,%ebp
    3433:	57                   	push   %edi
    3434:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3437:	8b 4d 10             	mov    0x10(%ebp),%ecx
    343a:	8b 45 0c             	mov    0xc(%ebp),%eax
    343d:	89 d7                	mov    %edx,%edi
    343f:	fc                   	cld    
    3440:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3442:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3445:	89 d0                	mov    %edx,%eax
    3447:	c9                   	leave  
    3448:	c3                   	ret    
    3449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003450 <strchr>:

char*
strchr(const char *s, char c)
{
    3450:	55                   	push   %ebp
    3451:	89 e5                	mov    %esp,%ebp
    3453:	8b 45 08             	mov    0x8(%ebp),%eax
    3456:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    345a:	0f b6 10             	movzbl (%eax),%edx
    345d:	84 d2                	test   %dl,%dl
    345f:	75 12                	jne    3473 <strchr+0x23>
    3461:	eb 1d                	jmp    3480 <strchr+0x30>
    3463:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3467:	90                   	nop
    3468:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    346c:	83 c0 01             	add    $0x1,%eax
    346f:	84 d2                	test   %dl,%dl
    3471:	74 0d                	je     3480 <strchr+0x30>
    if(*s == c)
    3473:	38 d1                	cmp    %dl,%cl
    3475:	75 f1                	jne    3468 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3477:	5d                   	pop    %ebp
    3478:	c3                   	ret    
    3479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3480:	31 c0                	xor    %eax,%eax
}
    3482:	5d                   	pop    %ebp
    3483:	c3                   	ret    
    3484:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    348b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    348f:	90                   	nop

00003490 <gets>:

char*
gets(char *buf, int max)
{
    3490:	55                   	push   %ebp
    3491:	89 e5                	mov    %esp,%ebp
    3493:	57                   	push   %edi
    3494:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3495:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3498:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3499:	31 db                	xor    %ebx,%ebx
{
    349b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    349e:	eb 27                	jmp    34c7 <gets+0x37>
    cc = read(0, &c, 1);
    34a0:	83 ec 04             	sub    $0x4,%esp
    34a3:	6a 01                	push   $0x1
    34a5:	57                   	push   %edi
    34a6:	6a 00                	push   $0x0
    34a8:	e8 2e 01 00 00       	call   35db <read>
    if(cc < 1)
    34ad:	83 c4 10             	add    $0x10,%esp
    34b0:	85 c0                	test   %eax,%eax
    34b2:	7e 1d                	jle    34d1 <gets+0x41>
      break;
    buf[i++] = c;
    34b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    34b8:	8b 55 08             	mov    0x8(%ebp),%edx
    34bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    34bf:	3c 0a                	cmp    $0xa,%al
    34c1:	74 1d                	je     34e0 <gets+0x50>
    34c3:	3c 0d                	cmp    $0xd,%al
    34c5:	74 19                	je     34e0 <gets+0x50>
  for(i=0; i+1 < max; ){
    34c7:	89 de                	mov    %ebx,%esi
    34c9:	83 c3 01             	add    $0x1,%ebx
    34cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    34cf:	7c cf                	jl     34a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    34d1:	8b 45 08             	mov    0x8(%ebp),%eax
    34d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    34d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34db:	5b                   	pop    %ebx
    34dc:	5e                   	pop    %esi
    34dd:	5f                   	pop    %edi
    34de:	5d                   	pop    %ebp
    34df:	c3                   	ret    
  buf[i] = '\0';
    34e0:	8b 45 08             	mov    0x8(%ebp),%eax
    34e3:	89 de                	mov    %ebx,%esi
    34e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    34e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34ec:	5b                   	pop    %ebx
    34ed:	5e                   	pop    %esi
    34ee:	5f                   	pop    %edi
    34ef:	5d                   	pop    %ebp
    34f0:	c3                   	ret    
    34f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34ff:	90                   	nop

00003500 <stat>:

int
stat(const char *n, struct stat *st)
{
    3500:	55                   	push   %ebp
    3501:	89 e5                	mov    %esp,%ebp
    3503:	56                   	push   %esi
    3504:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3505:	83 ec 08             	sub    $0x8,%esp
    3508:	6a 00                	push   $0x0
    350a:	ff 75 08             	push   0x8(%ebp)
    350d:	e8 f1 00 00 00       	call   3603 <open>
  if(fd < 0)
    3512:	83 c4 10             	add    $0x10,%esp
    3515:	85 c0                	test   %eax,%eax
    3517:	78 27                	js     3540 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3519:	83 ec 08             	sub    $0x8,%esp
    351c:	ff 75 0c             	push   0xc(%ebp)
    351f:	89 c3                	mov    %eax,%ebx
    3521:	50                   	push   %eax
    3522:	e8 f4 00 00 00       	call   361b <fstat>
  close(fd);
    3527:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    352a:	89 c6                	mov    %eax,%esi
  close(fd);
    352c:	e8 ba 00 00 00       	call   35eb <close>
  return r;
    3531:	83 c4 10             	add    $0x10,%esp
}
    3534:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3537:	89 f0                	mov    %esi,%eax
    3539:	5b                   	pop    %ebx
    353a:	5e                   	pop    %esi
    353b:	5d                   	pop    %ebp
    353c:	c3                   	ret    
    353d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3540:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3545:	eb ed                	jmp    3534 <stat+0x34>
    3547:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    354e:	66 90                	xchg   %ax,%ax

00003550 <atoi>:

int
atoi(const char *s)
{
    3550:	55                   	push   %ebp
    3551:	89 e5                	mov    %esp,%ebp
    3553:	53                   	push   %ebx
    3554:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3557:	0f be 02             	movsbl (%edx),%eax
    355a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    355d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3560:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3565:	77 1e                	ja     3585 <atoi+0x35>
    3567:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    356e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3570:	83 c2 01             	add    $0x1,%edx
    3573:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3576:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    357a:	0f be 02             	movsbl (%edx),%eax
    357d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3580:	80 fb 09             	cmp    $0x9,%bl
    3583:	76 eb                	jbe    3570 <atoi+0x20>
  return n;
}
    3585:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3588:	89 c8                	mov    %ecx,%eax
    358a:	c9                   	leave  
    358b:	c3                   	ret    
    358c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003590 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3590:	55                   	push   %ebp
    3591:	89 e5                	mov    %esp,%ebp
    3593:	57                   	push   %edi
    3594:	8b 45 10             	mov    0x10(%ebp),%eax
    3597:	8b 55 08             	mov    0x8(%ebp),%edx
    359a:	56                   	push   %esi
    359b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    359e:	85 c0                	test   %eax,%eax
    35a0:	7e 13                	jle    35b5 <memmove+0x25>
    35a2:	01 d0                	add    %edx,%eax
  dst = vdst;
    35a4:	89 d7                	mov    %edx,%edi
    35a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    35ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    35b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    35b1:	39 f8                	cmp    %edi,%eax
    35b3:	75 fb                	jne    35b0 <memmove+0x20>
  return vdst;
}
    35b5:	5e                   	pop    %esi
    35b6:	89 d0                	mov    %edx,%eax
    35b8:	5f                   	pop    %edi
    35b9:	5d                   	pop    %ebp
    35ba:	c3                   	ret    

000035bb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    35bb:	b8 01 00 00 00       	mov    $0x1,%eax
    35c0:	cd 40                	int    $0x40
    35c2:	c3                   	ret    

000035c3 <exit>:
SYSCALL(exit)
    35c3:	b8 02 00 00 00       	mov    $0x2,%eax
    35c8:	cd 40                	int    $0x40
    35ca:	c3                   	ret    

000035cb <wait>:
SYSCALL(wait)
    35cb:	b8 03 00 00 00       	mov    $0x3,%eax
    35d0:	cd 40                	int    $0x40
    35d2:	c3                   	ret    

000035d3 <pipe>:
SYSCALL(pipe)
    35d3:	b8 04 00 00 00       	mov    $0x4,%eax
    35d8:	cd 40                	int    $0x40
    35da:	c3                   	ret    

000035db <read>:
SYSCALL(read)
    35db:	b8 05 00 00 00       	mov    $0x5,%eax
    35e0:	cd 40                	int    $0x40
    35e2:	c3                   	ret    

000035e3 <write>:
SYSCALL(write)
    35e3:	b8 10 00 00 00       	mov    $0x10,%eax
    35e8:	cd 40                	int    $0x40
    35ea:	c3                   	ret    

000035eb <close>:
SYSCALL(close)
    35eb:	b8 15 00 00 00       	mov    $0x15,%eax
    35f0:	cd 40                	int    $0x40
    35f2:	c3                   	ret    

000035f3 <kill>:
SYSCALL(kill)
    35f3:	b8 06 00 00 00       	mov    $0x6,%eax
    35f8:	cd 40                	int    $0x40
    35fa:	c3                   	ret    

000035fb <exec>:
SYSCALL(exec)
    35fb:	b8 07 00 00 00       	mov    $0x7,%eax
    3600:	cd 40                	int    $0x40
    3602:	c3                   	ret    

00003603 <open>:
SYSCALL(open)
    3603:	b8 0f 00 00 00       	mov    $0xf,%eax
    3608:	cd 40                	int    $0x40
    360a:	c3                   	ret    

0000360b <mknod>:
SYSCALL(mknod)
    360b:	b8 11 00 00 00       	mov    $0x11,%eax
    3610:	cd 40                	int    $0x40
    3612:	c3                   	ret    

00003613 <unlink>:
SYSCALL(unlink)
    3613:	b8 12 00 00 00       	mov    $0x12,%eax
    3618:	cd 40                	int    $0x40
    361a:	c3                   	ret    

0000361b <fstat>:
SYSCALL(fstat)
    361b:	b8 08 00 00 00       	mov    $0x8,%eax
    3620:	cd 40                	int    $0x40
    3622:	c3                   	ret    

00003623 <link>:
SYSCALL(link)
    3623:	b8 13 00 00 00       	mov    $0x13,%eax
    3628:	cd 40                	int    $0x40
    362a:	c3                   	ret    

0000362b <mkdir>:
SYSCALL(mkdir)
    362b:	b8 14 00 00 00       	mov    $0x14,%eax
    3630:	cd 40                	int    $0x40
    3632:	c3                   	ret    

00003633 <chdir>:
SYSCALL(chdir)
    3633:	b8 09 00 00 00       	mov    $0x9,%eax
    3638:	cd 40                	int    $0x40
    363a:	c3                   	ret    

0000363b <dup>:
SYSCALL(dup)
    363b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3640:	cd 40                	int    $0x40
    3642:	c3                   	ret    

00003643 <getpid>:
SYSCALL(getpid)
    3643:	b8 0b 00 00 00       	mov    $0xb,%eax
    3648:	cd 40                	int    $0x40
    364a:	c3                   	ret    

0000364b <sbrk>:
SYSCALL(sbrk)
    364b:	b8 0c 00 00 00       	mov    $0xc,%eax
    3650:	cd 40                	int    $0x40
    3652:	c3                   	ret    

00003653 <sleep>:
SYSCALL(sleep)
    3653:	b8 0d 00 00 00       	mov    $0xd,%eax
    3658:	cd 40                	int    $0x40
    365a:	c3                   	ret    

0000365b <uptime>:
SYSCALL(uptime)
    365b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3660:	cd 40                	int    $0x40
    3662:	c3                   	ret    
    3663:	66 90                	xchg   %ax,%ax
    3665:	66 90                	xchg   %ax,%ax
    3667:	66 90                	xchg   %ax,%ax
    3669:	66 90                	xchg   %ax,%ax
    366b:	66 90                	xchg   %ax,%ax
    366d:	66 90                	xchg   %ax,%ax
    366f:	90                   	nop

00003670 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3670:	55                   	push   %ebp
    3671:	89 e5                	mov    %esp,%ebp
    3673:	57                   	push   %edi
    3674:	56                   	push   %esi
    3675:	53                   	push   %ebx
    3676:	83 ec 3c             	sub    $0x3c,%esp
    3679:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    367c:	89 d1                	mov    %edx,%ecx
{
    367e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3681:	85 d2                	test   %edx,%edx
    3683:	0f 89 7f 00 00 00    	jns    3708 <printint+0x98>
    3689:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    368d:	74 79                	je     3708 <printint+0x98>
    neg = 1;
    368f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    3696:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    3698:	31 db                	xor    %ebx,%ebx
    369a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    369d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    36a0:	89 c8                	mov    %ecx,%eax
    36a2:	31 d2                	xor    %edx,%edx
    36a4:	89 cf                	mov    %ecx,%edi
    36a6:	f7 75 c4             	divl   -0x3c(%ebp)
    36a9:	0f b6 92 e0 3a 00 00 	movzbl 0x3ae0(%edx),%edx
    36b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    36b3:	89 d8                	mov    %ebx,%eax
    36b5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    36b8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    36bb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    36be:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    36c1:	76 dd                	jbe    36a0 <printint+0x30>
  if(neg)
    36c3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    36c6:	85 c9                	test   %ecx,%ecx
    36c8:	74 0c                	je     36d6 <printint+0x66>
    buf[i++] = '-';
    36ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    36cf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    36d1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    36d6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    36d9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    36dd:	eb 07                	jmp    36e6 <printint+0x76>
    36df:	90                   	nop
    putc(fd, buf[i]);
    36e0:	0f b6 13             	movzbl (%ebx),%edx
    36e3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    36e6:	83 ec 04             	sub    $0x4,%esp
    36e9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    36ec:	6a 01                	push   $0x1
    36ee:	56                   	push   %esi
    36ef:	57                   	push   %edi
    36f0:	e8 ee fe ff ff       	call   35e3 <write>
  while(--i >= 0)
    36f5:	83 c4 10             	add    $0x10,%esp
    36f8:	39 de                	cmp    %ebx,%esi
    36fa:	75 e4                	jne    36e0 <printint+0x70>
}
    36fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    36ff:	5b                   	pop    %ebx
    3700:	5e                   	pop    %esi
    3701:	5f                   	pop    %edi
    3702:	5d                   	pop    %ebp
    3703:	c3                   	ret    
    3704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3708:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    370f:	eb 87                	jmp    3698 <printint+0x28>
    3711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3718:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    371f:	90                   	nop

00003720 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3720:	55                   	push   %ebp
    3721:	89 e5                	mov    %esp,%ebp
    3723:	57                   	push   %edi
    3724:	56                   	push   %esi
    3725:	53                   	push   %ebx
    3726:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3729:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    372c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    372f:	0f b6 13             	movzbl (%ebx),%edx
    3732:	84 d2                	test   %dl,%dl
    3734:	74 6a                	je     37a0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    3736:	8d 45 10             	lea    0x10(%ebp),%eax
    3739:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    373c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    373f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3741:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3744:	eb 36                	jmp    377c <printf+0x5c>
    3746:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    374d:	8d 76 00             	lea    0x0(%esi),%esi
    3750:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3753:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3758:	83 f8 25             	cmp    $0x25,%eax
    375b:	74 15                	je     3772 <printf+0x52>
  write(fd, &c, 1);
    375d:	83 ec 04             	sub    $0x4,%esp
    3760:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3763:	6a 01                	push   $0x1
    3765:	57                   	push   %edi
    3766:	56                   	push   %esi
    3767:	e8 77 fe ff ff       	call   35e3 <write>
    376c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    376f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3772:	0f b6 13             	movzbl (%ebx),%edx
    3775:	83 c3 01             	add    $0x1,%ebx
    3778:	84 d2                	test   %dl,%dl
    377a:	74 24                	je     37a0 <printf+0x80>
    c = fmt[i] & 0xff;
    377c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    377f:	85 c9                	test   %ecx,%ecx
    3781:	74 cd                	je     3750 <printf+0x30>
      }
    } else if(state == '%'){
    3783:	83 f9 25             	cmp    $0x25,%ecx
    3786:	75 ea                	jne    3772 <printf+0x52>
      if(c == 'd'){
    3788:	83 f8 25             	cmp    $0x25,%eax
    378b:	0f 84 07 01 00 00    	je     3898 <printf+0x178>
    3791:	83 e8 63             	sub    $0x63,%eax
    3794:	83 f8 15             	cmp    $0x15,%eax
    3797:	77 17                	ja     37b0 <printf+0x90>
    3799:	ff 24 85 88 3a 00 00 	jmp    *0x3a88(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    37a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    37a3:	5b                   	pop    %ebx
    37a4:	5e                   	pop    %esi
    37a5:	5f                   	pop    %edi
    37a6:	5d                   	pop    %ebp
    37a7:	c3                   	ret    
    37a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    37af:	90                   	nop
  write(fd, &c, 1);
    37b0:	83 ec 04             	sub    $0x4,%esp
    37b3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    37b6:	6a 01                	push   $0x1
    37b8:	57                   	push   %edi
    37b9:	56                   	push   %esi
    37ba:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    37be:	e8 20 fe ff ff       	call   35e3 <write>
        putc(fd, c);
    37c3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    37c7:	83 c4 0c             	add    $0xc,%esp
    37ca:	88 55 e7             	mov    %dl,-0x19(%ebp)
    37cd:	6a 01                	push   $0x1
    37cf:	57                   	push   %edi
    37d0:	56                   	push   %esi
    37d1:	e8 0d fe ff ff       	call   35e3 <write>
        putc(fd, c);
    37d6:	83 c4 10             	add    $0x10,%esp
      state = 0;
    37d9:	31 c9                	xor    %ecx,%ecx
    37db:	eb 95                	jmp    3772 <printf+0x52>
    37dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    37e0:	83 ec 0c             	sub    $0xc,%esp
    37e3:	b9 10 00 00 00       	mov    $0x10,%ecx
    37e8:	6a 00                	push   $0x0
    37ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
    37ed:	8b 10                	mov    (%eax),%edx
    37ef:	89 f0                	mov    %esi,%eax
    37f1:	e8 7a fe ff ff       	call   3670 <printint>
        ap++;
    37f6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    37fa:	83 c4 10             	add    $0x10,%esp
      state = 0;
    37fd:	31 c9                	xor    %ecx,%ecx
    37ff:	e9 6e ff ff ff       	jmp    3772 <printf+0x52>
    3804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3808:	8b 45 d0             	mov    -0x30(%ebp),%eax
    380b:	8b 10                	mov    (%eax),%edx
        ap++;
    380d:	83 c0 04             	add    $0x4,%eax
    3810:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    3813:	85 d2                	test   %edx,%edx
    3815:	0f 84 8d 00 00 00    	je     38a8 <printf+0x188>
        while(*s != 0){
    381b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    381e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    3820:	84 c0                	test   %al,%al
    3822:	0f 84 4a ff ff ff    	je     3772 <printf+0x52>
    3828:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    382b:	89 d3                	mov    %edx,%ebx
    382d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3830:	83 ec 04             	sub    $0x4,%esp
          s++;
    3833:	83 c3 01             	add    $0x1,%ebx
    3836:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3839:	6a 01                	push   $0x1
    383b:	57                   	push   %edi
    383c:	56                   	push   %esi
    383d:	e8 a1 fd ff ff       	call   35e3 <write>
        while(*s != 0){
    3842:	0f b6 03             	movzbl (%ebx),%eax
    3845:	83 c4 10             	add    $0x10,%esp
    3848:	84 c0                	test   %al,%al
    384a:	75 e4                	jne    3830 <printf+0x110>
      state = 0;
    384c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    384f:	31 c9                	xor    %ecx,%ecx
    3851:	e9 1c ff ff ff       	jmp    3772 <printf+0x52>
    3856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    385d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3860:	83 ec 0c             	sub    $0xc,%esp
    3863:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3868:	6a 01                	push   $0x1
    386a:	e9 7b ff ff ff       	jmp    37ea <printf+0xca>
    386f:	90                   	nop
        putc(fd, *ap);
    3870:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3873:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3876:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3878:	6a 01                	push   $0x1
    387a:	57                   	push   %edi
    387b:	56                   	push   %esi
        putc(fd, *ap);
    387c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    387f:	e8 5f fd ff ff       	call   35e3 <write>
        ap++;
    3884:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3888:	83 c4 10             	add    $0x10,%esp
      state = 0;
    388b:	31 c9                	xor    %ecx,%ecx
    388d:	e9 e0 fe ff ff       	jmp    3772 <printf+0x52>
    3892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    3898:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    389b:	83 ec 04             	sub    $0x4,%esp
    389e:	e9 2a ff ff ff       	jmp    37cd <printf+0xad>
    38a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    38a7:	90                   	nop
          s = "(null)";
    38a8:	ba 7e 3a 00 00       	mov    $0x3a7e,%edx
        while(*s != 0){
    38ad:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    38b0:	b8 28 00 00 00       	mov    $0x28,%eax
    38b5:	89 d3                	mov    %edx,%ebx
    38b7:	e9 74 ff ff ff       	jmp    3830 <printf+0x110>
    38bc:	66 90                	xchg   %ax,%ax
    38be:	66 90                	xchg   %ax,%ax

000038c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    38c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    38c1:	a1 80 42 00 00       	mov    0x4280,%eax
{
    38c6:	89 e5                	mov    %esp,%ebp
    38c8:	57                   	push   %edi
    38c9:	56                   	push   %esi
    38ca:	53                   	push   %ebx
    38cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    38ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    38d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    38d8:	89 c2                	mov    %eax,%edx
    38da:	8b 00                	mov    (%eax),%eax
    38dc:	39 ca                	cmp    %ecx,%edx
    38de:	73 30                	jae    3910 <free+0x50>
    38e0:	39 c1                	cmp    %eax,%ecx
    38e2:	72 04                	jb     38e8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    38e4:	39 c2                	cmp    %eax,%edx
    38e6:	72 f0                	jb     38d8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    38e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    38eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    38ee:	39 f8                	cmp    %edi,%eax
    38f0:	74 30                	je     3922 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    38f2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    38f5:	8b 42 04             	mov    0x4(%edx),%eax
    38f8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    38fb:	39 f1                	cmp    %esi,%ecx
    38fd:	74 3a                	je     3939 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    38ff:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3901:	5b                   	pop    %ebx
  freep = p;
    3902:	89 15 80 42 00 00    	mov    %edx,0x4280
}
    3908:	5e                   	pop    %esi
    3909:	5f                   	pop    %edi
    390a:	5d                   	pop    %ebp
    390b:	c3                   	ret    
    390c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3910:	39 c2                	cmp    %eax,%edx
    3912:	72 c4                	jb     38d8 <free+0x18>
    3914:	39 c1                	cmp    %eax,%ecx
    3916:	73 c0                	jae    38d8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    3918:	8b 73 fc             	mov    -0x4(%ebx),%esi
    391b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    391e:	39 f8                	cmp    %edi,%eax
    3920:	75 d0                	jne    38f2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    3922:	03 70 04             	add    0x4(%eax),%esi
    3925:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3928:	8b 02                	mov    (%edx),%eax
    392a:	8b 00                	mov    (%eax),%eax
    392c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    392f:	8b 42 04             	mov    0x4(%edx),%eax
    3932:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3935:	39 f1                	cmp    %esi,%ecx
    3937:	75 c6                	jne    38ff <free+0x3f>
    p->s.size += bp->s.size;
    3939:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    393c:	89 15 80 42 00 00    	mov    %edx,0x4280
    p->s.size += bp->s.size;
    3942:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3945:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3948:	89 0a                	mov    %ecx,(%edx)
}
    394a:	5b                   	pop    %ebx
    394b:	5e                   	pop    %esi
    394c:	5f                   	pop    %edi
    394d:	5d                   	pop    %ebp
    394e:	c3                   	ret    
    394f:	90                   	nop

00003950 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3950:	55                   	push   %ebp
    3951:	89 e5                	mov    %esp,%ebp
    3953:	57                   	push   %edi
    3954:	56                   	push   %esi
    3955:	53                   	push   %ebx
    3956:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3959:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    395c:	8b 3d 80 42 00 00    	mov    0x4280,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3962:	8d 70 07             	lea    0x7(%eax),%esi
    3965:	c1 ee 03             	shr    $0x3,%esi
    3968:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    396b:	85 ff                	test   %edi,%edi
    396d:	0f 84 9d 00 00 00    	je     3a10 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3973:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3975:	8b 4a 04             	mov    0x4(%edx),%ecx
    3978:	39 f1                	cmp    %esi,%ecx
    397a:	73 6a                	jae    39e6 <malloc+0x96>
    397c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3981:	39 de                	cmp    %ebx,%esi
    3983:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3986:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    398d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3990:	eb 17                	jmp    39a9 <malloc+0x59>
    3992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3998:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    399a:	8b 48 04             	mov    0x4(%eax),%ecx
    399d:	39 f1                	cmp    %esi,%ecx
    399f:	73 4f                	jae    39f0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    39a1:	8b 3d 80 42 00 00    	mov    0x4280,%edi
    39a7:	89 c2                	mov    %eax,%edx
    39a9:	39 d7                	cmp    %edx,%edi
    39ab:	75 eb                	jne    3998 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    39ad:	83 ec 0c             	sub    $0xc,%esp
    39b0:	ff 75 e4             	push   -0x1c(%ebp)
    39b3:	e8 93 fc ff ff       	call   364b <sbrk>
  if(p == (char*)-1)
    39b8:	83 c4 10             	add    $0x10,%esp
    39bb:	83 f8 ff             	cmp    $0xffffffff,%eax
    39be:	74 1c                	je     39dc <malloc+0x8c>
  hp->s.size = nu;
    39c0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    39c3:	83 ec 0c             	sub    $0xc,%esp
    39c6:	83 c0 08             	add    $0x8,%eax
    39c9:	50                   	push   %eax
    39ca:	e8 f1 fe ff ff       	call   38c0 <free>
  return freep;
    39cf:	8b 15 80 42 00 00    	mov    0x4280,%edx
      if((p = morecore(nunits)) == 0)
    39d5:	83 c4 10             	add    $0x10,%esp
    39d8:	85 d2                	test   %edx,%edx
    39da:	75 bc                	jne    3998 <malloc+0x48>
        return 0;
  }
}
    39dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    39df:	31 c0                	xor    %eax,%eax
}
    39e1:	5b                   	pop    %ebx
    39e2:	5e                   	pop    %esi
    39e3:	5f                   	pop    %edi
    39e4:	5d                   	pop    %ebp
    39e5:	c3                   	ret    
    if(p->s.size >= nunits){
    39e6:	89 d0                	mov    %edx,%eax
    39e8:	89 fa                	mov    %edi,%edx
    39ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    39f0:	39 ce                	cmp    %ecx,%esi
    39f2:	74 4c                	je     3a40 <malloc+0xf0>
        p->s.size -= nunits;
    39f4:	29 f1                	sub    %esi,%ecx
    39f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    39f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    39fc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    39ff:	89 15 80 42 00 00    	mov    %edx,0x4280
}
    3a05:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3a08:	83 c0 08             	add    $0x8,%eax
}
    3a0b:	5b                   	pop    %ebx
    3a0c:	5e                   	pop    %esi
    3a0d:	5f                   	pop    %edi
    3a0e:	5d                   	pop    %ebp
    3a0f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    3a10:	c7 05 80 42 00 00 84 	movl   $0x4284,0x4280
    3a17:	42 00 00 
    base.s.size = 0;
    3a1a:	bf 84 42 00 00       	mov    $0x4284,%edi
    base.s.ptr = freep = prevp = &base;
    3a1f:	c7 05 84 42 00 00 84 	movl   $0x4284,0x4284
    3a26:	42 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3a29:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    3a2b:	c7 05 88 42 00 00 00 	movl   $0x0,0x4288
    3a32:	00 00 00 
    if(p->s.size >= nunits){
    3a35:	e9 42 ff ff ff       	jmp    397c <malloc+0x2c>
    3a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3a40:	8b 08                	mov    (%eax),%ecx
    3a42:	89 0a                	mov    %ecx,(%edx)
    3a44:	eb b9                	jmp    39ff <malloc+0xaf>
