.class public Lcom/stub/StubApp;
.super Landroid/app/Application;
.source "StubApplication.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static loadFromLib:Z

.field public static newApp:Landroid/app/Application;

.field public static runApp:Landroid/app/Application;

.field private static soName:Ljava/lang/String;

.field public static strEntryApplication:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sput-object v1, Lcom/stub/StubApp;->runApp:Landroid/app/Application;

    .line 25
    const-string v0, "com.qihoo360.crypt.entryRunApplication"

    sput-object v0, Lcom/stub/StubApp;->strEntryApplication:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    .line 27
    const-string v0, "libjiagu"

    sput-object v0, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stub/StubApp;->loadFromLib:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static ChangeTopApplication()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/stub/StubApp;->runApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/stub/StubApp;->interface7(Landroid/app/Application;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 244
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 248
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 249
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 250
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 252
    invoke-static {v6, v7}, Lcom/stub/StubApp;->isSameFile(Ljava/io/BufferedInputStream;Ljava/io/BufferedInputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 256
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 257
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 258
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 259
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 260
    if-eqz v0, :cond_1

    .line 283
    :goto_1
    return v0

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 265
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 267
    const/16 v5, 0x1c00

    new-array v5, v5, [B

    .line 269
    :goto_2
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 270
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 277
    goto :goto_1

    .line 272
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 273
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move v0, v1

    .line 283
    goto :goto_1

    .line 281
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/stub/StubApp;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getNewAppInstance(Landroid/content/Context;)Landroid/app/Application;
    .locals 2

    .prologue
    .line 45
    :try_start_0
    sget-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    sget-object v1, Lcom/stub/StubApp;->strEntryApplication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    sget-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initAssetForNative()V
    .locals 5

    .prologue
    .line 158
    :try_start_0
    const-string v0, "com.qihoo.dexjiagu.TransitMgr"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 159
    const-string v1, "initAssetForNative"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 160
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initCrashReport()V
    .locals 5

    .prologue
    .line 109
    :try_start_0
    const-string v0, "com.qihoo.bugreport.CrashReport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    const-string v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/stub/StubApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static native interface11(I)V
.end method

.method public static native interface12(Ldalvik/system/DexFile;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native interface5(Landroid/app/Application;)V
.end method

.method public static native interface6(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native interface7(Landroid/app/Application;Landroid/content/Context;)Z
.end method

.method public static native interface8(Landroid/app/Application;Landroid/content/Context;)Z
.end method

.method public static isSameFile(Ljava/io/BufferedInputStream;Ljava/io/BufferedInputStream;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    .line 289
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    .line 291
    if-ne v2, v1, :cond_0

    .line 292
    new-array v3, v2, [B

    .line 293
    new-array v4, v1, [B

    .line 295
    invoke-virtual {p0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 296
    invoke-virtual {p1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move v1, v0

    .line 298
    :goto_0
    if-ge v1, v2, :cond_2

    .line 299
    aget-byte v5, v3, v1

    aget-byte v6, v4, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v5, v6, :cond_1

    .line 312
    :cond_0
    :goto_1
    return v0

    .line 298
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 307
    :catch_0
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 309
    :catch_1
    move-exception v1

    .line 310
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isX86Arch()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 120
    :try_start_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v1

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v4, v1, v0

    .line 121
    const-string v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :cond_0
    :goto_1
    return-object v0

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 130
    :cond_3
    const/4 v2, 0x0

    .line 132
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "/system/build.prop"

    const-string v4, "r"

    invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_2
    if-eqz v0, :cond_5

    .line 135
    const-string v2, "ro.product.cpu.abi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 147
    if-eqz v1, :cond_0

    .line 148
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 149
    :catch_1
    move-exception v1

    goto :goto_1

    .line 137
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    goto :goto_2

    .line 147
    :cond_5
    if-eqz v1, :cond_6

    .line 148
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 153
    :cond_6
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 139
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 141
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    if-eqz v1, :cond_6

    .line 148
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 149
    :catch_3
    move-exception v0

    goto :goto_3

    .line 142
    :catch_4
    move-exception v0

    move-object v1, v2

    .line 144
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 147
    if-eqz v1, :cond_6

    .line 148
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 149
    :catch_5
    move-exception v0

    goto :goto_3

    .line 146
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 147
    :goto_6
    if-eqz v1, :cond_7

    .line 148
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 150
    :cond_7
    :goto_7
    throw v0

    .line 149
    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_7

    .line 146
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 142
    :catch_8
    move-exception v0

    goto :goto_5

    .line 139
    :catch_9
    move-exception v0

    goto :goto_4
.end method

.method public static native mark(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
.end method

.method public static native mark()V
.end method

.method public static native mark(Landroid/location/Location;)V
.end method

.method public static native declared-synchronized n010333(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n0110()V
.end method

.method public static native n0111()I
.end method

.method public static native n01113(I)Ljava/lang/Object;
.end method

.method public static native n0112()J
.end method

.method public static native n0113()Ljava/lang/Object;
.end method

.method public static native n01130(Ljava/lang/Object;)V
.end method

.method public static native n01131(Ljava/lang/Object;)I
.end method

.method public static native n011310(Ljava/lang/Object;I)V
.end method

.method public static native n01132(Ljava/lang/Object;)J
.end method

.method public static native n011320(Ljava/lang/Object;J)V
.end method

.method public static native n01133(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n011330(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public static native n011331(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public static native n0113310(Ljava/lang/Object;Ljava/lang/Object;I)V
.end method

.method public static native n01133110(Ljava/lang/Object;Ljava/lang/Object;ZI)V
.end method

.method public static native n011331113(Ljava/lang/Object;Ljava/lang/Object;III)Ljava/lang/Object;
.end method

.method public static native n0113313113(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;II)Ljava/lang/Object;
.end method

.method public static native n011333(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n0113330(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public static native n0113331(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public static native n01133310(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
.end method

.method public static native n0113333(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n01133330(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private prepareInitCrashReport()V
    .locals 3

    .prologue
    .line 98
    :try_start_0
    const-string v0, "com.qihoo.bugreport.CrashReport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    const-string v1, "prepareInit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 168
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 169
    sput-object p1, Lcom/stub/StubApp;->context:Landroid/content/Context;

    .line 170
    sget-object v0, Lcom/stub/StubApp;->runApp:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 171
    sput-object p0, Lcom/stub/StubApp;->runApp:Landroid/app/Application;

    .line 173
    :cond_0
    sget-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    if-nez v0, :cond_5

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.jiagu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {}, Lcom/stub/StubApp;->isX86Arch()Ljava/lang/Boolean;

    move-result-object v3

    .line 177
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 178
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 179
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v5, "64"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v5, "64"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 182
    :cond_2
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v5, "mips"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v5, "mips"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 185
    :cond_4
    sget-boolean v4, Lcom/stub/StubApp;->loadFromLib:Z

    if-eqz v4, :cond_8

    .line 186
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    const-string v0, "jiagu_x86"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 211
    :cond_5
    :goto_0
    sget-object v0, Lcom/stub/StubApp;->runApp:Landroid/app/Application;

    invoke-static {v0}, Lcom/stub/StubApp;->interface5(Landroid/app/Application;)V

    .line 212
    invoke-static {p1}, Lcom/stub/StubApp;->getNewAppInstance(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    .line 213
    sget-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    if-eqz v0, :cond_d

    .line 215
    :try_start_0
    const-class v0, Landroid/app/Application;

    const-string v1, "attach"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_6

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 218
    sget-object v1, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_6
    :goto_1
    sget-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/stub/StubApp;->interface8(Landroid/app/Application;Landroid/content/Context;)Z

    .line 228
    :goto_2
    invoke-direct {p0}, Lcom/stub/StubApp;->initAssetForNative()V

    .line 229
    return-void

    .line 189
    :cond_7
    const-string v0, "jiagu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_mips.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v2, v5}, Lcom/stub/StubApp;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 200
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_x64.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_64.so"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lcom/stub/StubApp;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_64.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_x86.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v2, v5}, Lcom/stub/StubApp;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 197
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v2, v5}, Lcom/stub/StubApp;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 203
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_a64.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_64.so"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lcom/stub/StubApp;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 207
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/stub/StubApp;->soName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 225
    :cond_d
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2
.end method

.method public native declared-synchronized n11030(Ljava/lang/Object;)V
.end method

.method public native declared-synchronized n11033(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public native declared-synchronized n110331(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native n1110()V
.end method

.method public native n1111()Z
.end method

.method public native n11110(Z)V
.end method

.method public native n111131(ILjava/lang/Object;)Z
.end method

.method public native n11113330(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public native n1112()J
.end method

.method public native n1113()Ljava/lang/Object;
.end method

.method public native n11130(Ljava/lang/Object;)V
.end method

.method public native n11131(Ljava/lang/Object;)Z
.end method

.method public native n111310(Ljava/lang/Object;I)V
.end method

.method public native n1113110(Ljava/lang/Object;II)V
.end method

.method public native n1113111(Ljava/lang/Object;II)I
.end method

.method public native n1113130(Ljava/lang/Object;ZLjava/lang/Object;)V
.end method

.method public native n11133(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public native n111330(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public native n111331(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native n1113310(Ljava/lang/Object;Ljava/lang/Object;Z)V
.end method

.method public native n11133110(Ljava/lang/Object;Ljava/lang/Object;ZI)V
.end method

.method public native n1113320(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

.method public native n1113321(Ljava/lang/Object;Ljava/lang/Object;J)Z
.end method

.method public native n1113323(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native n111333(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public native n1113331(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public native n11133310(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
.end method

.method public native n1113333(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public native n11133331(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public native n111333333(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 79
    sget-boolean v0, Lcom/qihoo/util/Configuration;->ENABLE_CRASH_REPORT:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/stub/StubApp;->prepareInitCrashReport()V

    .line 83
    :cond_0
    invoke-static {}, Lcom/stub/StubApp;->ChangeTopApplication()V

    .line 85
    sget-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/stub/StubApp;->newApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 89
    :cond_1
    sget-boolean v0, Lcom/qihoo/util/Configuration;->ENABLE_CRASH_REPORT:Z

    if-eqz v0, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/stub/StubApp;->initCrashReport()V

    .line 94
    :cond_2
    return-void
.end method
